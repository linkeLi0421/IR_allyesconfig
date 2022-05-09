; ModuleID = '/llk/IR_all_yes/drivers/md/dm-cache-target.c_pt.bc'
source_filename = "../drivers/md/dm-cache-target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.dm_kcopyd_throttle = type { i32, i32, i32, i32, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.81 }
%union.anon.81 = type { ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.cache_args = type { ptr, ptr, ptr, i64, ptr, i64, i32, ptr, i32, ptr, %struct.cache_features }
%struct.cache_features = type { i32, i32, i32, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cache = type { ptr, %struct.spinlock, i32, i64, ptr, ptr, ptr, ptr, i64, i64, i32, %struct.spinlock, %struct.list_head, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.bio_list, %struct.rw_semaphore, i64, ptr, i32, i32, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, %struct.delayed_work, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.cache_features, %struct.cache_stats, i8, %struct.rw_semaphore, %struct.batcher, %struct.work_struct, %struct.dm_io_tracker, %struct.mempool_s, %struct.bio_set }
%struct.bio_list = type { ptr, ptr }
%struct.cache_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.batcher = type { ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.bio_list, %struct.work_struct, i8 }
%struct.dm_io_tracker = type { %struct.spinlock, i64, i32, i32 }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.dm_cache_policy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.per_bio_data = type { i8, ptr, %struct.dm_hook_info, i64 }
%struct.dm_hook_info = type { ptr }
%struct.dm_cache_statistics = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.discard_load_info = type { ptr, i64, i64, i64 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_cell_key_v2 = type { i32, i64, i64, i64 }
%struct.dm_cache_migration = type { %struct.continuation, ptr, ptr, ptr, ptr, i32, i64 }
%struct.continuation = type { %struct.work_struct, i8 }
%struct.policy_work = type { i32, i64, i32 }
%struct.dm_io_region = type { ptr, i64, i64 }

@__param_str_cache_copy_throttle = internal constant [29 x i8] c"dm_cache.cache_copy_throttle\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dm_kcopyd_throttle = internal global { %struct.dm_kcopyd_throttle, [44 x i8] } { %struct.dm_kcopyd_throttle { i32 100, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__param_cache_copy_throttle = internal constant %struct.kernel_param { ptr @__param_str_cache_copy_throttle, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.81 { ptr @dm_kcopyd_throttle } }, section "__param", align 4
@__UNIQUE_ID_cache_copy_throttletype294 = internal constant [43 x i8] c"dm_cache.parmtype=cache_copy_throttle:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_copy_throttle295 = internal constant [98 x i8] c"dm_cache.parm=cache_copy_throttle:A percentage of time allocated for copying to and/or from cache\00", section ".modinfo", align 1
@cache_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 2, i32 2, i32 0], ptr @cache_ctr, ptr @cache_dtr, ptr @cache_map, ptr null, ptr null, ptr @cache_end_io, ptr null, ptr null, ptr null, ptr @cache_postsuspend, ptr @cache_preresume, ptr @cache_resume, ptr @cache_status, ptr @cache_message, ptr null, ptr null, ptr null, ptr @cache_iterate_devices, ptr @cache_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@migration_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_dm_cache__298_3460_dm_cache_init6 = internal global ptr @dm_cache_init, section ".initcall6.init", align 4
@__exitcall_dm_cache_exit = internal global ptr @dm_cache_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [48 x i8] c"dm_cache.description=device-mapper cache target\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [46 x i8] c"dm_cache.author=Joe Thornber <ejt@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [34 x i8] c"dm_cache.file=drivers/md/dm-cache\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [21 x i8] c"dm_cache.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error allocating memory for cache\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error opening metadata device\00", [34 x i8] zeroinitializer }, align 32
@parse_metadata_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014device-mapper: cache: Metadata device %s is larger than %u sectors: excess space will not be used.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parse_metadata_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/md/dm-cache-target.c\00", [35 x i8] zeroinitializer }, align 32
@parse_metadata_dev._entry_ptr = internal global ptr @parse_metadata_dev._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Insufficient args\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error opening cache device\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error opening origin device\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device size larger than cached device\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid data block size\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Data block size is larger than the cache device\00", [48 x i8] zeroinitializer }, align 32
@parse_features._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 3, ptr @.str.12 }], [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid number of cache feature arguments\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"writethrough\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"passthrough\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"metadata2\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no_discard_passdown\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unrecognised cache feature requested\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Duplicate cache io_mode features requested\00", [53 x i8] zeroinitializer }, align 32
@parse_policy._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 1024, ptr @.str.20 }], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid number of policy arguments\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error setting cache policy's config values\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error creating metadata object\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unable to get write access to metadata, please check/repair metadata.\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dm_cache_metadata_all_clean() failed\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Cannot enter passthrough mode unless all blocks are clean\00", [38 x i8] zeroinitializer }, align 32
@cache_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@cache_create.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cache->migration_wait\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not allocate dirty bitset\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not allocate discard bitset\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not create kcopyd client\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dm-cache\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not create workqueue for metadata object\00", [49 x i8] zeroinitializer }, align 32
@cache_create.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&cache->deferred_bio_worker)\00", [49 x i8] zeroinitializer }, align 32
@cache_create.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&cache->migration_worker)\00", [52 x i8] zeroinitializer }, align 32
@cache_create.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&cache->waker)->work)\00", [54 x i8] zeroinitializer }, align 32
@cache_create.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&cache->waker)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not create bio prison\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error creating cache's migration mempool\00", [55 x i8] zeroinitializer }, align 32
@cache_create.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cache->invalidation_lock\00", [38 x i8] zeroinitializer }, align 32
@cache_create.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&cache->background_work_lock\00", [35 x i8] zeroinitializer }, align 32
@set_cache_size._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.set_cache_size = private unnamed_addr constant [15 x i8] c"set_cache_size\00", align 1
@set_cache_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.set_cache_size, ptr @.str.5, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [280 x i8], [72 x i8] } { [280 x i8] c"\014device-mapper: cache: You have created a cache device with a lot of individual cache blocks (%llu)\0AAll these mappings can consume a lot of kernel memory, and take some time to read/write.\0APlease consider increasing the cache block size to reduce the overall cache block count.\0A\00", [72 x i8] zeroinitializer }, align 32
@set_cache_size._entry_ptr = internal global ptr @set_cache_size._entry, section ".printk_index", align 4
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error creating cache's policy\00", [34 x i8] zeroinitializer }, align 32
@set_config_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 2278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014device-mapper: cache: Odd number of policy arguments given but they should be <key> <value> pairs.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_config_values\00", [46 x i8] zeroinitializer }, align 32
@set_config_values._entry_ptr = internal global ptr @set_config_values._entry, section ".printk_index", align 4
@set_config_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 2268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014device-mapper: cache: bad config value for %s: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_config_value\00", [47 x i8] zeroinitializer }, align 32
@set_config_value._entry_ptr = internal global ptr @set_config_value._entry, section ".printk_index", align 4
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"migration_threshold\00", [44 x i8] zeroinitializer }, align 32
@set_cache_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013device-mapper: cache: %s: unable to read needs_check flag, setting failure mode.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_cache_mode\00", [17 x i8] zeroinitializer }, align 32
@set_cache_mode._entry_ptr = internal global ptr @set_cache_mode._entry, section ".printk_index", align 4
@set_cache_mode._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013device-mapper: cache: %s: unable to switch cache to write mode until repaired.\0A\00", [46 x i8] zeroinitializer }, align 32
@set_cache_mode._entry_ptr.60 = internal global ptr @set_cache_mode._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@__const.notify_mode_switch.descs = private unnamed_addr constant [3 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63], align 4
@notify_mode_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016device-mapper: cache: %s: switching cache to %s mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"notify_mode_switch\00", [45 x i8] zeroinitializer }, align 32
@notify_mode_switch._entry_ptr = internal global ptr @notify_mode_switch._entry, section ".printk_index", align 4
@map_bio._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.map_bio = private unnamed_addr constant [8 x i8] c"map_bio\00", align 1
@map_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.map_bio, ptr @.str.5, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: cache: %s: policy_lookup_with_work() failed with r = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@map_bio._entry_ptr = internal global ptr @map_bio._entry, section ".printk_index", align 4
@map_bio._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@map_bio._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.map_bio, ptr @.str.5, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: cache: %s: policy_lookup() failed with r = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@map_bio._entry_ptr.70 = internal global ptr @map_bio._entry.68, section ".printk_index", align 4
@mg_update_metadata._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mg_update_metadata = private unnamed_addr constant [19 x i8] c"mg_update_metadata\00", align 1
@mg_update_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.mg_update_metadata, ptr @.str.5, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: cache: %s: migration failed; couldn't insert mapping\0A\00", [57 x i8] zeroinitializer }, align 32
@mg_update_metadata._entry_ptr = internal global ptr @mg_update_metadata._entry, section ".printk_index", align 4
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm_cache_insert_mapping\00", [40 x i8] zeroinitializer }, align 32
@mg_update_metadata._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mg_update_metadata._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.mg_update_metadata, ptr @.str.5, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: cache: %s: migration failed; couldn't update on disk metadata\0A\00", [48 x i8] zeroinitializer }, align 32
@mg_update_metadata._entry_ptr.76 = internal global ptr @mg_update_metadata._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm_cache_remove_mapping\00", [40 x i8] zeroinitializer }, align 32
@metadata_operation_failed._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.metadata_operation_failed = private unnamed_addr constant [26 x i8] c"metadata_operation_failed\00", align 1
@metadata_operation_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.metadata_operation_failed, ptr @.str.5, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: cache: %s: metadata operation '%s' failed: error = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@metadata_operation_failed._entry_ptr = internal global ptr @metadata_operation_failed._entry, section ".printk_index", align 4
@abort_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: cache: %s: failed to set 'needs_check' flag in metadata\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"abort_transaction\00", [46 x i8] zeroinitializer }, align 32
@abort_transaction._entry_ptr = internal global ptr @abort_transaction._entry, section ".printk_index", align 4
@abort_transaction._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@abort_transaction._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.5, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: cache: %s: aborting current metadata transaction\0A\00", [61 x i8] zeroinitializer }, align 32
@abort_transaction._entry_ptr.83 = internal global ptr @abort_transaction._entry.81, section ".printk_index", align 4
@abort_transaction._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.5, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: cache: %s: failed to abort metadata transaction\0A\00", [62 x i8] zeroinitializer }, align 32
@abort_transaction._entry_ptr.86 = internal global ptr @abort_transaction._entry.84, section ".printk_index", align 4
@init_continuation.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(work_completion)(&k->ws)\00", [38 x i8] zeroinitializer }, align 32
@invalidate_cblock._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.invalidate_cblock = private unnamed_addr constant [18 x i8] c"invalidate_cblock\00", align 1
@invalidate_cblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @__func__.invalidate_cblock, ptr @.str.5, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013device-mapper: cache: %s: invalidation failed; couldn't update on disk metadata\0A\00", [45 x i8] zeroinitializer }, align 32
@invalidate_cblock._entry_ptr = internal global ptr @invalidate_cblock._entry, section ".printk_index", align 4
@invalidate_cblock._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.invalidate_cblock, ptr @.str.5, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: cache: %s: policy_invalidate_mapping failed\0A\00", [34 x i8] zeroinitializer }, align 32
@invalidate_cblock._entry_ptr.91 = internal global ptr @invalidate_cblock._entry.89, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@check_migrations._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_migrations = private unnamed_addr constant [17 x i8] c"check_migrations\00", align 1
@check_migrations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.check_migrations, ptr @.str.5, i32 1871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: cache: %s: policy_background_work failed\0A\00", [37 x i8] zeroinitializer }, align 32
@check_migrations._entry_ptr = internal global ptr @check_migrations._entry, section ".printk_index", align 4
@batcher_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&b->lock\00", [23 x i8] zeroinitializer }, align 32
@batcher_init.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&b->commit_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_cache_commit\00", [16 x i8] zeroinitializer }, align 32
@dm_iot_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&iot->lock\00", [21 x i8] zeroinitializer }, align 32
@sync_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 2725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: cache: %s: could not write dirty bitset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sync_metadata\00", [18 x i8] zeroinitializer }, align 32
@sync_metadata._entry_ptr = internal global ptr @sync_metadata._entry, section ".printk_index", align 4
@sync_metadata._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.5, i32 2729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: cache: %s: could not write discard bitset\0A\00", [36 x i8] zeroinitializer }, align 32
@sync_metadata._entry_ptr.102 = internal global ptr @sync_metadata._entry.100, section ".printk_index", align 4
@sync_metadata._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.5, i32 2735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013device-mapper: cache: %s: could not write hints\0A\00", [45 x i8] zeroinitializer }, align 32
@sync_metadata._entry_ptr.105 = internal global ptr @sync_metadata._entry.103, section ".printk_index", align 4
@sync_metadata._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.5, i32 2744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: cache: %s: could not write cache metadata\0A\00", [36 x i8] zeroinitializer }, align 32
@sync_metadata._entry_ptr.108 = internal global ptr @sync_metadata._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm_cache_set_dirty_bits\00", [40 x i8] zeroinitializer }, align 32
@write_discard_bitset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 2683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: cache: %s: could not resize on-disk discard bitset\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write_discard_bitset\00", [43 x i8] zeroinitializer }, align 32
@write_discard_bitset._entry_ptr = internal global ptr @write_discard_bitset._entry, section ".printk_index", align 4
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dm_cache_discard_bitset_resize\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm_cache_set_discard\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm_cache_write_hints\00", [43 x i8] zeroinitializer }, align 32
@cache_preresume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.5, i32 2946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: cache: %s: could not load cache mappings\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache_preresume\00", [16 x i8] zeroinitializer }, align 32
@cache_preresume._entry_ptr = internal global ptr @cache_preresume._entry, section ".printk_index", align 4
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm_cache_load_mappings\00", [41 x i8] zeroinitializer }, align 32
@cache_preresume._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.116, ptr @.str.5, i32 2967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: cache: %s: could not load origin discards\0A\00", [36 x i8] zeroinitializer }, align 32
@cache_preresume._entry_ptr.120 = internal global ptr @cache_preresume._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm_cache_load_discards\00", [41 x i8] zeroinitializer }, align 32
@resize_cache_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.5, i32 2907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: cache: %s: could not resize cache metadata\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resize_cache_dev\00", [47 x i8] zeroinitializer }, align 32
@resize_cache_dev._entry_ptr = internal global ptr @resize_cache_dev._entry, section ".printk_index", align 4
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_cache_resize\00", [16 x i8] zeroinitializer }, align 32
@can_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.5, i32 2880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013device-mapper: cache: %s: unable to extend cache due to missing cache table reload\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"can_resize\00", [21 x i8] zeroinitializer }, align 32
@can_resize._entry_ptr = internal global ptr @can_resize._entry, section ".printk_index", align 4
@can_resize._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.5, i32 2893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013device-mapper: cache: %s: unable to shrink cache; cache block %llu is dirty\0A\00", [49 x i8] zeroinitializer }, align 32
@can_resize._entry_ptr.129 = internal global ptr @can_resize._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fail\00", [27 x i8] zeroinitializer }, align 32
@cache_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.5, i32 3059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: cache: %s: dm_cache_get_free_metadata_block_count returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cache_status\00", [19 x i8] zeroinitializer }, align 32
@cache_status._entry_ptr = internal global ptr @cache_status._entry, section ".printk_index", align 4
@cache_status._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.5, i32 3066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: cache: %s: dm_cache_get_metadata_dev_size returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cache_status._entry_ptr.135 = internal global ptr @cache_status._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%u %llu/%llu %llu %llu/%llu %u %u %u %u %u %u %lu \00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"2 migration_threshold %llu \00", [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@cache_status._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.132, ptr @.str.5, i32 3096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: cache: %s: policy_emit_config_values returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cache_status._entry_ptr.141 = internal global ptr @cache_status._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ro \00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rw \00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"needs_check \00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"- \00", [29 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u:%u\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c",metadata_mode=fail\00", [44 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",metadata_mode=ro\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",metadata_mode=rw\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",cache_metadata_device=%s\00", [38 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",cache_device=%s\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",cache_origin_device=%s\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",writethrough=%c\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",writeback=%c\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",passthrough=%c\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",metadata2=%c\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",no_discard_passdown=%c\00", [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"metadata2 \00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"writethrough \00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"passthrough \00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"writeback \00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown \00", [23 x i8] zeroinitializer }, align 32
@emit_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.5, i32 3012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: cache: %s: internal error: unknown io mode: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emit_flags\00", [21 x i8] zeroinitializer }, align 32
@emit_flags._entry_ptr = internal global ptr @emit_flags._entry, section ".printk_index", align 4
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no_discard_passdown \00", [43 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@cache_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.5, i32 3314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013device-mapper: cache: %s: unable to service cache target messages in READ_ONLY or FAIL mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cache_message\00", [18 x i8] zeroinitializer }, align 32
@cache_message._entry_ptr = internal global ptr @cache_message._entry, section ".printk_index", align 4
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalidate_cblocks\00", [45 x i8] zeroinitializer }, align 32
@process_invalidate_cblocks_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.5, i32 3272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013device-mapper: cache: %s: cache has to be in passthrough mode for invalidation\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"process_invalidate_cblocks_message\00", [61 x i8] zeroinitializer }, align 32
@process_invalidate_cblocks_message._entry_ptr = internal global ptr @process_invalidate_cblocks_message._entry, section ".printk_index", align 4
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%llu-%llu%c\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@parse_cblock_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.5, i32 3205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: cache: %s: invalid cblock range '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parse_cblock_range\00", [45 x i8] zeroinitializer }, align 32
@parse_cblock_range._entry_ptr = internal global ptr @parse_cblock_range._entry, section ".printk_index", align 4
@validate_cblock_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.5, i32 3217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: cache: %s: begin cblock out of range: %llu >= %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"validate_cblock_range\00", [42 x i8] zeroinitializer }, align 32
@validate_cblock_range._entry_ptr = internal global ptr @validate_cblock_range._entry, section ".printk_index", align 4
@validate_cblock_range._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.5, i32 3223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: cache: %s: end cblock out of range: %llu > %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@validate_cblock_range._entry_ptr.186 = internal global ptr @validate_cblock_range._entry.184, section ".printk_index", align 4
@validate_cblock_range._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.5, i32 3229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: cache: %s: invalid cblock range: %llu >= %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@validate_cblock_range._entry_ptr.189 = internal global ptr @validate_cblock_range._entry.187, section ".printk_index", align 4
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard unsupported\00", [44 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"max discard sectors smaller than a block\00", [55 x i8] zeroinitializer }, align 32
@disable_passdown_if_not_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.5, i32 3369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014device-mapper: cache: Origin device (%s) %s: Disabling discard passdown.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disable_passdown_if_not_supported\00", [62 x i8] zeroinitializer }, align 32
@disable_passdown_if_not_supported._entry_ptr = internal global ptr @disable_passdown_if_not_supported._entry, section ".printk_index", align 4
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_cache_migration\00", [45 x i8] zeroinitializer }, align 32
@dm_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.5, i32 3446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: cache: cache target registration failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_cache_init\00", [18 x i8] zeroinitializer }, align 32
@dm_cache_init._entry_ptr = internal global ptr @dm_cache_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.205 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"dm_kcopyd_throttle\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 25, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"cache_target\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3419, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"migration_cache\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2241, i32 27 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3420, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2580, i32 15 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2034, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2040, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2014, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2057, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2076, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2082, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2101, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2106, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2126, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2127, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2144, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2149, i32 29 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2154, i32 29 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2159, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2162, i32 29 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2166, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2172, i32 12 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2182, i32 29 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2183, i32 13 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2420, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2429, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2436, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2446, i32 13 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2451, i32 13 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2459, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2463, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2469, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2481, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2488, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2493, i32 30 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2495, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2498, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2499, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2500, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2504, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2511, i32 12 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2531, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2538, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2342, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2302, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2278, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2268, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2249, i32 23 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 876, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 882, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 860, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 861, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 862, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 866, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1627, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1642, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1242, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1244, i32 37 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1255, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1257, i32 37 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 932, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 919, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 923, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 925, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 55, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1475, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1487, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1870, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 153, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 156, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1737, i32 36 }
@___asan_gen_.561 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [30 x i8] c"../drivers/md/dm-io-tracker.h\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 30, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2725, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2729, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2735, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2744, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2668, i32 36 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2683, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2684, i32 36 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2692, i32 37 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2709, i32 36 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2946, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2947, i32 37 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2967, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2968, i32 37 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2907, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2908, i32 36 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2879, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2891, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3048, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3058, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3065, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3072, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3089, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3091, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3095, i32 5 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3100, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3102, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3107, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3109, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3114, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3119, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3122, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3128, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3130, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3132, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3134, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3137, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3139, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3141, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3142, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3143, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3144, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3145, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3146, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3147, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3154, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2995, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2998, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3001, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3004, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3007, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3010, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3011, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3016, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant [41 x i8] c"../drivers/md/dm-cache-policy-internal.h\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 94, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3313, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3318, i32 27 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3271, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3182, i32 18 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3195, i32 18 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3205, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3216, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3222, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3228, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3362, i32 12 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3365, i32 12 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3368, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3440, i32 20 }
@___asan_gen_.867 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.873 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.874 = private constant [32 x i8] c"../drivers/md/dm-cache-target.c\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 3446, i32 3 }
@llvm.compiler.used = appending global [273 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_cache_copy_throttle295, ptr @__UNIQUE_ID_cache_copy_throttletype294, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_dm_cache_exit, ptr @__initcall__kmod_dm_cache__298_3460_dm_cache_init6, ptr @__param_cache_copy_throttle, ptr @abort_transaction._entry, ptr @abort_transaction._entry.81, ptr @abort_transaction._entry.84, ptr @abort_transaction._entry_ptr, ptr @abort_transaction._entry_ptr.83, ptr @abort_transaction._entry_ptr.86, ptr @cache_message._entry, ptr @cache_message._entry_ptr, ptr @cache_preresume._entry, ptr @cache_preresume._entry.118, ptr @cache_preresume._entry_ptr, ptr @cache_preresume._entry_ptr.120, ptr @cache_status._entry, ptr @cache_status._entry.133, ptr @cache_status._entry.139, ptr @cache_status._entry_ptr, ptr @cache_status._entry_ptr.135, ptr @cache_status._entry_ptr.141, ptr @can_resize._entry, ptr @can_resize._entry.127, ptr @can_resize._entry_ptr, ptr @can_resize._entry_ptr.129, ptr @check_migrations._entry, ptr @check_migrations._entry_ptr, ptr @disable_passdown_if_not_supported._entry, ptr @disable_passdown_if_not_supported._entry_ptr, ptr @dm_cache_exit, ptr @dm_cache_init._entry, ptr @dm_cache_init._entry_ptr, ptr @emit_flags._entry, ptr @emit_flags._entry_ptr, ptr @invalidate_cblock._entry, ptr @invalidate_cblock._entry.89, ptr @invalidate_cblock._entry_ptr, ptr @invalidate_cblock._entry_ptr.91, ptr @map_bio._entry, ptr @map_bio._entry.68, ptr @map_bio._entry_ptr, ptr @map_bio._entry_ptr.70, ptr @metadata_operation_failed._entry, ptr @metadata_operation_failed._entry_ptr, ptr @mg_update_metadata._entry, ptr @mg_update_metadata._entry.74, ptr @mg_update_metadata._entry_ptr, ptr @mg_update_metadata._entry_ptr.76, ptr @notify_mode_switch._entry, ptr @notify_mode_switch._entry_ptr, ptr @parse_cblock_range._entry, ptr @parse_cblock_range._entry_ptr, ptr @parse_metadata_dev._entry, ptr @parse_metadata_dev._entry_ptr, ptr @process_invalidate_cblocks_message._entry, ptr @process_invalidate_cblocks_message._entry_ptr, ptr @resize_cache_dev._entry, ptr @resize_cache_dev._entry_ptr, ptr @set_cache_mode._entry, ptr @set_cache_mode._entry.58, ptr @set_cache_mode._entry_ptr, ptr @set_cache_mode._entry_ptr.60, ptr @set_cache_size._entry, ptr @set_cache_size._entry_ptr, ptr @set_config_value._entry, ptr @set_config_value._entry_ptr, ptr @set_config_values._entry, ptr @set_config_values._entry_ptr, ptr @sync_metadata._entry, ptr @sync_metadata._entry.100, ptr @sync_metadata._entry.103, ptr @sync_metadata._entry.106, ptr @sync_metadata._entry_ptr, ptr @sync_metadata._entry_ptr.102, ptr @sync_metadata._entry_ptr.105, ptr @sync_metadata._entry_ptr.108, ptr @validate_cblock_range._entry, ptr @validate_cblock_range._entry.184, ptr @validate_cblock_range._entry.187, ptr @validate_cblock_range._entry_ptr, ptr @validate_cblock_range._entry_ptr.186, ptr @validate_cblock_range._entry_ptr.189, ptr @write_discard_bitset._entry, ptr @write_discard_bitset._entry_ptr, ptr @dm_kcopyd_throttle, ptr @cache_target, ptr @migration_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @parse_features._args, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @parse_policy._args, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cache_create.__key, ptr @.str.26, ptr @cache_create.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @cache_create.__key.34, ptr @.str.35, ptr @cache_create.__key.36, ptr @.str.37, ptr @cache_create.__key.38, ptr @.str.39, ptr @cache_create.__key.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @cache_create.__key.44, ptr @.str.45, ptr @cache_create.__key.46, ptr @.str.47, ptr @set_cache_size._rs, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @map_bio._rs, ptr @.str.66, ptr @map_bio._rs.67, ptr @.str.69, ptr @mg_update_metadata._rs, ptr @.str.71, ptr @.str.72, ptr @mg_update_metadata._rs.73, ptr @.str.75, ptr @.str.77, ptr @metadata_operation_failed._rs, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @abort_transaction._rs, ptr @.str.82, ptr @.str.85, ptr @init_continuation.__key, ptr @.str.87, ptr @invalidate_cblock._rs, ptr @.str.88, ptr @.str.90, ptr @check_migrations._rs, ptr @.str.92, ptr @batcher_init.__key, ptr @.str.93, ptr @batcher_init.__key.94, ptr @.str.95, ptr @.str.96, ptr @dm_iot_init.__key, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], section "llvm.metadata"
@0 = internal global [223 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_kcopyd_throttle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migration_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_metadata_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_features._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_policy._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_create.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cache_size._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cache_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_config_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_config_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cache_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cache_mode._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_mode_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_bio._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_bio._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_bio._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mg_update_metadata._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mg_update_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mg_update_metadata._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mg_update_metadata._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_operation_failed._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_operation_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_transaction._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_transaction._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_transaction._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_continuation.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invalidate_cblock._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invalidate_cblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invalidate_cblock._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_migrations._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_migrations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batcher_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batcher_init.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_iot_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_metadata._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_metadata._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_metadata._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_discard_bitset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_preresume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_preresume._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resize_cache_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_resize._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_status._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_status._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emit_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_invalidate_cblocks_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_cblock_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_cblock_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_cblock_range._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_cblock_range._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_passdown_if_not_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_cache_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_unregister_target(ptr noundef nonnull @cache_target) #12
  %0 = load ptr, ptr @migration_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_cache_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.194, i32 noundef 80, i32 noundef 8, i32 noundef 0, ptr noundef null) #12
  store ptr %call, ptr @migration_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dm_register_target(ptr noundef nonnull @cache_target) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %call1) #15
  %0 = load ptr, ptr @migration_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %tmp.i.i.i.i = alloca i32, align 4
  %all_clean.i = alloca i8, align 1
  %argc.i.i = alloca i32, align 4
  %block_size.i.i = alloca i32, align 4
  %b.i.i = alloca [32 x i8], align 1
  %as.i = alloca %struct.dm_arg_set, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ti, ptr %call7.i.i, align 8
  %error2 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as.i) #12
  %3 = getelementptr inbounds %struct.dm_arg_set, ptr %as.i, i32 0, i32 1
  %4 = ptrtoint ptr %as.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %argc, ptr %as.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %argv, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i.i) #12
  %6 = call ptr @memset(ptr %b.i.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not.i.i.i = icmp eq i32 %argc, 0
  br i1 %tobool.not.i.i.i, label %if.end.parse_metadata_dev.exit.i_crit_edge, label %if.end.i.i

if.end.parse_metadata_dev.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_metadata_dev.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #12
  %metadata_dev.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 1
  %call2.i.i = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %call1.i.i, i32 noundef 3, ptr noundef %metadata_dev.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.parse_metadata_dev.exit.i_crit_edge

if.end.i.i.parse_metadata_dev.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_metadata_dev.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %metadata_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metadata_dev.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %12)
  %cmp.i.i = icmp ugt i64 %12, 33554432
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end4.i.i.if.end.i_crit_edge

if.end4.i.i.if.end.i_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i = call ptr @bdevname(ptr noundef %10, ptr noundef nonnull %b.i.i) #12
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %call9.i.i, i32 noundef 33292800) #15
  br label %if.end.i

parse_metadata_dev.exit.i:                        ; preds = %if.end.i.i.parse_metadata_dev.exit.i_crit_edge, %if.end.parse_metadata_dev.exit.i_crit_edge
  %storemerge.i = phi ptr [ @.str.6, %if.end.parse_metadata_dev.exit.i_crit_edge ], [ @.str.2, %if.end.i.i.parse_metadata_dev.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ -22, %if.end.parse_metadata_dev.exit.i_crit_edge ], [ %call2.i.i, %if.end.i.i.parse_metadata_dev.exit.i_crit_edge ]
  %13 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %storemerge.i, ptr %error2, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i.i) #12
  br label %parse_cache_args.exit.thread

if.end.i:                                         ; preds = %do.end.i.i, %if.end4.i.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i.i) #12
  %14 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %as.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i45.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i45.i, label %at_least_one_arg.exit.i46.i, label %if.end.i50.i

at_least_one_arg.exit.i46.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.6, ptr %error2, align 4
  br label %parse_cache_args.exit.thread

if.end.i50.i:                                     ; preds = %if.end.i
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %call1.i47.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #12
  %cache_dev.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 2
  %call2.i48.i = call i32 @dm_get_device(ptr noundef %18, ptr noundef %call1.i47.i, i32 noundef 3, ptr noundef %cache_dev.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call2.i48.i, 0
  br i1 %tobool.not.i49.i, label %if.end6.i, label %if.then3.i51.i

if.then3.i51.i:                                   ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.7, ptr %error2, align 4
  br label %parse_cache_args.exit.thread

if.end6.i:                                        ; preds = %if.end.i50.i
  %20 = ptrtoint ptr %cache_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache_dev.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %bd_nr_sectors.i.i.i52.i = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bd_nr_sectors.i.i.i52.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bd_nr_sectors.i.i.i52.i, align 8
  %cache_sectors.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %cache_sectors.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %cache_sectors.i.i, align 8
  %27 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %as.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i55.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i55.i, label %if.end6.i.parse_origin_dev.exit.i_crit_edge, label %if.end.i59.i

if.end6.i.parse_origin_dev.exit.i_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_origin_dev.exit.i

if.end.i59.i:                                     ; preds = %if.end6.i
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %call1.i56.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #12
  %origin_dev.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 4
  %call2.i57.i = call i32 @dm_get_device(ptr noundef %30, ptr noundef %call1.i56.i, i32 noundef 3, ptr noundef %origin_dev.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i57.i)
  %tobool.not.i58.i = icmp eq i32 %call2.i57.i, 0
  br i1 %tobool.not.i58.i, label %if.end4.i62.i, label %if.end.i59.i.parse_origin_dev.exit.i_crit_edge

if.end.i59.i.parse_origin_dev.exit.i_crit_edge:   ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_origin_dev.exit.i

if.end4.i62.i:                                    ; preds = %if.end.i59.i
  %31 = ptrtoint ptr %origin_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %origin_dev.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %bd_nr_sectors.i.i.i60.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %bd_nr_sectors.i.i.i60.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bd_nr_sectors.i.i.i60.i, align 8
  %origin_sectors.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %origin_sectors.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %origin_sectors.i.i, align 8
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.dm_target, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %36)
  %cmp.i61.i = icmp ugt i64 %41, %36
  br i1 %cmp.i61.i, label %if.end4.i62.i.parse_origin_dev.exit.i_crit_edge, label %if.end10.i

if.end4.i62.i.parse_origin_dev.exit.i_crit_edge:  ; preds = %if.end4.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_origin_dev.exit.i

parse_origin_dev.exit.i:                          ; preds = %if.end4.i62.i.parse_origin_dev.exit.i_crit_edge, %if.end.i59.i.parse_origin_dev.exit.i_crit_edge, %if.end6.i.parse_origin_dev.exit.i_crit_edge
  %.str.6.sink.i.i = phi ptr [ @.str.6, %if.end6.i.parse_origin_dev.exit.i_crit_edge ], [ @.str.8, %if.end.i59.i.parse_origin_dev.exit.i_crit_edge ], [ @.str.9, %if.end4.i62.i.parse_origin_dev.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -22, %if.end6.i.parse_origin_dev.exit.i_crit_edge ], [ %call2.i57.i, %if.end.i59.i.parse_origin_dev.exit.i_crit_edge ], [ -22, %if.end4.i62.i.parse_origin_dev.exit.i_crit_edge ]
  %42 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %.str.6.sink.i.i, ptr %error2, align 4
  br label %parse_cache_args.exit.thread

if.end10.i:                                       ; preds = %if.end4.i62.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_size.i.i) #12
  %43 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %block_size.i.i, align 4, !annotation !434
  %44 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %as.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i64.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i64.i, label %if.end10.i.parse_block_size.exit.thread.i_crit_edge, label %if.end.i68.i

if.end10.i.parse_block_size.exit.thread.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_block_size.exit.thread.i

if.end.i68.i:                                     ; preds = %if.end10.i
  %call1.i66.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #12
  %call.i.i.i = call i32 @_kstrtoul(ptr noundef %call1.i66.i, i32 noundef 10, ptr noundef nonnull %block_size.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i67.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i67.i, label %lor.lhs.false.i.i, label %if.end.i68.i.parse_block_size.exit.thread.i_crit_edge

if.end.i68.i.parse_block_size.exit.thread.i_crit_edge: ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_block_size.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i68.i
  %46 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %block_size.i.i, align 4
  %48 = add i32 %47, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097089, i32 %48)
  %49 = icmp ult i32 %48, 2097089
  %and.i.i = and i32 %47, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond21.i.i = and i1 %49, %tobool8.not.i.i
  br i1 %or.cond21.i.i, label %if.end10.i.i, label %lor.lhs.false.i.i.parse_block_size.exit.thread.i_crit_edge

lor.lhs.false.i.i.parse_block_size.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_block_size.exit.thread.i

if.end10.i.i:                                     ; preds = %lor.lhs.false.i.i
  %conv.i.i = zext i32 %47 to i64
  %50 = ptrtoint ptr %cache_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cache_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %conv.i.i)
  %cmp11.i.i = icmp ult i64 %51, %conv.i.i
  br i1 %cmp11.i.i, label %if.end10.i.i.parse_block_size.exit.thread.i_crit_edge, label %if.end14.i

if.end10.i.i.parse_block_size.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_block_size.exit.thread.i

parse_block_size.exit.thread.i:                   ; preds = %if.end10.i.i.parse_block_size.exit.thread.i_crit_edge, %lor.lhs.false.i.i.parse_block_size.exit.thread.i_crit_edge, %if.end.i68.i.parse_block_size.exit.thread.i_crit_edge, %if.end10.i.parse_block_size.exit.thread.i_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.6, %if.end10.i.parse_block_size.exit.thread.i_crit_edge ], [ @.str.10, %lor.lhs.false.i.i.parse_block_size.exit.thread.i_crit_edge ], [ @.str.10, %if.end.i68.i.parse_block_size.exit.thread.i_crit_edge ], [ @.str.11, %if.end10.i.i.parse_block_size.exit.thread.i_crit_edge ]
  %52 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %.str.10.sink.i, ptr %error2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_size.i.i) #12
  br label %parse_cache_args.exit.thread

if.end14.i:                                       ; preds = %if.end10.i.i
  %block_size15.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %block_size15.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %47, ptr %block_size15.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_size.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc.i.i) #12
  %54 = ptrtoint ptr %argc.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %argc.i.i, align 4, !annotation !434
  %features.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %features.i.i, align 8
  %io_mode.i.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %io_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %io_mode.i.i.i, align 4
  %metadata_version.i.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 10, i32 2
  %57 = ptrtoint ptr %metadata_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %metadata_version.i.i.i, align 8
  %discard_passdown.i.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 10, i32 3
  %58 = ptrtoint ptr %discard_passdown.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i.i = load i8, ptr %discard_passdown.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %discard_passdown.i.i.i, align 4
  %call.i.i = call i32 @dm_read_arg_group(ptr noundef nonnull @parse_features._args, ptr noundef nonnull %as.i, ptr noundef nonnull %argc.i.i, ptr noundef %error2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i71.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i71.i, label %while.cond.preheader.i.i, label %if.end14.i.parse_features.exit.i_crit_edge

if.end14.i.parse_features.exit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_features.exit.i

while.cond.preheader.i.i:                         ; preds = %if.end14.i
  %59 = ptrtoint ptr %argc.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %argc.i.i, align 4
  %dec53.i.i = add i32 %60, -1
  store i32 %dec53.i.i, ptr %argc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool1.not54.i.i = icmp eq i32 %60, 0
  br i1 %tobool1.not54.i.i, label %while.cond.preheader.i.i.parse_cache_args.exit_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.parse_cache_args.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_cache_args.exit

while.body.i.i:                                   ; preds = %if.end30.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %mode_ctr.055.i.i = phi i32 [ %mode_ctr.1.i.i, %if.end30.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %call2.i72.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #12
  %call3.i.i = call i32 @strcasecmp(ptr noundef %call2.i72.i, ptr noundef nonnull @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %io_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %io_mode.i.i.i, align 4
  %inc.i.i = add i32 %mode_ctr.055.i.i, 1
  br label %if.end30.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %call6.i.i = call i32 @strcasecmp(ptr noundef %call2.i72.i, ptr noundef nonnull @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else11.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %io_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %io_mode.i.i.i, align 4
  %inc10.i.i = add i32 %mode_ctr.055.i.i, 1
  br label %if.end30.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  %call12.i.i = call i32 @strcasecmp(ptr noundef %call2.i72.i, ptr noundef nonnull @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.else17.i.i

if.then14.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %io_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %io_mode.i.i.i, align 4
  %inc16.i.i = add i32 %mode_ctr.055.i.i, 1
  br label %if.end30.i.i

if.else17.i.i:                                    ; preds = %if.else11.i.i
  %call18.i.i = call i32 @strcasecmp(ptr noundef %call2.i72.i, ptr noundef nonnull @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %if.else21.i.i

if.then20.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %metadata_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %metadata_version.i.i.i, align 8
  br label %if.end30.i.i

if.else21.i.i:                                    ; preds = %if.else17.i.i
  %call22.i.i = call i32 @strcasecmp(ptr noundef %call2.i72.i, ptr noundef nonnull @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.then24.i.i, label %if.else21.i.i.cleanup.sink.split.i74.i_crit_edge

if.else21.i.i.cleanup.sink.split.i74.i_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i74.i

if.then24.i.i:                                    ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %discard_passdown.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i = load i8, ptr %discard_passdown.i.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %discard_passdown.i.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then24.i.i, %if.then20.i.i, %if.then14.i.i, %if.then8.i.i, %if.then5.i.i
  %mode_ctr.1.i.i = phi i32 [ %mode_ctr.055.i.i, %if.then24.i.i ], [ %mode_ctr.055.i.i, %if.then20.i.i ], [ %inc16.i.i, %if.then14.i.i ], [ %inc10.i.i, %if.then8.i.i ], [ %inc.i.i, %if.then5.i.i ]
  %66 = ptrtoint ptr %argc.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %argc.i.i, align 4
  %dec.i.i = add i32 %67, -1
  store i32 %dec.i.i, ptr %argc.i.i, align 4
  %tobool1.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool1.not.i.i, label %while.end.i.i, label %if.end30.i.i.while.body.i.i_crit_edge

if.end30.i.i.while.body.i.i_crit_edge:            ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode_ctr.1.i.i)
  %cmp.i73.i = icmp sgt i32 %mode_ctr.1.i.i, 1
  br i1 %cmp.i73.i, label %while.end.i.i.cleanup.sink.split.i74.i_crit_edge, label %while.end.i.i.parse_cache_args.exit_crit_edge

while.end.i.i.parse_cache_args.exit_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_cache_args.exit

while.end.i.i.cleanup.sink.split.i74.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i74.i

cleanup.sink.split.i74.i:                         ; preds = %while.end.i.i.cleanup.sink.split.i74.i_crit_edge, %if.else21.i.i.cleanup.sink.split.i74.i_crit_edge
  %.str.19.sink.i.i = phi ptr [ @.str.19, %while.end.i.i.cleanup.sink.split.i74.i_crit_edge ], [ @.str.18, %if.else21.i.i.cleanup.sink.split.i74.i_crit_edge ]
  %68 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %.str.19.sink.i.i, ptr %error2, align 4
  br label %parse_features.exit.i

parse_features.exit.i:                            ; preds = %cleanup.sink.split.i74.i, %if.end14.i.parse_features.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i.i) #12
  br label %parse_cache_args.exit.thread

parse_cache_args.exit.thread:                     ; preds = %parse_features.exit.i, %parse_block_size.exit.thread.i, %parse_origin_dev.exit.i, %if.then3.i51.i, %at_least_one_arg.exit.i46.i, %parse_metadata_dev.exit.i
  %retval.0.i.ph = phi i32 [ %call2.i48.i, %if.then3.i51.i ], [ -22, %at_least_one_arg.exit.i46.i ], [ -22, %parse_block_size.exit.thread.i ], [ -22, %parse_features.exit.i ], [ %retval.0.ph.i.i, %parse_origin_dev.exit.i ], [ %retval.0.i.i, %parse_metadata_dev.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as.i) #12
  br label %out

parse_cache_args.exit:                            ; preds = %while.end.i.i.parse_cache_args.exit_crit_edge, %while.cond.preheader.i.i.parse_cache_args.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i.i) #12
  %call19.i = call fastcc i32 @parse_policy(ptr noundef %call7.i.i, ptr noundef nonnull %as.i, ptr noundef %error2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool4.not = icmp eq i32 %call19.i, 0
  br i1 %tobool4.not, label %if.end6, label %parse_cache_args.exit.out_crit_edge

parse_cache_args.exit.out_crit_edge:              ; preds = %parse_cache_args.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %parse_cache_args.exit
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %error1.i = getelementptr inbounds %struct.dm_target, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %features.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i = icmp eq i32 %72, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 1696) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.out_crit_edge, label %if.end.i30

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i30:                                       ; preds = %if.end6
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %76 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %call7.i.i.i, align 8
  %private.i = getelementptr inbounds %struct.dm_target, ptr %70, i32 0, i32 11
  %77 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i, ptr %private.i, align 4
  %num_flush_bios.i = getelementptr inbounds %struct.dm_target, ptr %70, i32 0, i32 5
  %78 = ptrtoint ptr %num_flush_bios.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %num_flush_bios.i, align 4
  %flush_supported.i = getelementptr inbounds %struct.dm_target, ptr %70, i32 0, i32 13
  %79 = ptrtoint ptr %flush_supported.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i = load i8, ptr %flush_supported.i, align 4
  %num_discard_bios.i = getelementptr inbounds %struct.dm_target, ptr %70, i32 0, i32 6
  %80 = ptrtoint ptr %num_discard_bios.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %num_discard_bios.i, align 8
  %bf.set8.i = or i8 %bf.load.i, -64
  store i8 %bf.set8.i, ptr %flush_supported.i, align 4
  %per_io_data_size.i = getelementptr inbounds %struct.dm_target, ptr %70, i32 0, i32 10
  %81 = ptrtoint ptr %per_io_data_size.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 24, ptr %per_io_data_size.i, align 8
  %features9.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 34
  %82 = call ptr @memcpy(ptr %features9.i, ptr %features.i.i, i32 16)
  %io_mode.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 34, i32 1
  %83 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i.i29 = icmp eq i32 %84, 1
  br i1 %cmp.i.i29, label %if.then12.i, label %if.end.i30.if.end17.i_crit_edge

if.end.i30.if.end17.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end.i30
  %bs.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 42
  %call13.i = call i32 @bioset_init(ptr noundef %bs.i, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end17.i_crit_edge, label %if.then12.i.cache_create.exit.thread69_crit_edge

if.then12.i.cache_create.exit.thread69_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cache_create.exit.thread69

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i.if.end17.i_crit_edge, %if.end.i30.if.end17.i_crit_edge
  %85 = ptrtoint ptr %metadata_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %metadata_dev.i.i, align 4
  %metadata_dev18.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %metadata_dev18.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %metadata_dev18.i, align 4
  %88 = ptrtoint ptr %origin_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %origin_dev.i.i, align 8
  %origin_dev19.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %origin_dev19.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %origin_dev19.i, align 8
  %91 = ptrtoint ptr %cache_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cache_dev.i.i, align 8
  %cache_dev20.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 7
  %93 = ptrtoint ptr %cache_dev20.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %cache_dev20.i, align 4
  store ptr null, ptr %cache_dev.i.i, align 8
  store ptr null, ptr %origin_dev.i.i, align 8
  store ptr null, ptr %metadata_dev.i.i, align 4
  %94 = ptrtoint ptr %origin_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %origin_sectors.i.i, align 8
  %origin_sectors24.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 9
  %96 = ptrtoint ptr %origin_sectors24.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %origin_sectors24.i, align 8
  %97 = ptrtoint ptr %block_size15.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %block_size15.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %95)
  %cmp164.i.i = icmp ult i64 %95, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !435

if.then168.i.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %95 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %98
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %block_div.exit.i

if.else174.i.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %98, i64 %95) #17, !srcloc !436
  %asmresult1.i.i.i = extractvalue { i64, i64 } %99, 1
  br label %block_div.exit.i

block_div.exit.i:                                 ; preds = %if.else174.i.i, %if.then168.i.i
  %b.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %origin_blocks27.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 8
  %100 = ptrtoint ptr %origin_blocks27.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %b.addr.0.i.i, ptr %origin_blocks27.i, align 8
  %conv.i = zext i32 %98 to i64
  %sectors_per_block.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv.i, ptr %sectors_per_block.i, align 8
  %call30.i = call i32 @dm_set_target_max_io_len(ptr noundef %70, i64 noundef %conv.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %block_div.exit.i.cache_create.exit.thread69_crit_edge

block_div.exit.i.cache_create.exit.thread69_crit_edge: ; preds = %block_div.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cache_create.exit.thread69

if.end33.i:                                       ; preds = %block_div.exit.i
  %102 = ptrtoint ptr %block_size15.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %block_size15.i.i, align 8
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #12, !range !437
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %tobool36.not.i = icmp ult i32 %104, 2
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end33.i
  %105 = ptrtoint ptr %cache_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %cache_sectors.i.i, align 8
  %sectors_per_block_shift.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %sectors_per_block_shift.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %sectors_per_block_shift.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %106)
  %cmp164.i768.i = icmp ult i64 %106, 4294967296
  br i1 %cmp164.i768.i, label %if.then168.i773.i, label %if.else174.i775.i, !prof !435

if.then168.i773.i:                                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i770.i = trunc i64 %106 to i32
  %div172.i771.i = udiv i32 %conv169.i770.i, %103
  br label %block_div.exit777.i

if.else174.i775.i:                                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %103, i64 %106) #17, !srcloc !436
  %asmresult1.i.i774.i = extractvalue { i64, i64 } %108, 1
  %extract.t842.i = trunc i64 %asmresult1.i.i774.i to i32
  br label %block_div.exit777.i

block_div.exit777.i:                              ; preds = %if.else174.i775.i, %if.then168.i773.i
  %b.addr.0.i776.off0.i = phi i32 [ %div172.i771.i, %if.then168.i773.i ], [ %extract.t842.i, %if.else174.i775.i ]
  %conv.i.i32 = zext i32 %b.addr.0.i776.off0.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %b.addr.0.i776.off0.i)
  %cmp.i778.i = icmp ugt i32 %b.addr.0.i776.off0.i, 1048576
  br i1 %cmp.i778.i, label %land.lhs.true.i.i, label %block_div.exit777.i.if.end49.i_crit_edge

block_div.exit777.i.if.end49.i_crit_edge:         ; preds = %block_div.exit777.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

land.lhs.true.i.i:                                ; preds = %block_div.exit777.i
  %cache_size.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 10
  %109 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cache_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %b.addr.0.i776.off0.i)
  %cmp2.not.i.i = icmp eq i32 %110, %b.addr.0.i776.off0.i
  br i1 %cmp2.not.i.i, label %land.lhs.true.i.i.if.end49.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %call4.i.i = call i32 @___ratelimit(ptr noundef nonnull @set_cache_size._rs, ptr noundef nonnull @__func__.set_cache_size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i779.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i779.i, label %if.then.i.i.if.end49.i_crit_edge, label %if.then.i.i.if.end49.sink.split.i_crit_edge

if.then.i.i.if.end49.sink.split.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.sink.split.i

if.then.i.i.if.end49.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end33.i
  %111 = call i32 @llvm.cttz.i32(i32 %103, i1 false) #12, !range !437
  %sectors_per_block_shift44.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %sectors_per_block_shift44.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %sectors_per_block_shift44.i, align 8
  %113 = ptrtoint ptr %cache_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %cache_sectors.i.i, align 8
  %sh_prom.i = zext i32 %111 to i64
  %shr.i = lshr i64 %114, %sh_prom.i
  %conv47.i = trunc i64 %shr.i to i32
  %conv.i780.i = and i64 %shr.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %conv47.i)
  %cmp.i781.i = icmp ugt i32 %conv47.i, 1048576
  br i1 %cmp.i781.i, label %land.lhs.true.i784.i, label %if.else.i.if.end49.i_crit_edge

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

land.lhs.true.i784.i:                             ; preds = %if.else.i
  %cache_size.i782.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 10
  %115 = ptrtoint ptr %cache_size.i782.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cache_size.i782.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %conv47.i)
  %cmp2.not.i783.i = icmp eq i32 %116, %conv47.i
  br i1 %cmp2.not.i783.i, label %land.lhs.true.i784.i.if.end49.i_crit_edge, label %if.then.i787.i

land.lhs.true.i784.i.if.end49.i_crit_edge:        ; preds = %land.lhs.true.i784.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.then.i787.i:                                   ; preds = %land.lhs.true.i784.i
  %call4.i785.i = call i32 @___ratelimit(ptr noundef nonnull @set_cache_size._rs, ptr noundef nonnull @__func__.set_cache_size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i785.i)
  %tobool.not.i786.i = icmp eq i32 %call4.i785.i, 0
  br i1 %tobool.not.i786.i, label %if.then.i787.i.if.end49.i_crit_edge, label %if.then.i787.i.if.end49.sink.split.i_crit_edge

if.then.i787.i.if.end49.sink.split.i_crit_edge:   ; preds = %if.then.i787.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.sink.split.i

if.then.i787.i.if.end49.i_crit_edge:              ; preds = %if.then.i787.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.end49.sink.split.i:                            ; preds = %if.then.i787.i.if.end49.sink.split.i_crit_edge, %if.then.i.i.if.end49.sink.split.i_crit_edge
  %conv.i780.sink.i = phi i64 [ %conv.i.i32, %if.then.i.i.if.end49.sink.split.i_crit_edge ], [ %conv.i780.i, %if.then.i787.i.if.end49.sink.split.i_crit_edge ]
  %conv47.sink.ph.i = phi i32 [ %b.addr.0.i776.off0.i, %if.then.i.i.if.end49.sink.split.i_crit_edge ], [ %conv47.i, %if.then.i787.i.if.end49.sink.split.i_crit_edge ]
  %call6.i788.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %conv.i780.sink.i) #15
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end49.sink.split.i, %if.then.i787.i.if.end49.i_crit_edge, %land.lhs.true.i784.i.if.end49.i_crit_edge, %if.else.i.if.end49.i_crit_edge, %if.then.i.i.if.end49.i_crit_edge, %land.lhs.true.i.i.if.end49.i_crit_edge, %block_div.exit777.i.if.end49.i_crit_edge
  %conv47.sink.i = phi i32 [ %b.addr.0.i776.off0.i, %block_div.exit777.i.if.end49.i_crit_edge ], [ %b.addr.0.i776.off0.i, %land.lhs.true.i.i.if.end49.i_crit_edge ], [ %b.addr.0.i776.off0.i, %if.then.i.i.if.end49.i_crit_edge ], [ %conv47.i, %if.else.i.if.end49.i_crit_edge ], [ %conv47.i, %land.lhs.true.i784.i.if.end49.i_crit_edge ], [ %conv47.i, %if.then.i787.i.if.end49.i_crit_edge ], [ %conv47.sink.ph.i, %if.end49.sink.split.i ]
  %cache_size8.i790.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 10
  %117 = ptrtoint ptr %cache_size8.i790.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv47.sink.i, ptr %cache_size8.i790.i, align 8
  %policy_name.i.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 7
  %118 = ptrtoint ptr %policy_name.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %policy_name.i.i, align 4
  %120 = ptrtoint ptr %origin_sectors24.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %origin_sectors24.i, align 8
  %122 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %sectors_per_block.i, align 8
  %call.i.i33 = call ptr @dm_cache_policy_create(ptr noundef %119, i32 noundef %conv47.sink.i, i64 noundef %121, i64 noundef %123) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %create_cache_policy.exit.i, label %if.end.i.i34

if.end.i.i34:                                     ; preds = %if.end49.i
  %policy.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 33
  %124 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i.i33, ptr %policy.i.i, align 4
  %tobool.not.i794.i = icmp eq ptr %call.i.i33, null
  br i1 %tobool.not.i794.i, label %do.body8.i.i, label %if.end53.i, !prof !438

do.body8.i.i:                                     ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2306, 0\0A.popsection", ""() #12, !srcloc !439
  unreachable

create_cache_policy.exit.i:                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.50, ptr %error1.i, align 4
  br label %cache_create.exit

if.end53.i:                                       ; preds = %if.end.i.i34
  %policy_argc.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 8
  %126 = ptrtoint ptr %policy_argc.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %policy_argc.i, align 8
  %policy_nr_args.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 32
  %128 = ptrtoint ptr %policy_nr_args.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %policy_nr_args.i, align 8
  %migration_threshold.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 13
  %129 = ptrtoint ptr %migration_threshold.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 2048, ptr %migration_threshold.i, align 8
  %and.i.i35 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.not.i795.i = icmp eq i32 %and.i.i35, 0
  br i1 %tobool.not.i795.i, label %while.cond.preheader.i.i36, label %do.end.i797.i

while.cond.preheader.i.i36:                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool1.not15.i.i = icmp eq i32 %127, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i36.if.end58.i_crit_edge, label %while.body.i.i37.preheader

while.cond.preheader.i.i36.if.end58.i_crit_edge:  ; preds = %while.cond.preheader.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

while.body.i.i37.preheader:                       ; preds = %while.cond.preheader.i.i36
  %policy_argv.i = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 9
  %130 = ptrtoint ptr %policy_argv.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %policy_argv.i, align 4
  br label %while.body.i.i37

do.end.i797.i:                                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i796.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #15
  br label %if.then57.i

while.body.i.i37:                                 ; preds = %if.end6.i.i.while.body.i.i37_crit_edge, %while.body.i.i37.preheader
  %argv.addr.017.i.i = phi ptr [ %add.ptr.i.i, %if.end6.i.i.while.body.i.i37_crit_edge ], [ %131, %while.body.i.i37.preheader ]
  %argc.addr.016.i.i = phi i32 [ %sub.i.i, %if.end6.i.i.while.body.i.i37_crit_edge ], [ %127, %while.body.i.i37.preheader ]
  %132 = ptrtoint ptr %argv.addr.017.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %argv.addr.017.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %argv.addr.017.i.i, i32 1
  %134 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  %136 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %tmp.i.i.i.i, align 4, !annotation !434
  %call.i.i.i.i = call i32 @strcasecmp(ptr noundef %133, ptr noundef nonnull @.str.55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i37
  %call.i.i.i.i.i = call i32 @_kstrtoul(ptr noundef %135, i32 noundef 10, ptr noundef nonnull %tmp.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i.process_config_option.exit.thread.i.i.i_crit_edge

if.then.i.i.i.i.process_config_option.exit.thread.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %process_config_option.exit.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tmp.i.i.i.i, align 4
  %conv.i.i.i.i = zext i32 %138 to i64
  %139 = ptrtoint ptr %migration_threshold.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv.i.i.i.i, ptr %migration_threshold.i, align 8
  br label %process_config_option.exit.thread.i.i.i

process_config_option.exit.thread.i.i.i:          ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i.process_config_option.exit.thread.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ -22, %if.then.i.i.i.i.process_config_option.exit.thread.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  %140 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %policy.i.i, align 4
  %set_config_value.i.i.i.i = getelementptr inbounds %struct.dm_cache_policy, ptr %141, i32 0, i32 13
  %142 = ptrtoint ptr %set_config_value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %set_config_value.i.i.i.i, align 4
  %tobool.not.i12.i.i.i = icmp eq ptr %143, null
  br i1 %tobool.not.i12.i.i.i, label %if.then.i.i.i.set_config_value.exit.i.i_crit_edge, label %cond.true.i.i.i.i

if.then.i.i.i.set_config_value.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_config_value.exit.i.i

cond.true.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i13.i.i.i = call i32 %143(ptr noundef %141, ptr noundef %133, ptr noundef %135) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cond.true.i.i.i.i, %process_config_option.exit.thread.i.i.i
  %r.0.i.i.i = phi i32 [ %retval.0.i.ph.i.i.i, %process_config_option.exit.thread.i.i.i ], [ %call.i13.i.i.i, %cond.true.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i.i.i)
  %tobool.not.i.i.i38 = icmp eq i32 %r.0.i.i.i, 0
  br i1 %tobool.not.i.i.i38, label %if.end6.i.i, label %if.end.i.i.i.set_config_value.exit.i.i_crit_edge

if.end.i.i.i.set_config_value.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_config_value.exit.i.i

set_config_value.exit.i.i:                        ; preds = %if.end.i.i.i.set_config_value.exit.i.i_crit_edge, %if.then.i.i.i.set_config_value.exit.i.i_crit_edge
  %r.018.i.i.i = phi i32 [ %r.0.i.i.i, %if.end.i.i.i.set_config_value.exit.i.i_crit_edge ], [ -22, %if.then.i.i.i.set_config_value.exit.i.i_crit_edge ]
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %133, ptr noundef %135) #15
  br label %if.then57.i

if.end6.i.i:                                      ; preds = %if.end.i.i.i
  %sub.i.i = add i32 %argc.addr.016.i.i, -2
  %add.ptr.i.i = getelementptr ptr, ptr %argv.addr.017.i.i, i32 2
  %tobool1.not.i.i39 = icmp eq i32 %sub.i.i, 0
  br i1 %tobool1.not.i.i39, label %if.end6.i.i.if.end58.i_crit_edge, label %if.end6.i.i.while.body.i.i37_crit_edge

if.end6.i.i.while.body.i.i37_crit_edge:           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i37

if.end6.i.i.if.end58.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

if.then57.i:                                      ; preds = %set_config_value.exit.i.i, %do.end.i797.i
  %retval.0.i798.i = phi i32 [ -22, %do.end.i797.i ], [ %r.018.i.i.i, %set_config_value.exit.i.i ]
  %144 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @.str.21, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

if.end58.i:                                       ; preds = %if.end6.i.i.if.end58.i_crit_edge, %while.cond.preheader.i.i36.if.end58.i_crit_edge
  %145 = ptrtoint ptr %metadata_dev18.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %metadata_dev18.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %149 = ptrtoint ptr %block_size15.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %block_size15.i.i, align 8
  %conv61.i = zext i32 %150 to i64
  %151 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %policy.i.i, align 4
  %call63.i = call i32 @dm_cache_policy_get_hint_size(ptr noundef %152) #12
  %153 = ptrtoint ptr %metadata_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %metadata_version.i.i.i, align 8
  %call65.i = call ptr @dm_cache_metadata_open(ptr noundef %148, i64 noundef %conv61.i, i1 noundef zeroext %cmp.i, i32 noundef %call63.i, i32 noundef %154) #12
  %cmp.i799.i = icmp ugt ptr %call65.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i799.i, label %if.then67.i, label %if.end69.i

if.then67.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @.str.22, ptr %error1.i, align 4
  br label %cache_create.exit

if.end69.i:                                       ; preds = %if.end58.i
  %cmd70.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 4
  %156 = ptrtoint ptr %cmd70.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call65.i, ptr %cmd70.i, align 8
  call fastcc void @set_cache_mode(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #12
  %157 = ptrtoint ptr %features9.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %features9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp72.not.i = icmp eq i32 %158, 0
  br i1 %cmp72.not.i, label %if.end75.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.23, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

if.end75.i:                                       ; preds = %if.end69.i
  %160 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %161)
  %cmp.i801.i = icmp eq i32 %161, 2
  br i1 %cmp.i801.i, label %if.then77.i, label %if.end75.i.do.body.i_crit_edge

if.end75.i.do.body.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then77.i:                                      ; preds = %if.end75.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %all_clean.i) #12
  %162 = ptrtoint ptr %all_clean.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -1, ptr %all_clean.i, align 1, !annotation !434
  %163 = ptrtoint ptr %cmd70.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cmd70.i, align 8
  %call79.i = call i32 @dm_cache_metadata_all_clean(ptr noundef %164, ptr noundef nonnull %all_clean.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end82.i, label %if.then77.i.cleanup.thread.i_crit_edge

if.then77.i.cleanup.thread.i_crit_edge:           ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end82.i:                                       ; preds = %if.then77.i
  %165 = ptrtoint ptr %all_clean.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %all_clean.i, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool83.not.i = icmp eq i8 %166, 0
  br i1 %tobool83.not.i, label %if.end82.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end82.i.cleanup.thread.i_crit_edge:            ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end82.i.cleanup.thread.i_crit_edge, %if.then77.i.cleanup.thread.i_crit_edge
  %storemerge.i40 = phi ptr [ @.str.24, %if.then77.i.cleanup.thread.i_crit_edge ], [ @.str.25, %if.end82.i.cleanup.thread.i_crit_edge ]
  %r.0.ph.i = phi i32 [ %call79.i, %if.then77.i.cleanup.thread.i_crit_edge ], [ -22, %if.end82.i.cleanup.thread.i_crit_edge ]
  %167 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %storemerge.i40, ptr %error1.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %all_clean.i) #12
  br label %cache_create.exit.thread69

cleanup.i:                                        ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %policy.i.i, align 4
  %allow_migrations.i.i = getelementptr inbounds %struct.dm_cache_policy, ptr %169, i32 0, i32 14
  %170 = ptrtoint ptr %allow_migrations.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %allow_migrations.i.i, align 4
  call void %171(ptr noundef %169, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %all_clean.i) #12
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i, %if.end75.i.do.body.i_crit_edge
  %lock.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @cache_create.__key, i16 noundef signext 3) #12
  %deferred_bios.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 17
  %tail.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 17, i32 1
  %172 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %tail.i.i, align 8
  %173 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %deferred_bios.i, align 4
  %nr_allocated_migrations.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 15
  %call.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %nr_allocated_migrations.i, i32 noundef 4) #12
  %174 = ptrtoint ptr %nr_allocated_migrations.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile i32 0, ptr %nr_allocated_migrations.i, align 4
  %nr_io_migrations.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 16
  %call.i.i655.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_io_migrations.i, i32 noundef 4) #12
  %175 = ptrtoint ptr %nr_io_migrations.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile i32 0, ptr %nr_io_migrations.i, align 8
  %migration_wait.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %migration_wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @cache_create.__key.27) #12
  %nr_dirty.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 31
  %call.i.i656.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty.i, i32 noundef 4) #12
  %176 = ptrtoint ptr %nr_dirty.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 0, ptr %nr_dirty.i, align 4
  %177 = ptrtoint ptr %cache_size8.i790.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cache_size8.i790.i, align 8
  %sub.i.i.i = add i32 %178, 31
  %179 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %179, 536870908
  %call1.i.i42 = call noalias ptr @vzalloc(i32 noundef %mul.i.i.i) #18
  %dirty_bitset.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 30
  %180 = ptrtoint ptr %dirty_bitset.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call1.i.i42, ptr %dirty_bitset.i, align 8
  %tobool96.not.i = icmp eq ptr %call1.i.i42, null
  br i1 %tobool96.not.i, label %if.then97.i, label %if.end98.i

if.then97.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.29, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

if.end98.i:                                       ; preds = %do.body.i
  %182 = ptrtoint ptr %cache_size8.i790.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cache_size8.i790.i, align 8
  %sub.i.i802.i = add i32 %183, 31
  %184 = lshr i32 %sub.i.i802.i, 3
  %mul.i.i803.i = and i32 %184, 536870908
  %185 = call ptr @memset(ptr %call1.i.i42, i32 0, i32 %mul.i.i803.i)
  %186 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %sectors_per_block.i, align 8
  %188 = ptrtoint ptr %origin_sectors24.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %origin_sectors24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %189)
  %tobool.not.i804.i = icmp eq i64 %189, 0
  br i1 %tobool.not.i804.i, label %if.end98.i.calculate_discard_block_size.exit.i_crit_edge, label %while.cond.preheader.i805.i

if.end98.i.calculate_discard_block_size.exit.i_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %calculate_discard_block_size.exit.i

while.cond.preheader.i805.i:                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %189)
  %cmp166.i.i.i = icmp ult i64 %189, 4294967296
  %conv171.i.i.i = trunc i64 %189 to i32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %too_many_discard_blocks.exit.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i805.i
  %discard_block_size.0.i.i = phi i64 [ %mul.i810.i, %too_many_discard_blocks.exit.i.i.while.cond.i.i_crit_edge ], [ %187, %while.cond.preheader.i805.i ]
  %conv.i.i.i = trunc i64 %discard_block_size.0.i.i to i32
  br i1 %cmp166.i.i.i, label %if.then170.i.i.i, label %if.else176.i.i.i, !prof !435

if.then170.i.i.i:                                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %div174.i.i.i = udiv i32 %conv171.i.i.i, %conv.i.i.i
  %conv175.i.i.i = zext i32 %div174.i.i.i to i64
  br label %too_many_discard_blocks.exit.i.i

if.else176.i.i.i:                                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %190 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i.i.i, i64 %189) #17, !srcloc !436
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %190, 1
  br label %too_many_discard_blocks.exit.i.i

too_many_discard_blocks.exit.i.i:                 ; preds = %if.else176.i.i.i, %if.then170.i.i.i
  %origin_size.addr.0.i.i.i = phi i64 [ %conv175.i.i.i, %if.then170.i.i.i ], [ %asmresult1.i.i.i.i, %if.else176.i.i.i ]
  %cmp182.i.i.i = icmp ugt i64 %origin_size.addr.0.i.i.i, 16384
  %mul.i810.i = shl i64 %discard_block_size.0.i.i, 1
  br i1 %cmp182.i.i.i, label %too_many_discard_blocks.exit.i.i.while.cond.i.i_crit_edge, label %too_many_discard_blocks.exit.i.i.calculate_discard_block_size.exit.i_crit_edge

too_many_discard_blocks.exit.i.i.calculate_discard_block_size.exit.i_crit_edge: ; preds = %too_many_discard_blocks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %calculate_discard_block_size.exit.i

too_many_discard_blocks.exit.i.i.while.cond.i.i_crit_edge: ; preds = %too_many_discard_blocks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

calculate_discard_block_size.exit.i:              ; preds = %too_many_discard_blocks.exit.i.i.calculate_discard_block_size.exit.i_crit_edge, %if.end98.i.calculate_discard_block_size.exit.i_crit_edge
  %discard_block_size.0.i.i.lcssa89.sink = phi i64 [ %187, %if.end98.i.calculate_discard_block_size.exit.i_crit_edge ], [ %discard_block_size.0.i.i, %too_many_discard_blocks.exit.i.i.calculate_discard_block_size.exit.i_crit_edge ]
  %conv.i.i.i.le = trunc i64 %discard_block_size.0.i.i.lcssa89.sink to i32
  %discard_block_size.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 21
  %191 = ptrtoint ptr %discard_block_size.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv.i.i.i.le, ptr %discard_block_size.i, align 4
  %conv108.i = and i64 %discard_block_size.0.i.i.lcssa89.sink, 4294967295
  %add.i = add nsw i64 %conv108.i, -1
  %sub109.i = add i64 %add.i, %189
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub109.i)
  %cmp287.i = icmp ult i64 %sub109.i, 4294967296
  br i1 %cmp287.i, label %if.then291.i, label %if.else297.i, !prof !435

if.then291.i:                                     ; preds = %calculate_discard_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv292.i = trunc i64 %sub109.i to i32
  %div295.i = udiv i32 %conv292.i, %conv.i.i.i.le
  %conv296.i = zext i32 %div295.i to i64
  br label %if.end301.i

if.else297.i:                                     ; preds = %calculate_discard_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %192 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i.i.i.le, i64 %sub109.i) #17, !srcloc !436
  %asmresult1.i.i = extractvalue { i64, i64 } %192, 1
  br label %if.end301.i

if.end301.i:                                      ; preds = %if.else297.i, %if.then291.i
  %_r.0.i = phi i64 [ %conv296.i, %if.then291.i ], [ %asmresult1.i.i, %if.else297.i ]
  %discard_nr_blocks.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 19
  %193 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %_r.0.i, ptr %discard_nr_blocks.i, align 8
  %conv307.i = trunc i64 %_r.0.i to i32
  %sub.i.i816.i = add i32 %conv307.i, 31
  %194 = lshr i32 %sub.i.i816.i, 3
  %mul.i.i817.i = and i32 %194, 536870908
  %call1.i818.i = call noalias ptr @vzalloc(i32 noundef %mul.i.i817.i) #18
  %discard_bitset.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 20
  %195 = ptrtoint ptr %discard_bitset.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call1.i818.i, ptr %discard_bitset.i, align 8
  %tobool310.not.i = icmp eq ptr %call1.i818.i, null
  br i1 %tobool310.not.i, label %if.then311.i, label %if.end312.i

if.then311.i:                                     ; preds = %if.end301.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.30, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

if.end312.i:                                      ; preds = %if.end301.i
  %197 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %discard_nr_blocks.i, align 8
  %conv316.i = trunc i64 %198 to i32
  %sub.i.i819.i = add i32 %conv316.i, 31
  %199 = lshr i32 %sub.i.i819.i, 3
  %mul.i.i820.i = and i32 %199, 536870908
  %200 = call ptr @memset(ptr %call1.i818.i, i32 0, i32 %mul.i.i820.i)
  %call317.i = call ptr @dm_kcopyd_client_create(ptr noundef nonnull @dm_kcopyd_throttle) #12
  %copier.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 24
  %201 = ptrtoint ptr %copier.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call317.i, ptr %copier.i, align 8
  %cmp.i821.i = icmp ugt ptr %call317.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i821.i, label %if.then320.i, label %if.end323.i

if.then320.i:                                     ; preds = %if.end312.i
  call void @__sanitizer_cov_trace_pc() #14
  %202 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.31, ptr %error1.i, align 4
  %203 = ptrtoint ptr %copier.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %copier.i, align 8
  br label %cache_create.exit

if.end323.i:                                      ; preds = %if.end312.i
  %call324.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.32, i32 noundef 8, i32 noundef 0) #12
  %wq.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 27
  %205 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call324.i, ptr %wq.i, align 4
  %tobool326.not.i = icmp eq ptr %call324.i, null
  br i1 %tobool326.not.i, label %if.then327.i, label %do.body329.i

if.then327.i:                                     ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @.str.33, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

do.body329.i:                                     ; preds = %if.end323.i
  %deferred_bio_worker.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 25
  call void @__init_work(ptr noundef %deferred_bio_worker.i, i32 noundef 0) #12
  %207 = ptrtoint ptr %deferred_bio_worker.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -64, ptr %deferred_bio_worker.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 25, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @cache_create.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry333.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 25, i32 1
  %208 = ptrtoint ptr %entry333.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %entry333.i, ptr %entry333.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 25, i32 1, i32 1
  %209 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %entry333.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 25, i32 2
  %210 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @process_deferred_bios, ptr %func.i, align 8
  %migration_worker.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 26
  call void @__init_work(ptr noundef %migration_worker.i, i32 noundef 0) #12
  %211 = ptrtoint ptr %migration_worker.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -64, ptr %migration_worker.i, align 8
  %lockdep_map343.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 26, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map343.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @cache_create.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry345.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 26, i32 1
  %212 = ptrtoint ptr %entry345.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %entry345.i, ptr %entry345.i, align 4
  %prev.i822.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 26, i32 1, i32 1
  %213 = ptrtoint ptr %prev.i822.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %entry345.i, ptr %prev.i822.i, align 8
  %func347.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 26, i32 2
  %214 = ptrtoint ptr %func347.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @check_migrations, ptr %func347.i, align 4
  %waker.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 28
  call void @__init_work(ptr noundef %waker.i, i32 noundef 0) #12
  %215 = ptrtoint ptr %waker.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -64, ptr %waker.i, align 8
  %lockdep_map359.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 28, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map359.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @cache_create.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry362.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 28, i32 0, i32 1
  %216 = ptrtoint ptr %entry362.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %entry362.i, ptr %entry362.i, align 4
  %prev.i823.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 28, i32 0, i32 1, i32 1
  %217 = ptrtoint ptr %prev.i823.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %entry362.i, ptr %prev.i823.i, align 8
  %func365.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 28, i32 0, i32 2
  %218 = ptrtoint ptr %func365.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @do_waker, ptr %func365.i, align 4
  %timer.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 28, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.41, ptr noundef nonnull @cache_create.__key.40) #12
  %219 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %wq.i, align 4
  %call375.i = call ptr @dm_bio_prison_create_v2(ptr noundef %220) #12
  %prison.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 29
  %221 = ptrtoint ptr %prison.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call375.i, ptr %prison.i, align 4
  %tobool377.not.i = icmp eq ptr %call375.i, null
  br i1 %tobool377.not.i, label %if.then378.i, label %if.end379.i

if.then378.i:                                     ; preds = %do.body329.i
  call void @__sanitizer_cov_trace_pc() #14
  %222 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @.str.42, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

if.end379.i:                                      ; preds = %do.body329.i
  %migration_pool.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 41
  %223 = load ptr, ptr @migration_cache, align 4
  %call.i824.i = call i32 @mempool_init(ptr noundef %migration_pool.i, i32 noundef 128, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %223) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i824.i)
  %tobool381.not.i = icmp eq i32 %call.i824.i, 0
  br i1 %tobool381.not.i, label %cache_create.exit.thread, label %if.then382.i

if.then382.i:                                     ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %error1.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @.str.43, ptr %error1.i, align 4
  br label %cache_create.exit.thread69

cache_create.exit.thread:                         ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #14
  %need_tick_bio.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 36
  %225 = ptrtoint ptr %need_tick_bio.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %bf.load384.i = load i8, ptr %need_tick_bio.i, align 4
  %bf.set386.i = and i8 %bf.load384.i, 3
  %bf.clear388.i = or i8 %bf.set386.i, -128
  store i8 %bf.clear388.i, ptr %need_tick_bio.i, align 4
  call fastcc void @load_stats(ptr noundef nonnull %call7.i.i.i) #12
  %demotion.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 35, i32 4
  %call.i.i657.i = call zeroext i1 @__kasan_check_write(ptr noundef %demotion.i, i32 noundef 4) #12
  %226 = ptrtoint ptr %demotion.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile i32 0, ptr %demotion.i, align 8
  %promotion.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 35, i32 5
  %call.i.i658.i = call zeroext i1 @__kasan_check_write(ptr noundef %promotion.i, i32 noundef 4) #12
  %227 = ptrtoint ptr %promotion.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile i32 0, ptr %promotion.i, align 4
  %copies_avoided.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 35, i32 7
  %call.i.i659.i = call zeroext i1 @__kasan_check_write(ptr noundef %copies_avoided.i, i32 noundef 4) #12
  %228 = ptrtoint ptr %copies_avoided.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile i32 0, ptr %copies_avoided.i, align 4
  %cache_cell_clash.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 35, i32 8
  %call.i.i660.i = call zeroext i1 @__kasan_check_write(ptr noundef %cache_cell_clash.i, i32 noundef 4) #12
  %229 = ptrtoint ptr %cache_cell_clash.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile i32 0, ptr %cache_cell_clash.i, align 8
  %commit_count.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 35, i32 9
  %call.i.i661.i = call zeroext i1 @__kasan_check_write(ptr noundef %commit_count.i, i32 noundef 4) #12
  %230 = ptrtoint ptr %commit_count.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 0, ptr %commit_count.i, align 4
  %discard_count.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 35, i32 10
  %call.i.i662.i = call zeroext i1 @__kasan_check_write(ptr noundef %discard_count.i, i32 noundef 4) #12
  %231 = ptrtoint ptr %discard_count.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile i32 0, ptr %discard_count.i, align 8
  %invalidation_lock.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %invalidation_lock.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @cache_create.__key.44, i16 noundef signext 3) #12
  %invalidation_requests.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 12
  %232 = ptrtoint ptr %invalidation_requests.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile ptr %invalidation_requests.i, ptr %invalidation_requests.i, align 8
  %prev.i825.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %233 = ptrtoint ptr %prev.i825.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %invalidation_requests.i, ptr %prev.i825.i, align 4
  %committer.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 38
  %234 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wq.i, align 4
  call fastcc void @batcher_init(ptr noundef %committer.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i.i, ptr noundef %235) #12
  %tracker.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 40
  call void @__raw_spin_lock_init(ptr noundef %tracker.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @dm_iot_init.__key, i16 noundef signext 3) #12
  %in_flight.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 40, i32 1
  %236 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 0, ptr %in_flight.i.i, align 8
  %idle_time.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 40, i32 2
  %237 = ptrtoint ptr %idle_time.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %idle_time.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %238 = load volatile i32, ptr @jiffies, align 128
  %last_update_time.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 40, i32 3
  %239 = ptrtoint ptr %last_update_time.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %last_update_time.i.i, align 4
  %background_work_lock.i = getelementptr inbounds %struct.cache, ptr %call7.i.i.i, i32 0, i32 37
  call void @__init_rwsem(ptr noundef %background_work_lock.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @cache_create.__key.46) #12
  call fastcc void @prevent_background_work(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end10

cache_create.exit.thread69:                       ; preds = %if.then382.i, %if.then378.i, %if.then327.i, %if.then311.i, %if.then97.i, %cleanup.thread.i, %if.then74.i, %if.then57.i, %block_div.exit.i.cache_create.exit.thread69_crit_edge, %if.then12.i.cache_create.exit.thread69_crit_edge
  %r.1.i.ph = phi i32 [ %r.0.ph.i, %cleanup.thread.i ], [ -22, %block_div.exit.i.cache_create.exit.thread69_crit_edge ], [ -12, %if.then97.i ], [ -12, %if.then311.i ], [ -12, %if.then327.i ], [ -12, %if.then378.i ], [ %call.i824.i, %if.then382.i ], [ -22, %if.then74.i ], [ %retval.0.i798.i, %if.then57.i ], [ %call13.i, %if.then12.i.cache_create.exit.thread69_crit_edge ]
  call fastcc void @destroy(ptr noundef nonnull %call7.i.i.i) #12
  br label %out

cache_create.exit:                                ; preds = %if.then320.i, %if.then67.i, %create_cache_policy.exit.i
  %r.1.i.in = phi ptr [ %call.i.i33, %create_cache_policy.exit.i ], [ %call65.i, %if.then67.i ], [ %204, %if.then320.i ]
  %r.1.i = ptrtoint ptr %r.1.i.in to i32
  call fastcc void @destroy(ptr noundef nonnull %call7.i.i.i) #12
  %tobool8.not = icmp eq ptr %r.1.i.in, null
  br i1 %tobool8.not, label %cache_create.exit.if.end10_crit_edge, label %cache_create.exit.out_crit_edge

cache_create.exit.out_crit_edge:                  ; preds = %cache_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cache_create.exit.if.end10_crit_edge:             ; preds = %cache_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %cache_create.exit.if.end10_crit_edge, %cache_create.exit.thread
  %cache.063 = phi ptr [ %call7.i.i.i, %cache_create.exit.thread ], [ null, %cache_create.exit.if.end10_crit_edge ]
  %sub = add i32 %argc, -3
  %add.ptr = getelementptr ptr, ptr %argv, i32 3
  %240 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 4) #12
  %241 = extractvalue { i32, i1 } %240, 1
  br i1 %241, label %if.end10.if.then13_crit_edge, label %if.end7.i.i.i, !prof !438

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end7.i.i.i:                                    ; preds = %if.end10
  %242 = extractvalue { i32, i1 } %240, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %242, i32 noundef 3520) #18
  %tobool.not.i47 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i47, label %if.end7.i.i.i.if.then13_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then13_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27.not.i = icmp eq i32 %sub, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.if.end14_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end14_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %add.ptr, i32 %i.028.i
  %243 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = call noalias ptr @kstrdup(ptr noundef %244, i32 noundef 3264) #12
  %arrayidx2.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.028.i
  %245 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call1.i, ptr %arrayidx2.i, align 4
  %tobool4.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool4.not.i, label %while.cond.preheader.i, label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028.i)
  %tobool6.not29.i = icmp eq i32 %i.028.i, 0
  br i1 %tobool6.not29.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.130.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.028.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.130.i, -1
  %arrayidx7.i = getelementptr ptr, ptr %call8.i.i.i, i32 %dec.i
  %246 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx7.i, align 4
  call void @kfree(ptr noundef %247) #12
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  br label %if.then13

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %while.end.i, %if.end7.i.i.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  call fastcc void @destroy(ptr noundef %cache.063)
  br label %out

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %for.cond.preheader.i.if.end14_crit_edge
  %nr_ctr_args.i = getelementptr inbounds %struct.cache, ptr %cache.063, i32 0, i32 22
  %248 = ptrtoint ptr %nr_ctr_args.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %sub, ptr %nr_ctr_args.i, align 8
  %ctr_args.i = getelementptr inbounds %struct.cache, ptr %cache.063, i32 0, i32 23
  %249 = ptrtoint ptr %ctr_args.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call8.i.i.i, ptr %ctr_args.i, align 4
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %250 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %cache.063, ptr %private, align 4
  br label %out

out:                                              ; preds = %if.end14, %if.then13, %cache_create.exit.out_crit_edge, %cache_create.exit.thread69, %if.end6.out_crit_edge, %parse_cache_args.exit.out_crit_edge, %parse_cache_args.exit.thread
  %r.0 = phi i32 [ %call19.i, %parse_cache_args.exit.out_crit_edge ], [ %r.1.i, %cache_create.exit.out_crit_edge ], [ -12, %if.then13 ], [ 0, %if.end14 ], [ %retval.0.i.ph, %parse_cache_args.exit.thread ], [ %r.1.i.ph, %cache_create.exit.thread69 ], [ -12, %if.end6.out_crit_edge ]
  %metadata_dev.i50 = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 1
  %251 = ptrtoint ptr %metadata_dev.i50 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %metadata_dev.i50, align 4
  %tobool.not.i51 = icmp eq ptr %252, null
  br i1 %tobool.not.i51, label %out.if.end.i53_crit_edge, label %if.then.i

out.if.end.i53_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i53

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %253 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %call7.i.i, align 8
  call void @dm_put_device(ptr noundef %254, ptr noundef nonnull %252) #12
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.then.i, %out.if.end.i53_crit_edge
  %cache_dev.i52 = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 2
  %255 = ptrtoint ptr %cache_dev.i52 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cache_dev.i52, align 8
  %tobool2.not.i = icmp eq ptr %256, null
  br i1 %tobool2.not.i, label %if.end.i53.if.end6.i55_crit_edge, label %if.then3.i

if.end.i53.if.end6.i55_crit_edge:                 ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i55

if.then3.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #14
  %257 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %call7.i.i, align 8
  call void @dm_put_device(ptr noundef %258, ptr noundef nonnull %256) #12
  br label %if.end6.i55

if.end6.i55:                                      ; preds = %if.then3.i, %if.end.i53.if.end6.i55_crit_edge
  %origin_dev.i54 = getelementptr inbounds %struct.cache_args, ptr %call7.i.i, i32 0, i32 4
  %259 = ptrtoint ptr %origin_dev.i54 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %origin_dev.i54, align 8
  %tobool7.not.i = icmp eq ptr %260, null
  br i1 %tobool7.not.i, label %if.end6.i55.destroy_cache_args.exit_crit_edge, label %if.then8.i

if.end6.i55.destroy_cache_args.exit_crit_edge:    ; preds = %if.end6.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_cache_args.exit

if.then8.i:                                       ; preds = %if.end6.i55
  call void @__sanitizer_cov_trace_pc() #14
  %261 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %call7.i.i, align 8
  call void @dm_put_device(ptr noundef %262, ptr noundef nonnull %260) #12
  br label %destroy_cache_args.exit

destroy_cache_args.exit:                          ; preds = %if.then8.i, %if.end6.i55.destroy_cache_args.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %destroy_cache_args.exit, %if.then
  %retval.0 = phi i32 [ %r.0, %destroy_cache_args.exit ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_dtr(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call fastcc void @destroy(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  %commit_needed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %commit_needed) #12
  %2 = ptrtoint ptr %commit_needed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %commit_needed, align 1, !annotation !434
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %3 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bi_iter.i, align 8
  %sectors_per_block_shift.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sectors_per_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sectors_per_block_shift.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.i = icmp sgt i32 %6, -1
  br i1 %cmp.i.i, label %if.else184.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sectors_per_block.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sectors_per_block.i, align 8
  %conv.i = trunc i64 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %4)
  %cmp168.i = icmp ult i64 %4, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !435

if.then172.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv173.i = trunc i64 %4 to i32
  %div176.i = udiv i32 %conv173.i, %conv.i
  %conv177.i = zext i32 %div176.i to i64
  br label %get_bio_block.exit

if.else178.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %4) #17, !srcloc !436
  %asmresult1.i.i = extractvalue { i64, i64 } %9, 1
  br label %get_bio_block.exit

if.else184.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom185.i = zext i32 %6 to i64
  %shr186.i = lshr i64 %4, %sh_prom185.i
  br label %get_bio_block.exit

get_bio_block.exit:                               ; preds = %if.else184.i, %if.else178.i, %if.then172.i
  %block_nr.0.i = phi i64 [ %shr186.i, %if.else184.i ], [ %conv177.i, %if.then172.i ], [ %asmresult1.i.i, %if.else178.i ]
  %call.i.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %init_per_bio_data.exit, !prof !438

do.body4.i.i:                                     ; preds = %get_bio_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

init_per_bio_data.exit:                           ; preds = %get_bio_block.exit
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %call.i.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %call.i.i, align 8
  %call1.i = tail call i32 @dm_bio_get_target_bio_nr(ptr noundef %bio) #12
  %11 = trunc i32 %call1.i to i8
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2.i = load i8, ptr %call.i.i, align 8
  %bf.value.i = shl i8 %11, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear3.i = and i8 %bf.load2.i, -97
  %bf.set4.i = or i8 %bf.shl.i, %bf.clear3.i
  store i8 %bf.set4.i, ptr %call.i.i, align 8
  %cell.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %cell.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cell.i, align 4
  %len.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %len.i, align 8
  %origin_blocks = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %origin_blocks to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %origin_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %block_nr.0.i, i64 %16)
  %cmp.not = icmp ult i64 %block_nr.0.i, %16
  br i1 %cmp.not, label %if.end, label %if.then, !prof !435

if.then:                                          ; preds = %init_per_bio_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @remap_to_origin(ptr noundef %1, ptr noundef %bio)
  tail call fastcc void @accounted_begin(ptr noundef %1, ptr noundef %bio)
  br label %cleanup

if.end:                                           ; preds = %init_per_bio_data.exit
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i28 = icmp eq i32 %and.i, 3
  %19 = and i32 %18, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.i = icmp ne i32 %19, 0
  %20 = or i1 %cmp.i28, %tobool.i.i
  br i1 %20, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %21 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i29 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i29, label %if.else.i.i30, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bio, ptr %23, align 8
  br label %defer_bio.exit

if.else.i.i30:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %deferred_bios.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 17
  %25 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bio, ptr %deferred_bios.i, align 4
  br label %defer_bio.exit

defer_bio.exit:                                   ; preds = %if.else.i.i30, %if.then.i.i
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bio, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %wq.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 27
  %27 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wq.i.i, align 4
  %deferred_bio_worker.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 25
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %deferred_bio_worker.i.i) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @map_bio(ptr noundef %1, ptr noundef %bio, i64 noundef %block_nr.0.i, ptr noundef nonnull %commit_needed)
  %29 = ptrtoint ptr %commit_needed to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %commit_needed, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool9.not = icmp eq i8 %30, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %lock.i31 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i31) #12
  %work_items.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 6
  %31 = ptrtoint ptr %work_items.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %work_items.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %work_items.i
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %if.then.critedge.i

lor.rhs.i:                                        ; preds = %if.then10
  %bios.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 7
  %33 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bios.i, align 4
  %cmp.i10.not.i = icmp eq ptr %34, null
  %commit_scheduled.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 9
  %35 = ptrtoint ptr %commit_scheduled.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %commit_scheduled.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i31) #12
  br i1 %cmp.i10.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.if.then.i34_crit_edge

lor.rhs.i.if.then.i34_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i34

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.critedge.i:                               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %commit_scheduled.c.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 9
  %36 = ptrtoint ptr %commit_scheduled.c.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %commit_scheduled.c.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i31) #12
  br label %if.then.i34

if.then.i34:                                      ; preds = %if.then.critedge.i, %lor.rhs.i.if.then.i34_crit_edge
  %wq.i.i32 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 4
  %37 = ptrtoint ptr %wq.i.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wq.i.i32, align 4
  %commit_work.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 8
  %call.i.i.i33 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %commit_work.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %lor.rhs.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %defer_bio.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %defer_bio.exit ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call8, %lor.rhs.i.cleanup_crit_edge ], [ %call8, %if.then.i34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %commit_needed) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_end_io(ptr nocapture noundef readonly %ti, ptr noundef %bio, ptr nocapture noundef readnone %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %get_per_bio_data.exit, !prof !438

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %get_per_bio_data.exit.if.end_crit_edge, label %if.then

get_per_bio_data.exit.if.end_crit_edge:           ; preds = %get_per_bio_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %get_per_bio_data.exit
  %policy = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %policy, align 4
  %tick.i = getelementptr inbounds %struct.dm_cache_policy, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %tick.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tick.i, align 4
  %tobool.not.i15 = icmp eq ptr %6, null
  br i1 %tobool.not.i15, label %if.then.policy_tick.exit_crit_edge, label %if.then.i

if.then.policy_tick.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_tick.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %6(ptr noundef %4, i1 noundef zeroext false) #12
  br label %policy_tick.exit

policy_tick.exit:                                 ; preds = %if.then.i, %if.then.policy_tick.exit_crit_edge
  %lock = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %need_tick_bio = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %need_tick_bio to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6 = load i8, ptr %need_tick_bio, align 4
  %bf.set = or i8 %bf.load6, -128
  store i8 %bf.set, ptr %need_tick_bio, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %if.end

if.end:                                           ; preds = %policy_tick.exit, %get_per_bio_data.exit.if.end_crit_edge
  %call.i.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %get_per_bio_data.exit.i, !prof !438

do.body4.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i:                          ; preds = %if.end
  %cell.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cell.i, align 4
  %tobool.not.i16 = icmp eq ptr %9, null
  br i1 %tobool.not.i16, label %get_per_bio_data.exit.i.bio_drop_shared_lock.exit_crit_edge, label %land.lhs.true.i

get_per_bio_data.exit.i.bio_drop_shared_lock.exit_crit_edge: ; preds = %get_per_bio_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_drop_shared_lock.exit

land.lhs.true.i:                                  ; preds = %get_per_bio_data.exit.i
  %prison.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prison.i, align 4
  %call2.i = tail call zeroext i1 @dm_cell_put_v2(ptr noundef %11, ptr noundef nonnull %9) #12
  br i1 %call2.i, label %if.then.i17, label %land.lhs.true.i.bio_drop_shared_lock.exit_crit_edge

land.lhs.true.i.bio_drop_shared_lock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_drop_shared_lock.exit

if.then.i17:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cell.i, align 4
  %14 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prison.i, align 4
  tail call void @dm_bio_prison_free_cell_v2(ptr noundef %15, ptr noundef %13) #12
  br label %bio_drop_shared_lock.exit

bio_drop_shared_lock.exit:                        ; preds = %if.then.i17, %land.lhs.true.i.bio_drop_shared_lock.exit_crit_edge, %get_per_bio_data.exit.i.bio_drop_shared_lock.exit_crit_edge
  %16 = ptrtoint ptr %cell.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cell.i, align 4
  %call.i.i18 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i19 = icmp eq ptr %call.i.i18, null
  br i1 %tobool.not.i.i19, label %do.body4.i.i20, label %get_per_bio_data.exit.i21, !prof !438

do.body4.i.i20:                                   ; preds = %bio_drop_shared_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i21:                        ; preds = %bio_drop_shared_lock.exit
  %tracker.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 40
  %len.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i18, i32 0, i32 3
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not.i1.i = icmp eq i64 %18, 0
  br i1 %tobool.not.i1.i, label %get_per_bio_data.exit.i21.accounted_complete.exit_crit_edge, label %do.body1.i.i

get_per_bio_data.exit.i21.accounted_complete.exit_crit_edge: ; preds = %get_per_bio_data.exit.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %accounted_complete.exit

do.body1.i.i:                                     ; preds = %get_per_bio_data.exit.i21
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tracker.i) #12
  %in_flight.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 40, i32 1
  %19 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %in_flight.i.i, align 8
  %sub.i.i = sub i64 %20, %18
  store i64 %sub.i.i, ptr %in_flight.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %18)
  %tobool6.not.i.i = icmp eq i64 %20, %18
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %do.body1.i.i.if.end8.i.i_crit_edge

do.body1.i.i.if.end8.i.i_crit_edge:               ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %idle_time.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 40, i32 2
  %22 = ptrtoint ptr %idle_time.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %idle_time.i.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %do.body1.i.i.if.end8.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tracker.i, i32 noundef %call2.i.i) #12
  br label %accounted_complete.exit

accounted_complete.exit:                          ; preds = %if.end8.i.i, %get_per_bio_data.exit.i21.accounted_complete.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %stats.i.i = alloca %struct.dm_cache_statistics, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %lockdep_recursion.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 143
  %6 = ptrtoint ptr %lockdep_recursion.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lockdep_recursion.i, align 4
  %add.i = add i32 %7, 65536
  store i32 %add.i, ptr %lockdep_recursion.i, align 4
  %background_work_lock.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 37
  tail call void @down_write(ptr noundef %background_work_lock.i) #12
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %lockdep_recursion4.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 143
  %10 = ptrtoint ptr %lockdep_recursion4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lockdep_recursion4.i, align 4
  %sub.i = add i32 %11, -65536
  store i32 %sub.i, ptr %lockdep_recursion4.i, align 4
  %nr_io_migrations = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_io_migrations, i32 noundef 4) #12
  %12 = ptrtoint ptr %nr_io_migrations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %nr_io_migrations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !435

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2754, 0\0A.popsection", ""() #12, !srcloc !442
  unreachable

do.end8:                                          ; preds = %entry
  %waker = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 28
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %waker) #12
  %wq = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 4
  tail call void @drain_workqueue(ptr noundef %15) #12
  %in_flight = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 40, i32 1
  %16 = ptrtoint ptr %in_flight to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %in_flight, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool10.not = icmp eq i64 %17, 0
  br i1 %tobool10.not, label %do.end8.if.end32_crit_edge, label %do.end26, !prof !435

do.end8.if.end32_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.end26:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2758, i32 noundef 9, ptr noundef null) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.end8.if.end32_crit_edge
  %deferred_bios.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %deferred_bios.i, align 4
  %tail.i5.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tail.i5.i, align 4
  store ptr null, ptr %deferred_bios.i, align 4
  %tobool.not.i611.i = icmp eq ptr %19, null
  br i1 %tobool.not.i611.i, label %if.end32.requeue_deferred_bios.exit_crit_edge, label %if.end32.if.then.i.i_crit_edge

if.end32.if.then.i.i_crit_edge:                   ; preds = %if.end32
  br label %if.then.i.i

if.end32.requeue_deferred_bios.exit_crit_edge:    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue_deferred_bios.exit

if.then.i.i:                                      ; preds = %if.then.i.i.if.then.i.i_crit_edge, %if.end32.if.then.i.i_crit_edge
  %bios.sroa.0.212.i = phi ptr [ %22, %if.then.i.i.if.then.i.i_crit_edge ], [ %19, %if.end32.if.then.i.i_crit_edge ]
  %21 = ptrtoint ptr %bios.sroa.0.212.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bios.sroa.0.212.i, align 8
  store ptr null, ptr %bios.sroa.0.212.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.212.i, i32 0, i32 6
  %23 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 11, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %bios.sroa.0.212.i) #12
  %tobool.not.i6.i = icmp eq ptr %22, null
  br i1 %tobool.not.i6.i, label %if.then.i.i.requeue_deferred_bios.exit_crit_edge, label %if.then.i.i.if.then.i.i_crit_edge

if.then.i.i.if.then.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i.requeue_deferred_bios.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue_deferred_bios.exit

requeue_deferred_bios.exit:                       ; preds = %if.then.i.i.requeue_deferred_bios.exit_crit_edge, %if.end32.requeue_deferred_bios.exit_crit_edge
  %features.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 34
  %24 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.end.i.i, label %requeue_deferred_bios.exit.if.end42_crit_edge

requeue_deferred_bios.exit.if.end42_crit_edge:    ; preds = %requeue_deferred_bios.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end.i.i:                                       ; preds = %requeue_deferred_bios.exit
  %cmd.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd.i.i, align 8
  %cache_size.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cache_size.i.i, align 8
  %dirty_bitset.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 30
  %30 = ptrtoint ptr %dirty_bitset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dirty_bitset.i.i, align 8
  %call2.i.i = tail call i32 @dm_cache_set_dirty_bits(ptr noundef %27, i32 noundef %29, ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %do.end.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef %call2.i.i) #12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %call.i.i51 = tail call ptr @dm_table_device_name(ptr noundef %35) #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %call.i.i51) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.i.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i4.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i4.i, label %if.end.i7.i, label %if.end.i.do.end8.i_crit_edge

if.end.i.do.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.end.i7.i:                                      ; preds = %if.end.i
  %38 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd.i.i, align 8
  %discard_block_size.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 21
  %40 = ptrtoint ptr %discard_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %discard_block_size.i.i, align 4
  %conv.i.i = zext i32 %41 to i64
  %discard_nr_blocks.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %discard_nr_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %discard_nr_blocks.i.i, align 8
  %call1.i.i = tail call i32 @dm_cache_discard_bitset_resize(ptr noundef %39, i64 noundef %conv.i.i, i64 noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i6.i52 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i6.i52, label %for.cond.preheader.i.i, label %do.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i7.i
  %44 = ptrtoint ptr %discard_nr_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %discard_nr_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cmp939.not.i.i = icmp eq i64 %45, 0
  br i1 %cmp939.not.i.i, label %for.cond.preheader.i.i.if.end12.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end12.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %lock.i.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1
  %discard_bitset.i.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 20
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %call.i.i.i = tail call ptr @dm_table_device_name(ptr noundef %49) #12
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %call.i.i.i) #15
  tail call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef %call1.i.i) #12
  br label %do.end8.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add i32 %indvars.i.i, 1
  %conv6.i.i = zext i32 %inc.i.i to i64
  %50 = ptrtoint ptr %discard_nr_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %discard_nr_blocks.i.i, align 8
  %cmp9.i.i = icmp ugt i64 %51, %conv6.i.i
  br i1 %cmp9.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end12.i_crit_edge

for.cond.i.i.if.end12.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %conv641.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %conv6.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %indvars.i.i = trunc i64 %conv641.i.i to i32
  %52 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmd.i.i, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %54 = ptrtoint ptr %discard_bitset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %discard_bitset.i.i.i, align 8
  %div3.i.i.i.i = lshr i32 %indvars.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %55, i32 %div3.i.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %indvars.i.i, 31
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i.i) #12
  %58 = shl nuw i32 1, %and.i.i.i.i
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.i.i = icmp ne i32 %59, 0
  %call17.i.i = tail call i32 @dm_cache_set_discard(ptr noundef %53, i64 noundef %conv641.i.i, i1 noundef zeroext %tobool.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %for.cond.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %call17.i.i) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then19.i.i, %do.end.i.i, %if.end.i.do.end8.i_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %call.i9.i = tail call ptr @dm_table_device_name(ptr noundef %63) #12
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %call.i9.i) #15
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end8.i, %for.cond.i.i.if.end12.i_crit_edge, %for.cond.preheader.i.i.if.end12.i_crit_edge
  %tobool4.not38.i = phi i1 [ false, %do.end8.i ], [ true, %for.cond.preheader.i.i.if.end12.i_crit_edge ], [ true, %for.cond.i.i.if.end12.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats.i.i) #12
  %64 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i11.i = icmp eq i32 %65, 0
  br i1 %cmp.not.i11.i, label %save_stats.exit.i, label %save_stats.exit.thread.i

save_stats.exit.thread.i:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i.i) #12
  br label %do.end18.i

save_stats.exit.i:                                ; preds = %if.end12.i
  %66 = getelementptr inbounds %struct.dm_cache_statistics, ptr %stats.i.i, i32 0, i32 3
  %67 = getelementptr inbounds %struct.dm_cache_statistics, ptr %stats.i.i, i32 0, i32 2
  %68 = getelementptr inbounds %struct.dm_cache_statistics, ptr %stats.i.i, i32 0, i32 1
  %stats1.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 35
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats1.i.i, i32 noundef 4) #12
  %69 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %stats1.i.i, align 4
  %71 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %stats.i.i, align 4
  %read_miss.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 35, i32 1
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_miss.i.i, i32 noundef 4) #12
  %72 = ptrtoint ptr %read_miss.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %read_miss.i.i, align 4
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %68, align 4
  %write_hit.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 35, i32 2
  %call.i.i15.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_hit.i.i, i32 noundef 4) #12
  %75 = ptrtoint ptr %write_hit.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %write_hit.i.i, align 4
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %67, align 4
  %write_miss.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 35, i32 3
  %call.i.i16.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_miss.i.i, i32 noundef 4) #12
  %78 = ptrtoint ptr %write_miss.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %write_miss.i.i, align 4
  %80 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %66, align 4
  %81 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd.i.i, align 8
  call void @dm_cache_metadata_set_stats(ptr noundef %82, ptr noundef nonnull %stats.i.i) #12
  %83 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr.i = load i32, ptr %features.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.not.i15.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp.not.i15.i, label %if.end.i19.i, label %save_stats.exit.i.do.end18.i_crit_edge

save_stats.exit.i.do.end18.i_crit_edge:           ; preds = %save_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

if.end.i19.i:                                     ; preds = %save_stats.exit.i
  %84 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmd.i.i, align 8
  %policy.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 33
  %86 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %policy.i.i, align 4
  %call1.i17.i = call i32 @dm_cache_write_hints(ptr noundef %85, ptr noundef %87) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %if.end.i19.i.if.end22.i_crit_edge, label %if.then2.i.i

if.end.i19.i.if.end22.i_crit_edge:                ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then2.i.i:                                     ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef %call1.i17.i) #12
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then2.i.i, %save_stats.exit.i.do.end18.i_crit_edge, %save_stats.exit.thread.i
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %call.i21.i = call ptr @dm_table_device_name(ptr noundef %91) #12
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %call.i21.i) #15
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end18.i, %if.end.i19.i.if.end22.i_crit_edge
  %tobool14.not43.i = phi i1 [ false, %do.end18.i ], [ true, %if.end.i19.i.if.end22.i_crit_edge ]
  %92 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.not.i23.i = icmp eq i32 %93, 0
  br i1 %cmp.not.i23.i, label %if.end.i27.i, label %if.end22.i.do.end31.i_crit_edge

if.end22.i.do.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i

if.end.i27.i:                                     ; preds = %if.end22.i
  %spec.select.i = and i1 %tobool4.not38.i, %tobool14.not43.i
  %spec.select2.i = and i1 %tobool.not.i.i, %spec.select.i
  %commit_count.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 35, i32 9
  %call.i.i.i24.i = call zeroext i1 @__kasan_check_write(ptr noundef %commit_count.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %commit_count.i.i, i32 1, i32 3, i32 1) #12
  %94 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %commit_count.i.i, ptr %commit_count.i.i, i32 1, ptr elementtype(i32) %commit_count.i.i) #12, !srcloc !443
  %95 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmd.i.i, align 8
  %call1.i26.i = call i32 @dm_cache_commit(ptr noundef %96, i1 noundef zeroext %spec.select2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i27.i.if.end42_crit_edge, label %if.then3.i28.i

if.end.i27.i.if.end42_crit_edge:                  ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then3.i28.i:                                   ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.96, i32 noundef %call1.i26.i) #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then3.i28.i, %if.end22.i.do.end31.i_crit_edge
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %call.i30.i = call ptr @dm_table_device_name(ptr noundef %100) #12
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %call.i30.i) #15
  br label %if.end42

if.end42:                                         ; preds = %do.end31.i, %if.end.i27.i.if.end42_crit_edge, %requeue_deferred_bios.exit.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_preresume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %li = alloca %struct.discard_load_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cache_dev.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cache_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %sectors_per_block.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sectors_per_block.i, align 8
  %conv.i = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp167.i = icmp ult i64 %7, 4294967296
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !435

if.then171.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv172.i = trunc i64 %7 to i32
  %div175.i = udiv i32 %conv172.i, %conv.i
  br label %get_cache_dev_size.exit

if.else177.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %7) #17, !srcloc !436
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t291.i = trunc i64 %asmresult1.i.i to i32
  br label %get_cache_dev_size.exit

get_cache_dev_size.exit:                          ; preds = %if.else177.i, %if.then171.i
  %size.0.off0.i = phi i32 [ %div175.i, %if.then171.i ], [ %extract.t291.i, %if.else177.i ]
  %sized = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %sized to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %sized, align 4
  %12 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast.not = icmp eq i8 %12, 0
  br i1 %bf.cast.not, label %if.then, label %if.else

if.then:                                          ; preds = %get_cache_dev_size.exit
  %call1 = tail call fastcc i32 @resize_cache_dev(ptr noundef %1, i32 noundef %size.0.off0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup54_crit_edge

if.then.cleanup54_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %sized to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load4 = load i8, ptr %sized, align 4
  %bf.set = or i8 %bf.load4, 64
  store i8 %bf.set, ptr %sized, align 4
  br label %if.end15

if.else:                                          ; preds = %get_cache_dev_size.exit
  %cache_size = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cache_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.off0.i, i32 %15)
  %cmp.not = icmp eq i32 %size.0.off0.i, %15
  br i1 %cmp.not, label %if.else.if.end15_crit_edge, label %if.then6

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %size.0.off0.i)
  %cmp.i91 = icmp ult i32 %15, %size.0.off0.i
  br i1 %cmp.i91, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %call.i.i = tail call ptr @dm_table_device_name(ptr noundef %19) #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %call.i.i) #15
  br label %cleanup54

if.end5.i:                                        ; preds = %if.then6
  %dirty_bitset.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 30
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end5.i
  %new_size.addr.0.i = phi i32 [ %size.0.off0.i, %if.end5.i ], [ %add.i92, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.addr.0.i, i32 %15)
  %exitcond.not.i = icmp eq i32 %new_size.addr.0.i, %15
  br i1 %exitcond.not.i, label %if.end9, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %add.i92 = add i32 %new_size.addr.0.i, 1
  %20 = ptrtoint ptr %dirty_bitset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dirty_bitset.i.i, align 8
  %div3.i.i.i = lshr i32 %add.i92, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %21, i32 %div3.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %add.i92, 31
  %24 = shl nuw i32 1, %and.i.i.i
  %25 = and i32 %23, %24
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %while.body.i.while.cond.i_crit_edge, label %do.end15.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end15.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %call.i30.i = tail call ptr @dm_table_device_name(ptr noundef %29) #12
  %conv.i93 = zext i32 %add.i92 to i64
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %call.i30.i, i64 noundef %conv.i93) #15
  br label %cleanup54

if.end9:                                          ; preds = %while.cond.i
  %call10 = tail call fastcc i32 @resize_cache_dev(ptr noundef %1, i32 noundef %size.0.off0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.end9.cleanup54_crit_edge

if.end9.cleanup54_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.end
  %30 = ptrtoint ptr %sized to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load16 = load i8, ptr %sized, align 4
  %31 = and i8 %bf.load16, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %bf.cast19.not = icmp eq i8 %31, 0
  br i1 %bf.cast19.not, label %if.then20, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then20:                                        ; preds = %if.end15
  %cmd = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd, align 8
  %policy = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 33
  %34 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %policy, align 4
  %call21 = tail call i32 @dm_cache_load_mappings(ptr noundef %33, ptr noundef %35, ptr noundef nonnull @load_mapping, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end26, label %do.end

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %39) #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %call.i) #15
  tail call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.117, i32 noundef %call21)
  br label %cleanup54

if.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %sized to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load28 = load i8, ptr %sized, align 4
  %bf.set30 = or i8 %bf.load28, 8
  store i8 %bf.set30, ptr %sized, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end15.if.end31_crit_edge
  %41 = ptrtoint ptr %sized to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load32 = load i8, ptr %sized, align 4
  %42 = and i8 %bf.load32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %bf.cast35.not = icmp eq i8 %42, 0
  br i1 %bf.cast35.not, label %if.then36, label %if.end31.cleanup54_crit_edge

if.end31.cleanup54_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.then36:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %li) #12
  %43 = call ptr @memset(ptr %li, i32 255, i32 16)
  %discard_bitset = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 20
  %44 = ptrtoint ptr %discard_bitset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %discard_bitset, align 8
  %discard_nr_blocks = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 19
  %46 = ptrtoint ptr %discard_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %discard_nr_blocks, align 8
  %conv = trunc i64 %47 to i32
  %sub.i.i = add i32 %conv, 31
  %48 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %48, 536870908
  %49 = call ptr @memset(ptr %45, i32 0, i32 %mul.i.i)
  %50 = ptrtoint ptr %li to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %li, align 8
  %discard_begin.i = getelementptr inbounds %struct.discard_load_info, ptr %li, i32 0, i32 2
  %51 = call ptr @memset(ptr %discard_begin.i, i32 0, i32 16)
  %cmd38 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %cmd38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmd38, align 8
  %call39 = call i32 @dm_cache_load_discards(ptr noundef %53, ptr noundef nonnull @load_discard, ptr noundef nonnull %li) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end48, label %do.end44

do.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %call.i94 = call ptr @dm_table_device_name(ptr noundef %57) #12
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %call.i94) #15
  call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.121, i32 noundef %call39)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %li) #12
  br label %cleanup54

if.end48:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @set_discard_range(ptr noundef nonnull %li)
  %58 = ptrtoint ptr %sized to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load50 = load i8, ptr %sized, align 4
  %bf.set52 = or i8 %bf.load50, 4
  store i8 %bf.set52, ptr %sized, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %li) #12
  br label %cleanup54

cleanup54:                                        ; preds = %if.end48, %do.end44, %if.end31.cleanup54_crit_edge, %do.end, %if.end9.cleanup54_crit_edge, %do.end15.i, %do.end.i, %if.then.cleanup54_crit_edge
  %retval.1 = phi i32 [ %call21, %do.end ], [ %call1, %if.then.cleanup54_crit_edge ], [ %call10, %if.end9.cleanup54_crit_edge ], [ %call39, %do.end44 ], [ 0, %if.end31.cleanup54_crit_edge ], [ 0, %if.end48 ], [ -22, %do.end.i ], [ -22, %do.end15.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %need_tick_bio = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %need_tick_bio to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %need_tick_bio, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %need_tick_bio, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %lockdep_recursion.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 143
  %7 = ptrtoint ptr %lockdep_recursion.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lockdep_recursion.i, align 4
  %add.i = add i32 %8, 65536
  store i32 %add.i, ptr %lockdep_recursion.i, align 4
  %background_work_lock.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 37
  tail call void @up_write(ptr noundef %background_work_lock.i) #12
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %lockdep_recursion4.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 143
  %11 = ptrtoint ptr %lockdep_recursion4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lockdep_recursion4.i, align 4
  %sub.i = add i32 %12, -65536
  store i32 %sub.i, ptr %lockdep_recursion4.i, align 4
  %waker = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 28
  tail call void @do_waker(ptr noundef %waker)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_status(ptr noundef %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %sz = alloca i32, align 4
  %nr_free_blocks_metadata = alloca i64, align 8
  %nr_blocks_metadata = alloca i64, align 8
  %buf = alloca [32 x i8], align 1
  %needs_check = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz) #12
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sz, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_free_blocks_metadata) #12
  %1 = ptrtoint ptr %nr_free_blocks_metadata to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %nr_free_blocks_metadata, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_blocks_metadata) #12
  %2 = ptrtoint ptr %nr_blocks_metadata to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %nr_blocks_metadata, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %needs_check) #12
  %6 = ptrtoint ptr %needs_check to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %needs_check, align 1, !annotation !434
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb141
    i32 2, label %sw.bb235
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %features.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp1.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp1.not.not, label %if.then.cleanup_crit_edge, label %cond.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.130) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %and = and i32 %status_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @dm_suspended(ptr noundef %ti) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.if.end7_crit_edge

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.i:                                         ; preds = %if.then5
  %commit_count.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %commit_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %commit_count.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %commit_count.i, ptr %commit_count.i, i32 1, ptr elementtype(i32) %commit_count.i) #12, !srcloc !443
  %cmd.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd.i, align 8
  %call1.i = tail call i32 @dm_cache_commit(ptr noundef %14, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7_crit_edge, label %if.then3.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @metadata_operation_failed(ptr noundef %5, ptr noundef nonnull @.str.96, i32 noundef %call1.i) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then3.i, %if.end.i.if.end7_crit_edge, %if.then5.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %cmd = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 8
  %call8 = call i32 @dm_cache_get_free_metadata_block_count(ptr noundef %16, ptr noundef nonnull %nr_free_blocks_metadata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %call.i = call ptr @dm_table_device_name(ptr noundef %20) #12
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %call.i, i32 noundef %call8) #15
  br label %err

if.end13:                                         ; preds = %if.end7
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd, align 8
  %call15 = call i32 @dm_cache_get_metadata_dev_size(ptr noundef %22, ptr noundef nonnull %nr_blocks_metadata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %call.i627 = call ptr @dm_table_device_name(ptr noundef %26) #12
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %call.i627, i32 noundef %call15) #15
  br label %err

if.end24:                                         ; preds = %if.end13
  %policy = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 33
  %27 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %policy, align 4
  %residency.i = getelementptr inbounds %struct.dm_cache_policy, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %residency.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %residency.i, align 4
  %call.i628 = call i32 %30(ptr noundef %28) #12
  %31 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %maxlen)
  %cmp26.not = icmp ult i32 %32, %maxlen
  br i1 %cmp26.not, label %cond.false28, label %if.end24.cond.end48_crit_edge

if.end24.cond.end48_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end48

cond.false28:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr29 = getelementptr i8, ptr %result, i32 %32
  %sub30 = sub i32 %maxlen, %32
  %33 = ptrtoint ptr %nr_blocks_metadata to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %nr_blocks_metadata, align 8
  %35 = ptrtoint ptr %nr_free_blocks_metadata to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %nr_free_blocks_metadata, align 8
  %sub31 = sub i64 %34, %36
  %sectors_per_block = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sectors_per_block, align 8
  %conv = zext i32 %call.i628 to i64
  %cache_size = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cache_size, align 8
  %conv34 = zext i32 %40 to i64
  %stats = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #12
  %41 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %stats, align 4
  %read_miss = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35, i32 1
  %call.i.i621 = call zeroext i1 @__kasan_check_read(ptr noundef %read_miss, i32 noundef 4) #12
  %43 = ptrtoint ptr %read_miss to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %read_miss, align 4
  %write_hit = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35, i32 2
  %call.i.i622 = call zeroext i1 @__kasan_check_read(ptr noundef %write_hit, i32 noundef 4) #12
  %45 = ptrtoint ptr %write_hit to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %write_hit, align 4
  %write_miss = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35, i32 3
  %call.i.i623 = call zeroext i1 @__kasan_check_read(ptr noundef %write_miss, i32 noundef 4) #12
  %47 = ptrtoint ptr %write_miss to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %write_miss, align 4
  %demotion = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35, i32 4
  %call.i.i624 = call zeroext i1 @__kasan_check_read(ptr noundef %demotion, i32 noundef 4) #12
  %49 = ptrtoint ptr %demotion to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %demotion, align 4
  %promotion = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 35, i32 5
  %call.i.i625 = call zeroext i1 @__kasan_check_read(ptr noundef %promotion, i32 noundef 4) #12
  %51 = ptrtoint ptr %promotion to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %promotion, align 4
  %nr_dirty = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 31
  %call.i.i626 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_dirty, i32 noundef 4) #12
  %53 = ptrtoint ptr %nr_dirty to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nr_dirty, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.136, i32 noundef 8, i64 noundef %sub31, i64 noundef %34, i64 noundef %38, i64 noundef %conv, i64 noundef %conv34, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #12
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false28, %if.end24.cond.end48_crit_edge
  %cond49 = phi i32 [ %call47, %cond.false28 ], [ 0, %if.end24.cond.end48_crit_edge ]
  %55 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sz, align 4
  %add50 = add i32 %56, %cond49
  store i32 %add50, ptr %sz, align 4
  %metadata_version.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 2
  %discard_passdown.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %maxlen)
  %cmp2.not.i = icmp ult i32 %add50, %maxlen
  br i1 %cmp2.not.i, label %cond.false.i, label %cond.end48.cond.end.i_crit_edge

cond.end48.cond.end.i_crit_edge:                  ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %metadata_version.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %metadata_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.i = icmp eq i32 %58, 2
  %59 = ptrtoint ptr %discard_passdown.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %discard_passdown.i, align 4
  %60 = xor i8 %bf.load.i, -1
  %61 = lshr i8 %60, 7
  %.not.i = zext i8 %61 to i32
  %add.i = select i1 %cmp.i, i32 2, i32 1
  %add1.i = add nuw nsw i32 %add.i, %.not.i
  %add.ptr.i = getelementptr i8, ptr %result, i32 %add50
  %sub.i = sub i32 %maxlen, %add50
  %call.i629 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.163, i32 noundef %add1.i) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.end48.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i629, %cond.false.i ], [ 0, %cond.end48.cond.end.i_crit_edge ]
  %add4.i = add i32 %cond.i, %add50
  %62 = ptrtoint ptr %metadata_version.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %metadata_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp6.i = icmp eq i32 %63, 2
  br i1 %cmp6.i, label %if.then.i, label %cond.end.i.if.end.i630_crit_edge

cond.end.i.if.end.i630_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i630

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %maxlen)
  %cmp8.not.i = icmp ult i32 %add4.i, %maxlen
  br i1 %cmp8.not.i, label %cond.false11.i, label %if.then.i.cond.end15.i_crit_edge

if.then.i.cond.end15.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end15.i

cond.false11.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr12.i = getelementptr i8, ptr %result, i32 %add4.i
  %sub13.i = sub i32 %maxlen, %add4.i
  %call14.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12.i, i32 noundef %sub13.i, ptr noundef nonnull @.str.164) #12
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.false11.i, %if.then.i.cond.end15.i_crit_edge
  %cond16.i = phi i32 [ %call14.i, %cond.false11.i ], [ 0, %if.then.i.cond.end15.i_crit_edge ]
  %add17.i = add i32 %cond16.i, %add4.i
  br label %if.end.i630

if.end.i630:                                      ; preds = %cond.end15.i, %cond.end.i.if.end.i630_crit_edge
  %sz.0.i = phi i32 [ %add17.i, %cond.end15.i ], [ %add4.i, %cond.end.i.if.end.i630_crit_edge ]
  %io_mode.i.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 1
  %64 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_mode.i.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %65, label %if.else55.i [
    i32 1, label %if.then19.i
    i32 2, label %if.then31.i
    i32 0, label %if.then44.i
  ]

if.then19.i:                                      ; preds = %if.end.i630
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %maxlen)
  %cmp20.not.i = icmp ult i32 %sz.0.i, %maxlen
  br i1 %cmp20.not.i, label %cond.false23.i, label %if.then19.i.if.end70.i_crit_edge

if.then19.i.if.end70.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

cond.false23.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr24.i = getelementptr i8, ptr %result, i32 %sz.0.i
  %sub25.i = sub i32 %maxlen, %sz.0.i
  %call26.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24.i, i32 noundef %sub25.i, ptr noundef nonnull @.str.165) #12
  br label %if.end70.i

if.then31.i:                                      ; preds = %if.end.i630
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %maxlen)
  %cmp32.not.i = icmp ult i32 %sz.0.i, %maxlen
  br i1 %cmp32.not.i, label %cond.false35.i, label %if.then31.i.if.end70.i_crit_edge

if.then31.i.if.end70.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

cond.false35.i:                                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr36.i = getelementptr i8, ptr %result, i32 %sz.0.i
  %sub37.i = sub i32 %maxlen, %sz.0.i
  %call38.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36.i, i32 noundef %sub37.i, ptr noundef nonnull @.str.166) #12
  br label %if.end70.i

if.then44.i:                                      ; preds = %if.end.i630
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %maxlen)
  %cmp45.not.i = icmp ult i32 %sz.0.i, %maxlen
  br i1 %cmp45.not.i, label %cond.false48.i, label %if.then44.i.if.end70.i_crit_edge

if.then44.i.if.end70.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

cond.false48.i:                                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr49.i = getelementptr i8, ptr %result, i32 %sz.0.i
  %sub50.i = sub i32 %maxlen, %sz.0.i
  %call51.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49.i, i32 noundef %sub50.i, ptr noundef nonnull @.str.167) #12
  br label %if.end70.i

if.else55.i:                                      ; preds = %if.end.i630
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %maxlen)
  %cmp56.not.i = icmp ult i32 %sz.0.i, %maxlen
  br i1 %cmp56.not.i, label %cond.false59.i, label %if.else55.i.cond.end63.i_crit_edge

if.else55.i.cond.end63.i_crit_edge:               ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end63.i

cond.false59.i:                                   ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr60.i = getelementptr i8, ptr %result, i32 %sz.0.i
  %sub61.i = sub i32 %maxlen, %sz.0.i
  %call62.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60.i, i32 noundef %sub61.i, ptr noundef nonnull @.str.168) #12
  br label %cond.end63.i

cond.end63.i:                                     ; preds = %cond.false59.i, %if.else55.i.cond.end63.i_crit_edge
  %cond64.i = phi i32 [ %call62.i, %cond.false59.i ], [ 0, %if.else55.i.cond.end63.i_crit_edge ]
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %call.i.i631 = call ptr @dm_table_device_name(ptr noundef %70) #12
  %71 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_mode.i.i, align 4
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %call.i.i631, i32 noundef %72) #15
  br label %if.end70.i

if.end70.i:                                       ; preds = %cond.end63.i, %cond.false48.i, %if.then44.i.if.end70.i_crit_edge, %cond.false35.i, %if.then31.i.if.end70.i_crit_edge, %cond.false23.i, %if.then19.i.if.end70.i_crit_edge
  %cond28.pn.i = phi i32 [ %cond64.i, %cond.end63.i ], [ %call26.i, %cond.false23.i ], [ 0, %if.then19.i.if.end70.i_crit_edge ], [ %call38.i, %cond.false35.i ], [ 0, %if.then31.i.if.end70.i_crit_edge ], [ %call51.i, %cond.false48.i ], [ 0, %if.then44.i.if.end70.i_crit_edge ]
  %sz.1.i = add i32 %cond28.pn.i, %sz.0.i
  %73 = ptrtoint ptr %discard_passdown.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load72.i = load i8, ptr %discard_passdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load72.i)
  %bf.cast74.not.i = icmp sgt i8 %bf.load72.i, -1
  br i1 %bf.cast74.not.i, label %if.then75.i, label %if.end70.i.emit_flags.exit_crit_edge

if.end70.i.emit_flags.exit_crit_edge:             ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %emit_flags.exit

if.then75.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1.i, i32 %maxlen)
  %cmp76.not.i = icmp ult i32 %sz.1.i, %maxlen
  br i1 %cmp76.not.i, label %cond.false79.i, label %if.then75.i.cond.end83.i_crit_edge

if.then75.i.cond.end83.i_crit_edge:               ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end83.i

cond.false79.i:                                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr80.i = getelementptr i8, ptr %result, i32 %sz.1.i
  %sub81.i = sub i32 %maxlen, %sz.1.i
  %call82.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80.i, i32 noundef %sub81.i, ptr noundef nonnull @.str.171) #12
  br label %cond.end83.i

cond.end83.i:                                     ; preds = %cond.false79.i, %if.then75.i.cond.end83.i_crit_edge
  %cond84.i = phi i32 [ %call82.i, %cond.false79.i ], [ 0, %if.then75.i.cond.end83.i_crit_edge ]
  %add85.i = add i32 %cond84.i, %sz.1.i
  br label %emit_flags.exit

emit_flags.exit:                                  ; preds = %cond.end83.i, %if.end70.i.emit_flags.exit_crit_edge
  %sz.2.i = phi i32 [ %sz.1.i, %if.end70.i.emit_flags.exit_crit_edge ], [ %add85.i, %cond.end83.i ]
  %74 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sz.2.i, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2.i, i32 %maxlen)
  %cmp51.not = icmp ult i32 %sz.2.i, %maxlen
  br i1 %cmp51.not, label %cond.false54, label %emit_flags.exit.cond.end58_crit_edge

emit_flags.exit.cond.end58_crit_edge:             ; preds = %emit_flags.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end58

cond.false54:                                     ; preds = %emit_flags.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr55 = getelementptr i8, ptr %result, i32 %sz.2.i
  %sub56 = sub i32 %maxlen, %sz.2.i
  %migration_threshold = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 13
  %75 = ptrtoint ptr %migration_threshold to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %migration_threshold, align 8
  %call57 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.137, i64 noundef %76) #12
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false54, %emit_flags.exit.cond.end58_crit_edge
  %cond59 = phi i32 [ %call57, %cond.false54 ], [ 0, %emit_flags.exit.cond.end58_crit_edge ]
  %77 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sz, align 4
  %add60 = add i32 %78, %cond59
  store i32 %add60, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %maxlen)
  %cmp61.not = icmp ult i32 %add60, %maxlen
  br i1 %cmp61.not, label %cond.false64, label %cond.end58.cond.end70_crit_edge

cond.end58.cond.end70_crit_edge:                  ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end70

cond.false64:                                     ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr65 = getelementptr i8, ptr %result, i32 %add60
  %sub66 = sub i32 %maxlen, %add60
  %79 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %policy, align 4
  %call68 = call ptr @dm_cache_policy_get_name(ptr noundef %80) #12
  %call69 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.138, ptr noundef %call68) #12
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false64, %cond.end58.cond.end70_crit_edge
  %cond71 = phi i32 [ %call69, %cond.false64 ], [ 0, %cond.end58.cond.end70_crit_edge ]
  %81 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sz, align 4
  %add72 = add i32 %82, %cond71
  store i32 %add72, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %maxlen)
  %cmp73 = icmp ult i32 %add72, %maxlen
  br i1 %cmp73, label %if.then75, label %cond.end70.if.end87_crit_edge

cond.end70.if.end87_crit_edge:                    ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then75:                                        ; preds = %cond.end70
  %83 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %policy, align 4
  %emit_config_values.i = getelementptr inbounds %struct.dm_cache_policy, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %emit_config_values.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %emit_config_values.i, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %policy_emit_config_values.exit.thread, label %policy_emit_config_values.exit

policy_emit_config_values.exit.thread:            ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i636 = getelementptr i8, ptr %result, i32 %add72
  %sub.i637 = sub i32 %maxlen, %add72
  %call2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i636, i32 noundef %sub.i637, ptr noundef nonnull @.str.172) #12
  %add.i640 = add i32 %call2.i, %add72
  %87 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i640, ptr %sz, align 4
  br label %if.end87

policy_emit_config_values.exit:                   ; preds = %if.then75
  %call.i632 = call i32 %86(ptr noundef %84, ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull %sz) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i632)
  %tobool78.not = icmp eq i32 %call.i632, 0
  br i1 %tobool78.not, label %policy_emit_config_values.exit.if.end87_crit_edge, label %do.end82

policy_emit_config_values.exit.if.end87_crit_edge: ; preds = %policy_emit_config_values.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

do.end82:                                         ; preds = %policy_emit_config_values.exit
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %5, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %call.i643 = call ptr @dm_table_device_name(ptr noundef %91) #12
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %call.i643, i32 noundef %call.i632) #15
  br label %if.end87

if.end87:                                         ; preds = %do.end82, %policy_emit_config_values.exit.if.end87_crit_edge, %policy_emit_config_values.exit.thread, %cond.end70.if.end87_crit_edge
  %92 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp89 = icmp eq i32 %93, 1
  %94 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %maxlen)
  %cmp92.not = icmp ult i32 %95, %maxlen
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.end87
  br i1 %cmp92.not, label %cond.false95, label %if.then91.cond.end99_crit_edge

if.then91.cond.end99_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end99

cond.false95:                                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr96 = getelementptr i8, ptr %result, i32 %95
  %sub97 = sub i32 %maxlen, %95
  %call98 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.142) #12
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false95, %if.then91.cond.end99_crit_edge
  %cond100 = phi i32 [ %call98, %cond.false95 ], [ 0, %if.then91.cond.end99_crit_edge ]
  %96 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sz, align 4
  %add101 = add i32 %97, %cond100
  br label %if.end112

if.else:                                          ; preds = %if.end87
  br i1 %cmp92.not, label %cond.false105, label %if.else.cond.end109_crit_edge

if.else.cond.end109_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end109

cond.false105:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr106 = getelementptr i8, ptr %result, i32 %95
  %sub107 = sub i32 %maxlen, %95
  %call108 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106, i32 noundef %sub107, ptr noundef nonnull @.str.143) #12
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false105, %if.else.cond.end109_crit_edge
  %cond110 = phi i32 [ %call108, %cond.false105 ], [ 0, %if.else.cond.end109_crit_edge ]
  %98 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sz, align 4
  %add111 = add i32 %99, %cond110
  br label %if.end112

if.end112:                                        ; preds = %cond.end109, %cond.end99
  %storemerge = phi i32 [ %add111, %cond.end109 ], [ %add101, %cond.end99 ]
  %100 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %storemerge, ptr %sz, align 4
  %101 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmd, align 8
  %call114 = call i32 @dm_cache_metadata_needs_check(ptr noundef %102, ptr noundef nonnull %needs_check) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %lor.lhs.false, label %if.end112.if.then118_crit_edge

if.end112.if.then118_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

lor.lhs.false:                                    ; preds = %if.end112
  %103 = ptrtoint ptr %needs_check to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %needs_check, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool116.not = icmp eq i8 %104, 0
  br i1 %tobool116.not, label %if.else129, label %lor.lhs.false.if.then118_crit_edge

lor.lhs.false.if.then118_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false.if.then118_crit_edge, %if.end112.if.then118_crit_edge
  %105 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %maxlen)
  %cmp119.not = icmp ult i32 %106, %maxlen
  br i1 %cmp119.not, label %cond.false122, label %if.then118.cleanup_crit_edge

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false122:                                    ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr123 = getelementptr i8, ptr %result, i32 %106
  %sub124 = sub i32 %maxlen, %106
  %call125 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.144) #12
  br label %cleanup

if.else129:                                       ; preds = %lor.lhs.false
  %107 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %maxlen)
  %cmp130.not = icmp ult i32 %108, %maxlen
  br i1 %cmp130.not, label %cond.false133, label %if.else129.cleanup_crit_edge

if.else129.cleanup_crit_edge:                     ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false133:                                    ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr134 = getelementptr i8, ptr %result, i32 %108
  %sub135 = sub i32 %maxlen, %108
  %call136 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr134, i32 noundef %sub135, ptr noundef nonnull @.str.145) #12
  br label %cleanup

sw.bb141:                                         ; preds = %entry
  %metadata_dev = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 5
  %109 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %metadata_dev, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bd_dev, align 4
  %shr = lshr i32 %114, 20
  %and145 = and i32 %114, 1048575
  %call146 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.146, i32 noundef %shr, i32 noundef %and145)
  %115 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %maxlen)
  %cmp149.not = icmp ult i32 %116, %maxlen
  br i1 %cmp149.not, label %cond.false152, label %sw.bb141.cond.end157_crit_edge

sw.bb141.cond.end157_crit_edge:                   ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end157

cond.false152:                                    ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr153 = getelementptr i8, ptr %result, i32 %116
  %sub154 = sub i32 %maxlen, %116
  %call156 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153, i32 noundef %sub154, ptr noundef nonnull @.str.138, ptr noundef nonnull %buf) #12
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false152, %sw.bb141.cond.end157_crit_edge
  %cond158 = phi i32 [ %call156, %cond.false152 ], [ 0, %sw.bb141.cond.end157_crit_edge ]
  %117 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sz, align 4
  %add159 = add i32 %118, %cond158
  store i32 %add159, ptr %sz, align 4
  %cache_dev = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 7
  %119 = ptrtoint ptr %cache_dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cache_dev, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %bd_dev162 = getelementptr inbounds %struct.block_device, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %bd_dev162 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bd_dev162, align 4
  %shr163 = lshr i32 %124, 20
  %and167 = and i32 %124, 1048575
  %call168 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.146, i32 noundef %shr163, i32 noundef %and167)
  %125 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %maxlen)
  %cmp171.not = icmp ult i32 %126, %maxlen
  br i1 %cmp171.not, label %cond.false174, label %cond.end157.cond.end179_crit_edge

cond.end157.cond.end179_crit_edge:                ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179

cond.false174:                                    ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr175 = getelementptr i8, ptr %result, i32 %126
  %sub176 = sub i32 %maxlen, %126
  %call178 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr175, i32 noundef %sub176, ptr noundef nonnull @.str.138, ptr noundef nonnull %buf) #12
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false174, %cond.end157.cond.end179_crit_edge
  %cond180 = phi i32 [ %call178, %cond.false174 ], [ 0, %cond.end157.cond.end179_crit_edge ]
  %127 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sz, align 4
  %add181 = add i32 %128, %cond180
  store i32 %add181, ptr %sz, align 4
  %origin_dev = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 6
  %129 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %origin_dev, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %bd_dev184 = getelementptr inbounds %struct.block_device, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %bd_dev184 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bd_dev184, align 4
  %shr185 = lshr i32 %134, 20
  %and189 = and i32 %134, 1048575
  %call190 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.146, i32 noundef %shr185, i32 noundef %and189)
  %135 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %maxlen)
  %cmp193.not = icmp ult i32 %136, %maxlen
  br i1 %cmp193.not, label %cond.false196, label %cond.end179.cond.end201_crit_edge

cond.end179.cond.end201_crit_edge:                ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end201

cond.false196:                                    ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr197 = getelementptr i8, ptr %result, i32 %136
  %sub198 = sub i32 %maxlen, %136
  %call200 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr197, i32 noundef %sub198, ptr noundef nonnull @.str.147, ptr noundef nonnull %buf) #12
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false196, %cond.end179.cond.end201_crit_edge
  %cond202 = phi i32 [ %call200, %cond.false196 ], [ 0, %cond.end179.cond.end201_crit_edge ]
  %137 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sz, align 4
  %add203 = add i32 %138, %cond202
  store i32 %add203, ptr %sz, align 4
  %nr_ctr_args = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 22
  %139 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nr_ctr_args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp205655.not = icmp eq i32 %140, 1
  br i1 %cmp205655.not, label %cond.end201.if.then219_crit_edge, label %for.body.lr.ph

cond.end201.if.then219_crit_edge:                 ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then219

for.body.lr.ph:                                   ; preds = %cond.end201
  %ctr_args = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %cond.end214.for.body_crit_edge, %for.body.lr.ph
  %i.0656 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end214.for.body_crit_edge ]
  %141 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %maxlen)
  %cmp207.not = icmp ult i32 %142, %maxlen
  br i1 %cmp207.not, label %cond.false210, label %for.body.cond.end214_crit_edge

for.body.cond.end214_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end214

cond.false210:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr211 = getelementptr i8, ptr %result, i32 %142
  %sub212 = sub i32 %maxlen, %142
  %143 = ptrtoint ptr %ctr_args to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctr_args, align 4
  %arrayidx = getelementptr ptr, ptr %144, i32 %i.0656
  %145 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx, align 4
  %call213 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr211, i32 noundef %sub212, ptr noundef nonnull @.str.148, ptr noundef %146) #12
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false210, %for.body.cond.end214_crit_edge
  %cond215 = phi i32 [ %call213, %cond.false210 ], [ 0, %for.body.cond.end214_crit_edge ]
  %147 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sz, align 4
  %add216 = add i32 %148, %cond215
  store i32 %add216, ptr %sz, align 4
  %inc = add nuw i32 %i.0656, 1
  %149 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %nr_ctr_args, align 8
  %sub204 = add i32 %150, -1
  %cmp205 = icmp ult i32 %inc, %sub204
  br i1 %cmp205, label %cond.end214.for.body_crit_edge, label %for.end

cond.end214.for.body_crit_edge:                   ; preds = %cond.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cond.end214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool218.not = icmp eq i32 %150, 0
  br i1 %tobool218.not, label %for.end.cleanup_crit_edge, label %for.end.if.then219_crit_edge

for.end.if.then219_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then219

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then219:                                       ; preds = %for.end.if.then219_crit_edge, %cond.end201.if.then219_crit_edge
  %sub204.lcssa663 = phi i32 [ %sub204, %for.end.if.then219_crit_edge ], [ 0, %cond.end201.if.then219_crit_edge ]
  %151 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %maxlen)
  %cmp220.not = icmp ult i32 %152, %maxlen
  br i1 %cmp220.not, label %cond.false223, label %if.then219.cleanup_crit_edge

if.then219.cleanup_crit_edge:                     ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false223:                                    ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr224 = getelementptr i8, ptr %result, i32 %152
  %sub225 = sub i32 %maxlen, %152
  %ctr_args226 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 23
  %153 = ptrtoint ptr %ctr_args226 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ctr_args226, align 4
  %arrayidx229 = getelementptr ptr, ptr %154, i32 %sub204.lcssa663
  %155 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx229, align 4
  %call230 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr224, i32 noundef %sub225, ptr noundef nonnull @.str.148, ptr noundef %156) #12
  br label %cleanup

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp236.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp236.not.not, label %sw.bb235.cond.end252_crit_edge, label %cond.false239

sw.bb235.cond.end252_crit_edge:                   ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end252

cond.false239:                                    ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #14
  %type242 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %157 = ptrtoint ptr %type242 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %type242, align 4
  %name = getelementptr inbounds %struct.target_type, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %name, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %158, i32 0, i32 3
  %161 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %version, align 8
  %arrayidx247 = getelementptr %struct.target_type, ptr %158, i32 0, i32 3, i32 1
  %163 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx247, align 4
  %arrayidx250 = getelementptr %struct.target_type, ptr %158, i32 0, i32 3, i32 2
  %165 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx250, align 8
  %call251 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.149, ptr noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166) #12
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false239, %sw.bb235.cond.end252_crit_edge
  %cond253 = phi i32 [ %call251, %cond.false239 ], [ 0, %sw.bb235.cond.end252_crit_edge ]
  %167 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sz, align 4
  %add254 = add i32 %168, %cond253
  store i32 %add254, ptr %sz, align 4
  %features.i645 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34
  %169 = ptrtoint ptr %features.i645 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %features.i645, align 8
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %170, label %if.else284 [
    i32 2, label %if.then258
    i32 1, label %if.then273
  ]

if.then258:                                       ; preds = %cond.end252
  call void @__sanitizer_cov_trace_cmp4(i32 %add254, i32 %maxlen)
  %cmp259.not = icmp ult i32 %add254, %maxlen
  br i1 %cmp259.not, label %cond.false262, label %if.then258.cond.end266_crit_edge

if.then258.cond.end266_crit_edge:                 ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end266

cond.false262:                                    ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr263 = getelementptr i8, ptr %result, i32 %add254
  %sub264 = sub i32 %maxlen, %add254
  %call265 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr263, i32 noundef %sub264, ptr noundef nonnull @.str.150) #12
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false262, %if.then258.cond.end266_crit_edge
  %cond267 = phi i32 [ %call265, %cond.false262 ], [ 0, %if.then258.cond.end266_crit_edge ]
  %172 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sz, align 4
  %add268 = add i32 %173, %cond267
  store i32 %add268, ptr %sz, align 4
  br label %if.end296

if.then273:                                       ; preds = %cond.end252
  call void @__sanitizer_cov_trace_cmp4(i32 %add254, i32 %maxlen)
  %cmp274.not = icmp ult i32 %add254, %maxlen
  br i1 %cmp274.not, label %cond.false277, label %if.then273.cond.end281_crit_edge

if.then273.cond.end281_crit_edge:                 ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end281

cond.false277:                                    ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr278 = getelementptr i8, ptr %result, i32 %add254
  %sub279 = sub i32 %maxlen, %add254
  %call280 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr278, i32 noundef %sub279, ptr noundef nonnull @.str.151) #12
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false277, %if.then273.cond.end281_crit_edge
  %cond282 = phi i32 [ %call280, %cond.false277 ], [ 0, %if.then273.cond.end281_crit_edge ]
  %174 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sz, align 4
  %add283 = add i32 %175, %cond282
  store i32 %add283, ptr %sz, align 4
  br label %if.end296

if.else284:                                       ; preds = %cond.end252
  call void @__sanitizer_cov_trace_cmp4(i32 %add254, i32 %maxlen)
  %cmp285.not = icmp ult i32 %add254, %maxlen
  br i1 %cmp285.not, label %cond.false288, label %if.else284.cond.end292_crit_edge

if.else284.cond.end292_crit_edge:                 ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end292

cond.false288:                                    ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr289 = getelementptr i8, ptr %result, i32 %add254
  %sub290 = sub i32 %maxlen, %add254
  %call291 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr289, i32 noundef %sub290, ptr noundef nonnull @.str.152) #12
  br label %cond.end292

cond.end292:                                      ; preds = %cond.false288, %if.else284.cond.end292_crit_edge
  %cond293 = phi i32 [ %call291, %cond.false288 ], [ 0, %if.else284.cond.end292_crit_edge ]
  %176 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sz, align 4
  %add294 = add i32 %177, %cond293
  store i32 %add294, ptr %sz, align 4
  br label %if.end296

if.end296:                                        ; preds = %cond.end292, %cond.end281, %cond.end266
  %metadata_dev298 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 5
  %178 = ptrtoint ptr %metadata_dev298 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %metadata_dev298, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %bd_dev300 = getelementptr inbounds %struct.block_device, ptr %181, i32 0, i32 5
  %182 = ptrtoint ptr %bd_dev300 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bd_dev300, align 4
  %shr301 = lshr i32 %183, 20
  %and305 = and i32 %183, 1048575
  %call306 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.146, i32 noundef %shr301, i32 noundef %and305)
  %184 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %maxlen)
  %cmp309.not = icmp ult i32 %185, %maxlen
  br i1 %cmp309.not, label %cond.false312, label %if.end296.cond.end317_crit_edge

if.end296.cond.end317_crit_edge:                  ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end317

cond.false312:                                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr313 = getelementptr i8, ptr %result, i32 %185
  %sub314 = sub i32 %maxlen, %185
  %call316 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr313, i32 noundef %sub314, ptr noundef nonnull @.str.153, ptr noundef nonnull %buf) #12
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false312, %if.end296.cond.end317_crit_edge
  %cond318 = phi i32 [ %call316, %cond.false312 ], [ 0, %if.end296.cond.end317_crit_edge ]
  %186 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sz, align 4
  %add319 = add i32 %187, %cond318
  store i32 %add319, ptr %sz, align 4
  %cache_dev321 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 7
  %188 = ptrtoint ptr %cache_dev321 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cache_dev321, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %bd_dev323 = getelementptr inbounds %struct.block_device, ptr %191, i32 0, i32 5
  %192 = ptrtoint ptr %bd_dev323 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %bd_dev323, align 4
  %shr324 = lshr i32 %193, 20
  %and328 = and i32 %193, 1048575
  %call329 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.146, i32 noundef %shr324, i32 noundef %and328)
  %194 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %maxlen)
  %cmp332.not = icmp ult i32 %195, %maxlen
  br i1 %cmp332.not, label %cond.false335, label %cond.end317.cond.end340_crit_edge

cond.end317.cond.end340_crit_edge:                ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end340

cond.false335:                                    ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr336 = getelementptr i8, ptr %result, i32 %195
  %sub337 = sub i32 %maxlen, %195
  %call339 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr336, i32 noundef %sub337, ptr noundef nonnull @.str.154, ptr noundef nonnull %buf) #12
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false335, %cond.end317.cond.end340_crit_edge
  %cond341 = phi i32 [ %call339, %cond.false335 ], [ 0, %cond.end317.cond.end340_crit_edge ]
  %196 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sz, align 4
  %add342 = add i32 %197, %cond341
  store i32 %add342, ptr %sz, align 4
  %origin_dev344 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 6
  %198 = ptrtoint ptr %origin_dev344 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %origin_dev344, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %bd_dev346 = getelementptr inbounds %struct.block_device, ptr %201, i32 0, i32 5
  %202 = ptrtoint ptr %bd_dev346 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bd_dev346, align 4
  %shr347 = lshr i32 %203, 20
  %and351 = and i32 %203, 1048575
  %call352 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.146, i32 noundef %shr347, i32 noundef %and351)
  %204 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %maxlen)
  %cmp355.not = icmp ult i32 %205, %maxlen
  br i1 %cmp355.not, label %cond.false358, label %cond.end340.cond.end363_crit_edge

cond.end340.cond.end363_crit_edge:                ; preds = %cond.end340
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end363

cond.false358:                                    ; preds = %cond.end340
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr359 = getelementptr i8, ptr %result, i32 %205
  %sub360 = sub i32 %maxlen, %205
  %call362 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr359, i32 noundef %sub360, ptr noundef nonnull @.str.155, ptr noundef nonnull %buf) #12
  br label %cond.end363

cond.end363:                                      ; preds = %cond.false358, %cond.end340.cond.end363_crit_edge
  %cond364 = phi i32 [ %call362, %cond.false358 ], [ 0, %cond.end340.cond.end363_crit_edge ]
  %206 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sz, align 4
  %add365 = add i32 %207, %cond364
  store i32 %add365, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add365, i32 %maxlen)
  %cmp366.not = icmp ult i32 %add365, %maxlen
  br i1 %cmp366.not, label %cond.false369, label %cond.end363.cond.end376_crit_edge

cond.end363.cond.end376_crit_edge:                ; preds = %cond.end363
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end376

cond.false369:                                    ; preds = %cond.end363
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr370 = getelementptr i8, ptr %result, i32 %add365
  %sub371 = sub i32 %maxlen, %add365
  %io_mode.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 1
  %208 = ptrtoint ptr %io_mode.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %io_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %209)
  %cmp.i647 = icmp eq i32 %209, 1
  %cond374 = select i1 %cmp.i647, i32 121, i32 110
  %call375 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr370, i32 noundef %sub371, ptr noundef nonnull @.str.156, i32 noundef %cond374) #12
  br label %cond.end376

cond.end376:                                      ; preds = %cond.false369, %cond.end363.cond.end376_crit_edge
  %cond377 = phi i32 [ %call375, %cond.false369 ], [ 0, %cond.end363.cond.end376_crit_edge ]
  %210 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sz, align 4
  %add378 = add i32 %211, %cond377
  store i32 %add378, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add378, i32 %maxlen)
  %cmp379.not = icmp ult i32 %add378, %maxlen
  br i1 %cmp379.not, label %cond.false382, label %cond.end376.cond.end389_crit_edge

cond.end376.cond.end389_crit_edge:                ; preds = %cond.end376
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end389

cond.false382:                                    ; preds = %cond.end376
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr383 = getelementptr i8, ptr %result, i32 %add378
  %sub384 = sub i32 %maxlen, %add378
  %io_mode.i648 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 1
  %212 = ptrtoint ptr %io_mode.i648 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %io_mode.i648, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp.i649 = icmp eq i32 %213, 0
  %cond387 = select i1 %cmp.i649, i32 121, i32 110
  %call388 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr383, i32 noundef %sub384, ptr noundef nonnull @.str.157, i32 noundef %cond387) #12
  br label %cond.end389

cond.end389:                                      ; preds = %cond.false382, %cond.end376.cond.end389_crit_edge
  %cond390 = phi i32 [ %call388, %cond.false382 ], [ 0, %cond.end376.cond.end389_crit_edge ]
  %214 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %sz, align 4
  %add391 = add i32 %215, %cond390
  store i32 %add391, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add391, i32 %maxlen)
  %cmp392.not = icmp ult i32 %add391, %maxlen
  br i1 %cmp392.not, label %cond.false395, label %cond.end389.cond.end402_crit_edge

cond.end389.cond.end402_crit_edge:                ; preds = %cond.end389
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end402

cond.false395:                                    ; preds = %cond.end389
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr396 = getelementptr i8, ptr %result, i32 %add391
  %sub397 = sub i32 %maxlen, %add391
  %io_mode.i650 = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 1
  %216 = ptrtoint ptr %io_mode.i650 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %io_mode.i650, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %217)
  %cmp.i651 = icmp eq i32 %217, 2
  %cond400 = select i1 %cmp.i651, i32 121, i32 110
  %call401 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr396, i32 noundef %sub397, ptr noundef nonnull @.str.158, i32 noundef %cond400) #12
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false395, %cond.end389.cond.end402_crit_edge
  %cond403 = phi i32 [ %call401, %cond.false395 ], [ 0, %cond.end389.cond.end402_crit_edge ]
  %218 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %sz, align 4
  %add404 = add i32 %219, %cond403
  store i32 %add404, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add404, i32 %maxlen)
  %cmp405.not = icmp ult i32 %add404, %maxlen
  br i1 %cmp405.not, label %cond.false408, label %cond.end402.cond.end415_crit_edge

cond.end402.cond.end415_crit_edge:                ; preds = %cond.end402
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end415

cond.false408:                                    ; preds = %cond.end402
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr409 = getelementptr i8, ptr %result, i32 %add404
  %sub410 = sub i32 %maxlen, %add404
  %metadata_version = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 2
  %220 = ptrtoint ptr %metadata_version to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %metadata_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %221)
  %cmp411 = icmp eq i32 %221, 2
  %cond413 = select i1 %cmp411, i32 121, i32 110
  %call414 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr409, i32 noundef %sub410, ptr noundef nonnull @.str.159, i32 noundef %cond413) #12
  br label %cond.end415

cond.end415:                                      ; preds = %cond.false408, %cond.end402.cond.end415_crit_edge
  %cond416 = phi i32 [ %call414, %cond.false408 ], [ 0, %cond.end402.cond.end415_crit_edge ]
  %222 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %sz, align 4
  %add417 = add i32 %223, %cond416
  store i32 %add417, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add417, i32 %maxlen)
  %cmp418.not = icmp ult i32 %add417, %maxlen
  br i1 %cmp418.not, label %cond.false421, label %cond.end415.cond.end428_crit_edge

cond.end415.cond.end428_crit_edge:                ; preds = %cond.end415
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end428

cond.false421:                                    ; preds = %cond.end415
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr422 = getelementptr i8, ptr %result, i32 %add417
  %sub423 = sub i32 %maxlen, %add417
  %discard_passdown = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 34, i32 3
  %224 = ptrtoint ptr %discard_passdown to i32
  call void @__asan_load1_noabort(i32 %224)
  %bf.load = load i8, ptr %discard_passdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %cond426 = select i1 %bf.cast.not, i32 121, i32 110
  %call427 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr422, i32 noundef %sub423, ptr noundef nonnull @.str.160, i32 noundef %cond426) #12
  br label %cond.end428

cond.end428:                                      ; preds = %cond.false421, %cond.end415.cond.end428_crit_edge
  %cond429 = phi i32 [ %call427, %cond.false421 ], [ 0, %cond.end415.cond.end428_crit_edge ]
  %225 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %sz, align 4
  %add430 = add i32 %226, %cond429
  store i32 %add430, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add430, i32 %maxlen)
  %cmp431.not = icmp ult i32 %add430, %maxlen
  br i1 %cmp431.not, label %cond.false434, label %cond.end428.cleanup_crit_edge

cond.end428.cleanup_crit_edge:                    ; preds = %cond.end428
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false434:                                    ; preds = %cond.end428
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr435 = getelementptr i8, ptr %result, i32 %add430
  %sub436 = sub i32 %maxlen, %add430
  %call437 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr435, i32 noundef %sub436, ptr noundef nonnull @.str.161) #12
  br label %cleanup

err:                                              ; preds = %do.end20, %do.end
  %227 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %maxlen)
  %cmp441.not = icmp ult i32 %228, %maxlen
  br i1 %cmp441.not, label %cond.false444, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false444:                                    ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr445 = getelementptr i8, ptr %result, i32 %228
  %sub446 = sub i32 %maxlen, %228
  %call447 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr445, i32 noundef %sub446, ptr noundef nonnull @.str.162) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.false444, %err.cleanup_crit_edge, %cond.false434, %cond.end428.cleanup_crit_edge, %cond.false223, %if.then219.cleanup_crit_edge, %for.end.cleanup_crit_edge, %cond.false133, %if.else129.cleanup_crit_edge, %cond.false122, %if.then118.cleanup_crit_edge, %cond.false, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %needs_check) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_blocks_metadata) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_free_blocks_metadata) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %dummy.i.i = alloca i8, align 1
  %b.i.i = alloca i64, align 8
  %e.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %features.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %7) #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %call.i) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %argv, align 4
  %call5 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.175)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %sub = add i32 %argc, -1
  %add.ptr = getelementptr ptr, ptr %argv, i32 1
  %io_mode.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 34, i32 1
  %10 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp79.not.i = icmp eq i32 %sub, 0
  br i1 %cmp79.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cache_size.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 10
  %commit_requested.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 36
  br label %for.body.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %call.i.i = tail call ptr @dm_table_device_name(ptr noundef %15) #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %call.i.i) #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.080.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %add.ptr, i32 %i.080.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i.i) #12
  %18 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %dummy.i.i, align 1, !annotation !434
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i) #12
  %19 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %b.i.i, align 8, !annotation !434
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e.i.i) #12
  %20 = ptrtoint ptr %e.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %e.i.i, align 8, !annotation !434
  %call.i25.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %17, ptr noundef nonnull @.str.178, ptr noundef nonnull %b.i.i, ptr noundef nonnull %e.i.i, ptr noundef nonnull %dummy.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.i26.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp.i26.i, label %for.body.i.parse_cblock_range.exit.thread.i_crit_edge, label %if.end.i.i

for.body.i.parse_cblock_range.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_cblock_range.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25.i)
  %cmp1.i.i = icmp eq i32 %call.i25.i, 2
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b.i.i, align 8
  %conv.i.i = trunc i64 %22 to i32
  %23 = ptrtoint ptr %e.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %e.i.i, align 8
  %conv4.i.i = trunc i64 %24 to i32
  br label %if.end5.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %17, ptr noundef nonnull @.str.179, ptr noundef nonnull %b.i.i, ptr noundef nonnull %dummy.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %if.end6.i.i.parse_cblock_range.exit.thread.i_crit_edge, label %if.end11.i.i

if.end6.i.i.parse_cblock_range.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_cblock_range.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i)
  %cmp12.i.i = icmp eq i32 %call7.i.i, 1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %do.end.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b.i.i, align 8
  %conv15.i.i = trunc i64 %26 to i32
  %add.i.i = add i32 %conv15.i.i, 1
  br label %if.end5.i

do.end.i.i:                                       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %call.i.i.i = call ptr @dm_table_device_name(ptr noundef %30) #12
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %call.i.i.i, ptr noundef %17) #15
  br label %parse_cblock_range.exit.thread.i

parse_cblock_range.exit.thread.i:                 ; preds = %do.end.i.i, %if.end6.i.i.parse_cblock_range.exit.thread.i_crit_edge, %for.body.i.parse_cblock_range.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %do.end.i.i ], [ %call7.i.i, %if.end6.i.i.parse_cblock_range.exit.thread.i_crit_edge ], [ %call.i25.i, %for.body.i.parse_cblock_range.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i.i) #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.then14.i.i, %if.then2.i.i
  %range.sroa.9.1.i = phi i32 [ %conv4.i.i, %if.then2.i.i ], [ %add.i.i, %if.then14.i.i ]
  %range.sroa.0.1.i = phi i32 [ %conv.i.i, %if.then2.i.i ], [ %conv15.i.i, %if.then14.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i.i) #12
  %31 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cache_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %range.sroa.0.1.i, i32 %32)
  %cmp.not.i.i = icmp ult i32 %range.sroa.0.1.i, %32
  br i1 %cmp.not.i.i, label %if.end.i34.i, label %do.end.i32.i

do.end.i32.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i27.le77.i = zext i32 %range.sroa.0.1.i to i64
  %conv4.i29.le73.i = zext i32 %32 to i64
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %call.i.i30.i = call ptr @dm_table_device_name(ptr noundef %36) #12
  %call7.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %call.i.i30.i, i64 noundef %conv.i27.le77.i, i64 noundef %conv4.i29.le73.i) #15
  br label %cleanup

if.end.i34.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %range.sroa.9.1.i, i32 %32)
  %cmp8.i33.i = icmp ugt i32 %range.sroa.9.1.i, %32
  br i1 %cmp8.i33.i, label %do.end13.i.i, label %if.end17.i.i

do.end13.i.i:                                     ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv2.i.le75.i = zext i32 %range.sroa.9.1.i to i64
  %conv4.i29.le.i = zext i32 %32 to i64
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %call.i43.i.i = call ptr @dm_table_device_name(ptr noundef %40) #12
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef %call.i43.i.i, i64 noundef %conv2.i.le75.i, i64 noundef %conv4.i29.le.i) #15
  br label %cleanup

if.end17.i.i:                                     ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %range.sroa.0.1.i, i32 %range.sroa.9.1.i)
  %cmp18.not.i.i = icmp ult i32 %range.sroa.0.1.i, %range.sroa.9.1.i
  br i1 %cmp18.not.i.i, label %if.end17.i.i.while.body.i.i_crit_edge, label %do.end23.i.i

if.end17.i.i.while.body.i.i_crit_edge:            ; preds = %if.end17.i.i
  br label %while.body.i.i

do.end23.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i27.le.i = zext i32 %range.sroa.0.1.i to i64
  %conv2.i.le.i = zext i32 %range.sroa.9.1.i to i64
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %call.i44.i.i = call ptr @dm_table_device_name(ptr noundef %44) #12
  %call26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %call.i44.i.i, i64 noundef %conv.i27.le.i, i64 noundef %conv2.i.le.i) #15
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end.i39.i.while.body.i.i_crit_edge, %if.end17.i.i.while.body.i.i_crit_edge
  %range.sroa.0.2.i = phi i32 [ %add.i.i.i, %if.end.i39.i.while.body.i.i_crit_edge ], [ %range.sroa.0.1.i, %if.end17.i.i.while.body.i.i_crit_edge ]
  %call.i37.i = call fastcc i32 @invalidate_cblock(ptr noundef %1, i32 noundef %range.sroa.0.2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i.i, label %if.end.i39.i, label %while.body.i.i.cleanup_crit_edge

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i39.i:                                     ; preds = %while.body.i.i
  %add.i.i.i = add i32 %range.sroa.0.2.i, 1
  %cmp.not.i38.i = icmp eq i32 %add.i.i.i, %range.sroa.9.1.i
  br i1 %cmp.not.i38.i, label %for.inc.i, label %if.end.i39.i.while.body.i.i_crit_edge

if.end.i39.i.while.body.i.i_crit_edge:            ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

for.inc.i:                                        ; preds = %if.end.i39.i
  %45 = ptrtoint ptr %commit_requested.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i = load i8, ptr %commit_requested.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 16
  store i8 %bf.set.i.i, ptr %commit_requested.i.i, align 4
  %inc.i = add nuw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp10.not = icmp eq i32 %argc, 2
  br i1 %cmp10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %arrayidx14 = getelementptr ptr, ptr %argv, i32 1
  %46 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %48 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !434
  %call.i.i24 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.then.i.i, label %if.then.i

if.then.i.i:                                      ; preds = %if.end12
  %call.i.i.i26 = call i32 @_kstrtoul(ptr noundef %47, i32 noundef 10, ptr noundef nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i26)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i26, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i28, label %if.then.i.i.process_config_option.exit.thread.i_crit_edge

if.then.i.i.process_config_option.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %process_config_option.exit.thread.i

if.end.i.i28:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tmp.i.i, align 4
  %conv.i.i27 = zext i32 %50 to i64
  %migration_threshold.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 13
  %51 = ptrtoint ptr %migration_threshold.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i.i27, ptr %migration_threshold.i.i, align 8
  br label %process_config_option.exit.thread.i

process_config_option.exit.thread.i:              ; preds = %if.end.i.i28, %if.then.i.i.process_config_option.exit.thread.i_crit_edge
  %retval.0.i.ph.i29 = phi i32 [ -22, %if.then.i.i.process_config_option.exit.thread.i_crit_edge ], [ 0, %if.end.i.i28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %policy.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 33
  %52 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %policy.i, align 4
  %set_config_value.i.i = getelementptr inbounds %struct.dm_cache_policy, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %set_config_value.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_config_value.i.i, align 4
  %tobool.not.i12.i = icmp eq ptr %55, null
  br i1 %tobool.not.i12.i, label %if.then.i.do.end.i30_crit_edge, label %cond.true.i.i

if.then.i.do.end.i30_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i30

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i13.i = tail call i32 %55(ptr noundef %53, ptr noundef %9, ptr noundef %47) #12
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true.i.i, %process_config_option.exit.thread.i
  %r.0.i = phi i32 [ %retval.0.i.ph.i29, %process_config_option.exit.thread.i ], [ %call.i13.i, %cond.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not.i = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.end.i30_crit_edge

if.end.i.do.end.i30_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i30

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i30:                                       ; preds = %if.end.i.do.end.i30_crit_edge, %if.then.i.do.end.i30_crit_edge
  %r.018.i = phi i32 [ %r.0.i, %if.end.i.do.end.i30_crit_edge ], [ -22, %if.then.i.do.end.i30_crit_edge ]
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %9, ptr noundef %47) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.i30, %if.end.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %do.end23.i.i, %do.end13.i.i, %do.end.i32.i, %parse_cblock_range.exit.thread.i, %do.end.i, %for.cond.preheader.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -1, %do.end.i ], [ %retval.0.i.ph.i, %parse_cblock_range.exit.thread.i ], [ -22, %do.end.i32.i ], [ -22, %do.end13.i.i ], [ -22, %do.end23.i.i ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %r.018.i, %do.end.i30 ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i37.i, %while.body.i.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cache_dev = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cache_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %call2 = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %7, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %origin_dev = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %origin_dev, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len, align 8
  %call3 = tail call i32 %fn(ptr noundef %ti, ptr noundef %9, i64 noundef 0, i64 noundef %11, ptr noundef %data) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ %call3, %if.then ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #2 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %io_opt = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 12
  %2 = ptrtoint ptr %io_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_opt, align 4
  %shr = lshr i32 %3, 9
  %conv = zext i32 %shr to i64
  %sectors_per_block = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sectors_per_block, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp ugt i64 %5, %conv
  %.pre = trunc i64 %5 to i32
  br i1 %cmp, label %entry.if.then188_crit_edge, label %if.end185

entry.if.then188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188

if.end185:                                        ; preds = %entry
  %rem177 = urem i32 %shr, %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem177)
  %tobool187.not = icmp eq i32 %rem177, 0
  br i1 %tobool187.not, label %if.end185.if.end195_crit_edge, label %if.end185.if.then188_crit_edge

if.end185.if.then188_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188

if.end185.if.end195_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end195

if.then188:                                       ; preds = %if.end185.if.then188_crit_edge, %entry.if.then188_crit_edge
  %conv191 = shl i32 %.pre, 9
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef %conv191) #12
  %6 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sectors_per_block, align 8
  %.tr283 = trunc i64 %7 to i32
  %conv194 = shl i32 %.tr283, 9
  tail call void @blk_limits_io_opt(ptr noundef %limits, i32 noundef %conv194) #12
  br label %if.end195

if.end195:                                        ; preds = %if.then188, %if.end185.if.end195_crit_edge
  %origin_dev.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %origin_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %origin_dev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #12
  %discard_passdown.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 34, i32 3
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %15 = ptrtoint ptr %discard_passdown.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %discard_passdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.end195.disable_passdown_if_not_supported.exit.thread_crit_edge, label %if.end.i

if.end195.disable_passdown_if_not_supported.exit.thread_crit_edge: ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_passdown_if_not_supported.exit.thread

if.end.i:                                         ; preds = %if.end195
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 11
  %16 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %queue_flags.i.i, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end6.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end6.i:                                        ; preds = %if.end.i
  %max_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 13
  %19 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_discard_sectors.i, align 4
  %conv.i288 = zext i32 %20 to i64
  %21 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sectors_per_block, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv.i288)
  %cmp.i = icmp ugt i64 %22, %conv.i288
  br i1 %cmp.i, label %if.end6.i.do.end.i_crit_edge, label %disable_passdown_if_not_supported.exit

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.end6.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %reason.026.i = phi ptr [ @.str.191, %if.end6.i.do.end.i_crit_edge ], [ @.str.190, %if.end.i.do.end.i_crit_edge ]
  %call8.i = call ptr @bdevname(ptr noundef %11, ptr noundef nonnull %buf.i) #12
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %call8.i, ptr noundef nonnull %reason.026.i) #15
  %23 = ptrtoint ptr %discard_passdown.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load12.i = load i8, ptr %discard_passdown.i, align 4
  %bf.clear.i = and i8 %bf.load12.i, 127
  store i8 %bf.clear.i, ptr %discard_passdown.i, align 4
  br label %disable_passdown_if_not_supported.exit.thread

disable_passdown_if_not_supported.exit.thread:    ; preds = %do.end.i, %if.end195.disable_passdown_if_not_supported.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #12
  br label %if.then.i

disable_passdown_if_not_supported.exit:           ; preds = %if.end6.i
  %24 = ptrtoint ptr %discard_passdown.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i290.pr = load i8, ptr %discard_passdown.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i290.pr)
  %bf.cast.not.i291 = icmp sgt i8 %bf.load.i290.pr, -1
  br i1 %bf.cast.not.i291, label %disable_passdown_if_not_supported.exit.if.then.i_crit_edge, label %if.end.i297

disable_passdown_if_not_supported.exit.if.then.i_crit_edge: ; preds = %disable_passdown_if_not_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %disable_passdown_if_not_supported.exit.if.then.i_crit_edge, %disable_passdown_if_not_supported.exit.thread
  %discard_block_size.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %discard_block_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %discard_block_size.i, align 4
  %mul.i = shl i32 %26, 10
  %conv.i292 = zext i32 %mul.i to i64
  %origin_sectors.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %origin_sectors.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %origin_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv.i292)
  %cmp.i293 = icmp ugt i64 %28, %conv.i292
  %extract.t29.i = trunc i64 %28 to i32
  %cond.off0.i = select i1 %cmp.i293, i32 %mul.i, i32 %extract.t29.i
  %max_discard_sectors.i294 = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %29 = ptrtoint ptr %max_discard_sectors.i294 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.off0.i, ptr %max_discard_sectors.i294, align 4
  %30 = ptrtoint ptr %discard_block_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %discard_block_size.i, align 4
  %shl.i = shl i32 %31, 9
  %discard_granularity.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %32 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl.i, ptr %discard_granularity.i, align 4
  br label %set_discard_limits.exit

if.end.i297:                                      ; preds = %disable_passdown_if_not_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %origin_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %origin_dev.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %bd_queue.i.i296 = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %bd_queue.i.i296 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_queue.i.i296, align 4
  %max_discard_sectors5.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 13
  %39 = ptrtoint ptr %max_discard_sectors5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_discard_sectors5.i, align 4
  %max_discard_sectors6.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %41 = ptrtoint ptr %max_discard_sectors6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_discard_sectors6.i, align 4
  %max_hw_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 14
  %42 = ptrtoint ptr %max_hw_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_hw_discard_sectors.i, align 4
  %max_hw_discard_sectors7.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 14
  %44 = ptrtoint ptr %max_hw_discard_sectors7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_hw_discard_sectors7.i, align 4
  %discard_granularity8.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 18
  %45 = ptrtoint ptr %discard_granularity8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %discard_granularity8.i, align 4
  %discard_granularity9.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %47 = ptrtoint ptr %discard_granularity9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %discard_granularity9.i, align 4
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 19
  %48 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %discard_alignment.i, align 4
  %discard_alignment10.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 19
  %50 = ptrtoint ptr %discard_alignment10.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %discard_alignment10.i, align 4
  %discard_misaligned.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 25
  %51 = ptrtoint ptr %discard_misaligned.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %discard_misaligned.i, align 1
  %discard_misaligned11.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 25
  %53 = ptrtoint ptr %discard_misaligned11.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %discard_misaligned11.i, align 1
  br label %set_discard_limits.exit

set_discard_limits.exit:                          ; preds = %if.end.i297, %if.then.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy(ptr noundef %cache) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %migration_pool = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 41
  tail call void @mempool_exit(ptr noundef %migration_pool) #12
  %prison = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 29
  %0 = ptrtoint ptr %prison to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prison, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_bio_prison_destroy_v2(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wq = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 27
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dirty_bitset = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 30
  %4 = ptrtoint ptr %dirty_bitset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dirty_bitset, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vfree(ptr noundef nonnull %5) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %discard_bitset = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 20
  %6 = ptrtoint ptr %discard_bitset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %discard_bitset, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vfree(ptr noundef nonnull %7) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %copier = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 24
  %8 = ptrtoint ptr %copier to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %copier, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_kcopyd_client_destroy(ptr noundef nonnull %9) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %cmd = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 8
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_cache_metadata_close(ptr noundef nonnull %11) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %metadata_dev = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 5
  %12 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metadata_dev, align 4
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache, align 8
  tail call void @dm_put_device(ptr noundef %15, ptr noundef nonnull %13) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %origin_dev = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 6
  %16 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %origin_dev, align 8
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cache, align 8
  tail call void @dm_put_device(ptr noundef %19, ptr noundef nonnull %17) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %cache_dev = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 7
  %20 = ptrtoint ptr %cache_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache_dev, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end30.if.end35_crit_edge, label %if.then32

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cache, align 8
  tail call void @dm_put_device(ptr noundef %23, ptr noundef nonnull %21) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %policy = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 33
  %24 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %policy, align 4
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_cache_policy_destroy(ptr noundef nonnull %25) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %nr_ctr_args = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 22
  %26 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_ctr_args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp80.not = icmp eq i32 %27, 0
  br i1 %cmp80.not, label %if.end39.for.end_crit_edge, label %for.body.lr.ph

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end39
  %ctr_args = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %ctr_args to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctr_args, align 4
  %arrayidx = getelementptr ptr, ptr %29, i32 %i.081
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %31) #12
  %inc = add nuw i32 %i.081, 1
  %32 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_ctr_args, align 8
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end39.for.end_crit_edge
  %ctr_args40 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 23
  %34 = ptrtoint ptr %ctr_args40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctr_args40, align 4
  tail call void @kfree(ptr noundef %35) #12
  %bs = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 42
  tail call void @bioset_exit(ptr noundef %bs) #12
  tail call void @kfree(ptr noundef %cache) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_policy(ptr noundef %ca, ptr noundef %as, ptr noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %at_least_one_arg.exit, label %if.end

at_least_one_arg.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.6, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dm_shift_arg(ptr noundef %as) #12
  %policy_name = getelementptr inbounds %struct.cache_args, ptr %ca, i32 0, i32 7
  %3 = ptrtoint ptr %policy_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %policy_name, align 4
  %policy_argc = getelementptr inbounds %struct.cache_args, ptr %ca, i32 0, i32 8
  %call2 = tail call i32 @dm_read_arg_group(ptr noundef nonnull @parse_policy._args, ptr noundef %as, ptr noundef %policy_argc, ptr noundef %error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %argv = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  %4 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %argv, align 4
  %policy_argv = getelementptr inbounds %struct.cache_args, ptr %ca, i32 0, i32 9
  %6 = ptrtoint ptr %policy_argv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %policy_argv, align 4
  %7 = ptrtoint ptr %policy_argc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %policy_argc, align 8
  tail call void @dm_consume_args(ptr noundef %as, i32 noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %at_least_one_arg.exit
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %at_least_one_arg.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_consume_args(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_cache_metadata_open(ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_policy_get_hint_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cache_mode(ptr nocapture noundef %cache, i32 noundef %new_mode) unnamed_addr #2 align 64 {
entry:
  %needs_check = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %needs_check) #12
  %0 = ptrtoint ptr %needs_check to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %needs_check, align 1, !annotation !434
  %features.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 34
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 8
  %cmd = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 8
  %call1 = call i32 @dm_cache_metadata_needs_check(ptr noundef %4, ptr noundef nonnull %needs_check) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i = call ptr @dm_table_device_name(ptr noundef %8) #12
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %call.i) #15
  br label %if.end15

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_mode)
  %cmp = icmp eq i32 %new_mode, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %needs_check to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %needs_check, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %do.end8

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end8:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call.i40 = call ptr @dm_table_device_name(ptr noundef %14) #12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %call.i40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12.not = icmp eq i32 %2, 0
  %.call = select i1 %cmp12.not, i32 1, i32 %2
  br label %if.end15

if.end15:                                         ; preds = %do.end8, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge, %if.end.thread
  %new_mode.addr.1 = phi i32 [ 0, %land.lhs.true.if.end15_crit_edge ], [ %new_mode, %if.end.if.end15_crit_edge ], [ %.call, %do.end8 ], [ 2, %if.end.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp16 = icmp eq i32 %2, 2
  %spec.select = select i1 %cmp16, i32 2, i32 %new_mode.addr.1
  %15 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %spec.select, label %if.end15.sw.epilog_crit_edge [
    i32 2, label %if.end15.sw.bb_crit_edge
    i32 1, label %if.end15.sw.bb_crit_edge43
    i32 0, label %sw.bb20
  ]

if.end15.sw.bb_crit_edge43:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge43
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 8
  call void @dm_cache_metadata_set_read_only(ptr noundef %17) #12
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 8
  call void @dm_cache_metadata_set_read_write(ptr noundef %19) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb, %if.end15.sw.epilog_crit_edge
  %20 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %2)
  %cmp22.not = icmp eq i32 %spec.select, %2
  br i1 %cmp22.not, label %sw.epilog.if.end24_crit_edge, label %if.then23

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void @dm_table_event(ptr noundef %24) #12
  %25 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cache, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %call.i.i = call ptr @dm_table_device_name(ptr noundef %28) #12
  %arrayidx.i = getelementptr [3 x ptr], ptr @__const.notify_mode_switch.descs, i32 0, i32 %spec.select
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %call.i.i, ptr noundef %30) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %sw.epilog.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %needs_check) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_metadata_all_clean(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_client_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_deferred_bios(ptr noundef %ws) #2 align 64 {
entry:
  %commit_needed.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -356
  %lock = getelementptr i8, ptr %ws, i32 -352
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %deferred_bios = getelementptr i8, ptr %ws, i32 -136
  %0 = ptrtoint ptr %deferred_bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %deferred_bios, align 4
  %tail.i46 = getelementptr i8, ptr %ws, i32 -132
  %2 = ptrtoint ptr %tail.i46 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tail.i46, align 4
  store ptr null, ptr %deferred_bios, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %tobool.not.i47173 = icmp eq ptr %1, null
  br i1 %tobool.not.i47173, label %entry.if.end30_crit_edge, label %if.then.i.lr.ph

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then.i.lr.ph:                                  ; preds = %entry
  %cache_dev.i.i = getelementptr i8, ptr %ws, i32 -280
  %sectors_per_block_shift.i.i.i = getelementptr i8, ptr %ws, i32 -308
  %sectors_per_block196.i.i = getelementptr i8, ptr %ws, i32 -300
  %origin_dev.i.i = getelementptr i8, ptr %ws, i32 -284
  %lock.i.i = getelementptr i8, ptr %ws, i32 392
  %commit_scheduled1.i.i = getelementptr i8, ptr %ws, i32 496
  %tail.i.i.i = getelementptr i8, ptr %ws, i32 448
  %bios.i.i = getelementptr i8, ptr %ws, i32 444
  %wq.i.i.i = getelementptr i8, ptr %ws, i32 388
  %commit_work.i.i.i = getelementptr i8, ptr %ws, i32 452
  %discard_block_size.i.i = getelementptr i8, ptr %ws, i32 -16
  %discard_nr_blocks.i.i = getelementptr i8, ptr %ws, i32 -28
  %discard_count.i.i = getelementptr i8, ptr %ws, i32 268
  %discard_bitset.i.i = getelementptr i8, ptr %ws, i32 -20
  %discard_passdown.i = getelementptr i8, ptr %ws, i32 224
  br label %if.then.i

if.then.i:                                        ; preds = %if.end27.if.then.i_crit_edge, %if.then.i.lr.ph
  %commit_needed.0.off0177 = phi i1 [ false, %if.then.i.lr.ph ], [ %commit_needed.1, %if.end27.if.then.i_crit_edge ]
  %bios.sroa.0.2174 = phi ptr [ %1, %if.then.i.lr.ph ], [ %4, %if.end27.if.then.i_crit_edge ]
  %3 = ptrtoint ptr %bios.sroa.0.2174 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bios.sroa.0.2174, align 8
  store ptr null, ptr %bios.sroa.0.2174, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf, align 8
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %if.then.i
  %call.i.i = tail call ptr @dm_per_bio_data(ptr noundef nonnull %bios.sroa.0.2174, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %get_per_bio_data.exit.i, !prof !438

do.body4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i:                          ; preds = %if.then
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %call.i.i, align 8
  %9 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i51 = icmp eq i8 %9, 0
  br i1 %tobool.not.i51, label %if.then.i52, label %if.else.i53

if.then.i52:                                      ; preds = %get_per_bio_data.exit.i
  %10 = ptrtoint ptr %origin_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %origin_dev.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 3
  %14 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %15, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 1
  %16 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %17, %13
  br i1 %cmp.not.i.i.i, label %if.then.i52.remap_to_origin.exit.i_crit_edge, label %if.then.i.i.i

if.then.i52.remap_to_origin.exit.i_crit_edge:     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %remap_to_origin.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i = and i16 %15, -2177
  %18 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %remap_to_origin.exit.i

remap_to_origin.exit.i:                           ; preds = %if.then.i.i.i, %if.then.i52.remap_to_origin.exit.i_crit_edge
  %19 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %bios.sroa.0.2174) #12
  br label %if.end.i54

if.else.i53:                                      ; preds = %get_per_bio_data.exit.i
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 8
  %20 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bi_iter.i.i, align 8
  %22 = ptrtoint ptr %cache_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cache_dev.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %bi_flags.i.i.i1.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 3
  %26 = ptrtoint ptr %bi_flags.i.i.i1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_flags.i.i.i1.i, align 4
  %conv1.i.i.i2.i = and i16 %27, -2049
  store i16 %conv1.i.i.i2.i, ptr %bi_flags.i.i.i1.i, align 4
  %bi_bdev.i.i3.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 1
  %28 = ptrtoint ptr %bi_bdev.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bi_bdev.i.i3.i, align 4
  %cmp.not.i.i4.i = icmp eq ptr %29, %25
  br i1 %cmp.not.i.i4.i, label %if.else.i53.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i6.i

if.else.i53.bio_set_dev.exit.i.i_crit_edge:       ; preds = %if.else.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i.i

if.then.i.i6.i:                                   ; preds = %if.else.i53
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i5.i = and i16 %27, -2177
  %30 = ptrtoint ptr %bi_flags.i.i.i1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv1.i8.i.i5.i, ptr %bi_flags.i.i.i1.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i6.i, %if.else.i53.bio_set_dev.exit.i.i_crit_edge
  %31 = ptrtoint ptr %bi_bdev.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %bi_bdev.i.i3.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %bios.sroa.0.2174) #12
  %32 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.i.i = icmp sgt i32 %33, -1
  %34 = ptrtoint ptr %sectors_per_block196.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sectors_per_block196.i.i, align 8
  br i1 %cmp.i.i.i, label %if.else193.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %bio_set_dev.exit.i.i
  %conv4.i.i = trunc i64 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %21)
  %cmp173.i.i = icmp ult i64 %21, 4294967296
  br i1 %cmp173.i.i, label %if.then177.i.i, label %if.else183.i.i, !prof !435

if.then177.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv178.i.i = trunc i64 %21 to i32
  %rem179.i.i = urem i32 %conv178.i.i, %conv4.i.i
  br label %if.end187.i.i

if.else183.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv4.i.i, i64 %21) #17, !srcloc !436
  %asmresult.i294.i.i = extractvalue { i64, i64 } %36, 0
  %shr.i.i.i = lshr i64 %asmresult.i294.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end187.i.i

if.end187.i.i:                                    ; preds = %if.else183.i.i, %if.then177.i.i
  %__rem.0.i.i = phi i32 [ %rem179.i.i, %if.then177.i.i ], [ %conv.i.i.i, %if.else183.i.i ]
  %conv189.i.i = zext i32 %__rem.0.i.i to i64
  br label %remap_to_cache.exit.i

if.else193.i.i:                                   ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub197.i.i = add i64 %35, -1
  %and198.i.i = and i64 %sub197.i.i, %21
  br label %remap_to_cache.exit.i

remap_to_cache.exit.i:                            ; preds = %if.else193.i.i, %if.end187.i.i
  %storemerge.i.i = phi i64 [ %conv189.i.i, %if.end187.i.i ], [ %and198.i.i, %if.else193.i.i ]
  %37 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %storemerge.i.i, ptr %bi_iter.i.i, align 8
  br label %if.end.i54

if.end.i54:                                       ; preds = %remap_to_cache.exit.i, %remap_to_origin.exit.i
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %38 = ptrtoint ptr %commit_scheduled1.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %commit_scheduled1.i.i, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i8.i = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %bios.sroa.0.2174 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %bios.sroa.0.2174, align 8
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i10.i, label %if.then.i.i9.i

if.then.i.i9.i:                                   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bios.sroa.0.2174, ptr %42, align 8
  br label %bio_list_add.exit.i.i

if.else.i.i10.i:                                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bios.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %bios.sroa.0.2174, ptr %bios.i.i, align 4
  br label %bio_list_add.exit.i.i

bio_list_add.exit.i.i:                            ; preds = %if.else.i.i10.i, %if.then.i.i9.i
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bios.sroa.0.2174, ptr %tail.i.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  br i1 %tobool.not.i8.i, label %bio_list_add.exit.i.i.if.end27_crit_edge, label %if.then.i11.i

bio_list_add.exit.i.i.if.end27_crit_edge:         ; preds = %bio_list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then.i11.i:                                    ; preds = %bio_list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %wq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wq.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %commit_work.i.i.i) #12
  br label %if.end27

if.else:                                          ; preds = %if.then.i
  %and9 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and9)
  %cmp = icmp eq i32 %and9, 3
  br i1 %cmp, label %if.then11, label %if.else19

if.then11:                                        ; preds = %if.else
  %bi_iter.i.i55 = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 8
  %48 = ptrtoint ptr %bi_iter.i.i55 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bi_iter.i.i55, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_size.i.i, align 8
  %shr.i.i = lshr i32 %51, 9
  %conv.i.i = zext i32 %shr.i.i to i64
  %add.i.i56 = add i64 %49, %conv.i.i
  %52 = ptrtoint ptr %discard_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %discard_block_size.i.i, align 4
  %conv4.i.i57 = zext i32 %53 to i64
  %add5.i.i = add nsw i64 %conv4.i.i57, -1
  %sub.i.i58 = add i64 %add5.i.i, %49
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i58)
  %cmp175.i.i = icmp ult i64 %sub.i.i58, 4294967296
  br i1 %cmp175.i.i, label %if.then179.i.i, label %if.else185.i.i, !prof !435

if.then179.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %conv180.i.i = trunc i64 %sub.i.i58 to i32
  %div183.i.i = udiv i32 %conv180.i.i, %53
  %conv184.i.i = zext i32 %div183.i.i to i64
  br label %if.end189.i.i

if.else185.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %sub.i.i58) #17, !srcloc !436
  %asmresult1.i.i.i = extractvalue { i64, i64 } %54, 1
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %if.else185.i.i, %if.then179.i.i
  %_r.0.i.i = phi i64 [ %conv184.i.i, %if.then179.i.i ], [ %asmresult1.i.i.i, %if.else185.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %53)
  %cmp196.i.i = icmp ult i32 %shr.i.i, %53
  br i1 %cmp196.i.i, label %if.end189.i.i.calc_discard_block_range.exit.i_crit_edge, label %if.else162.i.i.i

if.end189.i.i.calc_discard_block_range.exit.i_crit_edge: ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %calc_discard_block_range.exit.i

if.else162.i.i.i:                                 ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i56)
  %cmp164.i.i.i = icmp ult i64 %add.i.i56, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !435

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %add.i.i56 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %53
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %calc_discard_block_range.exit.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %add.i.i56) #17, !srcloc !436
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %55, 1
  br label %calc_discard_block_range.exit.i

calc_discard_block_range.exit.i:                  ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.end189.i.i.calc_discard_block_range.exit.i_crit_edge
  %storemerge.i.i103 = phi i64 [ %_r.0.i.i, %if.end189.i.i.calc_discard_block_range.exit.i_crit_edge ], [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %_r.0.i.i, i64 %storemerge.i.i103)
  %cmp.not4.i = icmp eq i64 %_r.0.i.i, %storemerge.i.i103
  br i1 %cmp.not4.i, label %calc_discard_block_range.exit.i.while.end.i_crit_edge, label %calc_discard_block_range.exit.i.while.body.i_crit_edge

calc_discard_block_range.exit.i.while.body.i_crit_edge: ; preds = %calc_discard_block_range.exit.i
  br label %while.body.i

calc_discard_block_range.exit.i.while.end.i_crit_edge: ; preds = %calc_discard_block_range.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %set_discard.exit.i.while.body.i_crit_edge, %calc_discard_block_range.exit.i.while.body.i_crit_edge
  %b.05.i = phi i64 [ %add.i, %set_discard.exit.i.while.body.i_crit_edge ], [ %_r.0.i.i, %calc_discard_block_range.exit.i.while.body.i_crit_edge ]
  %56 = ptrtoint ptr %discard_nr_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %discard_nr_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %b.05.i)
  %cmp.not.i.i = icmp ugt i64 %57, %b.05.i
  br i1 %cmp.not.i.i, label %set_discard.exit.i, label %do.body3.i.i, !prof !435

do.body3.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 672, 0\0A.popsection", ""() #12, !srcloc !444
  unreachable

set_discard.exit.i:                               ; preds = %while.body.i
  %call.i.i.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %discard_count.i.i, i32 1, i32 3, i32 1) #12
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %discard_count.i.i, ptr %discard_count.i.i, i32 1, ptr elementtype(i32) %discard_count.i.i) #12, !srcloc !443
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %conv.i1.i = trunc i64 %b.05.i to i32
  %59 = ptrtoint ptr %discard_bitset.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %discard_bitset.i.i, align 8
  tail call void @_set_bit(i32 noundef %conv.i1.i, ptr noundef %60) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %add.i = add nuw i64 %b.05.i, 1
  %cmp.not.i = icmp eq i64 %add.i, %storemerge.i.i103
  br i1 %cmp.not.i, label %set_discard.exit.i.while.end.i_crit_edge, label %set_discard.exit.i.while.body.i_crit_edge

set_discard.exit.i.while.body.i_crit_edge:        ; preds = %set_discard.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

set_discard.exit.i.while.end.i_crit_edge:         ; preds = %set_discard.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %set_discard.exit.i.while.end.i_crit_edge, %calc_discard_block_range.exit.i.while.end.i_crit_edge
  %61 = ptrtoint ptr %discard_passdown.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i106 = load i8, ptr %discard_passdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i106)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i106, -1
  br i1 %bf.cast.not.i, label %if.else.i115, label %if.then.i111

if.then.i111:                                     ; preds = %while.end.i
  %62 = ptrtoint ptr %origin_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %origin_dev.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %bi_flags.i.i.i.i108 = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 3
  %66 = ptrtoint ptr %bi_flags.i.i.i.i108 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bi_flags.i.i.i.i108, align 4
  %conv1.i.i.i.i109 = and i16 %67, -2049
  store i16 %conv1.i.i.i.i109, ptr %bi_flags.i.i.i.i108, align 4
  %bi_bdev.i.i.i110 = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 1
  %68 = ptrtoint ptr %bi_bdev.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bi_bdev.i.i.i110, align 4
  %cmp.not.i.i2.i = icmp eq ptr %69, %65
  br i1 %cmp.not.i.i2.i, label %if.then.i111.remap_to_origin.exit.i114_crit_edge, label %if.then.i.i.i113

if.then.i111.remap_to_origin.exit.i114_crit_edge: ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %remap_to_origin.exit.i114

if.then.i.i.i113:                                 ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i112 = and i16 %67, -2177
  %70 = ptrtoint ptr %bi_flags.i.i.i.i108 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv1.i8.i.i.i112, ptr %bi_flags.i.i.i.i108, align 4
  br label %remap_to_origin.exit.i114

remap_to_origin.exit.i114:                        ; preds = %if.then.i.i.i113, %if.then.i111.remap_to_origin.exit.i114_crit_edge
  %71 = ptrtoint ptr %bi_bdev.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %65, ptr %bi_bdev.i.i.i110, align 4
  tail call void @bio_associate_blkg(ptr noundef %bios.sroa.0.2174) #12
  tail call void @submit_bio_noacct(ptr noundef %bios.sroa.0.2174) #12
  br label %if.end27

if.else.i115:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bio_endio(ptr noundef %bios.sroa.0.2174) #12
  br label %if.end27

if.else19:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %commit_needed.i) #12
  %72 = ptrtoint ptr %commit_needed.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %commit_needed.i, align 1, !annotation !434
  %bi_iter.i.i117 = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.2174, i32 0, i32 8
  %73 = ptrtoint ptr %bi_iter.i.i117 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %bi_iter.i.i117, align 8
  %75 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i.i.i119 = icmp sgt i32 %76, -1
  br i1 %cmp.i.i.i119, label %if.else184.i.i, label %if.then.i.i124

if.then.i.i124:                                   ; preds = %if.else19
  %77 = ptrtoint ptr %sectors_per_block196.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %sectors_per_block196.i.i, align 8
  %conv.i.i120 = trunc i64 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %74)
  %cmp168.i.i = icmp ult i64 %74, 4294967296
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !435

if.then172.i.i:                                   ; preds = %if.then.i.i124
  call void @__sanitizer_cov_trace_pc() #14
  %conv173.i.i = trunc i64 %74 to i32
  %div176.i.i = udiv i32 %conv173.i.i, %conv.i.i120
  %conv177.i.i = zext i32 %div176.i.i to i64
  br label %get_bio_block.exit.i

if.else178.i.i:                                   ; preds = %if.then.i.i124
  call void @__sanitizer_cov_trace_pc() #14
  %79 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i.i120, i64 %74) #17, !srcloc !436
  %asmresult1.i.i.i165 = extractvalue { i64, i64 } %79, 1
  br label %get_bio_block.exit.i

if.else184.i.i:                                   ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom185.i.i = zext i32 %76 to i64
  %shr186.i.i = lshr i64 %74, %sh_prom185.i.i
  br label %get_bio_block.exit.i

get_bio_block.exit.i:                             ; preds = %if.else184.i.i, %if.else178.i.i, %if.then172.i.i
  %block_nr.0.i.i = phi i64 [ %shr186.i.i, %if.else184.i.i ], [ %conv177.i.i, %if.then172.i.i ], [ %asmresult1.i.i.i165, %if.else178.i.i ]
  %call1.i = call fastcc i32 @map_bio(ptr noundef %add.ptr, ptr noundef nonnull %bios.sroa.0.2174, i64 noundef %block_nr.0.i.i, ptr noundef nonnull %commit_needed.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.i, label %if.then.i166, label %get_bio_block.exit.i.process_bio.exit_crit_edge

get_bio_block.exit.i.process_bio.exit_crit_edge:  ; preds = %get_bio_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %process_bio.exit

if.then.i166:                                     ; preds = %get_bio_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @submit_bio_noacct(ptr noundef nonnull %bios.sroa.0.2174) #12
  br label %process_bio.exit

process_bio.exit:                                 ; preds = %if.then.i166, %get_bio_block.exit.i.process_bio.exit_crit_edge
  %80 = ptrtoint ptr %commit_needed.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %commit_needed.i, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.i = icmp ne i8 %81, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %commit_needed.i) #12
  %spec.select = select i1 %tobool.i, i1 true, i1 %commit_needed.0.off0177
  br label %if.end27

if.end27:                                         ; preds = %process_bio.exit, %if.else.i115, %remap_to_origin.exit.i114, %if.then.i11.i, %bio_list_add.exit.i.i.if.end27_crit_edge
  %commit_needed.1 = phi i1 [ %spec.select, %process_bio.exit ], [ true, %bio_list_add.exit.i.i.if.end27_crit_edge ], [ true, %if.then.i11.i ], [ %commit_needed.0.off0177, %remap_to_origin.exit.i114 ], [ %commit_needed.0.off0177, %if.else.i115 ]
  %tobool.not.i47 = icmp eq ptr %4, null
  br i1 %tobool.not.i47, label %while.end, label %if.end27.if.then.i_crit_edge

if.end27.if.then.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

while.end:                                        ; preds = %if.end27
  br i1 %commit_needed.1, label %if.then29, label %while.end.if.end30_crit_edge

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %while.end
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %work_items.i = getelementptr i8, ptr %ws, i32 436
  %82 = ptrtoint ptr %work_items.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %work_items.i, align 4
  %cmp.i.not.i = icmp eq ptr %83, %work_items.i
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %if.then.critedge.i

lor.rhs.i:                                        ; preds = %if.then29
  %84 = ptrtoint ptr %bios.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bios.i.i, align 4
  %cmp.i10.not.i = icmp eq ptr %85, null
  %86 = ptrtoint ptr %commit_scheduled1.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %commit_scheduled1.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  br i1 %cmp.i10.not.i, label %lor.rhs.i.if.end30_crit_edge, label %lor.rhs.i.if.then.i168_crit_edge

lor.rhs.i.if.then.i168_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i168

lor.rhs.i.if.end30_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then.critedge.i:                               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %commit_scheduled1.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %commit_scheduled1.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  br label %if.then.i168

if.then.i168:                                     ; preds = %if.then.critedge.i, %lor.rhs.i.if.then.i168_crit_edge
  %88 = ptrtoint ptr %wq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wq.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %commit_work.i.i.i) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then.i168, %lor.rhs.i.if.end30_crit_edge, %while.end.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_migrations(ptr noundef %ws) #2 align 64 {
entry:
  %op = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #12
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %op, align 4, !annotation !434
  %add.ptr = getelementptr i8, ptr %ws, i32 -400
  %tracker.i = getelementptr i8, ptr %ws, i32 504
  %in_flight.i.i = getelementptr i8, ptr %ws, i32 552
  %idle_time.i.i = getelementptr i8, ptr %ws, i32 560
  %nr_io_migrations.i = getelementptr i8, ptr %ws, i32 -184
  %sectors_per_block.i = getelementptr i8, ptr %ws, i32 -344
  %migration_threshold.i = getelementptr i8, ptr %ws, i32 -248
  %policy = getelementptr i8, ptr %ws, i32 164
  br label %for.cond

for.cond:                                         ; preds = %if.end11.for.cond_crit_edge, %entry
  call void @_raw_spin_lock_irq(ptr noundef %tracker.i) #12
  %1 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %in_flight.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not.i.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond.dm_iot_idle_for.exit.i_crit_edge

for.cond.dm_iot_idle_for.exit.i_crit_edge:        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %dm_iot_idle_for.exit.i

if.then.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %idle_time.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idle_time.i.i, align 8
  %add.i.i = add i32 %4, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %extract.t.i.i = icmp slt i32 %sub.i.i, 0
  br label %dm_iot_idle_for.exit.i

dm_iot_idle_for.exit.i:                           ; preds = %if.then.i.i, %for.cond.dm_iot_idle_for.exit.i_crit_edge
  %r.0.off0.i.i = phi i1 [ false, %for.cond.dm_iot_idle_for.exit.i_crit_edge ], [ %extract.t.i.i, %if.then.i.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %tracker.i) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nr_io_migrations.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %nr_io_migrations.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %nr_io_migrations.i, align 4
  br i1 %r.0.off0.i.i, label %land.lhs.true.i, label %dm_iot_idle_for.exit.i.if.else.i_crit_edge

dm_iot_idle_for.exit.i.if.else.i_crit_edge:       ; preds = %dm_iot_idle_for.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %dm_iot_idle_for.exit.i
  %add.i = add i32 %7, 1
  %conv.i = sext i32 %add.i to i64
  %8 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sectors_per_block.i, align 8
  %mul.i = mul i64 %9, %conv.i
  %10 = ptrtoint ptr %migration_threshold.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %migration_threshold.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %11)
  %cmp.not.i = icmp ugt i64 %mul.i, %11
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.spare_migration_bandwidth.exit_crit_edge

land.lhs.true.i.spare_migration_bandwidth.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %spare_migration_bandwidth.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %dm_iot_idle_for.exit.i.if.else.i_crit_edge
  br label %spare_migration_bandwidth.exit

spare_migration_bandwidth.exit:                   ; preds = %if.else.i, %land.lhs.true.i.spare_migration_bandwidth.exit_crit_edge
  %cmp = phi i1 [ true, %land.lhs.true.i.spare_migration_bandwidth.exit_crit_edge ], [ false, %if.else.i ]
  %12 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %policy, align 4
  %get_background_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %get_background_work.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_background_work.i, align 4
  %call.i = call i32 %15(ptr noundef %13, i1 noundef zeroext %cmp, ptr noundef nonnull %op) #12
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %call.i, label %if.then3 [
    i32 -61, label %spare_migration_bandwidth.exit.for.end_crit_edge
    i32 0, label %if.end11
  ]

spare_migration_bandwidth.exit.for.end_crit_edge: ; preds = %spare_migration_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then3:                                         ; preds = %spare_migration_bandwidth.exit
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @check_migrations._rs, ptr noundef nonnull @__func__.check_migrations) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.for.end_crit_edge, label %do.end

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %call.i21 = call ptr @dm_table_device_name(ptr noundef %20) #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %call.i21) #15
  br label %for.end

if.end11:                                         ; preds = %spare_migration_bandwidth.exit
  %21 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op, align 4
  %call12 = call fastcc i32 @mg_start(ptr noundef %add.ptr, ptr noundef %22, ptr noundef null)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.for.cond_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end11.for.cond_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %do.end, %if.then3.for.end_crit_edge, %spare_migration_bandwidth.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_waker(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %policy = getelementptr i8, ptr %ws, i32 116
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy, align 4
  %tick.i = getelementptr inbounds %struct.dm_cache_policy, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tick.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tick.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.policy_tick.exit_crit_edge, label %if.then.i

entry.policy_tick.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_tick.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %1, i1 noundef zeroext true) #12
  br label %policy_tick.exit

policy_tick.exit:                                 ; preds = %if.then.i, %entry.policy_tick.exit_crit_edge
  %io_mode.i.i = getelementptr i8, ptr %ws, i32 124
  %4 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  br i1 %cmp.i.i, label %policy_tick.exit.wake_migration_worker.exit_crit_edge, label %if.end.i

policy_tick.exit.wake_migration_worker.exit_crit_edge: ; preds = %policy_tick.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %wake_migration_worker.exit

if.end.i:                                         ; preds = %policy_tick.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i = getelementptr i8, ptr %ws, i32 -4
  %6 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq.i, align 4
  %migration_worker.i = getelementptr i8, ptr %ws, i32 -48
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %migration_worker.i) #12
  br label %wake_migration_worker.exit

wake_migration_worker.exit:                       ; preds = %if.end.i, %policy_tick.exit.wake_migration_worker.exit_crit_edge
  %lock.i = getelementptr i8, ptr %ws, i32 300
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %work_items.i = getelementptr i8, ptr %ws, i32 344
  %8 = ptrtoint ptr %work_items.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %work_items.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %work_items.i
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %if.then.critedge.i

lor.rhs.i:                                        ; preds = %wake_migration_worker.exit
  %bios.i = getelementptr i8, ptr %ws, i32 352
  %10 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios.i, align 4
  %cmp.i10.not.i = icmp eq ptr %11, null
  %commit_scheduled.i = getelementptr i8, ptr %ws, i32 404
  %12 = ptrtoint ptr %commit_scheduled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %commit_scheduled.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br i1 %cmp.i10.not.i, label %lor.rhs.i.schedule_commit.exit_crit_edge, label %lor.rhs.i.if.then.i6_crit_edge

lor.rhs.i.if.then.i6_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i6

lor.rhs.i.schedule_commit.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %schedule_commit.exit

if.then.critedge.i:                               ; preds = %wake_migration_worker.exit
  call void @__sanitizer_cov_trace_pc() #14
  %commit_scheduled.c.i = getelementptr i8, ptr %ws, i32 404
  %13 = ptrtoint ptr %commit_scheduled.c.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %commit_scheduled.c.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br label %if.then.i6

if.then.i6:                                       ; preds = %if.then.critedge.i, %lor.rhs.i.if.then.i6_crit_edge
  %wq.i.i = getelementptr i8, ptr %ws, i32 296
  %14 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq.i.i, align 4
  %commit_work.i.i = getelementptr i8, ptr %ws, i32 360
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %commit_work.i.i) #12
  br label %schedule_commit.exit

schedule_commit.exit:                             ; preds = %if.then.i6, %lor.rhs.i.schedule_commit.exit_crit_edge
  %wq = getelementptr i8, ptr %ws, i32 -4
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %ws, i32 noundef 100) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bio_prison_create_v2(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_stats(ptr noundef %cache) unnamed_addr #2 align 64 {
entry:
  %stats = alloca %struct.dm_cache_statistics, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats) #12
  %0 = getelementptr inbounds %struct.dm_cache_statistics, ptr %stats, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dm_cache_statistics, ptr %stats, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dm_cache_statistics, ptr %stats, i32 0, i32 3
  %cmd = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 4
  %3 = call ptr @memset(ptr %stats, i32 255, i32 16)
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 8
  call void @dm_cache_metadata_get_stats(ptr noundef %5, ptr noundef nonnull %stats) #12
  %stats1 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stats, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %stats1, i32 noundef 4) #12
  %8 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %7, ptr %stats1, align 4
  %read_miss = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %call.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef %read_miss, i32 noundef 4) #12
  %11 = ptrtoint ptr %read_miss to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %read_miss, align 4
  %write_hit = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %call.i.i10 = call zeroext i1 @__kasan_check_write(ptr noundef %write_hit, i32 noundef 4) #12
  %14 = ptrtoint ptr %write_hit to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %write_hit, align 4
  %write_miss = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 3
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %call.i.i11 = call zeroext i1 @__kasan_check_write(ptr noundef %write_miss, i32 noundef 4) #12
  %17 = ptrtoint ptr %write_miss to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %16, ptr %write_miss, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batcher_init(ptr noundef %b, ptr noundef %commit_context, ptr noundef %issue_context, ptr noundef %wq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @commit_op, ptr %b, align 4
  %commit_context2 = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 1
  %1 = ptrtoint ptr %commit_context2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %commit_context, ptr %commit_context2, align 4
  %issue_op3 = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %issue_op3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @issue_op, ptr %issue_op3, align 4
  %issue_context4 = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 3
  %3 = ptrtoint ptr %issue_context4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %issue_context, ptr %issue_context4, align 4
  %wq5 = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 4
  %4 = ptrtoint ptr %wq5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wq, ptr %wq5, align 4
  %lock = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.93, ptr noundef nonnull @batcher_init.__key, i16 noundef signext 3) #12
  %work_items = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 6
  %5 = ptrtoint ptr %work_items to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %work_items, ptr %work_items, align 4
  %prev.i = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %work_items, ptr %prev.i, align 4
  %bios = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 7
  %tail.i = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bios, align 4
  %commit_work = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 8
  tail call void @__init_work(ptr noundef %commit_work, i32 noundef 0) #12
  %9 = ptrtoint ptr %commit_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %commit_work, align 4
  %lockdep_map = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.95, ptr noundef nonnull @batcher_init.__key.94, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry10 = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i1 = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 8, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry10, ptr %prev.i1, align 4
  %func = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__commit, ptr %func, align 4
  %commit_scheduled = getelementptr inbounds %struct.batcher, ptr %b, i32 0, i32 9
  %13 = ptrtoint ptr %commit_scheduled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %commit_scheduled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @commit_op(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 8
  %call = tail call i32 @dm_cache_changed_this_transaction(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 34
  %2 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.commit.exit_crit_edge

if.then.commit.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %commit.exit

if.end.i:                                         ; preds = %if.then
  %commit_count.i = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 35, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %commit_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %commit_count.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %commit_count.i, ptr %commit_count.i, i32 1, ptr elementtype(i32) %commit_count.i) #12, !srcloc !443
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 8
  %call1.i = tail call i32 @dm_cache_commit(ptr noundef %6, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.commit.exit_crit_edge, label %if.then3.i

if.end.i.commit.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %commit.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @metadata_operation_failed(ptr noundef %context, ptr noundef nonnull @.str.96, i32 noundef %call1.i) #12
  br label %commit.exit

commit.exit:                                      ; preds = %if.then3.i, %if.end.i.commit.exit_crit_edge, %if.then.commit.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.commit.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.commit.exit_crit_edge ]
  %call2 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %retval.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %commit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call2, %commit.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @issue_op(ptr noundef %bio, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.not.i.i, label %entry.accounted_request.exit_crit_edge, label %if.then.i.i

entry.accounted_request.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %accounted_request.exit

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %get_per_bio_data.exit.i.i, !prof !438

do.body4.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i.i:                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size.i.i, align 8
  %shr.i.i = lshr i32 %3, 9
  %conv.i.i = zext i32 %shr.i.i to i64
  %len.i.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i.i, ptr %len.i.i, align 8
  %tracker.i.i = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 40
  tail call void @_raw_spin_lock_irq(ptr noundef %tracker.i.i) #12
  %in_flight.i.i.i = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 40, i32 1
  %5 = ptrtoint ptr %in_flight.i.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %in_flight.i.i.i, align 8
  %add.i.i.i = add i64 %6, %conv.i.i
  store i64 %add.i.i.i, ptr %in_flight.i.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracker.i.i) #12
  br label %accounted_request.exit

accounted_request.exit:                           ; preds = %get_per_bio_data.exit.i.i, %entry.accounted_request.exit_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %bio) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prevent_background_work(ptr noundef %cache) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %lockdep_recursion = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 143
  %4 = ptrtoint ptr %lockdep_recursion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockdep_recursion, align 4
  %add = add i32 %5, 65536
  store i32 %add, ptr %lockdep_recursion, align 4
  %background_work_lock = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 37
  tail call void @down_write(ptr noundef %background_work_lock) #12
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %lockdep_recursion4 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 143
  %8 = ptrtoint ptr %lockdep_recursion4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lockdep_recursion4, align 4
  %sub = add i32 %9, -65536
  store i32 %sub, ptr %lockdep_recursion4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_cache_policy_create(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_metadata_needs_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_metadata_set_read_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_metadata_set_read_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_device_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remap_to_origin(ptr nocapture noundef readonly %cache, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %origin_dev = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 6
  %0 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %origin_dev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %4 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %5, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %7, %3
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %5, -2177
  %8 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %9 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_bio(ptr noundef %cache, ptr noundef %bio, i64 noundef %block, ptr nocapture noundef writeonly %commit_needed) unnamed_addr #2 align 64 {
entry:
  %key.i.i = alloca %struct.dm_cell_key_v2, align 8
  %background_queued = alloca i8, align 1
  %cblock = alloca i32, align 4
  %op = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %background_queued) #12
  %0 = ptrtoint ptr %background_queued to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %background_queued, align 1, !annotation !434
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cblock) #12
  %1 = ptrtoint ptr %cblock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cblock, align 4, !annotation !434
  %2 = ptrtoint ptr %commit_needed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %commit_needed, align 1
  %call = tail call fastcc zeroext i1 @bio_detain_shared(ptr noundef %cache, i64 noundef %block, ptr noundef %bio)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %commit_needed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %commit_needed, align 1
  br label %cleanup110

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  %io_mode.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 34, i32 1
  %6 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %land.rhs.i, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.rhs.i:                                       ; preds = %if.end
  %lock.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %discard_block_size.i.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 21
  %8 = ptrtoint ptr %discard_block_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %discard_block_size.i.i.i.i, align 4
  %sectors_per_block_shift.i.i.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 2
  %10 = ptrtoint ptr %sectors_per_block_shift.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectors_per_block_shift.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %if.else162.i.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i32 %9 to i64
  %sh_prom.i.i.i.i = zext i32 %11 to i64
  %shr.i.i.i.i = lshr i64 %conv.i.i.i.i, %sh_prom.i.i.i.i
  %extract.t.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %if.else162.i.i.i.i

if.else162.i.i.i.i.i:                             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_per_block.i.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %12 = ptrtoint ptr %sectors_per_block.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sectors_per_block.i.i.i.i, align 8
  %conv1.i.i.i.i = trunc i64 %13 to i32
  %div172.i.i.i.i.i = udiv i32 %9, %conv1.i.i.i.i
  br label %if.else162.i.i.i.i

if.else162.i.i.i.i:                               ; preds = %if.else162.i.i.i.i.i, %if.then.i.i.i.i
  %oblocks.0.i.off0.i.i.i = phi i32 [ %extract.t.i.i.i, %if.then.i.i.i.i ], [ %div172.i.i.i.i.i, %if.else162.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block)
  %cmp164.i.i.i.i = icmp ult i64 %block, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !435

if.then168.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i.i = trunc i64 %block to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %oblocks.0.i.off0.i.i.i
  br label %is_discarded_oblock.exit.i

if.else174.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %oblocks.0.i.off0.i.i.i, i64 %block) #17, !srcloc !436
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t8.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %is_discarded_oblock.exit.i

is_discarded_oblock.exit.i:                       ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %b.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t8.i.i, %if.else174.i.i.i.i ]
  %discard_bitset.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 20
  %15 = ptrtoint ptr %discard_bitset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %discard_bitset.i.i, align 8
  %div3.i.i.i = lshr i32 %b.addr.0.i.i.off0.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %16, i32 %div3.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %b.addr.0.i.i.off0.i.i, 31
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %is_discarded_oblock.exit.i.if.then3_crit_edge

is_discarded_oblock.exit.i.if.then3_crit_edge:    ; preds = %is_discarded_oblock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

lor.rhs.i:                                        ; preds = %is_discarded_oblock.exit.i
  %21 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_opf, align 8
  %and.i.i5.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i5.i, 0
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.if.else_crit_edge, label %optimisable_bio.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

optimisable_bio.exit:                             ; preds = %lor.rhs.i
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_size.i.i, align 8
  %conv.i.i = zext i32 %24 to i64
  %sectors_per_block.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %25 = ptrtoint ptr %sectors_per_block.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sectors_per_block.i.i, align 8
  %shl.i.i = shl i64 %26, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %conv.i.i)
  %cmp1.i.i = icmp eq i64 %shl.i.i, %conv.i.i
  br i1 %cmp1.i.i, label %optimisable_bio.exit.if.then3_crit_edge, label %optimisable_bio.exit.if.else_crit_edge

optimisable_bio.exit.if.else_crit_edge:           ; preds = %optimisable_bio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

optimisable_bio.exit.if.then3_crit_edge:          ; preds = %optimisable_bio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %optimisable_bio.exit.if.then3_crit_edge, %is_discarded_oblock.exit.i.if.then3_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #12
  %27 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %op, align 4
  %policy = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 33
  %28 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %policy, align 4
  %lookup_with_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %lookup_with_work.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lookup_with_work.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %lookup.i = getelementptr inbounds %struct.dm_cache_policy, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lookup.i, align 4
  %call.i = call i32 %33(ptr noundef %29, i64 noundef %block, ptr noundef nonnull %cblock, i32 noundef %and.i, i1 noundef zeroext true, ptr noundef null) #12
  br label %policy_lookup_with_work.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call i32 %31(ptr noundef %29, i64 noundef %block, ptr noundef nonnull %cblock, i32 noundef %and.i, i1 noundef zeroext true, ptr noundef nonnull %op) #12
  br label %policy_lookup_with_work.exit

policy_lookup_with_work.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.then.i ]
  %34 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %retval.0.i, label %if.then8 [
    i32 -2, label %land.lhs.true
    i32 0, label %policy_lookup_with_work.exit.cleanup_crit_edge
  ]

policy_lookup_with_work.exit.cleanup_crit_edge:   ; preds = %policy_lookup_with_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %policy_lookup_with_work.exit
  %call9 = call i32 @___ratelimit(ptr noundef nonnull @map_bio._rs, ptr noundef nonnull @__func__.map_bio) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end14_crit_edge, label %do.end

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %call.i186 = call ptr @dm_table_device_name(ptr noundef %38) #12
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %call.i186, i32 noundef %retval.0.i) #15
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then8.if.end14_crit_edge
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %39 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %bio) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #12
  br label %cleanup110

land.lhs.true:                                    ; preds = %policy_lookup_with_work.exit
  %40 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %op, align 4
  %tobool17.not = icmp eq ptr %41, null
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  %call.i.i187 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i187, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %get_per_bio_data.exit.i, !prof !438

do.body4.i.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i:                          ; preds = %if.then18
  %cell.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i187, i32 0, i32 1
  %42 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cell.i, align 4
  %tobool.not.i188 = icmp eq ptr %43, null
  br i1 %tobool.not.i188, label %get_per_bio_data.exit.i.bio_drop_shared_lock.exit_crit_edge, label %land.lhs.true.i

get_per_bio_data.exit.i.bio_drop_shared_lock.exit_crit_edge: ; preds = %get_per_bio_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_drop_shared_lock.exit

land.lhs.true.i:                                  ; preds = %get_per_bio_data.exit.i
  %prison.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 29
  %44 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prison.i, align 4
  %call2.i = call zeroext i1 @dm_cell_put_v2(ptr noundef %45, ptr noundef nonnull %43) #12
  br i1 %call2.i, label %if.then.i189, label %land.lhs.true.i.bio_drop_shared_lock.exit_crit_edge

land.lhs.true.i.bio_drop_shared_lock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_drop_shared_lock.exit

if.then.i189:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cell.i, align 4
  %48 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prison.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %49, ptr noundef %47) #12
  br label %bio_drop_shared_lock.exit

bio_drop_shared_lock.exit:                        ; preds = %if.then.i189, %land.lhs.true.i.bio_drop_shared_lock.exit_crit_edge, %get_per_bio_data.exit.i.bio_drop_shared_lock.exit_crit_edge
  %50 = ptrtoint ptr %cell.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %cell.i, align 4
  %51 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %op, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp21.not = icmp eq i32 %54, 0
  br i1 %cmp21.not, label %do.end37, label %do.body29, !prof !435

do.body29:                                        ; preds = %bio_drop_shared_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1635, 0\0A.popsection", ""() #12, !srcloc !445
  unreachable

do.end37:                                         ; preds = %bio_drop_shared_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = call fastcc i32 @mg_start(ptr noundef %cache, ptr noundef %52, ptr noundef %bio)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #12
  br label %cleanup110

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %policy_lookup_with_work.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #12
  br label %if.end67

if.else:                                          ; preds = %optimisable_bio.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %policy40 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 33
  %55 = ptrtoint ptr %policy40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %policy40, align 4
  %lookup.i191 = getelementptr inbounds %struct.dm_cache_policy, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %lookup.i191 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lookup.i191, align 4
  %call.i192 = call i32 %58(ptr noundef %56, i64 noundef %block, ptr noundef nonnull %cblock, i32 noundef %and.i, i1 noundef zeroext false, ptr noundef nonnull %background_queued) #12
  %59 = zext i32 %call.i192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %call.i192, label %if.then52 [
    i32 -2, label %if.else.if.end63_crit_edge
    i32 0, label %if.else.if.end63_crit_edge390
  ]

if.else.if.end63_crit_edge390:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then52:                                        ; preds = %if.else
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @map_bio._rs.67, ptr noundef nonnull @__func__.map_bio) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end62_crit_edge, label %do.end58

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cache, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %call.i193 = call ptr @dm_table_device_name(ptr noundef %63) #12
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %call.i193, i32 noundef %call.i192) #15
  br label %if.end62

if.end62:                                         ; preds = %do.end58, %if.then52.if.end62_crit_edge
  %bi_status.i194 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %64 = ptrtoint ptr %bi_status.i194 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %bi_status.i194, align 2
  call void @bio_endio(ptr noundef %bio) #12
  br label %cleanup110

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.else.if.end63_crit_edge390
  %65 = ptrtoint ptr %background_queued to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %background_queued, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool64.not = icmp eq i8 %66, 0
  br i1 %tobool64.not, label %if.end63.if.end67_crit_edge, label %if.then65

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then65:                                        ; preds = %if.end63
  %67 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i.i196 = icmp eq i32 %68, 2
  br i1 %cmp.i.i196, label %if.then65.if.end67_crit_edge, label %if.end.i198

if.then65.if.end67_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.end.i198:                                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 27
  %69 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wq.i, align 4
  %migration_worker.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 26
  %call.i.i197 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %70, ptr noundef %migration_worker.i) #12
  br label %if.end67

if.end67:                                         ; preds = %if.end.i198, %if.then65.if.end67_crit_edge, %if.end63.if.end67_crit_edge, %cleanup
  %r.0 = phi i32 [ %retval.0.i, %cleanup ], [ %call.i192, %if.end63.if.end67_crit_edge ], [ %call.i192, %if.then65.if.end67_crit_edge ], [ %call.i192, %if.end.i198 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %r.0)
  %cmp68 = icmp eq i32 %r.0, -2
  br i1 %cmp68, label %if.then69, label %if.else78

if.then69:                                        ; preds = %if.end67
  %call.i199 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i200 = icmp eq ptr %call.i199, null
  br i1 %tobool.not.i200, label %do.body4.i, label %get_per_bio_data.exit, !prof !438

do.body4.i:                                       ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit:                            ; preds = %if.then69
  %71 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bi_opf, align 8
  %and.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i201 = icmp eq i32 %and.i.i, 0
  %read_miss.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 1
  %write_miss.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 3
  %cond2.i = select i1 %tobool.i.not.i201, ptr %read_miss.i, ptr %write_miss.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cond2.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %cond2.i, i32 1, i32 3, i32 1) #12
  %73 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cond2.i, ptr %cond2.i, i32 1, ptr elementtype(i32) %cond2.i) #12, !srcloc !443
  %74 = ptrtoint ptr %call.i199 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %call.i199, align 8
  %75 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp71 = icmp eq i8 %75, 0
  br i1 %cmp71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %get_per_bio_data.exit
  %76 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bi_opf, align 8
  %and.i.i203 = and i32 %77, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i203)
  %cmp.i.not.i = icmp eq i32 %and.i.i203, 3
  br i1 %cmp.i.not.i, label %if.then72.accounted_begin.exit_crit_edge, label %if.then.i206

if.then72.accounted_begin.exit_crit_edge:         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %accounted_begin.exit

if.then.i206:                                     ; preds = %if.then72
  %call.i.i204 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i205 = icmp eq ptr %call.i.i204, null
  br i1 %tobool.not.i.i205, label %do.body4.i.i207, label %get_per_bio_data.exit.i208, !prof !438

do.body4.i.i207:                                  ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i208:                       ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #14
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %78 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bi_size.i, align 8
  %shr.i = lshr i32 %79, 9
  %conv.i = zext i32 %shr.i to i64
  %len.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i204, i32 0, i32 3
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv.i, ptr %len.i, align 8
  %tracker.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40
  call void @_raw_spin_lock_irq(ptr noundef %tracker.i) #12
  %in_flight.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40, i32 1
  %81 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %in_flight.i.i, align 8
  %add.i.i = add i64 %82, %conv.i
  store i64 %add.i.i, ptr %in_flight.i.i, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %tracker.i) #12
  br label %accounted_begin.exit

accounted_begin.exit:                             ; preds = %get_per_bio_data.exit.i208, %if.then72.accounted_begin.exit_crit_edge
  call fastcc void @__remap_to_origin_clear_discard(ptr noundef %cache, ptr noundef %bio, i64 noundef %block, i1 noundef zeroext true) #12
  br label %if.end104

if.else73:                                        ; preds = %get_per_bio_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @bio_endio(ptr noundef %bio) #12
  br label %cleanup110

if.else78:                                        ; preds = %if.end67
  %83 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bi_opf, align 8
  %and.i.i211 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i211)
  %tobool.i.not.i212 = icmp eq i32 %and.i.i211, 0
  %stats.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35
  %write_hit.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 2
  %cond2.i213 = select i1 %tobool.i.not.i212, ptr %stats.i, ptr %write_hit.i
  %call.i.i.i214 = call zeroext i1 @__kasan_check_write(ptr noundef %cond2.i213, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %cond2.i213, i32 1, i32 3, i32 1) #12
  %85 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cond2.i213, ptr %cond2.i213, i32 1, ptr elementtype(i32) %cond2.i213) #12, !srcloc !443
  %86 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp.i = icmp eq i32 %87, 2
  %88 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bi_opf, align 8
  %and.i215 = and i32 %89, 1
  br i1 %cmp.i, label %if.then80, label %if.else90

if.then80:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.i216.not = icmp eq i32 %and.i215, 0
  br i1 %tobool.i216.not, label %if.else88, label %if.then86

if.then86:                                        ; preds = %if.then80
  %call.i.i217 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i218 = icmp eq ptr %call.i.i217, null
  br i1 %tobool.not.i.i218, label %do.body4.i.i219, label %get_per_bio_data.exit.i222, !prof !438

do.body4.i.i219:                                  ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i222:                       ; preds = %if.then86
  %cell.i220 = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i217, i32 0, i32 1
  %90 = ptrtoint ptr %cell.i220 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cell.i220, align 4
  %tobool.not.i221 = icmp eq ptr %91, null
  br i1 %tobool.not.i221, label %get_per_bio_data.exit.i222.bio_drop_shared_lock.exit228_crit_edge, label %land.lhs.true.i225

get_per_bio_data.exit.i222.bio_drop_shared_lock.exit228_crit_edge: ; preds = %get_per_bio_data.exit.i222
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_drop_shared_lock.exit228

land.lhs.true.i225:                               ; preds = %get_per_bio_data.exit.i222
  %prison.i223 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 29
  %92 = ptrtoint ptr %prison.i223 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prison.i223, align 4
  %call2.i224 = call zeroext i1 @dm_cell_put_v2(ptr noundef %93, ptr noundef nonnull %91) #12
  br i1 %call2.i224, label %if.then.i226, label %land.lhs.true.i225.bio_drop_shared_lock.exit228_crit_edge

land.lhs.true.i225.bio_drop_shared_lock.exit228_crit_edge: ; preds = %land.lhs.true.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_drop_shared_lock.exit228

if.then.i226:                                     ; preds = %land.lhs.true.i225
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %cell.i220 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cell.i220, align 4
  %96 = ptrtoint ptr %prison.i223 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prison.i223, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %97, ptr noundef %95) #12
  br label %bio_drop_shared_lock.exit228

bio_drop_shared_lock.exit228:                     ; preds = %if.then.i226, %land.lhs.true.i225.bio_drop_shared_lock.exit228_crit_edge, %get_per_bio_data.exit.i222.bio_drop_shared_lock.exit228_crit_edge
  %98 = ptrtoint ptr %cell.i220 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %cell.i220, align 4
  %demotion = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 35, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %demotion, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %demotion, i32 1, i32 3, i32 1) #12
  %99 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %demotion, ptr %demotion, i32 1, ptr elementtype(i32) %demotion) #12, !srcloc !443
  %100 = ptrtoint ptr %cblock to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cblock, align 4
  %102 = call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i.i.i229 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i229 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i.i, align 8
  %lockdep_recursion.i.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 143
  %106 = ptrtoint ptr %lockdep_recursion.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lockdep_recursion.i.i, align 4
  %add.i.i230 = add i32 %107, 65536
  store i32 %add.i.i230, ptr %lockdep_recursion.i.i, align 4
  %background_work_lock.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 37
  %call1.i.i = call i32 @down_read_trylock(ptr noundef %background_work_lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.i.not.i231 = icmp eq i32 %call1.i.i, 0
  %108 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i.i, align 8
  %lockdep_recursion5.i.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 143
  %110 = ptrtoint ptr %lockdep_recursion5.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lockdep_recursion5.i.i, align 4
  %sub.i.i = add i32 %111, -65536
  store i32 %sub.i.i, ptr %lockdep_recursion5.i.i, align 4
  br i1 %tobool.i.not.i231, label %bio_drop_shared_lock.exit228.if.end104_crit_edge, label %if.end.i235

bio_drop_shared_lock.exit228.if.end104_crit_edge: ; preds = %bio_drop_shared_lock.exit228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.end.i235:                                      ; preds = %bio_drop_shared_lock.exit228
  %migration_pool.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 41
  %call.i.i232 = call noalias ptr @mempool_alloc(ptr noundef %migration_pool.i.i, i32 noundef 3072) #12
  %112 = call ptr @memset(ptr %call.i.i232, i32 0, i32 72)
  %cache1.i.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i.i232, i32 0, i32 1
  %113 = ptrtoint ptr %cache1.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %cache, ptr %cache1.i.i, align 8
  %nr_allocated_migrations.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_allocated_migrations.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nr_allocated_migrations.i.i, i32 1, i32 3, i32 1) #12
  %114 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_allocated_migrations.i.i, ptr %nr_allocated_migrations.i.i, i32 1, ptr elementtype(i32) %nr_allocated_migrations.i.i) #12, !srcloc !443
  %overwrite_bio.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i.i232, i32 0, i32 3
  %115 = ptrtoint ptr %overwrite_bio.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %bio, ptr %overwrite_bio.i, align 8
  %invalidate_cblock.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i.i232, i32 0, i32 5
  %116 = ptrtoint ptr %invalidate_cblock.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %101, ptr %invalidate_cblock.i, align 8
  %invalidate_oblock.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i.i232, i32 0, i32 6
  %117 = ptrtoint ptr %invalidate_oblock.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %block, ptr %invalidate_oblock.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i.i) #12
  %118 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 4294967295, ptr %key.i.i, align 8
  %prison.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 29
  %119 = ptrtoint ptr %prison.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prison.i.i.i, align 4
  %call.i.i.i233 = call ptr @dm_bio_prison_alloc_cell_v2(ptr noundef %120, i32 noundef 3072) #12
  %add.i.i.i = add i64 %block, 1
  %dev.i.i.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 0, ptr %dev.i.i.i, align 8
  %block_begin.i.i.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %block_begin.i.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %block, ptr %block_begin.i.i.i, align 8
  %block_end.i.i.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %block_end.i.i.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add.i.i.i, ptr %block_end.i.i.i, align 8
  %124 = ptrtoint ptr %prison.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prison.i.i.i, align 4
  %cell.i.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i.i232, i32 0, i32 4
  %call4.i.i = call i32 @dm_cell_lock_v2(ptr noundef %125, ptr noundef nonnull %key.i.i, i32 noundef 1, ptr noundef %call.i.i.i233, ptr noundef %cell.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i234 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i234, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %prison.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prison.i.i.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %127, ptr noundef %call.i.i.i233) #12
  call fastcc void @invalidate_complete(ptr noundef %call.i.i232, i1 noundef zeroext false) #12
  br label %invalidate_lock.exit.i

if.end.i.i:                                       ; preds = %if.end.i235
  %128 = ptrtoint ptr %cell.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cell.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %129, %call.i.i.i233
  br i1 %cmp6.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %prison.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prison.i.i.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %131, ptr noundef %call.i.i.i233) #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i236 = icmp eq i32 %call4.i.i, 0
  call void @__init_work(ptr noundef %call.i.i232, i32 noundef 0) #12
  %132 = ptrtoint ptr %call.i.i232 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -64, ptr %call.i.i232, align 4
  %lockdep_map.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i232, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i232, i32 0, i32 1
  %133 = ptrtoint ptr %entry4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %entry4.i.i.i, ptr %entry4.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i232, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %entry4.i.i.i, ptr %prev.i.i.i.i, align 4
  %func.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i232, i32 0, i32 2
  %135 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @invalidate_remove, ptr %func.i.i.i, align 4
  %input.i.i.i = getelementptr inbounds %struct.continuation, ptr %call.i.i232, i32 0, i32 1
  %136 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %input.i.i.i, align 4
  br i1 %tobool.not.i.i236, label %if.else.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %cache1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cache1.i.i, align 8
  %prison.i35.i.i = getelementptr inbounds %struct.cache, ptr %138, i32 0, i32 29
  %139 = ptrtoint ptr %prison.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prison.i35.i.i, align 4
  %141 = ptrtoint ptr %cell.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cell.i.i, align 4
  call void @dm_cell_quiesce_v2(ptr noundef %140, ptr noundef %142, ptr noundef %call.i.i232) #12
  br label %invalidate_lock.exit.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 27
  %143 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wq.i.i, align 4
  %call.i36.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %144, ptr noundef %call.i.i232) #12
  br label %invalidate_lock.exit.i

invalidate_lock.exit.i:                           ; preds = %if.else.i.i, %if.then9.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i.i) #12
  br label %if.end104

if.else88:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__remap_to_origin_clear_discard(ptr noundef %cache, ptr noundef %bio, i64 noundef %block, i1 noundef zeroext true) #12
  br label %if.end104

if.else90:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.i238 = icmp ne i32 %and.i215, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i240 = icmp eq i32 %87, 1
  %or.cond = select i1 %tobool.i238, i1 %cmp.i240, i1 false
  br i1 %or.cond, label %land.lhs.true98, label %if.else90.if.else101_crit_edge

if.else90.if.else101_crit_edge:                   ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else101

land.lhs.true98:                                  ; preds = %if.else90
  %145 = ptrtoint ptr %cblock to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cblock, align 4
  %dirty_bitset.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 30
  %147 = ptrtoint ptr %dirty_bitset.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dirty_bitset.i, align 8
  %div3.i.i = lshr i32 %146, 5
  %arrayidx.i.i = getelementptr i32, ptr %148, i32 %div3.i.i
  %149 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i241 = and i32 %146, 31
  %151 = shl nuw i32 1, %and.i.i241
  %152 = and i32 %150, %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.i242.not = icmp eq i32 %152, 0
  br i1 %tobool.i242.not, label %if.then100, label %land.lhs.true98.if.else101_crit_edge

land.lhs.true98.if.else101_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else101

if.then100:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @remap_to_origin_and_cache(ptr noundef %cache, ptr noundef %bio, i64 noundef %block, i32 noundef %146)
  call fastcc void @accounted_begin(ptr noundef %cache, ptr noundef %bio)
  br label %if.end104

if.else101:                                       ; preds = %land.lhs.true98.if.else101_crit_edge, %if.else90.if.else101_crit_edge
  %153 = ptrtoint ptr %cblock to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cblock, align 4
  %lock.i.i243 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i243) #12
  %need_tick_bio.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 36
  %155 = ptrtoint ptr %need_tick_bio.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load.i.i = load i8, ptr %need_tick_bio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %if.else101.check_if_tick_bio_needed.exit.i_crit_edge, label %land.lhs.true.i.i

if.else101.check_if_tick_bio_needed.exit.i_crit_edge: ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_if_tick_bio_needed.exit.i

land.lhs.true.i.i:                                ; preds = %if.else101
  %156 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bi_opf, align 8
  %158 = and i32 %157, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.i.i.i = icmp ne i32 %158, 0
  %and.i.i245 = and i32 %157, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i245)
  %cmp.not.i.i = icmp eq i32 %and.i.i245, 3
  %or.cond.i.i = or i1 %tobool.i.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.check_if_tick_bio_needed.exit.i_crit_edge, label %if.then.i.i247

land.lhs.true.i.i.check_if_tick_bio_needed.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_if_tick_bio_needed.exit.i

if.then.i.i247:                                   ; preds = %land.lhs.true.i.i
  %call.i.i.i246 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i246, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %get_per_bio_data.exit.i.i, !prof !438

do.body4.i.i.i:                                   ; preds = %if.then.i.i247
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i.i:                        ; preds = %if.then.i.i247
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %call.i.i.i246 to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load4.i.i = load i8, ptr %call.i.i.i246, align 8
  %bf.set.i.i = or i8 %bf.load4.i.i, -128
  store i8 %bf.set.i.i, ptr %call.i.i.i246, align 8
  %160 = ptrtoint ptr %need_tick_bio.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load6.i.i = load i8, ptr %need_tick_bio.i.i, align 4
  %bf.clear7.i.i = and i8 %bf.load6.i.i, 127
  store i8 %bf.clear7.i.i, ptr %need_tick_bio.i.i, align 4
  br label %check_if_tick_bio_needed.exit.i

check_if_tick_bio_needed.exit.i:                  ; preds = %get_per_bio_data.exit.i.i, %land.lhs.true.i.i.check_if_tick_bio_needed.exit.i_crit_edge, %if.else101.check_if_tick_bio_needed.exit.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i243) #12
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %161 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %bi_iter.i.i, align 8
  %conv.i.i248 = zext i32 %154 to i64
  %cache_dev.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 7
  %163 = ptrtoint ptr %cache_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cache_dev.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %167 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i249 = and i16 %168, -2049
  store i16 %conv1.i.i.i.i249, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %169 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %170, %166
  br i1 %cmp.not.i.i.i, label %check_if_tick_bio_needed.exit.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

check_if_tick_bio_needed.exit.i.bio_set_dev.exit.i.i_crit_edge: ; preds = %check_if_tick_bio_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %check_if_tick_bio_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i = and i16 %168, -2177
  %171 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %check_if_tick_bio_needed.exit.i.bio_set_dev.exit.i.i_crit_edge
  %172 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %166, ptr %bi_bdev.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %bio) #12
  %sectors_per_block_shift.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 2
  %173 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %174)
  %cmp.i.i.i = icmp sgt i32 %174, -1
  br i1 %cmp.i.i.i, label %if.else193.i.i, label %if.then.i10.i

if.then.i10.i:                                    ; preds = %bio_set_dev.exit.i.i
  %sectors_per_block.i.i250 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %175 = ptrtoint ptr %sectors_per_block.i.i250 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %sectors_per_block.i.i250, align 8
  %mul.i.i = mul i64 %176, %conv.i.i248
  %conv4.i.i = trunc i64 %176 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %162)
  %cmp173.i.i = icmp ult i64 %162, 4294967296
  br i1 %cmp173.i.i, label %if.then177.i.i, label %if.else183.i.i, !prof !435

if.then177.i.i:                                   ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv178.i.i = trunc i64 %162 to i32
  %rem179.i.i = urem i32 %conv178.i.i, %conv4.i.i
  br label %if.end187.i.i

if.else183.i.i:                                   ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  %177 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv4.i.i, i64 %162) #17, !srcloc !436
  %asmresult.i294.i.i = extractvalue { i64, i64 } %177, 0
  %shr.i.i.i = lshr i64 %asmresult.i294.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end187.i.i

if.end187.i.i:                                    ; preds = %if.else183.i.i, %if.then177.i.i
  %__rem.0.i.i = phi i32 [ %rem179.i.i, %if.then177.i.i ], [ %conv.i.i.i, %if.else183.i.i ]
  %conv189.i.i = zext i32 %__rem.0.i.i to i64
  %add190.i.i = add i64 %mul.i.i, %conv189.i.i
  br label %remap_to_cache.exit.i

if.else193.i.i:                                   ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom194.i.i = zext i32 %174 to i64
  %shl195.i.i = shl i64 %conv.i.i248, %sh_prom194.i.i
  %sectors_per_block196.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %178 = ptrtoint ptr %sectors_per_block196.i.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %sectors_per_block196.i.i, align 8
  %sub197.i.i = add i64 %179, -1
  %and198.i.i = and i64 %sub197.i.i, %162
  %or199.i.i = or i64 %and198.i.i, %shl195.i.i
  br label %remap_to_cache.exit.i

remap_to_cache.exit.i:                            ; preds = %if.else193.i.i, %if.end187.i.i
  %storemerge.i.i = phi i64 [ %add190.i.i, %if.end187.i.i ], [ %or199.i.i, %if.else193.i.i ]
  %180 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %storemerge.i.i, ptr %bi_iter.i.i, align 8
  %181 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bi_opf, align 8
  %and.i11.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.i.not.i258 = icmp eq i32 %and.i11.i, 0
  br i1 %tobool.i.not.i258, label %remap_to_cache.exit.i.if.end104_crit_edge, label %if.then.i260

remap_to_cache.exit.i.if.end104_crit_edge:        ; preds = %remap_to_cache.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then.i260:                                     ; preds = %remap_to_cache.exit.i
  %dirty_bitset.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 30
  %183 = ptrtoint ptr %dirty_bitset.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dirty_bitset.i.i, align 8
  %call1.i.i259 = call i32 @_test_and_set_bit(i32 noundef %154, ptr noundef %184) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i259)
  %tobool.not.i12.i = icmp eq i32 %call1.i.i259, 0
  br i1 %tobool.not.i12.i, label %if.then.i13.i, label %if.then.i260.set_dirty.exit.i_crit_edge

if.then.i260.set_dirty.exit.i_crit_edge:          ; preds = %if.then.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_dirty.exit.i

if.then.i13.i:                                    ; preds = %if.then.i260
  call void @__sanitizer_cov_trace_pc() #14
  %nr_dirty.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 31
  %call.i.i.i.i261 = call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nr_dirty.i.i, i32 1, i32 3, i32 1) #12
  %185 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_dirty.i.i, ptr %nr_dirty.i.i, i32 1, ptr elementtype(i32) %nr_dirty.i.i) #12, !srcloc !443
  %policy.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 33
  %186 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %policy.i.i, align 4
  %set_dirty.i.i.i = getelementptr inbounds %struct.dm_cache_policy, ptr %187, i32 0, i32 5
  %188 = ptrtoint ptr %set_dirty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %set_dirty.i.i.i, align 4
  call void %189(ptr noundef %187, i32 noundef %154) #12
  br label %set_dirty.exit.i

set_dirty.exit.i:                                 ; preds = %if.then.i13.i, %if.then.i260.set_dirty.exit.i_crit_edge
  %discard_block_size.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 21
  %190 = ptrtoint ptr %discard_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %discard_block_size.i.i.i, align 4
  %192 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %193)
  %cmp.i.i.i.i262 = icmp sgt i32 %193, -1
  br i1 %cmp.i.i.i.i262, label %if.then.i.i16.i, label %if.else162.i.i.i.i366

if.then.i.i16.i:                                  ; preds = %set_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i14.i = zext i32 %191 to i64
  %sh_prom.i.i.i = zext i32 %193 to i64
  %shr.i.i15.i = lshr i64 %conv.i.i14.i, %sh_prom.i.i.i
  %extract.t.i.i263 = trunc i64 %shr.i.i15.i to i32
  br label %if.else162.i.i.i

if.else162.i.i.i.i366:                            ; preds = %set_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_per_block.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %194 = ptrtoint ptr %sectors_per_block.i.i.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %sectors_per_block.i.i.i, align 8
  %conv1.i.i.i = trunc i64 %195 to i32
  %div172.i.i.i.i365 = udiv i32 %191, %conv1.i.i.i
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %if.else162.i.i.i.i366, %if.then.i.i16.i
  %oblocks.0.i.off0.i.i = phi i32 [ %extract.t.i.i263, %if.then.i.i16.i ], [ %div172.i.i.i.i365, %if.else162.i.i.i.i366 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block)
  %cmp164.i.i.i = icmp ult i64 %block, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !435

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %block to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %oblocks.0.i.off0.i.i
  br label %oblock_to_dblock.exit.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %oblocks.0.i.off0.i.i, i64 %block) #17, !srcloc !436
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %196, 1
  %extract.t23.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %oblock_to_dblock.exit.i

oblock_to_dblock.exit.i:                          ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %b.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t23.i, %if.else174.i.i.i ]
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i243) #12
  %discard_bitset.i.i369 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 20
  %197 = ptrtoint ptr %discard_bitset.i.i369 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %discard_bitset.i.i369, align 8
  call void @_clear_bit(i32 noundef %b.addr.0.i.i.off0.i, ptr noundef %198) #12
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i243) #12
  br label %if.end104

if.end104:                                        ; preds = %oblock_to_dblock.exit.i, %remap_to_cache.exit.i.if.end104_crit_edge, %if.then100, %if.else88, %invalidate_lock.exit.i, %bio_drop_shared_lock.exit228.if.end104_crit_edge, %accounted_begin.exit
  %199 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %bi_opf, align 8
  %201 = and i32 %200, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool107.not = icmp eq i32 %201, 0
  br i1 %tobool107.not, label %if.end104.cleanup110_crit_edge, label %if.then108

if.end104.cleanup110_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

if.then108:                                       ; preds = %if.end104
  %call.i.i371 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i372 = icmp eq ptr %call.i.i371, null
  br i1 %tobool.not.i.i372, label %do.body4.i.i373, label %get_per_bio_data.exit.i376, !prof !438

do.body4.i.i373:                                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i376:                       ; preds = %if.then108
  %tracker.i374 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40
  %len.i375 = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i371, i32 0, i32 3
  %202 = ptrtoint ptr %len.i375 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %len.i375, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %203)
  %tobool.not.i1.i = icmp eq i64 %203, 0
  br i1 %tobool.not.i1.i, label %get_per_bio_data.exit.i376.accounted_complete.exit_crit_edge, label %do.body1.i.i

get_per_bio_data.exit.i376.accounted_complete.exit_crit_edge: ; preds = %get_per_bio_data.exit.i376
  call void @__sanitizer_cov_trace_pc() #14
  br label %accounted_complete.exit

do.body1.i.i:                                     ; preds = %get_per_bio_data.exit.i376
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tracker.i374) #12
  %in_flight.i.i377 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40, i32 1
  %204 = ptrtoint ptr %in_flight.i.i377 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %in_flight.i.i377, align 8
  %sub.i.i378 = sub i64 %205, %203
  store i64 %sub.i.i378, ptr %in_flight.i.i377, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %205, i64 %203)
  %tobool6.not.i.i = icmp eq i64 %205, %203
  br i1 %tobool6.not.i.i, label %if.then7.i.i379, label %do.body1.i.i.if.end8.i.i380_crit_edge

do.body1.i.i.if.end8.i.i380_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i380

if.then7.i.i379:                                  ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %206 = load volatile i32, ptr @jiffies, align 128
  %idle_time.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40, i32 2
  %207 = ptrtoint ptr %idle_time.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %idle_time.i.i, align 8
  br label %if.end8.i.i380

if.end8.i.i380:                                   ; preds = %if.then7.i.i379, %do.body1.i.i.if.end8.i.i380_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tracker.i374, i32 noundef %call2.i.i) #12
  br label %accounted_complete.exit

accounted_complete.exit:                          ; preds = %if.end8.i.i380, %get_per_bio_data.exit.i376.accounted_complete.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 38, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %commit_scheduled1.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 38, i32 9
  %208 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %commit_scheduled1.i, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i381 = icmp eq i8 %209, 0
  %210 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 38, i32 7, i32 1
  %211 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i382 = icmp eq ptr %212, null
  br i1 %tobool.not.i.i382, label %if.else.i.i384, label %if.then.i.i383

if.then.i.i383:                                   ; preds = %accounted_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %bio, ptr %212, align 8
  br label %bio_list_add.exit.i

if.else.i.i384:                                   ; preds = %accounted_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bios.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 38, i32 7
  %214 = ptrtoint ptr %bios.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %bio, ptr %bios.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i384, %if.then.i.i383
  %215 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %bio, ptr %tail.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br i1 %tobool.not.i381, label %bio_list_add.exit.i.issue_after_commit.exit_crit_edge, label %if.then.i387

bio_list_add.exit.i.issue_after_commit.exit_crit_edge: ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_after_commit.exit

if.then.i387:                                     ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i.i385 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 38, i32 4
  %216 = ptrtoint ptr %wq.i.i385 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %wq.i.i385, align 4
  %commit_work.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 38, i32 8
  %call.i.i.i386 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %217, ptr noundef %commit_work.i.i) #12
  br label %issue_after_commit.exit

issue_after_commit.exit:                          ; preds = %if.then.i387, %bio_list_add.exit.i.issue_after_commit.exit_crit_edge
  %218 = ptrtoint ptr %commit_needed to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %commit_needed, align 1
  br label %cleanup110

cleanup110:                                       ; preds = %issue_after_commit.exit, %if.end104.cleanup110_crit_edge, %if.else73, %if.end62, %do.end37, %if.end14, %if.then
  %retval.3 = phi i32 [ 0, %issue_after_commit.exit ], [ 0, %if.end62 ], [ 0, %if.then ], [ 0, %do.end37 ], [ 0, %if.end14 ], [ 0, %if.else73 ], [ 1, %if.end104.cleanup110_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cblock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %background_queued) #12
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bio_detain_shared(ptr nocapture noundef readonly %cache, i64 noundef %oblock, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  %key = alloca %struct.dm_cell_key_v2, align 8
  %cell = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #12
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8
  %add = add i64 %oblock, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell) #12
  %1 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cell, align 4, !annotation !434
  %prison.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 29
  %2 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prison.i, align 4
  %call.i = tail call ptr @dm_bio_prison_alloc_cell_v2(ptr noundef %3, i32 noundef 3072) #12
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %key, align 8
  %dev.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %dev.i, align 8
  %block_begin.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %block_begin.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %oblock, ptr %block_begin.i, align 8
  %block_end.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key, i32 0, i32 3
  %7 = ptrtoint ptr %block_end.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %block_end.i, align 8
  %8 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prison.i, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %11, 1
  %12 = xor i32 %and.i.i, 1
  %call4 = call zeroext i1 @dm_cell_get_v2(ptr noundef %9, ptr noundef nonnull %key, i32 noundef %12, ptr noundef %bio, ptr noundef %call.i, ptr noundef nonnull %cell) #12
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prison.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %14, ptr noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cell, align 4
  %cmp.not = icmp eq ptr %16, %call.i
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prison.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %18, ptr noundef %call.i) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call.i29 = call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call.i29, null
  br i1 %tobool.not.i, label %do.body4.i, label %get_per_bio_data.exit, !prof !438

do.body4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cell, align 4
  %cell9 = getelementptr inbounds %struct.per_bio_data, ptr %call.i29, i32 0, i32 1
  %21 = ptrtoint ptr %cell9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cell9, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_per_bio_data.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #12
  ret i1 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mg_start(ptr noundef %cache, ptr noundef %op, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  %key.i = alloca %struct.dm_cell_key_v2, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %lockdep_recursion.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 143
  %4 = ptrtoint ptr %lockdep_recursion.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockdep_recursion.i, align 4
  %add.i = add i32 %5, 65536
  store i32 %add.i, ptr %lockdep_recursion.i, align 4
  %background_work_lock.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 37
  %call1.i = tail call i32 @down_read_trylock(ptr noundef %background_work_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %lockdep_recursion5.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 143
  %8 = ptrtoint ptr %lockdep_recursion5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lockdep_recursion5.i, align 4
  %sub.i = add i32 %9, -65536
  store i32 %sub.i, ptr %lockdep_recursion5.i, align 4
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %policy = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 33
  %10 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policy, align 4
  %complete_background_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %complete_background_work.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %complete_background_work.i, align 4
  tail call void %13(ptr noundef %11, ptr noundef %op, i1 noundef zeroext false) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %migration_pool.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 41
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %migration_pool.i, i32 noundef 3072) #12
  %14 = call ptr @memset(ptr %call.i, i32 0, i32 80)
  %cache1.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %cache1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cache, ptr %cache1.i, align 8
  %nr_allocated_migrations.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_allocated_migrations.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_allocated_migrations.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_allocated_migrations.i, ptr %nr_allocated_migrations.i, i32 1, ptr elementtype(i32) %nr_allocated_migrations.i) #12, !srcloc !443
  %op2 = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %op2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %op, ptr %op2, align 4
  %overwrite_bio = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bio, ptr %overwrite_bio, align 8
  %tobool.not = icmp eq ptr %bio, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nr_io_migrations.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 16
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_io_migrations.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_io_migrations.i, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_io_migrations.i, ptr %nr_io_migrations.i, i32 1, ptr elementtype(i32) %nr_io_migrations.i) #12, !srcloc !443
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i) #12
  %20 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 4294967295, ptr %key.i, align 8
  %21 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache1.i, align 8
  %prison.i.i = getelementptr inbounds %struct.cache, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %prison.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prison.i.i, align 4
  %call.i.i = tail call ptr @dm_bio_prison_alloc_cell_v2(ptr noundef %24, i32 noundef 3072) #12
  %25 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op2, align 4
  %oblock.i = getelementptr inbounds %struct.policy_work, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %oblock.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %oblock.i, align 8
  %add.i.i = add i64 %28, 1
  %dev.i.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key.i, i32 0, i32 1
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %dev.i.i, align 8
  %block_begin.i.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key.i, i32 0, i32 2
  %30 = ptrtoint ptr %block_begin.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %28, ptr %block_begin.i.i, align 8
  %block_end.i.i = getelementptr inbounds %struct.dm_cell_key_v2, ptr %key.i, i32 0, i32 3
  %31 = ptrtoint ptr %block_end.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add.i.i, ptr %block_end.i.i, align 8
  %32 = ptrtoint ptr %prison.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prison.i.i, align 4
  %34 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %overwrite_bio, align 8
  %tobool.not.i = icmp ne ptr %35, null
  %cond.i = zext i1 %tobool.not.i to i32
  %cell.i = getelementptr inbounds %struct.dm_cache_migration, ptr %call.i, i32 0, i32 4
  %call5.i = call i32 @dm_cell_lock_v2(ptr noundef %33, ptr noundef nonnull %key.i, i32 noundef %cond.i, ptr noundef %call.i.i, ptr noundef %cell.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prison.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prison.i.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %37, ptr noundef %call.i.i) #12
  call fastcc void @mg_complete(ptr noundef %call.i, i1 noundef zeroext false) #12
  br label %mg_lock_writes.exit

if.end.i:                                         ; preds = %if.end4
  %38 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cell.i, align 4
  %cmp7.not.i = icmp eq ptr %39, %call.i.i
  br i1 %cmp7.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prison.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prison.i.i, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %41, ptr noundef %call.i.i) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i.if.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp10.i = icmp eq i32 %call5.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mg_copy(ptr noundef %call.i) #12
  br label %mg_lock_writes.exit

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__init_work(ptr noundef %call.i, i32 noundef 0) #12
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %call.i, align 4
  %lockdep_map.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %entry4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry4.i.i.i, ptr %entry4.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry4.i.i.i, ptr %prev.i.i.i.i, align 4
  %func.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mg_copy, ptr %func.i.i.i, align 4
  %input.i.i.i = getelementptr inbounds %struct.continuation, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %input.i.i.i, align 4
  %47 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cache1.i, align 8
  %prison.i34.i = getelementptr inbounds %struct.cache, ptr %48, i32 0, i32 29
  %49 = ptrtoint ptr %prison.i34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prison.i34.i, align 4
  %51 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cell.i, align 4
  call void @dm_cell_quiesce_v2(ptr noundef %50, ptr noundef %52, ptr noundef %call.i) #12
  br label %mg_lock_writes.exit

mg_lock_writes.exit:                              ; preds = %if.else.i, %if.then11.i, %if.then.i
  %retval.0.i = phi i32 [ %call5.i, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i) #12
  br label %cleanup

cleanup:                                          ; preds = %mg_lock_writes.exit, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %mg_lock_writes.exit ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @accounted_begin(ptr noundef %cache, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 3
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %get_per_bio_data.exit, !prof !438

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %3, 9
  %conv = zext i32 %shr to i64
  %len = getelementptr inbounds %struct.per_bio_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %len, align 8
  %tracker = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40
  tail call void @_raw_spin_lock_irq(ptr noundef %tracker) #12
  %in_flight.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 40, i32 1
  %5 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %in_flight.i, align 8
  %add.i = add i64 %6, %conv
  store i64 %add.i, ptr %in_flight.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracker) #12
  br label %if.end

if.end:                                           ; preds = %get_per_bio_data.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remap_to_origin_and_cache(ptr noundef %cache, ptr noundef %bio, i64 noundef %oblock, i32 noundef %cblock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bs = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 42
  %call = tail call ptr @bio_clone_fast(ptr noundef %bio, i32 noundef 3072, ptr noundef %bs) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !438

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 831, 0\0A.popsection", ""() #12, !srcloc !446
  unreachable

do.end9:                                          ; preds = %entry
  tail call void @bio_chain(ptr noundef nonnull %call, ptr noundef %bio) #12
  tail call fastcc void @__remap_to_origin_clear_discard(ptr noundef %cache, ptr noundef nonnull %call, i64 noundef %oblock, i1 noundef zeroext false)
  tail call void @submit_bio(ptr noundef nonnull %call) #12
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %0 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bi_iter.i, align 8
  %conv.i = zext i32 %cblock to i64
  %cache_dev.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 7
  %2 = ptrtoint ptr %cache_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %7, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i.i, label %do.end9.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

do.end9.bio_set_dev.exit.i_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %do.end9.bio_set_dev.exit.i_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #12
  %sectors_per_block_shift.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 2
  %12 = ptrtoint ptr %sectors_per_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectors_per_block_shift.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, -1
  br i1 %cmp.i.i, label %if.else193.i, label %if.then.i

if.then.i:                                        ; preds = %bio_set_dev.exit.i
  %sectors_per_block.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %14 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sectors_per_block.i, align 8
  %mul.i = mul i64 %15, %conv.i
  %conv4.i = trunc i64 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp173.i = icmp ult i64 %1, 4294967296
  br i1 %cmp173.i, label %if.then177.i, label %if.else183.i, !prof !435

if.then177.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv178.i = trunc i64 %1 to i32
  %rem179.i = urem i32 %conv178.i, %conv4.i
  br label %if.end187.i

if.else183.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv4.i, i64 %1) #17, !srcloc !436
  %asmresult.i294.i = extractvalue { i64, i64 } %16, 0
  %shr.i.i = lshr i64 %asmresult.i294.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.else183.i, %if.then177.i
  %__rem.0.i = phi i32 [ %rem179.i, %if.then177.i ], [ %conv.i.i, %if.else183.i ]
  %conv189.i = zext i32 %__rem.0.i to i64
  %add190.i = add i64 %mul.i, %conv189.i
  br label %remap_to_cache.exit

if.else193.i:                                     ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom194.i = zext i32 %13 to i64
  %shl195.i = shl i64 %conv.i, %sh_prom194.i
  %sectors_per_block196.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %17 = ptrtoint ptr %sectors_per_block196.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sectors_per_block196.i, align 8
  %sub197.i = add i64 %18, -1
  %and198.i = and i64 %sub197.i, %1
  %or199.i = or i64 %and198.i, %shl195.i
  br label %remap_to_cache.exit

remap_to_cache.exit:                              ; preds = %if.else193.i, %if.end187.i
  %storemerge.i = phi i64 [ %add190.i, %if.end187.i ], [ %or199.i, %if.else193.i ]
  %19 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %storemerge.i, ptr %bi_iter.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_cell_get_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bio_prison_alloc_cell_v2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bio_prison_free_cell_v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_cell_put_v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cell_lock_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mg_complete(ptr noundef %mg, i1 noundef zeroext %success) unnamed_addr #2 align 64 {
entry:
  %bios = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bios) #12
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bios, align 4, !annotation !434
  %1 = getelementptr inbounds %struct.bio_list, ptr %bios, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !434
  %cache1 = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 1
  %3 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache1, align 8
  %op2 = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 2
  %5 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op2, align 4
  %cblock3 = getelementptr inbounds %struct.policy_work, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %cblock3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cblock3, align 8
  br i1 %success, label %if.then, label %entry.if.endthread-pre-split_crit_edge

entry.if.endthread-pre-split_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.endthread-pre-split

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %10, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %promotion.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 35, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %promotion.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %promotion.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %promotion.i, ptr %promotion.i, i32 1, ptr elementtype(i32) %promotion.i) #12, !srcloc !443
  br label %if.endthread-pre-split

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %demotion.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 35, i32 4
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %demotion.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %demotion.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %demotion.i, ptr %demotion.i, i32 1, ptr elementtype(i32) %demotion.i) #12, !srcloc !443
  br label %if.endthread-pre-split

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %writeback.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 35, i32 6
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %writeback.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback.i, ptr %writeback.i, i32 1, ptr elementtype(i32) %writeback.i) #12, !srcloc !443
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.if.endthread-pre-split_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then.if.end_crit_edge
  %16 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %10, %if.then.if.end_crit_edge ]
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %16, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb33
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %oblock = getelementptr inbounds %struct.policy_work, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %oblock to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %oblock, align 8
  %discard_block_size.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 21
  %20 = ptrtoint ptr %discard_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %discard_block_size.i.i, align 4
  %sectors_per_block_shift.i.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 2
  %22 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.i.i = icmp sgt i32 %23, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else162.i.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i32 %21 to i64
  %sh_prom.i.i = zext i32 %23 to i64
  %shr.i.i = lshr i64 %conv.i.i, %sh_prom.i.i
  %extract.t.i = trunc i64 %shr.i.i to i32
  br label %if.else162.i.i

if.else162.i.i.i:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_per_block.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 3
  %24 = ptrtoint ptr %sectors_per_block.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sectors_per_block.i.i, align 8
  %conv1.i.i = trunc i64 %25 to i32
  %div172.i.i.i = udiv i32 %21, %conv1.i.i
  br label %if.else162.i.i

if.else162.i.i:                                   ; preds = %if.else162.i.i.i, %if.then.i.i
  %oblocks.0.i.off0.i = phi i32 [ %extract.t.i, %if.then.i.i ], [ %div172.i.i.i, %if.else162.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %19)
  %cmp164.i.i = icmp ult i64 %19, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !435

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %19 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %oblocks.0.i.off0.i
  br label %oblock_to_dblock.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %oblocks.0.i.off0.i, i64 %19) #17, !srcloc !436
  %asmresult1.i.i.i = extractvalue { i64, i64 } %26, 1
  %extract.t141 = trunc i64 %asmresult1.i.i.i to i32
  br label %oblock_to_dblock.exit

oblock_to_dblock.exit:                            ; preds = %if.else174.i.i, %if.then168.i.i
  %b.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t141, %if.else174.i.i ]
  %lock.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %discard_bitset.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 20
  %27 = ptrtoint ptr %discard_bitset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %discard_bitset.i, align 8
  tail call void @_clear_bit(i32 noundef %b.addr.0.i.i.off0, ptr noundef %28) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %policy = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 33
  %29 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %policy, align 4
  %complete_background_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %complete_background_work.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete_background_work.i, align 4
  tail call void %32(ptr noundef %30, ptr noundef %6, i1 noundef zeroext %success) #12
  %overwrite_bio = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 3
  %33 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %overwrite_bio, align 8
  %tobool7.not = icmp eq ptr %34, null
  br i1 %tobool7.not, label %if.else22, label %if.then8

if.then8:                                         ; preds = %oblock_to_dblock.exit
  br i1 %success, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %dirty_bitset.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 30
  %35 = ptrtoint ptr %dirty_bitset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dirty_bitset.i, align 8
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %8, ptr noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.force_set_dirty.exit_crit_edge

if.then10.force_set_dirty.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_set_dirty.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %nr_dirty.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 31
  %call.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_dirty.i, i32 1, i32 3, i32 1) #12
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_dirty.i, ptr %nr_dirty.i, i32 1, ptr elementtype(i32) %nr_dirty.i) #12, !srcloc !443
  br label %force_set_dirty.exit

force_set_dirty.exit:                             ; preds = %if.then.i, %if.then10.force_set_dirty.exit_crit_edge
  %38 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %policy, align 4
  %set_dirty.i.i = getelementptr inbounds %struct.dm_cache_policy, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %set_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_dirty.i.i, align 4
  tail call void %41(ptr noundef %39, i32 noundef %8) #12
  br label %if.end20

if.else:                                          ; preds = %if.then8
  %input = getelementptr inbounds %struct.continuation, ptr %mg, i32 0, i32 1
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool11.not = icmp eq i8 %43, 0
  %bi_status18 = getelementptr inbounds %struct.bio, ptr %34, i32 0, i32 6
  br i1 %tobool11.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bi_status18 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %bi_status18, align 2
  br label %if.end20

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %bi_status18 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %bi_status18, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then12, %force_set_dirty.exit
  %46 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %overwrite_bio, align 8
  tail call void @bio_endio(ptr noundef %47) #12
  br label %sw.epilog

if.else22:                                        ; preds = %oblock_to_dblock.exit
  br i1 %success, label %if.then24, label %if.else22.if.end25_crit_edge

if.else22.if.end25_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.else22
  %dirty_bitset.i94 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 30
  %48 = ptrtoint ptr %dirty_bitset.i94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dirty_bitset.i94, align 8
  %call1.i95 = tail call i32 @_test_and_clear_bit(i32 noundef %8, ptr noundef %49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %if.then24.force_clear_dirty.exit_crit_edge, label %if.then.i99

if.then24.force_clear_dirty.exit_crit_edge:       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_clear_dirty.exit

if.then.i99:                                      ; preds = %if.then24
  %nr_dirty.i97 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 31
  %call.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty.i97, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void @llvm.prefetch.p0(ptr %nr_dirty.i97, i32 1, i32 3, i32 1) #12
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_dirty.i97, ptr %nr_dirty.i97, i32 1, ptr elementtype(i32) %nr_dirty.i97) #12, !srcloc !448
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i99.force_clear_dirty.exit_crit_edge

if.then.i99.force_clear_dirty.exit_crit_edge:     ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_clear_dirty.exit

if.then3.i:                                       ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %4, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  tail call void @dm_table_event(ptr noundef %54) #12
  br label %force_clear_dirty.exit

force_clear_dirty.exit:                           ; preds = %if.then3.i, %if.then.i99.force_clear_dirty.exit_crit_edge, %if.then24.force_clear_dirty.exit_crit_edge
  %55 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %policy, align 4
  %clear_dirty.i.i = getelementptr inbounds %struct.dm_cache_policy, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %clear_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clear_dirty.i.i, align 4
  tail call void %58(ptr noundef %56, i32 noundef %8) #12
  br label %if.end25

if.end25:                                         ; preds = %force_clear_dirty.exit, %if.else22.if.end25_crit_edge
  %nr_io_migrations.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 16
  %call.i.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_io_migrations.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_io_migrations.i, i32 1, i32 3, i32 1) #12
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_io_migrations.i, ptr %nr_io_migrations.i, i32 1, ptr elementtype(i32) %nr_io_migrations.i) #12, !srcloc !450
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  br i1 %success, label %if.then29, label %sw.bb27.if.end30_crit_edge

sw.bb27.if.end30_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %sw.bb27
  %dirty_bitset.i102 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 30
  %60 = ptrtoint ptr %dirty_bitset.i102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dirty_bitset.i102, align 8
  %call1.i103 = tail call i32 @_test_and_clear_bit(i32 noundef %8, ptr noundef %61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool.not.i104, label %if.then29.force_clear_dirty.exit113_crit_edge, label %if.then.i109

if.then29.force_clear_dirty.exit113_crit_edge:    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_clear_dirty.exit113

if.then.i109:                                     ; preds = %if.then29
  %nr_dirty.i105 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 31
  %call.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty.i105, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void @llvm.prefetch.p0(ptr %nr_dirty.i105, i32 1, i32 3, i32 1) #12
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_dirty.i105, ptr %nr_dirty.i105, i32 1, ptr elementtype(i32) %nr_dirty.i105) #12, !srcloc !448
  %asmresult.i.i.i.i.i107 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i107)
  %cmp.i108 = icmp eq i32 %asmresult.i.i.i.i.i107, 0
  br i1 %cmp.i108, label %if.then3.i110, label %if.then.i109.force_clear_dirty.exit113_crit_edge

if.then.i109.force_clear_dirty.exit113_crit_edge: ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_clear_dirty.exit113

if.then3.i110:                                    ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %4, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  tail call void @dm_table_event(ptr noundef %66) #12
  br label %force_clear_dirty.exit113

force_clear_dirty.exit113:                        ; preds = %if.then3.i110, %if.then.i109.force_clear_dirty.exit113_crit_edge, %if.then29.force_clear_dirty.exit113_crit_edge
  %policy.i111 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 33
  %67 = ptrtoint ptr %policy.i111 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %policy.i111, align 4
  %clear_dirty.i.i112 = getelementptr inbounds %struct.dm_cache_policy, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %clear_dirty.i.i112 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clear_dirty.i.i112, align 4
  tail call void %70(ptr noundef %68, i32 noundef %8) #12
  br label %if.end30

if.end30:                                         ; preds = %force_clear_dirty.exit113, %sw.bb27.if.end30_crit_edge
  %policy31 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 33
  %71 = ptrtoint ptr %policy31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %policy31, align 4
  %complete_background_work.i114 = getelementptr inbounds %struct.dm_cache_policy, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %complete_background_work.i114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %complete_background_work.i114, align 4
  tail call void %74(ptr noundef %72, ptr noundef %6, i1 noundef zeroext %success) #12
  %nr_io_migrations.i115 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 16
  %call.i.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_io_migrations.i115, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_io_migrations.i115, i32 1, i32 3, i32 1) #12
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_io_migrations.i115, ptr %nr_io_migrations.i115, i32 1, ptr elementtype(i32) %nr_io_migrations.i115) #12, !srcloc !450
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  br i1 %success, label %if.then35, label %sw.bb33.if.end36_crit_edge

sw.bb33.if.end36_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %sw.bb33
  %dirty_bitset.i117 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 30
  %76 = ptrtoint ptr %dirty_bitset.i117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dirty_bitset.i117, align 8
  %call1.i118 = tail call i32 @_test_and_clear_bit(i32 noundef %8, ptr noundef %77) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %if.then35.force_clear_dirty.exit128_crit_edge, label %if.then.i124

if.then35.force_clear_dirty.exit128_crit_edge:    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_clear_dirty.exit128

if.then.i124:                                     ; preds = %if.then35
  %nr_dirty.i120 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 31
  %call.i.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty.i120, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void @llvm.prefetch.p0(ptr %nr_dirty.i120, i32 1, i32 3, i32 1) #12
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_dirty.i120, ptr %nr_dirty.i120, i32 1, ptr elementtype(i32) %nr_dirty.i120) #12, !srcloc !448
  %asmresult.i.i.i.i.i122 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i122)
  %cmp.i123 = icmp eq i32 %asmresult.i.i.i.i.i122, 0
  br i1 %cmp.i123, label %if.then3.i125, label %if.then.i124.force_clear_dirty.exit128_crit_edge

if.then.i124.force_clear_dirty.exit128_crit_edge: ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %force_clear_dirty.exit128

if.then3.i125:                                    ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %4, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  tail call void @dm_table_event(ptr noundef %82) #12
  br label %force_clear_dirty.exit128

force_clear_dirty.exit128:                        ; preds = %if.then3.i125, %if.then.i124.force_clear_dirty.exit128_crit_edge, %if.then35.force_clear_dirty.exit128_crit_edge
  %policy.i126 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 33
  %83 = ptrtoint ptr %policy.i126 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %policy.i126, align 4
  %clear_dirty.i.i127 = getelementptr inbounds %struct.dm_cache_policy, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %clear_dirty.i.i127 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clear_dirty.i.i127, align 4
  tail call void %86(ptr noundef %84, i32 noundef %8) #12
  br label %if.end36

if.end36:                                         ; preds = %force_clear_dirty.exit128, %sw.bb33.if.end36_crit_edge
  %policy37 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 33
  %87 = ptrtoint ptr %policy37 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %policy37, align 4
  %complete_background_work.i129 = getelementptr inbounds %struct.dm_cache_policy, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %complete_background_work.i129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %complete_background_work.i129, align 4
  tail call void %90(ptr noundef %88, ptr noundef %6, i1 noundef zeroext %success) #12
  %nr_io_migrations.i130 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 16
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_io_migrations.i130, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_io_migrations.i130, i32 1, i32 3, i32 1) #12
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_io_migrations.i130, ptr %nr_io_migrations.i130, i32 1, ptr elementtype(i32) %nr_io_migrations.i130) #12, !srcloc !450
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36, %if.end30, %if.end25, %if.end20, %if.end.sw.epilog_crit_edge
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %1, align 4
  %93 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %bios, align 4
  %cell = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 4
  %94 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cell, align 4
  %tobool39.not = icmp eq ptr %95, null
  br i1 %tobool39.not, label %sw.epilog.if.end46_crit_edge, label %if.then40

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then40:                                        ; preds = %sw.epilog
  %prison = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 29
  %96 = ptrtoint ptr %prison to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prison, align 4
  %call42 = call zeroext i1 @dm_cell_unlock_v2(ptr noundef %97, ptr noundef nonnull %95, ptr noundef nonnull %bios) #12
  br i1 %call42, label %if.then43, label %if.then40.if.end46_crit_edge

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cell, align 4
  %100 = ptrtoint ptr %prison to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prison, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %101, ptr noundef %99) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then40.if.end46_crit_edge, %sw.epilog.if.end46_crit_edge
  %102 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cache1, align 8
  %nr_allocated_migrations.i = getelementptr inbounds %struct.cache, ptr %103, i32 0, i32 15
  %call.i.i.i132 = call zeroext i1 @__kasan_check_write(ptr noundef %nr_allocated_migrations.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !447
  call void @llvm.prefetch.p0(ptr %nr_allocated_migrations.i, i32 1, i32 3, i32 1) #12
  %104 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_allocated_migrations.i, ptr %nr_allocated_migrations.i, i32 1, ptr elementtype(i32) %nr_allocated_migrations.i) #12, !srcloc !448
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %104, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i133 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i133, label %if.then.i134, label %if.end46.free_migration.exit_crit_edge

if.end46.free_migration.exit_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_migration.exit

if.then.i134:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %migration_wait.i = getelementptr inbounds %struct.cache, ptr %103, i32 0, i32 14
  call void @__wake_up(ptr noundef %migration_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %free_migration.exit

free_migration.exit:                              ; preds = %if.then.i134, %if.end46.free_migration.exit_crit_edge
  %migration_pool.i = getelementptr inbounds %struct.cache, ptr %103, i32 0, i32 41
  call void @mempool_free(ptr noundef %mg, ptr noundef %migration_pool.i) #12
  %lock.i135 = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i135) #12
  %deferred_bios.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 17
  %105 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bios, align 4
  %tobool.not.i.i136 = icmp eq ptr %106, null
  br i1 %tobool.not.i.i136, label %free_migration.exit.defer_bios.exit_crit_edge, label %if.end.i.i

free_migration.exit.defer_bios.exit_crit_edge:    ; preds = %free_migration.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %defer_bios.exit

if.end.i.i:                                       ; preds = %free_migration.exit
  %tail.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 17, i32 1
  %107 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tail.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %108, null
  br i1 %tobool1.not.i.i, label %if.else.i.i137, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %108, align 8
  br label %if.end7.i.i

if.else.i.i137:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %106, ptr %deferred_bios.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i137, %if.then2.i.i
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %113 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %tail.i.i, align 4
  br label %defer_bios.exit

defer_bios.exit:                                  ; preds = %if.end7.i.i, %free_migration.exit.defer_bios.exit_crit_edge
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %1, align 4
  %115 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %bios, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i135) #12
  %wq.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 27
  %116 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wq.i.i, align 4
  %deferred_bio_worker.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 25
  %call.i.i.i138 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %117, ptr noundef %deferred_bio_worker.i.i) #12
  %io_mode.i.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 34, i32 1
  %118 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp.i.i139 = icmp eq i32 %119, 2
  br i1 %cmp.i.i139, label %defer_bios.exit.wake_migration_worker.exit_crit_edge, label %if.end.i

defer_bios.exit.wake_migration_worker.exit_crit_edge: ; preds = %defer_bios.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %wake_migration_worker.exit

if.end.i:                                         ; preds = %defer_bios.exit
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wq.i.i, align 4
  %migration_worker.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 26
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %121, ptr noundef %migration_worker.i) #12
  br label %wake_migration_worker.exit

wake_migration_worker.exit:                       ; preds = %if.end.i, %defer_bios.exit.wake_migration_worker.exit_crit_edge
  %122 = call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task.i, align 8
  %lockdep_recursion.i = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 143
  %126 = ptrtoint ptr %lockdep_recursion.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lockdep_recursion.i, align 4
  %add.i = add i32 %127, 65536
  store i32 %add.i, ptr %lockdep_recursion.i, align 4
  %background_work_lock.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 37
  call void @up_read(ptr noundef %background_work_lock.i) #12
  %128 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task.i, align 8
  %lockdep_recursion4.i = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 143
  %130 = ptrtoint ptr %lockdep_recursion4.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %lockdep_recursion4.i, align 4
  %sub.i = add i32 %131, -65536
  store i32 %sub.i, ptr %lockdep_recursion4.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bios) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mg_copy(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %overwrite_bio = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 3
  %0 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %overwrite_bio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cache = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 1
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 8
  %op = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 2
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op, align 4
  %oblock = getelementptr inbounds %struct.policy_work, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %oblock to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %oblock, align 8
  %io_mode.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %land.rhs.i, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

land.rhs.i:                                       ; preds = %if.then
  %lock.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %discard_block_size.i.i.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %discard_block_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %discard_block_size.i.i.i.i, align 4
  %sectors_per_block_shift.i.i.i.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %sectors_per_block_shift.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectors_per_block_shift.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %if.else162.i.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i32 %11 to i64
  %sh_prom.i.i.i.i = zext i32 %13 to i64
  %shr.i.i.i.i = lshr i64 %conv.i.i.i.i, %sh_prom.i.i.i.i
  %extract.t.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %if.else162.i.i.i.i

if.else162.i.i.i.i.i:                             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_per_block.i.i.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %sectors_per_block.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sectors_per_block.i.i.i.i, align 8
  %conv1.i.i.i.i = trunc i64 %15 to i32
  %div172.i.i.i.i.i = udiv i32 %11, %conv1.i.i.i.i
  br label %if.else162.i.i.i.i

if.else162.i.i.i.i:                               ; preds = %if.else162.i.i.i.i.i, %if.then.i.i.i.i
  %oblocks.0.i.off0.i.i.i = phi i32 [ %extract.t.i.i.i, %if.then.i.i.i.i ], [ %div172.i.i.i.i.i, %if.else162.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp164.i.i.i.i = icmp ult i64 %7, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !435

if.then168.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i.i = trunc i64 %7 to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %oblocks.0.i.off0.i.i.i
  br label %is_discarded_oblock.exit.i

if.else174.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %oblocks.0.i.off0.i.i.i, i64 %7) #17, !srcloc !436
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t8.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %is_discarded_oblock.exit.i

is_discarded_oblock.exit.i:                       ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %b.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t8.i.i, %if.else174.i.i.i.i ]
  %discard_bitset.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %discard_bitset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %discard_bitset.i.i, align 8
  %div3.i.i.i = lshr i32 %b.addr.0.i.i.off0.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %18, i32 %div3.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %b.addr.0.i.i.off0.i.i, 31
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  %21 = shl nuw i32 1, %and.i.i.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %is_discarded_oblock.exit.i.if.end21_crit_edge

is_discarded_oblock.exit.i.if.end21_crit_edge:    ; preds = %is_discarded_oblock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.rhs.i:                                        ; preds = %is_discarded_oblock.exit.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i5.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i5.i, 0
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.if.then3_crit_edge, label %optimisable_bio.exit

lor.rhs.i.if.then3_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

optimisable_bio.exit:                             ; preds = %lor.rhs.i
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_size.i.i, align 8
  %conv.i.i = zext i32 %26 to i64
  %sectors_per_block.i.i = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %sectors_per_block.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sectors_per_block.i.i, align 8
  %shl.i.i = shl i64 %28, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %conv.i.i)
  %cmp1.i.i = icmp eq i64 %shl.i.i, %conv.i.i
  br i1 %cmp1.i.i, label %optimisable_bio.exit.if.end21_crit_edge, label %optimisable_bio.exit.if.then3_crit_edge

optimisable_bio.exit.if.then3_crit_edge:          ; preds = %optimisable_bio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

optimisable_bio.exit.if.end21_crit_edge:          ; preds = %optimisable_bio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then3:                                         ; preds = %optimisable_bio.exit.if.then3_crit_edge, %lor.rhs.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %29 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cache, align 8
  %31 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %op, align 4
  %oblock6 = getelementptr inbounds %struct.policy_work, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %oblock6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %oblock6, align 8
  %35 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %overwrite_bio, align 8
  %call8 = tail call fastcc zeroext i1 @bio_detain_shared(ptr noundef %30, i64 noundef %34, ptr noundef %36)
  br i1 %call8, label %do.body13, label %do.end18, !prof !438

do.body13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1366, 0\0A.popsection", ""() #12, !srcloc !451
  unreachable

do.end18:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %overwrite_bio, align 8
  %38 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cache, align 8
  %nr_io_migrations.i = getelementptr inbounds %struct.cache, ptr %39, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_io_migrations.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_io_migrations.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_io_migrations.i, ptr %nr_io_migrations.i, i32 1, ptr elementtype(i32) %nr_io_migrations.i) #12, !srcloc !443
  tail call fastcc void @mg_full_copy(ptr noundef %ws)
  br label %cleanup

if.end21:                                         ; preds = %optimisable_bio.exit.if.end21_crit_edge, %is_discarded_oblock.exit.i.if.end21_crit_edge
  %41 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %overwrite_bio, align 8
  %call.i.i = tail call ptr @dm_per_bio_data(ptr noundef %42, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %get_per_bio_data.exit.i, !prof !438

do.body4.i.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i:                          ; preds = %if.end21
  %hook_info.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i, i32 0, i32 2
  %bi_end_io1.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %bi_end_io1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_end_io1.i.i, align 8
  %45 = ptrtoint ptr %hook_info.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %hook_info.i, align 4
  store ptr @overwrite_endio, ptr %bi_end_io1.i.i, align 8
  %bi_private4.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 11
  %46 = ptrtoint ptr %bi_private4.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ws, ptr %bi_private4.i.i, align 4
  %47 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %op, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp eq i32 %50, 0
  %51 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cache, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %get_per_bio_data.exit.i
  %cblock.i = getelementptr inbounds %struct.policy_work, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %cblock.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cblock.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 8
  %55 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %bi_iter.i.i, align 8
  %conv.i.i34 = zext i32 %54 to i64
  %cache_dev.i.i = getelementptr inbounds %struct.cache, ptr %52, i32 0, i32 7
  %57 = ptrtoint ptr %cache_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cache_dev.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 3
  %61 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i35 = and i16 %62, -2049
  store i16 %conv1.i.i.i.i35, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 1
  %63 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %64, %60
  br i1 %cmp.not.i.i.i, label %if.then.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.bio_set_dev.exit.i.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i = and i16 %62, -2177
  %65 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.bio_set_dev.exit.i.i_crit_edge
  %66 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %42) #12
  %sectors_per_block_shift.i.i.i = getelementptr inbounds %struct.cache, ptr %52, i32 0, i32 2
  %67 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp.i.i.i = icmp sgt i32 %68, -1
  br i1 %cmp.i.i.i, label %if.else193.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %bio_set_dev.exit.i.i
  %sectors_per_block.i.i36 = getelementptr inbounds %struct.cache, ptr %52, i32 0, i32 3
  %69 = ptrtoint ptr %sectors_per_block.i.i36 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sectors_per_block.i.i36, align 8
  %mul.i.i = mul i64 %70, %conv.i.i34
  %conv4.i.i = trunc i64 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %56)
  %cmp173.i.i = icmp ult i64 %56, 4294967296
  br i1 %cmp173.i.i, label %if.then177.i.i, label %if.else183.i.i, !prof !435

if.then177.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv178.i.i = trunc i64 %56 to i32
  %rem179.i.i = urem i32 %conv178.i.i, %conv4.i.i
  br label %if.end187.i.i

if.else183.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv4.i.i, i64 %56) #17, !srcloc !436
  %asmresult.i294.i.i = extractvalue { i64, i64 } %71, 0
  %shr.i.i.i = lshr i64 %asmresult.i294.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end187.i.i

if.end187.i.i:                                    ; preds = %if.else183.i.i, %if.then177.i.i
  %__rem.0.i.i = phi i32 [ %rem179.i.i, %if.then177.i.i ], [ %conv.i.i.i, %if.else183.i.i ]
  %conv189.i.i = zext i32 %__rem.0.i.i to i64
  %add190.i.i = add i64 %mul.i.i, %conv189.i.i
  br label %remap_to_cache.exit.i

if.else193.i.i:                                   ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom194.i.i = zext i32 %68 to i64
  %shl195.i.i = shl i64 %conv.i.i34, %sh_prom194.i.i
  %sectors_per_block196.i.i = getelementptr inbounds %struct.cache, ptr %52, i32 0, i32 3
  %72 = ptrtoint ptr %sectors_per_block196.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %sectors_per_block196.i.i, align 8
  %sub197.i.i = add i64 %73, -1
  %and198.i.i = and i64 %sub197.i.i, %56
  %or199.i.i = or i64 %and198.i.i, %shl195.i.i
  br label %remap_to_cache.exit.i

remap_to_cache.exit.i:                            ; preds = %if.else193.i.i, %if.end187.i.i
  %storemerge.i.i = phi i64 [ %add190.i.i, %if.end187.i.i ], [ %or199.i.i, %if.else193.i.i ]
  %74 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %storemerge.i.i, ptr %bi_iter.i.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %get_per_bio_data.exit.i
  %origin_dev.i.i = getelementptr inbounds %struct.cache, ptr %52, i32 0, i32 6
  %75 = ptrtoint ptr %origin_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %origin_dev.i.i, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %bi_flags.i.i.i2.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 3
  %79 = ptrtoint ptr %bi_flags.i.i.i2.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bi_flags.i.i.i2.i, align 4
  %conv1.i.i.i3.i = and i16 %80, -2049
  store i16 %conv1.i.i.i3.i, ptr %bi_flags.i.i.i2.i, align 4
  %bi_bdev.i.i4.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 1
  %81 = ptrtoint ptr %bi_bdev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bi_bdev.i.i4.i, align 4
  %cmp.not.i.i5.i = icmp eq ptr %82, %78
  br i1 %cmp.not.i.i5.i, label %if.else.i.remap_to_origin.exit.i_crit_edge, label %if.then.i.i7.i

if.else.i.remap_to_origin.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remap_to_origin.exit.i

if.then.i.i7.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i6.i = and i16 %80, -2177
  %83 = ptrtoint ptr %bi_flags.i.i.i2.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv1.i8.i.i6.i, ptr %bi_flags.i.i.i2.i, align 4
  br label %remap_to_origin.exit.i

remap_to_origin.exit.i:                           ; preds = %if.then.i.i7.i, %if.else.i.remap_to_origin.exit.i_crit_edge
  %84 = ptrtoint ptr %bi_bdev.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %78, ptr %bi_bdev.i.i4.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %42) #12
  br label %if.end.i

if.end.i:                                         ; preds = %remap_to_origin.exit.i, %remap_to_cache.exit.i
  tail call void @__init_work(ptr noundef %ws, i32 noundef 0) #12
  %85 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -64, ptr %ws, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1
  %86 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 2
  %88 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @mg_update_metadata_after_copy, ptr %func.i.i, align 4
  %input.i.i = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %89 = ptrtoint ptr %input.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %input.i.i, align 4
  %90 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cache, align 8
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 2
  %92 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %93, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 3
  br i1 %cmp.i.not.i.i.i, label %if.end.i.overwrite.exit_crit_edge, label %if.then.i.i9.i

if.end.i.overwrite.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite.exit

if.then.i.i9.i:                                   ; preds = %if.end.i
  %call.i.i.i.i = tail call ptr @dm_per_bio_data(ptr noundef %42, i32 noundef 24) #12
  %tobool.not.i.i.i.i39 = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i39, label %do.body4.i.i.i.i, label %get_per_bio_data.exit.i.i.i, !prof !438

do.body4.i.i.i.i:                                 ; preds = %if.then.i.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i.i.i:                      ; preds = %if.then.i.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bi_size.i.i.i, align 8
  %shr.i.i10.i = lshr i32 %95, 9
  %conv.i.i11.i = zext i32 %shr.i.i10.i to i64
  %len.i.i.i = getelementptr inbounds %struct.per_bio_data, ptr %call.i.i.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv.i.i11.i, ptr %len.i.i.i, align 8
  %tracker.i.i.i = getelementptr inbounds %struct.cache, ptr %91, i32 0, i32 40
  tail call void @_raw_spin_lock_irq(ptr noundef %tracker.i.i.i) #12
  %in_flight.i.i.i.i = getelementptr inbounds %struct.cache, ptr %91, i32 0, i32 40, i32 1
  %97 = ptrtoint ptr %in_flight.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %in_flight.i.i.i.i, align 8
  %add.i.i.i.i40 = add i64 %98, %conv.i.i11.i
  store i64 %add.i.i.i.i40, ptr %in_flight.i.i.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracker.i.i.i) #12
  br label %overwrite.exit

overwrite.exit:                                   ; preds = %get_per_bio_data.exit.i.i.i, %if.end.i.overwrite.exit_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %42) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mg_full_copy(ptr noundef %ws)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %overwrite.exit, %do.end18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_cell_unlock_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mg_full_copy(ptr noundef %ws) unnamed_addr #2 align 64 {
entry:
  %o_region.i = alloca %struct.dm_io_region, align 8
  %c_region.i = alloca %struct.dm_io_region, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache1, align 8
  %op2 = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 2
  %2 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %cblock = getelementptr inbounds %struct.policy_work, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cblock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cblock, align 8
  %dirty_bitset.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %dirty_bitset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dirty_bitset.i, align 8
  %div3.i.i = lshr i32 %7, 5
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %7, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %oblock = getelementptr inbounds %struct.policy_work, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %oblock to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %oblock, align 8
  %lock.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %discard_block_size.i.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %discard_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %discard_block_size.i.i.i, align 4
  %sectors_per_block_shift.i.i.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %sectors_per_block_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sectors_per_block_shift.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.else162.i.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i = zext i32 %17 to i64
  %sh_prom.i.i.i = zext i32 %19 to i64
  %shr.i.i.i = lshr i64 %conv.i.i.i, %sh_prom.i.i.i
  %extract.t.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.else162.i.i.i

if.else162.i.i.i.i:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_per_block.i.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %sectors_per_block.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sectors_per_block.i.i.i, align 8
  %conv1.i.i.i = trunc i64 %21 to i32
  %div172.i.i.i.i = udiv i32 %17, %conv1.i.i.i
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %if.else162.i.i.i.i, %if.then.i.i.i
  %oblocks.0.i.off0.i.i = phi i32 [ %extract.t.i.i, %if.then.i.i.i ], [ %div172.i.i.i.i, %if.else162.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %15)
  %cmp164.i.i.i = icmp ult i64 %15, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !435

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %15 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %oblocks.0.i.off0.i.i
  br label %is_discarded_oblock.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %oblocks.0.i.off0.i.i, i64 %15) #17, !srcloc !436
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t8.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %is_discarded_oblock.exit

is_discarded_oblock.exit:                         ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %b.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t8.i, %if.else174.i.i.i ]
  %discard_bitset.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %discard_bitset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %discard_bitset.i, align 8
  %div3.i.i18 = lshr i32 %b.addr.0.i.i.off0.i, 5
  %arrayidx.i.i19 = getelementptr i32, ptr %24, i32 %div3.i.i18
  %25 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i19, align 4
  %and.i.i20 = and i32 %b.addr.0.i.i.off0.i, 31
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %27 = shl nuw i32 1, %and.i.i20
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i21.not = icmp eq i32 %28, 0
  br i1 %tobool.i21.not, label %if.end, label %is_discarded_oblock.exit.if.then_crit_edge

is_discarded_oblock.exit.if.then_crit_edge:       ; preds = %is_discarded_oblock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %is_discarded_oblock.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @mg_upgrade_lock(ptr noundef %ws)
  br label %cleanup

if.end:                                           ; preds = %is_discarded_oblock.exit
  tail call void @__init_work(ptr noundef %ws, i32 noundef 0) #12
  %29 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %ws, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1
  %30 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 2
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mg_upgrade_lock, ptr %func.i, align 4
  %input.i = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %33 = ptrtoint ptr %input.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %input.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %o_region.i) #12
  %34 = ptrtoint ptr %o_region.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %o_region.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_region.i) #12
  %35 = ptrtoint ptr %c_region.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %c_region.i, align 8
  %36 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cache1, align 8
  %origin_dev.i = getelementptr inbounds %struct.cache, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %origin_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %origin_dev.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %o_region.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %o_region.i, align 8
  %43 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %op2, align 4
  %oblock.i = getelementptr inbounds %struct.policy_work, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %oblock.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %oblock.i, align 8
  %sectors_per_block.i = getelementptr inbounds %struct.cache, ptr %37, i32 0, i32 3
  %47 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sectors_per_block.i, align 8
  %mul.i = mul i64 %48, %46
  %sector.i = getelementptr inbounds %struct.dm_io_region, ptr %o_region.i, i32 0, i32 1
  %49 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %mul.i, ptr %sector.i, align 8
  %count.i = getelementptr inbounds %struct.dm_io_region, ptr %o_region.i, i32 0, i32 2
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %48, ptr %count.i, align 8
  %cache_dev.i = getelementptr inbounds %struct.cache, ptr %37, i32 0, i32 7
  %51 = ptrtoint ptr %cache_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cache_dev.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  store ptr %54, ptr %c_region.i, align 8
  %cblock.i = getelementptr inbounds %struct.policy_work, ptr %44, i32 0, i32 2
  %55 = ptrtoint ptr %cblock.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cblock.i, align 8
  %conv.i = zext i32 %56 to i64
  %mul9.i = mul i64 %48, %conv.i
  %sector10.i = getelementptr inbounds %struct.dm_io_region, ptr %c_region.i, i32 0, i32 1
  %57 = ptrtoint ptr %sector10.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %mul9.i, ptr %sector10.i, align 8
  %count12.i = getelementptr inbounds %struct.dm_io_region, ptr %c_region.i, i32 0, i32 2
  %58 = ptrtoint ptr %count12.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %48, ptr %count12.i, align 8
  %copier.i = getelementptr inbounds %struct.cache, ptr %37, i32 0, i32 24
  %59 = ptrtoint ptr %copier.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %copier.i, align 8
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_kcopyd_copy(ptr noundef %60, ptr noundef nonnull %o_region.i, i32 noundef 1, ptr noundef nonnull %c_region.i, i32 noundef 0, ptr noundef nonnull @copy_complete, ptr noundef %ws) #12
  br label %copy.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_kcopyd_copy(ptr noundef %60, ptr noundef nonnull %c_region.i, i32 noundef 1, ptr noundef nonnull %o_region.i, i32 noundef 0, ptr noundef nonnull @copy_complete, ptr noundef %ws) #12
  br label %copy.exit

copy.exit:                                        ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_region.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %o_region.i) #12
  br label %cleanup

cleanup:                                          ; preds = %copy.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mg_update_metadata_after_copy(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext false)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mg_update_metadata(ptr noundef %ws)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mg_upgrade_lock(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext false)
  br label %if.end8

if.else:                                          ; preds = %entry
  %cache = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 1
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 8
  %prison = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %prison to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prison, align 4
  %cell = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 4
  %6 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cell, align 4
  %call1 = tail call i32 @dm_cell_lock_promote_v2(ptr noundef %5, ptr noundef %7, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext false)
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool4.not = icmp eq i32 %call1, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef %ws, i32 noundef 0) #12
  %8 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %ws, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1
  %9 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 2
  %11 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mg_update_metadata, ptr %func.i.i, align 4
  %12 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %input, align 4
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache, align 8
  %prison.i = getelementptr inbounds %struct.cache, ptr %14, i32 0, i32 29
  %15 = ptrtoint ptr %prison.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prison.i, align 4
  %17 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cell, align 4
  tail call void @dm_cell_quiesce_v2(ptr noundef %16, ptr noundef %18, ptr noundef %ws) #12
  br label %if.end8

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mg_update_metadata(ptr noundef %ws)
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then5, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cell_lock_promote_v2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mg_update_metadata(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache1, align 8
  %op2 = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 2
  %2 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cmd = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 8
  %cblock = getelementptr inbounds %struct.policy_work, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %cblock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cblock, align 8
  %oblock = getelementptr inbounds %struct.policy_work, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %oblock to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %oblock, align 8
  %call4 = tail call i32 @dm_cache_insert_mapping(ptr noundef %8, i32 noundef %10, i64 noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %sw.bb
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @mg_update_metadata._rs, ptr noundef nonnull @__func__.mg_update_metadata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %16) #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %call.i) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef %call4)
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext false)
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext true)
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %cmd12 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd12, align 8
  %cblock13 = getelementptr inbounds %struct.policy_work, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %cblock13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cblock13, align 8
  %call14 = tail call i32 @dm_cache_remove_mapping(ptr noundef %18, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end27, label %if.then16

if.then16:                                        ; preds = %sw.bb11
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @mg_update_metadata._rs.73, ptr noundef nonnull @__func__.mg_update_metadata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end26_crit_edge, label %do.end22

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %call.i54 = tail call ptr @dm_table_device_name(ptr noundef %24) #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %call.i54) #15
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.then16.if.end26_crit_edge
  tail call fastcc void @metadata_operation_failed(ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef %call14)
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext false)
  br label %cleanup

if.end27:                                         ; preds = %sw.bb11
  tail call void @__init_work(ptr noundef %ws, i32 noundef 0) #12
  %25 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %ws, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1
  %26 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 2
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mg_success, ptr %func.i, align 4
  %input.i = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %29 = ptrtoint ptr %input.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %input.i, align 4
  %lock.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %commit_scheduled1.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 9
  %30 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %commit_scheduled1.i, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %work_items.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 6
  %prev.i.i55 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 6, i32 1
  %32 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i55, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i, ptr noundef %33, ptr noundef %work_items.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.list_add_tail.exit.i_crit_edge

if.end27.list_add_tail.exit.i_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry4.i, ptr %prev.i.i55, align 4
  %35 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %work_items.i, ptr %entry4.i, align 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry4.i, ptr %33, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end27.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br i1 %tobool.not.i, label %list_add_tail.exit.i.continue_after_commit.exit_crit_edge, label %if.then.i

list_add_tail.exit.i.continue_after_commit.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %continue_after_commit.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 4
  %38 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wq.i.i, align 4
  %commit_work.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 8
  %call.i.i9.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %commit_work.i.i) #12
  br label %continue_after_commit.exit

continue_after_commit.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.continue_after_commit.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %40 = ptrtoint ptr %work_items.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %work_items.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %work_items.i
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %if.then.critedge.i

lor.rhs.i:                                        ; preds = %continue_after_commit.exit
  %bios.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 7
  %42 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bios.i, align 4
  %cmp.i10.not.i = icmp eq ptr %43, null
  %44 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %commit_scheduled1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br i1 %cmp.i10.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.if.then.i61_crit_edge

lor.rhs.i.if.then.i61_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i61

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.critedge.i:                               ; preds = %continue_after_commit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %commit_scheduled1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br label %if.then.i61

if.then.i61:                                      ; preds = %if.then.critedge.i, %lor.rhs.i.if.then.i61_crit_edge
  %wq.i.i58 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 4
  %46 = ptrtoint ptr %wq.i.i58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wq.i.i58, align 4
  %commit_work.i.i59 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 8
  %call.i.i.i60 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %commit_work.i.i59) #12
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb30, %if.then.i61, %lor.rhs.i.cleanup_crit_edge, %if.end26, %if.end10, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_insert_mapping(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @metadata_operation_failed(ptr nocapture noundef %cache, ptr noundef %op, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @metadata_operation_failed._rs, ptr noundef nonnull @__func__.metadata_operation_failed) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %3) #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %call.i, ptr noundef %op, i32 noundef %r) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i.i = tail call ptr @dm_table_device_name(ptr noundef %7) #12
  %features.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 34
  %8 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.abort_transaction.exit_crit_edge

if.end.abort_transaction.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %abort_transaction.exit

if.end.i:                                         ; preds = %if.end
  %cmd.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 4
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd.i, align 8
  %call2.i = tail call i32 @dm_cache_metadata_set_needs_check(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %do.end.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i.i) #15
  tail call fastcc void @set_cache_mode(ptr noundef %cache, i32 noundef 2) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @abort_transaction._rs, ptr noundef nonnull @.str.80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end14.i_crit_edge, label %do.end11.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %call.i.i) #15
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end11.i, %if.end5.i.if.end14.i_crit_edge
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd.i, align 8
  %call16.i = tail call i32 @dm_cache_metadata_abort(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.abort_transaction.exit_crit_edge, label %do.end21.i

if.end14.i.abort_transaction.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %abort_transaction.exit

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %call.i.i) #15
  tail call fastcc void @set_cache_mode(ptr noundef %cache, i32 noundef 2) #12
  br label %abort_transaction.exit

abort_transaction.exit:                           ; preds = %do.end21.i, %if.end14.i.abort_transaction.exit_crit_edge, %if.end.abort_transaction.exit_crit_edge
  tail call fastcc void @set_cache_mode(ptr noundef %cache, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_remove_mapping(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mg_success(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  tail call fastcc void @mg_complete(ptr noundef %ws, i1 noundef zeroext %cmp)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_metadata_set_needs_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_metadata_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @copy_complete(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %write_err, %read_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %input = getelementptr inbounds %struct.continuation, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %input, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cache = getelementptr inbounds %struct.dm_cache_migration, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache, align 8
  %wq = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %context) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @overwrite_endio(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %cache1 = getelementptr inbounds %struct.dm_cache_migration, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache1, align 8
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %get_per_bio_data.exit, !prof !438

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit:                            ; preds = %entry
  %hook_info = getelementptr inbounds %struct.per_bio_data, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %hook_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook_info, align 4
  %bi_end_io1.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %6 = ptrtoint ptr %bi_end_io1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bi_end_io1.i, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %get_per_bio_data.exit.if.end_crit_edge, label %if.then

get_per_bio_data.exit.if.end_crit_edge:           ; preds = %get_per_bio_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %get_per_bio_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %input = getelementptr inbounds %struct.continuation, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %input, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %get_per_bio_data.exit.if.end_crit_edge
  %wq = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 27
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cell_quiesce_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__remap_to_origin_clear_discard(ptr noundef %cache, ptr noundef %bio, i64 noundef %oblock, i1 noundef zeroext %bio_has_pbd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bio_has_pbd, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %need_tick_bio.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 36
  %0 = ptrtoint ptr %need_tick_bio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %need_tick_bio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.then.check_if_tick_bio_needed.exit_crit_edge, label %land.lhs.true.i

if.then.check_if_tick_bio_needed.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_if_tick_bio_needed.exit

land.lhs.true.i:                                  ; preds = %if.then
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %1 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bi_opf.i, align 8
  %3 = and i32 %2, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.i = icmp ne i32 %3, 0
  %and.i = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 3
  %or.cond.i = or i1 %tobool.i.i, %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.check_if_tick_bio_needed.exit_crit_edge, label %if.then.i

land.lhs.true.i.check_if_tick_bio_needed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_if_tick_bio_needed.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %get_per_bio_data.exit.i, !prof !438

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #12, !srcloc !441
  unreachable

get_per_bio_data.exit.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load4.i = load i8, ptr %call.i.i, align 8
  %bf.set.i = or i8 %bf.load4.i, -128
  store i8 %bf.set.i, ptr %call.i.i, align 8
  %5 = ptrtoint ptr %need_tick_bio.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load6.i = load i8, ptr %need_tick_bio.i, align 4
  %bf.clear7.i = and i8 %bf.load6.i, 127
  store i8 %bf.clear7.i, ptr %need_tick_bio.i, align 4
  br label %check_if_tick_bio_needed.exit

check_if_tick_bio_needed.exit:                    ; preds = %get_per_bio_data.exit.i, %land.lhs.true.i.check_if_tick_bio_needed.exit_crit_edge, %if.then.check_if_tick_bio_needed.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br label %if.end

if.end:                                           ; preds = %check_if_tick_bio_needed.exit, %entry.if.end_crit_edge
  %origin_dev.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 6
  %6 = ptrtoint ptr %origin_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %origin_dev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %11, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %13, %9
  br i1 %cmp.not.i.i, label %if.end.remap_to_origin.exit_crit_edge, label %if.then.i.i

if.end.remap_to_origin.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %remap_to_origin.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %11, -2177
  %14 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %remap_to_origin.exit

remap_to_origin.exit:                             ; preds = %if.then.i.i, %if.end.remap_to_origin.exit_crit_edge
  %15 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #12
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf, align 8
  %and.i9 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.i.not = icmp eq i32 %and.i9, 0
  br i1 %tobool.i.not, label %remap_to_origin.exit.if.end3_crit_edge, label %if.then1

remap_to_origin.exit.if.end3_crit_edge:           ; preds = %remap_to_origin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %remap_to_origin.exit
  %discard_block_size.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 21
  %18 = ptrtoint ptr %discard_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %discard_block_size.i.i, align 4
  %sectors_per_block_shift.i.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 2
  %20 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectors_per_block_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.i.i = icmp sgt i32 %21, -1
  br i1 %cmp.i.i.i, label %if.then.i.i10, label %if.else162.i.i.i

if.then.i.i10:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i32 %19 to i64
  %sh_prom.i.i = zext i32 %21 to i64
  %shr.i.i = lshr i64 %conv.i.i, %sh_prom.i.i
  %extract.t.i = trunc i64 %shr.i.i to i32
  br label %if.else162.i.i

if.else162.i.i.i:                                 ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_per_block.i.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 3
  %22 = ptrtoint ptr %sectors_per_block.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sectors_per_block.i.i, align 8
  %conv1.i.i = trunc i64 %23 to i32
  %div172.i.i.i = udiv i32 %19, %conv1.i.i
  br label %if.else162.i.i

if.else162.i.i:                                   ; preds = %if.else162.i.i.i, %if.then.i.i10
  %oblocks.0.i.off0.i = phi i32 [ %extract.t.i, %if.then.i.i10 ], [ %div172.i.i.i, %if.else162.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %oblock)
  %cmp164.i.i = icmp ult i64 %oblock, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !435

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %oblock to i32
  %div172.i.i = udiv i32 %conv169.i.i, %oblocks.0.i.off0.i
  br label %oblock_to_dblock.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %oblocks.0.i.off0.i, i64 %oblock) #17, !srcloc !436
  %asmresult1.i.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t14 = trunc i64 %asmresult1.i.i.i to i32
  br label %oblock_to_dblock.exit

oblock_to_dblock.exit:                            ; preds = %if.else174.i.i, %if.then168.i.i
  %b.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t14, %if.else174.i.i ]
  %lock.i12 = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i12) #12
  %discard_bitset.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 20
  %25 = ptrtoint ptr %discard_bitset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %discard_bitset.i, align 8
  tail call void @_clear_bit(i32 noundef %b.addr.0.i.i.off0, ptr noundef %26) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i12) #12
  br label %if.end3

if.end3:                                          ; preds = %oblock_to_dblock.exit, %remap_to_origin.exit.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invalidate_complete(ptr noundef %mg, i1 noundef zeroext %success) unnamed_addr #2 align 64 {
entry:
  %bios = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bios) #12
  %0 = getelementptr inbounds %struct.bio_list, ptr %bios, i32 0, i32 1
  %cache1 = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 1
  %1 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache1, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 4
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bios, align 4
  %prison = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 29
  %5 = ptrtoint ptr %prison to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prison, align 4
  %cell = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 4
  %7 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cell, align 4
  %call = call zeroext i1 @dm_cell_unlock_v2(ptr noundef %6, ptr noundef %8, ptr noundef nonnull %bios) #12
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cell, align 4
  %11 = ptrtoint ptr %prison to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prison, align 4
  call void @dm_bio_prison_free_cell_v2(ptr noundef %12, ptr noundef %10) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %success, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %overwrite_bio = getelementptr inbounds %struct.dm_cache_migration, ptr %mg, i32 0, i32 3
  %13 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %overwrite_bio, align 8
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef nonnull %14) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %16 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache1, align 8
  %nr_allocated_migrations.i = getelementptr inbounds %struct.cache, ptr %17, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_allocated_migrations.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !447
  call void @llvm.prefetch.p0(ptr %nr_allocated_migrations.i, i32 1, i32 3, i32 1) #12
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_allocated_migrations.i, ptr %nr_allocated_migrations.i, i32 1, ptr elementtype(i32) %nr_allocated_migrations.i) #12, !srcloc !448
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end6.free_migration.exit_crit_edge

if.end6.free_migration.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_migration.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %migration_wait.i = getelementptr inbounds %struct.cache, ptr %17, i32 0, i32 14
  call void @__wake_up(ptr noundef %migration_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %free_migration.exit

free_migration.exit:                              ; preds = %if.then.i, %if.end6.free_migration.exit_crit_edge
  %migration_pool.i = getelementptr inbounds %struct.cache, ptr %17, i32 0, i32 41
  call void @mempool_free(ptr noundef %mg, ptr noundef %migration_pool.i) #12
  %lock.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %deferred_bios.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 17
  %19 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %free_migration.exit.defer_bios.exit_crit_edge, label %if.end.i.i

free_migration.exit.defer_bios.exit_crit_edge:    ; preds = %free_migration.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %defer_bios.exit

if.end.i.i:                                       ; preds = %free_migration.exit
  %tail.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %22, align 8
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %deferred_bios.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.then2.i.i
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %tail.i.i, align 4
  br label %defer_bios.exit

defer_bios.exit:                                  ; preds = %if.end7.i.i, %free_migration.exit.defer_bios.exit_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %0, align 4
  %29 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %bios, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %wq.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 27
  %30 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq.i.i, align 4
  %deferred_bio_worker.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 25
  %call.i.i.i15 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %deferred_bio_worker.i.i) #12
  %32 = call i32 @llvm.read_register.i32(metadata !424) #12
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i, align 8
  %lockdep_recursion.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 143
  %36 = ptrtoint ptr %lockdep_recursion.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lockdep_recursion.i, align 4
  %add.i = add i32 %37, 65536
  store i32 %add.i, ptr %lockdep_recursion.i, align 4
  %background_work_lock.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 37
  call void @up_read(ptr noundef %background_work_lock.i) #12
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %lockdep_recursion4.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 143
  %40 = ptrtoint ptr %lockdep_recursion4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lockdep_recursion4.i, align 4
  %sub.i = add i32 %41, -65536
  store i32 %sub.i, ptr %lockdep_recursion4.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bios) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @invalidate_remove(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache1, align 8
  %invalidate_cblock = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 5
  %2 = ptrtoint ptr %invalidate_cblock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %invalidate_cblock, align 8
  %call2 = tail call fastcc i32 @invalidate_cblock(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @invalidate_complete(ptr noundef %ws, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__init_work(ptr noundef %ws, i32 noundef 0) #12
  %4 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %ws, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_continuation.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1
  %5 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %ws, i32 0, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @invalidate_completed, ptr %func.i, align 4
  %input.i = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %8 = ptrtoint ptr %input.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %input.i, align 4
  %lock.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %commit_scheduled1.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 9
  %9 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %commit_scheduled1.i, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %work_items.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 6
  %prev.i.i18 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i18, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i, ptr noundef %12, ptr noundef %work_items.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_add_tail.exit.i_crit_edge

if.end.list_add_tail.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry4.i, ptr %prev.i.i18, align 4
  %14 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %work_items.i, ptr %entry4.i, align 4
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry4.i, ptr %12, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br i1 %tobool.not.i, label %list_add_tail.exit.i.continue_after_commit.exit_crit_edge, label %if.then.i

list_add_tail.exit.i.continue_after_commit.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %continue_after_commit.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 4
  %17 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wq.i.i, align 4
  %commit_work.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 8
  %call.i.i9.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %commit_work.i.i) #12
  br label %continue_after_commit.exit

continue_after_commit.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.continue_after_commit.exit_crit_edge
  %overwrite_bio = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 3
  %19 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %overwrite_bio, align 8
  %invalidate_oblock = getelementptr inbounds %struct.dm_cache_migration, ptr %ws, i32 0, i32 6
  %21 = ptrtoint ptr %invalidate_oblock to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %invalidate_oblock, align 8
  tail call fastcc void @__remap_to_origin_clear_discard(ptr noundef %1, ptr noundef %20, i64 noundef %22, i1 noundef zeroext true) #12
  %23 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %overwrite_bio, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %24 = ptrtoint ptr %work_items.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %work_items.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %work_items.i
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %if.then.critedge.i

lor.rhs.i:                                        ; preds = %continue_after_commit.exit
  %bios.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 7
  %26 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bios.i, align 4
  %cmp.i10.not.i = icmp eq ptr %27, null
  %28 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %commit_scheduled1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br i1 %cmp.i10.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.if.then.i24_crit_edge

lor.rhs.i.if.then.i24_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i24

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.critedge.i:                               ; preds = %continue_after_commit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %commit_scheduled1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %commit_scheduled1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br label %if.then.i24

if.then.i24:                                      ; preds = %if.then.critedge.i, %lor.rhs.i.if.then.i24_crit_edge
  %wq.i.i21 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 4
  %30 = ptrtoint ptr %wq.i.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq.i.i21, align 4
  %commit_work.i.i22 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 38, i32 8
  %call.i.i.i23 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %commit_work.i.i22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i24, %lor.rhs.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @invalidate_cblock(ptr nocapture noundef %cache, i32 noundef %cblock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %policy = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 33
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy, align 4
  %invalidate_mapping.i = getelementptr inbounds %struct.dm_cache_policy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %invalidate_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %invalidate_mapping.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %cblock) #12
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call.i, label %do.end14 [
    i32 0, label %if.then
    i32 -61, label %entry.if.end19_crit_edge
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  %cmd = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 8
  %call1 = tail call i32 @dm_cache_remove_mapping(ptr noundef %6, i32 noundef %cblock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end19_crit_edge, label %if.then3

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @invalidate_cblock._rs, ptr noundef nonnull @__func__.invalidate_cblock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end_crit_edge, label %do.end

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call.i29 = tail call ptr @dm_table_device_name(ptr noundef %10) #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %call.i29) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then3.if.end_crit_edge
  tail call fastcc void @metadata_operation_failed(ptr noundef %cache, ptr noundef nonnull @.str.77, i32 noundef %call1)
  br label %if.end19

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call.i30 = tail call ptr @dm_table_device_name(ptr noundef %14) #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %call.i30) #15
  br label %if.end19

if.end19:                                         ; preds = %do.end14, %if.end, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %r.0 = phi i32 [ %call.i, %do.end14 ], [ %call1, %if.end ], [ 0, %if.then.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @invalidate_completed(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.continuation, ptr %ws, i32 0, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call fastcc void @invalidate_complete(ptr noundef %ws, i1 noundef zeroext %tobool.not)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_metadata_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__commit(ptr noundef %_ws) #2 align 64 {
entry:
  %work_items = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_ws, i32 -80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %work_items) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %work_items, i32 0, i32 1
  %1 = ptrtoint ptr %work_items to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %work_items, ptr %work_items, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %work_items, ptr %0, align 4
  %lock = getelementptr i8, ptr %_ws, i32 -60
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %work_items2 = getelementptr i8, ptr %_ws, i32 -16
  %3 = ptrtoint ptr %work_items2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %work_items2, align 4
  %cmp.i.not.i = icmp eq ptr %4, %work_items2
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %work_items to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %work_items, align 4
  %prev2.i.i = getelementptr i8, ptr %_ws, i32 -12
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %work_items, ptr %prev3.i.i, align 4
  store ptr %4, ptr %work_items, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %work_items2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %work_items2, ptr %work_items2, align 4
  store ptr %work_items2, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %bios3 = getelementptr i8, ptr %_ws, i32 -8
  %13 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios3, align 4
  %tail.i48 = getelementptr i8, ptr %_ws, i32 -4
  %15 = ptrtoint ptr %tail.i48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tail.i48, align 4
  store ptr null, ptr %bios3, align 4
  %commit_scheduled = getelementptr i8, ptr %_ws, i32 44
  %16 = ptrtoint ptr %commit_scheduled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %commit_scheduled, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %commit_context = getelementptr i8, ptr %_ws, i32 -76
  %19 = ptrtoint ptr %commit_context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %commit_context, align 4
  %call = call zeroext i8 %18(ptr noundef %20) #12
  %21 = ptrtoint ptr %work_items to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %work_items, align 4
  %cmp.not56 = icmp eq ptr %22, %work_items
  br i1 %cmp.not56, label %list_splice_init.exit.while.cond.preheader_crit_edge, label %for.body.lr.ph

list_splice_init.exit.while.cond.preheader_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %wq = getelementptr i8, ptr %_ws, i32 -64
  br label %for.body

while.cond.preheader:                             ; preds = %for.body.while.cond.preheader_crit_edge, %list_splice_init.exit.while.cond.preheader_crit_edge
  %tobool.not.i5058 = icmp eq ptr %14, null
  br i1 %tobool.not.i5058, label %while.cond.preheader.while.end_crit_edge, label %if.then.i51.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then.i51.lr.ph:                                ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool26.not = icmp eq i8 %call, 0
  %issue_op = getelementptr i8, ptr %_ws, i32 -72
  %issue_context = getelementptr i8, ptr %_ws, i32 -68
  br label %if.then.i51

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn.in57 = phi ptr [ %22, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %ws.0 = getelementptr i8, ptr %.pn.in57, i32 -4
  %23 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn.in57, align 4
  %input = getelementptr i8, ptr %.pn.in57, i32 40
  %24 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call, ptr %input, align 4
  store volatile ptr %.pn.in57, ptr %.pn.in57, align 4
  %prev.i49 = getelementptr inbounds %struct.list_head, ptr %.pn.in57, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn.in57, ptr %prev.i49, align 4
  %26 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %ws.0) #12
  %cmp.not = icmp eq ptr %.pn, %work_items
  br i1 %cmp.not, label %for.body.while.cond.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.then.i51:                                      ; preds = %if.end.if.then.i51_crit_edge, %if.then.i51.lr.ph
  %bios.sroa.0.259 = phi ptr [ %14, %if.then.i51.lr.ph ], [ %29, %if.end.if.then.i51_crit_edge ]
  %28 = ptrtoint ptr %bios.sroa.0.259 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios.sroa.0.259, align 8
  store ptr null, ptr %bios.sroa.0.259, align 8
  br i1 %tobool26.not, label %if.else, label %if.then

if.then:                                          ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #14
  %bi_status = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.259, i32 0, i32 6
  %30 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call, ptr %bi_status, align 2
  call void @bio_endio(ptr noundef nonnull %bios.sroa.0.259) #12
  br label %if.end

if.else:                                          ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %issue_op to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %issue_op, align 4
  %33 = ptrtoint ptr %issue_context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %issue_context, align 4
  call void %32(ptr noundef nonnull %bios.sroa.0.259, ptr noundef %34) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool.not.i50 = icmp eq ptr %29, null
  br i1 %tobool.not.i50, label %if.end.while.end_crit_edge, label %if.end.if.then.i51_crit_edge

if.end.if.then.i51_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i51

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %work_items) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_changed_this_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_commit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bio_prison_destroy_v2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_metadata_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_policy_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bio_get_target_bio_nr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_set_dirty_bits(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_discard_bitset_resize(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_set_discard(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_metadata_set_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_write_hints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resize_cache_dev(ptr nocapture noundef %cache, i32 noundef %new_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 8
  %call = tail call i32 @dm_cache_resize(ptr noundef %1, i32 noundef %new_size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %5) #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %call.i) #15
  tail call fastcc void @metadata_operation_failed(ptr noundef %cache, ptr noundef nonnull @.str.124, i32 noundef %call)
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i32 %new_size to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %new_size)
  %cmp.i = icmp ugt i32 %new_size, 1048576
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.set_cache_size.exit_crit_edge

if.end.set_cache_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_cache_size.exit

land.lhs.true.i:                                  ; preds = %if.end
  %cache_size.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 10
  %6 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_size)
  %cmp2.not.i = icmp eq i32 %7, %new_size
  br i1 %cmp2.not.i, label %land.lhs.true.i.set_cache_size.exit_crit_edge, label %if.then.i

land.lhs.true.i.set_cache_size.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_cache_size.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @set_cache_size._rs, ptr noundef nonnull @__func__.set_cache_size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then.i.set_cache_size.exit_crit_edge, label %do.end.i

if.then.i.set_cache_size.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_cache_size.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %conv.i) #15
  br label %set_cache_size.exit

set_cache_size.exit:                              ; preds = %do.end.i, %if.then.i.set_cache_size.exit_crit_edge, %land.lhs.true.i.set_cache_size.exit_crit_edge, %if.end.set_cache_size.exit_crit_edge
  %cache_size8.i = getelementptr inbounds %struct.cache, ptr %cache, i32 0, i32 10
  %8 = ptrtoint ptr %cache_size8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_size, ptr %cache_size8.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_cache_size.exit, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_load_mappings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_mapping(ptr noundef %context, i64 noundef %oblock, i32 noundef %cblock, i1 noundef zeroext %dirty, i32 noundef %hint, i1 noundef zeroext %hint_valid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty_bitset = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 30
  %0 = ptrtoint ptr %dirty_bitset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dirty_bitset, align 8
  br i1 %dirty, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef %cblock, ptr noundef %1) #12
  %nr_dirty = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_dirty, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nr_dirty, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_dirty, ptr %nr_dirty, i32 1, ptr elementtype(i32) %nr_dirty) #12, !srcloc !443
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef %cblock, ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %policy = getelementptr inbounds %struct.cache, ptr %context, i32 0, i32 33
  %3 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %policy, align 4
  %load_mapping.i = getelementptr inbounds %struct.dm_cache_policy, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %load_mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %load_mapping.i, align 4
  %call.i = tail call i32 %6(ptr noundef %4, i64 noundef %oblock, i32 noundef %cblock, i1 noundef zeroext %dirty, i32 noundef %hint, i1 noundef zeroext %hint_valid) #12
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_load_discards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_discard(ptr nocapture noundef %context, i64 noundef %discard_block_size, i64 noundef %dblock, i1 noundef zeroext %discard) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %block_size = getelementptr inbounds %struct.discard_load_info, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %discard_block_size, ptr %block_size, align 8
  br i1 %discard, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %discard_end = getelementptr inbounds %struct.discard_load_info, ptr %context, i32 0, i32 3
  %1 = ptrtoint ptr %discard_end to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %discard_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %dblock)
  %cmp = icmp eq i64 %2, %dblock
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i64 %dblock, 1
  %3 = ptrtoint ptr %discard_end to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %discard_end, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_discard_range(ptr noundef %context)
  %discard_begin = getelementptr inbounds %struct.discard_load_info, ptr %context, i32 0, i32 2
  %4 = ptrtoint ptr %discard_begin to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %dblock, ptr %discard_begin, align 8
  %add6 = add i64 %dblock, 1
  %5 = ptrtoint ptr %discard_end to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add6, ptr %discard_end, align 8
  br label %if.end11

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_discard_range(ptr noundef %context)
  %discard_begin10 = getelementptr inbounds %struct.discard_load_info, ptr %context, i32 0, i32 2
  %6 = call ptr @memset(ptr %discard_begin10, i32 0, i32 16)
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.else, %if.then1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_discard_range(ptr nocapture noundef readonly %li) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %discard_begin = getelementptr inbounds %struct.discard_load_info, ptr %li, i32 0, i32 2
  %0 = ptrtoint ptr %discard_begin to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %discard_begin, align 8
  %discard_end = getelementptr inbounds %struct.discard_load_info, ptr %li, i32 0, i32 3
  %2 = ptrtoint ptr %discard_end to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %discard_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %block_size = getelementptr inbounds %struct.discard_load_info, ptr %li, i32 0, i32 1
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %block_size, align 8
  %mul = mul i64 %5, %1
  %mul4 = mul i64 %5, %3
  %6 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %li, align 8
  %discard_block_size = getelementptr inbounds %struct.cache, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %discard_block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %discard_block_size, align 4
  %conv = zext i32 %9 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp178 = icmp ult i64 %sub, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !435

if.then182:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv183 = trunc i64 %sub to i32
  %div186 = udiv i32 %conv183, %9
  %conv187 = zext i32 %div186 to i64
  br label %if.else396

if.else188:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub) #17, !srcloc !436
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  br label %if.else396

if.else396:                                       ; preds = %if.else188, %if.then182
  %_r.0 = phi i64 [ %conv187, %if.then182 ], [ %asmresult1.i, %if.else188 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul4)
  %cmp398 = icmp ult i64 %mul4, 4294967296
  br i1 %cmp398, label %if.then406, label %if.else412, !prof !435

if.then406:                                       ; preds = %if.else396
  call void @__sanitizer_cov_trace_pc() #14
  %conv407 = trunc i64 %mul4 to i32
  %div410 = udiv i32 %conv407, %9
  %conv411 = zext i32 %div410 to i64
  br label %if.end416

if.else412:                                       ; preds = %if.else396
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %mul4) #17, !srcloc !436
  %asmresult1.i637 = extractvalue { i64, i64 } %11, 1
  br label %if.end416

if.end416:                                        ; preds = %if.else412, %if.then406
  %e.0 = phi i64 [ %conv411, %if.then406 ], [ %asmresult1.i637, %if.else412 ]
  %discard_nr_blocks = getelementptr inbounds %struct.cache, ptr %7, i32 0, i32 19
  %12 = ptrtoint ptr %discard_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %discard_nr_blocks, align 8
  %14 = tail call i64 @llvm.umin.i64(i64 %e.0, i64 %13)
  call void @__sanitizer_cov_trace_cmp8(i64 %_r.0, i64 %14)
  %cmp427705 = icmp ult i64 %_r.0, %14
  br i1 %cmp427705, label %if.end416.for.body_crit_edge, label %if.end416.cleanup_crit_edge

if.end416.cleanup_crit_edge:                      ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end416.for.body_crit_edge:                     ; preds = %if.end416
  br label %for.body

for.body:                                         ; preds = %set_discard.exit.for.body_crit_edge, %if.end416.for.body_crit_edge
  %b.0706 = phi i64 [ %inc, %set_discard.exit.for.body_crit_edge ], [ %_r.0, %if.end416.for.body_crit_edge ]
  %15 = ptrtoint ptr %li to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %li, align 8
  %discard_nr_blocks.i = getelementptr inbounds %struct.cache, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %discard_nr_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %b.0706)
  %cmp.not.i640 = icmp ugt i64 %18, %b.0706
  br i1 %cmp.not.i640, label %set_discard.exit, label %do.body3.i, !prof !435

do.body3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 672, 0\0A.popsection", ""() #12, !srcloc !444
  unreachable

set_discard.exit:                                 ; preds = %for.body
  %discard_count.i = getelementptr inbounds %struct.cache, ptr %16, i32 0, i32 35, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %discard_count.i, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %discard_count.i, ptr %discard_count.i, i32 1, ptr elementtype(i32) %discard_count.i) #12, !srcloc !443
  %lock.i = getelementptr inbounds %struct.cache, ptr %16, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %conv.i641 = trunc i64 %b.0706 to i32
  %discard_bitset.i = getelementptr inbounds %struct.cache, ptr %16, i32 0, i32 20
  %20 = ptrtoint ptr %discard_bitset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %discard_bitset.i, align 8
  tail call void @_set_bit(i32 noundef %conv.i641, ptr noundef %21) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %inc = add nuw i64 %b.0706, 1
  %cmp427 = icmp ult i64 %inc, %14
  br i1 %cmp427, label %set_discard.exit.for.body_crit_edge, label %set_discard.exit.cleanup_crit_edge

set_discard.exit.cleanup_crit_edge:               ; preds = %set_discard.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

set_discard.exit.for.body_crit_edge:              ; preds = %set_discard.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %set_discard.exit.cleanup_crit_edge, %if.end416.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_get_free_metadata_block_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_get_metadata_dev_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_cache_policy_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 223)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 223)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !101, !102, !103, !104, !106, !108, !110, !111, !113, !114, !116, !117, !118, !119, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !172, !174, !176, !177, !178, !179, !181, !183, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !220, !222, !223, !225, !226, !228, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !252, !253, !254, !255, !257, !259, !261, !263, !264, !265, !266, !268, !270, !271, !272, !274, !276, !277, !278, !279, !281, !283, !284, !285, !286, !288, !289, !290, !292, !294, !295, !296, !297, !299, !300, !301, !303, !305, !307, !309, !310, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !368, !369, !370, !372, !374, !376, !377, !378, !379, !381, !383, !384, !385, !386, !388, !390, !392, !393, !394, !395, !397, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !412, !414, !415, !416, !417, !419, !421, !422, !423}
!llvm.named.register.sp = !{!424}
!llvm.module.flags = !{!425, !426, !427, !428, !429, !430, !431, !432}
!llvm.ident = !{!433}

!0 = !{ptr @__param_cache_copy_throttle, !1, !"__param_cache_copy_throttle", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-cache-target.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_cache_copy_throttletype294, !1, !"__UNIQUE_ID_cache_copy_throttletype294", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cache_copy_throttle295, !1, !"__UNIQUE_ID_cache_copy_throttle295", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dm_cache__298_3460_dm_cache_init6, !5, !"__initcall__kmod_dm_cache__298_3460_dm_cache_init6", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-cache-target.c", i32 3460, i32 1}
!6 = !{ptr @__exitcall_dm_cache_exit, !7, !"__exitcall_dm_cache_exit", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-cache-target.c", i32 3461, i32 1}
!8 = !{ptr @__UNIQUE_ID_description299, !9, !"__UNIQUE_ID_description299", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-cache-target.c", i32 3463, i32 1}
!10 = !{ptr @__UNIQUE_ID_author300, !11, !"__UNIQUE_ID_author300", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-cache-target.c", i32 3464, i32 1}
!12 = !{ptr @__UNIQUE_ID_file301, !13, !"__UNIQUE_ID_file301", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-cache-target.c", i32 3465, i32 1}
!14 = !{ptr @__UNIQUE_ID_license302, !13, !"__UNIQUE_ID_license302", i1 false, i1 false}
!15 = !{ptr @migration_cache, !16, !"migration_cache", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-cache-target.c", i32 2241, i32 27}
!17 = !{ptr @__param_str_cache_copy_throttle, !1, !"__param_str_cache_copy_throttle", i1 false, i1 false}
!18 = !{ptr @dm_kcopyd_throttle, !1, !"dm_kcopyd_throttle", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-cache-target.c", i32 3420, i32 10}
!21 = !{ptr @cache_target, !22, !"cache_target", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-cache-target.c", i32 3419, i32 27}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-cache-target.c", i32 2580, i32 15}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-cache-target.c", i32 2034, i32 12}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-cache-target.c", i32 2040, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @parse_metadata_dev._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @parse_metadata_dev._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-cache-target.c", i32 2014, i32 12}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-cache-target.c", i32 2057, i32 12}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-cache-target.c", i32 2076, i32 12}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-cache-target.c", i32 2082, i32 12}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-cache-target.c", i32 2101, i32 12}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-cache-target.c", i32 2106, i32 12}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-cache-target.c", i32 2127, i32 10}
!47 = !{ptr @parse_features._args, !48, !"_args", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-cache-target.c", i32 2126, i32 29}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-cache-target.c", i32 2144, i32 24}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-cache-target.c", i32 2149, i32 29}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-cache-target.c", i32 2154, i32 29}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-cache-target.c", i32 2159, i32 29}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-cache-target.c", i32 2162, i32 29}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-cache-target.c", i32 2166, i32 13}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-cache-target.c", i32 2172, i32 12}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-cache-target.c", i32 2183, i32 13}
!65 = !{ptr @parse_policy._args, !66, !"_args", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-cache-target.c", i32 2182, i32 29}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-cache-target.c", i32 2420, i32 12}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-cache-target.c", i32 2429, i32 12}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-cache-target.c", i32 2436, i32 12}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-cache-target.c", i32 2446, i32 13}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-cache-target.c", i32 2451, i32 13}
!77 = !{ptr @cache_create.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-cache-target.c", i32 2459, i32 2}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cache_create.__key.27, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-cache-target.c", i32 2463, i32 2}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-cache-target.c", i32 2469, i32 12}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-cache-target.c", i32 2481, i32 12}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-cache-target.c", i32 2488, i32 12}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-cache-target.c", i32 2493, i32 30}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-cache-target.c", i32 2495, i32 12}
!93 = !{ptr @cache_create.__key.34, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/md/dm-cache-target.c", i32 2498, i32 2}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cache_create.__key.36, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-cache-target.c", i32 2499, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cache_create.__key.38, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-cache-target.c", i32 2500, i32 2}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cache_create.__key.40, !100, !"__key", i1 false, i1 false}
!103 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-cache-target.c", i32 2504, i32 12}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/dm-cache-target.c", i32 2511, i32 12}
!108 = !{ptr @cache_create.__key.44, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/md/dm-cache-target.c", i32 2531, i32 2}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cache_create.__key.46, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-cache-target.c", i32 2538, i32 2}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/md/dm-cache-target.c", i32 2342, i32 3}
!116 = !{ptr @set_cache_size._rs, !115, !"_rs", i1 false, i1 false}
!117 = !{ptr @__func__.set_cache_size, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @set_cache_size._entry, !115, !"_entry", i1 false, i1 false}
!120 = !{ptr @set_cache_size._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-cache-target.c", i32 2302, i32 12}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-cache-target.c", i32 2278, i32 3}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @set_config_values._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @set_config_values._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/md/dm-cache-target.c", i32 2268, i32 3}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @set_config_value._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @set_config_value._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-cache-target.c", i32 2249, i32 23}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-cache-target.c", i32 876, i32 3}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @set_cache_mode._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @set_cache_mode._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/dm-cache-target.c", i32 882, i32 3}
!142 = !{ptr @set_cache_mode._entry.58, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @set_cache_mode._entry_ptr.60, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/md/dm-cache-target.c", i32 860, i32 3}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/md/dm-cache-target.c", i32 861, i32 3}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/md/dm-cache-target.c", i32 862, i32 3}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/md/dm-cache-target.c", i32 866, i32 2}
!152 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @notify_mode_switch._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @notify_mode_switch._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @map_bio._rs, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../drivers/md/dm-cache-target.c", i32 1627, i32 4}
!157 = !{ptr @__func__.map_bio, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @map_bio._entry, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @map_bio._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @map_bio._rs.67, !162, !"_rs", i1 false, i1 false}
!162 = !{!"../drivers/md/dm-cache-target.c", i32 1642, i32 4}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @map_bio._entry.68, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @map_bio._entry_ptr.70, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @mg_update_metadata._rs, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/md/dm-cache-target.c", i32 1242, i32 4}
!168 = !{ptr @__func__.mg_update_metadata, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @mg_update_metadata._entry, !167, !"_entry", i1 false, i1 false}
!171 = !{ptr @mg_update_metadata._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/md/dm-cache-target.c", i32 1244, i32 37}
!174 = !{ptr @mg_update_metadata._rs.73, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../drivers/md/dm-cache-target.c", i32 1255, i32 4}
!176 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @mg_update_metadata._entry.74, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @mg_update_metadata._entry_ptr.76, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/md/dm-cache-target.c", i32 1257, i32 37}
!181 = !{ptr @metadata_operation_failed._rs, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../drivers/md/dm-cache-target.c", i32 932, i32 2}
!183 = !{ptr @__func__.metadata_operation_failed, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @metadata_operation_failed._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @metadata_operation_failed._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/md/dm-cache-target.c", i32 919, i32 3}
!189 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @abort_transaction._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @abort_transaction._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @abort_transaction._rs, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../drivers/md/dm-cache-target.c", i32 923, i32 2}
!194 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @abort_transaction._entry.81, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @abort_transaction._entry_ptr.83, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/dm-cache-target.c", i32 925, i32 3}
!199 = !{ptr @abort_transaction._entry.84, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @abort_transaction._entry_ptr.86, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @init_continuation.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../drivers/md/dm-cache-target.c", i32 55, i32 2}
!203 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @invalidate_cblock._rs, !205, !"_rs", i1 false, i1 false}
!205 = !{!"../drivers/md/dm-cache-target.c", i32 1475, i32 4}
!206 = !{ptr @__func__.invalidate_cblock, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @invalidate_cblock._entry, !205, !"_entry", i1 false, i1 false}
!209 = !{ptr @invalidate_cblock._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.90, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/md/dm-cache-target.c", i32 1487, i32 3}
!212 = !{ptr @invalidate_cblock._entry.89, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @invalidate_cblock._entry_ptr.91, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @check_migrations._rs, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../drivers/md/dm-cache-target.c", i32 1870, i32 4}
!216 = !{ptr @__func__.check_migrations, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @check_migrations._entry, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @check_migrations._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @batcher_init.__key, !221, !"__key", i1 false, i1 false}
!221 = !{!"../drivers/md/dm-cache-target.c", i32 153, i32 2}
!222 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @batcher_init.__key.94, !224, !"__key", i1 false, i1 false}
!224 = !{!"../drivers/md/dm-cache-target.c", i32 156, i32 2}
!225 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/md/dm-cache-target.c", i32 1737, i32 36}
!228 = !{ptr @dm_iot_init.__key, !229, !"__key", i1 false, i1 false}
!229 = !{!"../drivers/md/dm-io-tracker.h", i32 30, i32 2}
!230 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/md/dm-cache-target.c", i32 2725, i32 3}
!233 = !{ptr @.str.99, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @sync_metadata._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @sync_metadata._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/md/dm-cache-target.c", i32 2729, i32 3}
!238 = !{ptr @sync_metadata._entry.100, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @sync_metadata._entry_ptr.102, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/md/dm-cache-target.c", i32 2735, i32 3}
!242 = !{ptr @sync_metadata._entry.103, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @sync_metadata._entry_ptr.105, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/md/dm-cache-target.c", i32 2744, i32 3}
!246 = !{ptr @sync_metadata._entry.106, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @sync_metadata._entry_ptr.108, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.109, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/md/dm-cache-target.c", i32 2668, i32 36}
!250 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm-cache-target.c", i32 2683, i32 3}
!252 = !{ptr @.str.111, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @write_discard_bitset._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @write_discard_bitset._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.112, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/md/dm-cache-target.c", i32 2684, i32 36}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/md/dm-cache-target.c", i32 2692, i32 37}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/md/dm-cache-target.c", i32 2709, i32 36}
!261 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/md/dm-cache-target.c", i32 2946, i32 4}
!263 = !{ptr @.str.116, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @cache_preresume._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @cache_preresume._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/md/dm-cache-target.c", i32 2947, i32 37}
!268 = !{ptr @.str.119, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/md/dm-cache-target.c", i32 2967, i32 4}
!270 = !{ptr @cache_preresume._entry.118, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @cache_preresume._entry_ptr.120, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.121, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/md/dm-cache-target.c", i32 2968, i32 37}
!274 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/md/dm-cache-target.c", i32 2907, i32 3}
!276 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @resize_cache_dev._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @resize_cache_dev._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/md/dm-cache-target.c", i32 2908, i32 36}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/md/dm-cache-target.c", i32 2879, i32 4}
!283 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @can_resize._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @can_resize._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.128, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/md/dm-cache-target.c", i32 2891, i32 4}
!288 = !{ptr @can_resize._entry.127, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @can_resize._entry_ptr.129, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.130, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/md/dm-cache-target.c", i32 3048, i32 4}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/md/dm-cache-target.c", i32 3058, i32 4}
!294 = !{ptr @.str.132, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @cache_status._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @cache_status._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/md/dm-cache-target.c", i32 3065, i32 4}
!299 = !{ptr @cache_status._entry.133, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @cache_status._entry_ptr.135, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/md/dm-cache-target.c", i32 3072, i32 3}
!303 = !{ptr @.str.137, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/md/dm-cache-target.c", i32 3089, i32 3}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/md/dm-cache-target.c", i32 3091, i32 3}
!307 = !{ptr @.str.140, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/md/dm-cache-target.c", i32 3095, i32 5}
!309 = !{ptr @cache_status._entry.139, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @cache_status._entry_ptr.141, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.142, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/md/dm-cache-target.c", i32 3100, i32 4}
!313 = !{ptr @.str.143, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/md/dm-cache-target.c", i32 3102, i32 4}
!315 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/md/dm-cache-target.c", i32 3107, i32 4}
!317 = !{ptr @.str.145, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/md/dm-cache-target.c", i32 3109, i32 4}
!319 = !{ptr @.str.146, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/md/dm-cache-target.c", i32 3114, i32 3}
!321 = !{ptr @.str.147, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/md/dm-cache-target.c", i32 3119, i32 3}
!323 = !{ptr @.str.148, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/md/dm-cache-target.c", i32 3122, i32 4}
!325 = !{ptr @.str.149, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/md/dm-cache-target.c", i32 3128, i32 3}
!327 = !{ptr @.str.150, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/md/dm-cache-target.c", i32 3130, i32 4}
!329 = !{ptr @.str.151, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/md/dm-cache-target.c", i32 3132, i32 4}
!331 = !{ptr @.str.152, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/md/dm-cache-target.c", i32 3134, i32 4}
!333 = !{ptr @.str.153, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/md/dm-cache-target.c", i32 3137, i32 3}
!335 = !{ptr @.str.154, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/md/dm-cache-target.c", i32 3139, i32 3}
!337 = !{ptr @.str.155, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/md/dm-cache-target.c", i32 3141, i32 3}
!339 = !{ptr @.str.156, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/md/dm-cache-target.c", i32 3142, i32 3}
!341 = !{ptr @.str.157, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/md/dm-cache-target.c", i32 3143, i32 3}
!343 = !{ptr @.str.158, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/md/dm-cache-target.c", i32 3144, i32 3}
!345 = !{ptr @.str.159, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/md/dm-cache-target.c", i32 3145, i32 3}
!347 = !{ptr @.str.160, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/md/dm-cache-target.c", i32 3146, i32 3}
!349 = !{ptr @.str.161, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/md/dm-cache-target.c", i32 3147, i32 3}
!351 = !{ptr @.str.162, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/md/dm-cache-target.c", i32 3154, i32 2}
!353 = !{ptr @.str.163, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/md/dm-cache-target.c", i32 2995, i32 2}
!355 = !{ptr @.str.164, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/md/dm-cache-target.c", i32 2998, i32 3}
!357 = !{ptr @.str.165, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/md/dm-cache-target.c", i32 3001, i32 3}
!359 = !{ptr @.str.166, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/md/dm-cache-target.c", i32 3004, i32 3}
!361 = !{ptr @.str.167, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/md/dm-cache-target.c", i32 3007, i32 3}
!363 = !{ptr @.str.168, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/md/dm-cache-target.c", i32 3010, i32 3}
!365 = !{ptr @.str.169, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/md/dm-cache-target.c", i32 3011, i32 3}
!367 = !{ptr @.str.170, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @emit_flags._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @emit_flags._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.171, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/md/dm-cache-target.c", i32 3016, i32 3}
!372 = !{ptr @.str.172, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/md/dm-cache-policy-internal.h", i32 94, i32 2}
!374 = !{ptr @.str.173, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/md/dm-cache-target.c", i32 3313, i32 3}
!376 = !{ptr @.str.174, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @cache_message._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @cache_message._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.175, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/md/dm-cache-target.c", i32 3318, i32 27}
!381 = !{ptr @.str.176, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/md/dm-cache-target.c", i32 3271, i32 3}
!383 = !{ptr @.str.177, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @process_invalidate_cblocks_message._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @process_invalidate_cblocks_message._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.178, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/md/dm-cache-target.c", i32 3182, i32 18}
!388 = !{ptr @.str.179, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/md/dm-cache-target.c", i32 3195, i32 18}
!390 = !{ptr @.str.180, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/md/dm-cache-target.c", i32 3205, i32 2}
!392 = !{ptr @.str.181, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @parse_cblock_range._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @parse_cblock_range._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.182, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/md/dm-cache-target.c", i32 3216, i32 3}
!397 = !{ptr @.str.183, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @validate_cblock_range._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @validate_cblock_range._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.185, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/md/dm-cache-target.c", i32 3222, i32 3}
!402 = !{ptr @validate_cblock_range._entry.184, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @validate_cblock_range._entry_ptr.186, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.188, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/md/dm-cache-target.c", i32 3228, i32 3}
!406 = !{ptr @validate_cblock_range._entry.187, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @validate_cblock_range._entry_ptr.189, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.190, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/md/dm-cache-target.c", i32 3362, i32 12}
!410 = !{ptr @.str.191, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/md/dm-cache-target.c", i32 3365, i32 12}
!412 = !{ptr @.str.192, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/md/dm-cache-target.c", i32 3368, i32 3}
!414 = !{ptr @.str.193, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @disable_passdown_if_not_supported._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @disable_passdown_if_not_supported._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.194, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/md/dm-cache-target.c", i32 3440, i32 20}
!419 = !{ptr @.str.195, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/md/dm-cache-target.c", i32 3446, i32 3}
!421 = !{ptr @.str.196, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @dm_cache_init._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @dm_cache_init._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{!"sp"}
!425 = !{i32 1, !"wchar_size", i32 2}
!426 = !{i32 1, !"min_enum_size", i32 4}
!427 = !{i32 8, !"branch-target-enforcement", i32 0}
!428 = !{i32 8, !"sign-return-address", i32 0}
!429 = !{i32 8, !"sign-return-address-all", i32 0}
!430 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!431 = !{i32 7, !"uwtable", i32 1}
!432 = !{i32 7, !"frame-pointer", i32 2}
!433 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!434 = !{!"auto-init"}
!435 = !{!"branch_weights", i32 2000, i32 1}
!436 = !{i64 2148592176, i64 2148592456, i64 2148592790, i64 2148593124}
!437 = !{i32 0, i32 33}
!438 = !{!"branch_weights", i32 1, i32 2000}
!439 = !{i64 2155105997, i64 2155106491, i64 2155106034, i64 2155106090, i64 2155106124, i64 2155106148, i64 2155106189, i64 2155106210, i64 2155106238, i64 2155106272}
!440 = !{i8 0, i8 2}
!441 = !{i64 2155017573, i64 2155018066, i64 2155017610, i64 2155017666, i64 2155017700, i64 2155017724, i64 2155017765, i64 2155017786, i64 2155017814, i64 2155017848}
!442 = !{i64 2155143723, i64 2155144217, i64 2155143760, i64 2155143816, i64 2155143850, i64 2155143874, i64 2155143915, i64 2155143936, i64 2155143964, i64 2155143998}
!443 = !{i64 2148742391, i64 2148742417, i64 2148742446, i64 2148742480, i64 2148742511, i64 2148742534}
!444 = !{i64 2155024820, i64 2155025313, i64 2155024857, i64 2155024913, i64 2155024947, i64 2155024971, i64 2155025012, i64 2155025033, i64 2155025061, i64 2155025095}
!445 = !{i64 2155085891, i64 2155086385, i64 2155085928, i64 2155085984, i64 2155086018, i64 2155086042, i64 2155086083, i64 2155086104, i64 2155086132, i64 2155086166}
!446 = !{i64 2155037646, i64 2155038139, i64 2155037683, i64 2155037739, i64 2155037773, i64 2155037797, i64 2155037838, i64 2155037859, i64 2155037887, i64 2155037921}
!447 = !{i64 2148830867}
!448 = !{i64 2148745576, i64 2148745608, i64 2148745637, i64 2148745671, i64 2148745702, i64 2148745725}
!449 = !{i64 2148831096}
!450 = !{i64 2148744856, i64 2148744882, i64 2148744911, i64 2148744945, i64 2148744976, i64 2148744999}
!451 = !{i64 2155074664, i64 2155075158, i64 2155074701, i64 2155074757, i64 2155074791, i64 2155074815, i64 2155074856, i64 2155074877, i64 2155074905, i64 2155074939}
