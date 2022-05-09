; ModuleID = '/llk/IR_all_yes/drivers/md/dm-writecache.c_pt.bc'
source_filename = "../drivers/md/dm-writecache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.dm_kcopyd_throttle = type { i32, i32, i32, i32, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.dm_writecache = type { %struct.mutex, %struct.list_head, %union.anon.75, %struct.rb_root, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, [2 x %struct.atomic_t], [2 x %struct.wait_queue_head], ptr, ptr, ptr, i64, ptr, i64, i32, i32, i64, i64, ptr, ptr, i32, i8, [3 x i8], i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.dm_io_tracker, ptr, %struct.raw_spinlock, %struct.list_head, ptr, ptr, %struct.bio_list, ptr, ptr, i32, %struct.bio_set, %struct.mempool_s, %struct.anon.77 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.75 = type { %struct.list_head }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dm_io_tracker = type { %struct.spinlock, i64, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.anon.77 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.anon.79 = type { i32, i32, i32, i32, i64, i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.wc_entry = type { %struct.rb_node, %struct.list_head, i16, i8, i32, i32 }
%struct.wc_memory_superblock = type { %union.anon.78, [0 x %struct.wc_memory_entry] }
%union.anon.78 = type { [8 x i64] }
%struct.wc_memory_entry = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dm_io_request = type { i32, i32, %struct.dm_io_memory, %struct.dm_io_notify, ptr }
%struct.dm_io_memory = type { i32, i32, %union.anon.80 }
%union.anon.80 = type { ptr }
%struct.dm_io_notify = type { ptr, ptr }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.writeback_list = type { %struct.list_head, i32 }
%struct.copy_struct = type { %struct.list_head, ptr, ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_notify = type { ptr, %struct.completion, %struct.atomic_t }

@__param_str_dm_writecache_throttle = internal constant [37 x i8] c"dm_writecache.dm_writecache_throttle\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dm_kcopyd_throttle = internal global { %struct.dm_kcopyd_throttle, [44 x i8] } { %struct.dm_kcopyd_throttle { i32 100, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__param_dm_writecache_throttle = internal constant %struct.kernel_param { ptr @__param_str_dm_writecache_throttle, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @dm_kcopyd_throttle } }, section "__param", align 4
@__UNIQUE_ID_dm_writecache_throttletype267 = internal constant [51 x i8] c"dm_writecache.parmtype=dm_writecache_throttle:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dm_writecache_throttle268 = internal constant [90 x i8] c"dm_writecache.parm=dm_writecache_throttle:A percentage of time allocated for data copying\00", section ".modinfo", align 1
@writecache_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 6, i32 0], ptr @writecache_ctr, ptr @writecache_dtr, ptr @writecache_map, ptr null, ptr null, ptr @writecache_end_io, ptr null, ptr null, ptr null, ptr @writecache_suspend, ptr null, ptr @writecache_resume, ptr @writecache_status, ptr @writecache_message, ptr null, ptr null, ptr null, ptr @writecache_iterate_devices, ptr @writecache_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_writecache__295_2764_dm_writecache_init6 = internal global ptr @dm_writecache_init, section ".initcall6.init", align 4
@__exitcall_dm_writecache_exit = internal global ptr @dm_writecache_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [58 x i8] c"dm_writecache.description=device-mapper writecache target\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [59 x i8] c"dm_writecache.author=Mikulas Patocka <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [44 x i8] c"dm_writecache.file=drivers/md/dm-writecache\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [26 x i8] c"dm_writecache.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"writecache\00", [21 x i8] zeroinitializer }, align 32
@writecache_ctr._args = internal global { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 18, ptr @.str.1 }], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of feature args\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot allocate writecache structure\00", [59 x i8] zeroinitializer }, align 32
@writecache_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&wc->lock\00", [22 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&wc->freelist_wait\00", [45 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&wc->autocommit_timer)\00", [40 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&wc->max_age_timer)\00", [43 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&wc->bio_in_progress_wait[i]\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to allocate dm-io client\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"writecache-writeback\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not allocate writeback workqueue\00", [57 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&wc->writeback_work)\00", [57 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&wc->flush_work)\00", [61 x i8] zeroinitializer }, align 32
@writecache_ctr.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&wc->endio_list_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"writecache_endio\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't spawn endio thread\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Persistent memory or DAX not supported on this system\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not allocate mempool\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Origin data device lookup failed\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cache data device lookup failed\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid block size\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Block size is smaller than device logical block size\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"start_sector\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"high_watermark\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%c\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"low_watermark\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"writeback_jobs\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autocommit_blocks\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"autocommit_time\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_age\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cleaner\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fua\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nofua\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"metadata_only\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pause_writeback\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid optional argument\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"High watermark must be greater than or equal to low watermark\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm_writecache_flush\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't spawn flush thread\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid device size\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to allocate memory for metadata\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate dm-kcopyd client\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to allocate dirty bitmap\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to read first block of metadata\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to initialize device\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid magic in the superblock\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid version in the superblock\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Block size does not match superblock\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Overflow in size calculation\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Memory area is too small\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot allocate memory\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bad arguments\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/md/dm-writecache.c\00", [37 x i8] zeroinitializer }, align 32
@writecache_disk_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.64, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: writecache: error flushing metadata: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"writecache_disk_flush\00", [42 x i8] zeroinitializer }, align 32
@writecache_disk_flush._entry_ptr = internal global ptr @writecache_disk_flush._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@writecache_notify_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.64, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: writecache: error writing metadata\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"writecache_notify_io\00", [43 x i8] zeroinitializer }, align 32
@writecache_notify_io._entry_ptr = internal global ptr @writecache_notify_io._entry, section ".printk_index", align 4
@ssd_commit_superblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.64, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: writecache: error writing superblock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssd_commit_superblock\00", [42 x i8] zeroinitializer }, align 32
@ssd_commit_superblock._entry_ptr = internal global ptr @ssd_commit_superblock._entry, section ".printk_index", align 4
@dm_iot_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&iot->lock\00", [21 x i8] zeroinitializer }, align 32
@__writecache_endio_ssd._entry = internal constant %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.64, i32 1711, ptr null, ptr null }, align 1
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013device-mapper: writecache: copy error\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__writecache_endio_ssd\00", [41 x i8] zeroinitializer }, align 32
@__writecache_endio_ssd._entry_ptr = internal global ptr @__writecache_endio_ssd._entry, section ".printk_index", align 4
@writecache_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.64, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013device-mapper: writecache: I/O is not aligned, sector %llu, size %u, block size %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"writecache_map\00", [17 x i8] zeroinitializer }, align 32
@writecache_map._entry_ptr = internal global ptr @writecache_map._entry, section ".printk_index", align 4
@writecache_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.64, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: writecache: unable to read metadata: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"writecache_resume\00", [46 x i8] zeroinitializer }, align 32
@writecache_resume._entry_ptr = internal global ptr @writecache_resume._entry, section ".printk_index", align 4
@writecache_resume._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.64, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: writecache: hardware memory error when reading superblock: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@writecache_resume._entry_ptr.83 = internal global ptr @writecache_resume._entry.81, section ".printk_index", align 4
@writecache_resume._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.64, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013device-mapper: writecache: two identical entries, position %llu, sector %llu, sequence %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@writecache_resume._entry_ptr.86 = internal global ptr @writecache_resume._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%ld %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%c %s %s %u \00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" start_sector %llu\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" high_watermark %u\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" low_watermark %u\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" writeback_jobs %u\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" autocommit_blocks %u\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" autocommit_time %u\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" max_age %u\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" cleaner\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %sfua\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" metadata_only\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" pause_writeback %u\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flush_on_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clear_stats\00", [20 x i8] zeroinitializer }, align 32
@writecache_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.64, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: writecache: unrecognised message received: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"writecache_message\00", [45 x i8] zeroinitializer }, align 32
@writecache_message._entry_ptr = internal global ptr @writecache_message._entry, section ".printk_index", align 4
@dm_writecache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.64, i32 2752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: writecache: register failed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_writecache_init\00", [45 x i8] zeroinitializer }, align 32
@dm_writecache_init._entry_ptr = internal global ptr @dm_writecache_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"dm_kcopyd_throttle\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 243, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"writecache_target\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2730, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2731, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2218, i32 23 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2219, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2227, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2234, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2237, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2238, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2239, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2243, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2249, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2254, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2257, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2260, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2261, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2265, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2267, i32 21 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2271, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2282, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2284, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2295, i32 15 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2314, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2327, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2340, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2351, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2355, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2361, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2379, i32 27 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2382, i32 23 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2389, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2391, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2397, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2405, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2410, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2415, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2425, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2435, i32 34 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2438, i32 34 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2443, i32 34 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2448, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2450, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2465, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2472, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2495, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2499, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2506, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2522, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2529, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2540, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2546, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2559, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2571, i32 15 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2577, i32 15 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2583, i32 15 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2593, i32 15 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2606, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2628, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2643, i32 14 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2003, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 603, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 87, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 483, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 574, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [30 x i8] c"../drivers/md/dm-io-tracker.h\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 30, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1711, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1541, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1011, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1031, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1076, i32 6 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2658, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2674, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2700, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2702, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2704, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2706, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2708, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2710, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2712, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2714, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2716, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2718, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2720, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2722, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1191, i32 27 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1193, i32 32 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1197, i32 32 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1200, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private constant [30 x i8] c"../drivers/md/dm-writecache.c\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 2752, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_dm_writecache_throttle268, ptr @__UNIQUE_ID_dm_writecache_throttletype267, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_dm_writecache_exit, ptr @__initcall__kmod_dm_writecache__295_2764_dm_writecache_init6, ptr @__param_dm_writecache_throttle, ptr @__writecache_endio_ssd._entry, ptr @__writecache_endio_ssd._entry_ptr, ptr @dm_writecache_exit, ptr @dm_writecache_init._entry, ptr @dm_writecache_init._entry_ptr, ptr @ssd_commit_superblock._entry, ptr @ssd_commit_superblock._entry_ptr, ptr @writecache_disk_flush._entry, ptr @writecache_disk_flush._entry_ptr, ptr @writecache_map._entry, ptr @writecache_map._entry_ptr, ptr @writecache_message._entry, ptr @writecache_message._entry_ptr, ptr @writecache_notify_io._entry, ptr @writecache_notify_io._entry_ptr, ptr @writecache_resume._entry, ptr @writecache_resume._entry.81, ptr @writecache_resume._entry.84, ptr @writecache_resume._entry_ptr, ptr @writecache_resume._entry_ptr.83, ptr @writecache_resume._entry_ptr.86, ptr @dm_kcopyd_throttle, ptr @writecache_target, ptr @.str, ptr @writecache_ctr._args, ptr @.str.1, ptr @.str.2, ptr @writecache_ctr.__key, ptr @.str.3, ptr @writecache_ctr.__key.4, ptr @.str.5, ptr @writecache_ctr.__key.6, ptr @.str.7, ptr @writecache_ctr.__key.8, ptr @.str.9, ptr @writecache_ctr.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @writecache_ctr.__key.15, ptr @.str.16, ptr @writecache_ctr.__key.17, ptr @.str.18, ptr @writecache_ctr.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @init_completion.__key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @dm_iot_init.__key, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_kcopyd_throttle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_ctr.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_disk_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_notify_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssd_commit_superblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_iot_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_resume._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_resume._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writecache_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_writecache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_writecache_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dm_unregister_target(ptr noundef nonnull @writecache_target) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_writecache_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @writecache_target) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %call) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %as = alloca %struct.dm_arg_set, align 4
  %opt_params = alloca i32, align 4
  %dummy = alloca i8, align 1
  %high_wm_percent = alloca i32, align 4
  %low_wm_percent = alloca i32, align 4
  %start_sector = alloca i64, align 8
  %autocommit_msecs = alloca i32, align 4
  %max_age_msecs = alloca i32, align 4
  %pause_msecs = alloca i32, align 4
  %n_blocks = alloca i32, align 4
  %n_metadata_blocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #15
  %0 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt_params) #15
  %1 = ptrtoint ptr %opt_params to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %opt_params, align 4, !annotation !253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #15
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dummy, align 1, !annotation !253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %high_wm_percent) #15
  %3 = ptrtoint ptr %high_wm_percent to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50, ptr %high_wm_percent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_wm_percent) #15
  %4 = ptrtoint ptr %low_wm_percent to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 45, ptr %low_wm_percent, align 4
  %5 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %argc, ptr %as, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %argv, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1568) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.2, ptr %error, align 8
  br label %bad

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private, align 4
  %ti3 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 20
  %10 = ptrtoint ptr %ti3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ti, ptr %ti3, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @writecache_ctr.__key) #15
  %max_age = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %max_age to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %max_age, align 8
  %tree.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tree.i, align 4
  %lru.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i, align 4
  %prev.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  %15 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev3.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev3.i, align 8
  %freelist_wait = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %freelist_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @writecache_ctr.__key.4) #15
  %autocommit_timer = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %autocommit_timer, ptr noundef nonnull @writecache_autocommit_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @writecache_ctr.__key.6) #15
  %max_age_timer = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %max_age_timer, ptr noundef nonnull @writecache_max_age_timer, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @writecache_ctr.__key.8) #15
  %arrayidx = getelementptr %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 18, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %arrayidx, align 8
  %arrayidx14 = getelementptr %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 19, i32 0
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx14, ptr noundef nonnull @.str.11, ptr noundef nonnull @writecache_ctr.__key.10) #15
  %arrayidx.1 = getelementptr %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 18, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1, i32 noundef 4) #15
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %arrayidx.1, align 4
  %arrayidx14.1 = getelementptr %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 19, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx14.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @writecache_ctr.__key.10) #15
  %call17 = tail call ptr @dm_io_client_create() #15
  %dm_io = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 45
  %20 = ptrtoint ptr %dm_io to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %dm_io, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %call17 to i32
  %error23 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %22 = ptrtoint ptr %error23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.12, ptr %error23, align 8
  %23 = ptrtoint ptr %dm_io to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dm_io, align 8
  br label %bad

if.end25:                                         ; preds = %if.end
  %call26 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 8, i32 noundef 1) #15
  %writeback_wq = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 41
  %24 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call26, ptr %writeback_wq, align 8
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.then29, label %do.body32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %error30 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %25 = ptrtoint ptr %error30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.14, ptr %error30, align 8
  br label %bad

do.body32:                                        ; preds = %if.end25
  %writeback_work = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 42
  tail call void @__init_work(ptr noundef %writeback_work, i32 noundef 0) #15
  %26 = ptrtoint ptr %writeback_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %writeback_work, align 4
  %lockdep_map = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 42, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @writecache_ctr.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry36 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 42, i32 1
  %27 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry36, ptr %entry36, align 8
  %prev.i1443 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 42, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i1443 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry36, ptr %prev.i1443, align 4
  %func = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 42, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @writecache_writeback, ptr %func, align 8
  %flush_work = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 43
  tail call void @__init_work(ptr noundef %flush_work, i32 noundef 0) #15
  %30 = ptrtoint ptr %flush_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %flush_work, align 8
  %lockdep_map46 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 43, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map46, ptr noundef nonnull @.str.18, ptr noundef nonnull @writecache_ctr.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry48 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 43, i32 1
  %31 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i1444 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 43, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i1444 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry48, ptr %prev.i1444, align 8
  %func50 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 43, i32 2
  %33 = ptrtoint ptr %func50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @writecache_flush_work, ptr %func50, align 4
  %iot = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %iot, ptr noundef nonnull @.str.72, ptr noundef nonnull @dm_iot_init.__key, i16 noundef signext 3) #15
  %in_flight.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 44, i32 1
  %34 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %in_flight.i, align 8
  %idle_time.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 44, i32 2
  %35 = ptrtoint ptr %idle_time.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %idle_time.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %last_update_time.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %last_update_time.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %last_update_time.i, align 4
  %endio_list_lock = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 46
  tail call void @__raw_spin_lock_init(ptr noundef %endio_list_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @writecache_ctr.__key.19, i16 noundef signext 2) #15
  %endio_list = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 47
  %38 = ptrtoint ptr %endio_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %endio_list, ptr %endio_list, align 8
  %prev.i1445 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 47, i32 1
  %39 = ptrtoint ptr %prev.i1445 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %endio_list, ptr %prev.i1445, align 4
  %call56 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @writecache_endio_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.21) #15
  %cmp.i1446 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1446, label %if.then63, label %if.end68

if.then63:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  %endio_thread1482 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 48
  %40 = ptrtoint ptr %call56 to i32
  %41 = ptrtoint ptr %endio_thread1482 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %endio_thread1482, align 8
  %error67 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %42 = ptrtoint ptr %error67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.22, ptr %error67, align 8
  br label %bad

if.end68:                                         ; preds = %do.body32
  %call59 = tail call i32 @wake_up_process(ptr noundef %call56) #15
  %endio_thread = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 48
  %43 = ptrtoint ptr %endio_thread to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call56, ptr %endio_thread, align 8
  %call69 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end68.bad_arguments_crit_edge, label %if.end72

if.end68.bad_arguments_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_arguments

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @strcasecmp(ptr noundef nonnull %call69, ptr noundef nonnull @.str.23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end72
  %pmem_mode = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 34
  %44 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %44, i32 3)
  %bf.load = load i24, ptr %pmem_mode, align 1
  %bf.clear = and i24 %bf.load, 8388607
  store i24 %bf.clear, ptr %pmem_mode, align 1
  %pause = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 300, ptr %pause, align 4
  %copy_pool = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 55
  %call.i = call i32 @mempool_init(ptr noundef %copy_pool, i32 noundef 1, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 24 to ptr)) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool83.not = icmp eq i32 %call.i, 0
  br i1 %tobool83.not, label %if.end86, label %if.then84

if.else:                                          ; preds = %if.end72
  %call76 = call i32 @strcasecmp(ptr noundef nonnull %call69, ptr noundef nonnull @.str.24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.else.bad_arguments_crit_edge

if.else.bad_arguments_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_arguments

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %error79 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %46 = ptrtoint ptr %error79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.25, ptr %error79, align 8
  br label %bad

if.then84:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  %error85 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %47 = ptrtoint ptr %error85 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.26, ptr %error85, align 8
  br label %bad

if.end86:                                         ; preds = %if.then75
  %call87 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end86.bad_arguments_crit_edge, label %if.end90

if.end86.bad_arguments_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_arguments

if.end90:                                         ; preds = %if.end86
  %48 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ti, align 8
  %call91 = call i32 @dm_table_get_mode(ptr noundef %49) #15
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 21
  %call92 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef nonnull %call87, i32 noundef %call91, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %error95 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %50 = ptrtoint ptr %error95 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.27, ptr %error95, align 8
  br label %bad

if.end96:                                         ; preds = %if.end90
  %call97 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.end96.bad_arguments_crit_edge, label %if.end100

if.end96.bad_arguments_crit_edge:                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_arguments

if.end100:                                        ; preds = %if.end96
  %51 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ti, align 8
  %call102 = call i32 @dm_table_get_mode(ptr noundef %52) #15
  %ssd_dev = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 22
  %call103 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef nonnull %call97, i32 noundef %call102, ptr noundef %ssd_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end107, label %if.then105

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %error106 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %53 = ptrtoint ptr %error106 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.28, ptr %error106, align 8
  br label %bad

if.end107:                                        ; preds = %if.end100
  %54 = ptrtoint ptr %ssd_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ssd_dev, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %59, 9
  %memory_map_size = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 25
  %60 = ptrtoint ptr %memory_map_size to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %shl.i, ptr %memory_map_size, align 8
  %call110 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end107.bad_arguments_crit_edge, label %if.end113

if.end107.bad_arguments_crit_edge:                ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_arguments

if.end113:                                        ; preds = %if.end107
  %block_size = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 32
  %call114 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call110, ptr noundef nonnull @.str.29, ptr noundef %block_size, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 1
  br i1 %cmp115.not, label %lor.lhs.false, label %if.end113.if.then125_crit_edge

if.end113.if.then125_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125

lor.lhs.false:                                    ; preds = %if.end113
  %61 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %block_size, align 8
  %63 = add i32 %62, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3585, i32 %63)
  %64 = icmp ult i32 %63, 3585
  %65 = call i32 @llvm.ctpop.i32(i32 %62), !range !254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %tobool124.not = icmp ult i32 %65, 2
  %or.cond1424 = and i1 %64, %tobool124.not
  br i1 %or.cond1424, label %if.end127, label %lor.lhs.false.if.then125_crit_edge

lor.lhs.false.if.then125_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125

if.then125:                                       ; preds = %lor.lhs.false.if.then125_crit_edge, %if.end113.if.then125_crit_edge
  %error126 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %66 = ptrtoint ptr %error126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.30, ptr %error126, align 8
  br label %bad

if.end127:                                        ; preds = %lor.lhs.false
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %70, i32 0, i32 18
  %71 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.end127.lor.lhs.false133_crit_edge, label %bdev_logical_block_size.exit

if.end127.lor.lhs.false133_crit_edge:             ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false133

bdev_logical_block_size.exit:                     ; preds = %if.end127
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %72, i32 0, i32 37, i32 9
  %73 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool2.not.i.i = icmp eq i32 %74, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %74
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %spec.select.i.i)
  %cmp132 = icmp ult i32 %62, %spec.select.i.i
  br i1 %cmp132, label %bdev_logical_block_size.exit.if.then139_crit_edge, label %bdev_logical_block_size.exit.lor.lhs.false133_crit_edge

bdev_logical_block_size.exit.lor.lhs.false133_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false133

bdev_logical_block_size.exit.if.then139_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then139

lor.lhs.false133:                                 ; preds = %bdev_logical_block_size.exit.lor.lhs.false133_crit_edge, %if.end127.lor.lhs.false133_crit_edge
  %75 = ptrtoint ptr %ssd_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ssd_dev, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %bd_queue.i.i1448 = getelementptr inbounds %struct.block_device, ptr %78, i32 0, i32 18
  %79 = ptrtoint ptr %bd_queue.i.i1448 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bd_queue.i.i1448, align 4
  %tobool.not.i.i1449 = icmp eq ptr %80, null
  br i1 %tobool.not.i.i1449, label %lor.lhs.false133.if.end141_crit_edge, label %bdev_logical_block_size.exit1455

lor.lhs.false133.if.end141_crit_edge:             ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141

bdev_logical_block_size.exit1455:                 ; preds = %lor.lhs.false133
  %logical_block_size.i.i1450 = getelementptr inbounds %struct.request_queue, ptr %80, i32 0, i32 37, i32 9
  %81 = ptrtoint ptr %logical_block_size.i.i1450 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %logical_block_size.i.i1450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool2.not.i.i1451 = icmp eq i32 %82, 0
  %spec.select.i.i1452 = select i1 %tobool2.not.i.i1451, i32 512, i32 %82
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %spec.select.i.i1452)
  %cmp138 = icmp ult i32 %62, %spec.select.i.i1452
  br i1 %cmp138, label %bdev_logical_block_size.exit1455.if.then139_crit_edge, label %bdev_logical_block_size.exit1455.if.end141_crit_edge

bdev_logical_block_size.exit1455.if.end141_crit_edge: ; preds = %bdev_logical_block_size.exit1455
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141

bdev_logical_block_size.exit1455.if.then139_crit_edge: ; preds = %bdev_logical_block_size.exit1455
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then139

if.then139:                                       ; preds = %bdev_logical_block_size.exit1455.if.then139_crit_edge, %bdev_logical_block_size.exit.if.then139_crit_edge
  %error140 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %83 = ptrtoint ptr %error140 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.31, ptr %error140, align 8
  br label %bad

if.end141:                                        ; preds = %bdev_logical_block_size.exit1455.if.end141_crit_edge, %lor.lhs.false133.if.end141_crit_edge
  %84 = call i32 @llvm.cttz.i32(i32 %62, i1 false) #15, !range !254
  %conv = trunc i32 %84 to i8
  %block_size_bits = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 33
  %85 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv, ptr %block_size_bits, align 4
  %max_writeback_jobs = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 12
  %86 = ptrtoint ptr %max_writeback_jobs to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %max_writeback_jobs, align 8
  %autocommit_blocks = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 11
  %87 = ptrtoint ptr %autocommit_blocks to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 65536, ptr %autocommit_blocks, align 4
  %autocommit_jiffies = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 14
  %88 = ptrtoint ptr %autocommit_jiffies to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 100, ptr %autocommit_jiffies, align 8
  %error145 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call146 = call i32 @dm_read_arg_group(ptr noundef nonnull @writecache_ctr._args, ptr noundef nonnull %as, ptr noundef nonnull %opt_params, ptr noundef %error145) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %while.cond.preheader, label %if.end141.bad_crit_edge

if.end141.bad_crit_edge:                          ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad

while.cond.preheader:                             ; preds = %if.end141
  %89 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %opt_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool150.not1510 = icmp eq i32 %90, 0
  br i1 %tobool150.not1510, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %start_sector164 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 23
  %low_wm_percent_value = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 36
  %high_wm_percent_value = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 35
  %max_age_value = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 38
  %autocommit_time_value = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 37
  %pause_value = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 39
  br label %while.body

while.body:                                       ; preds = %if.end378.while.body_crit_edge, %while.body.lr.ph
  %call151 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %91 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %opt_params, align 4
  %dec = add i32 %92, -1
  store i32 %dec, ptr %opt_params, align 4
  %call152 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp ne i32 %call152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp154.not = icmp eq i32 %dec, 0
  %or.cond1425 = select i1 %tobool153.not, i1 true, i1 %cmp154.not
  br i1 %or.cond1425, label %if.else178, label %if.then156

if.then156:                                       ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_sector) #15
  %93 = ptrtoint ptr %start_sector to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 -1, ptr %start_sector, align 8, !annotation !253
  %call157 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %94 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %opt_params, align 4
  %dec158 = add i32 %95, -1
  store i32 %dec158, ptr %opt_params, align 4
  %call159 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call157, ptr noundef nonnull @.str.33, ptr noundef nonnull %start_sector, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call159)
  %cmp160.not = icmp eq i32 %call159, 1
  br i1 %cmp160.not, label %if.end163, label %if.then156.cleanup.thread_crit_edge

if.then156.cleanup.thread_crit_edge:              ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end163:                                        ; preds = %if.then156
  %96 = ptrtoint ptr %start_sector to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %start_sector, align 8
  %98 = ptrtoint ptr %start_sector164 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %start_sector164, align 8
  %99 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %99, i32 3)
  %bf.load165 = load i24, ptr %pmem_mode, align 1
  %bf.set167 = or i24 %bf.load165, 524288
  store i24 %bf.set167, ptr %pmem_mode, align 1
  %100 = ptrtoint ptr %memory_map_size to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %memory_map_size, align 8
  %shr = lshr i64 %101, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %97, i64 %shr)
  %cmp174.not = icmp ult i64 %97, %shr
  br i1 %cmp174.not, label %cleanup, label %if.end163.cleanup.thread_crit_edge

if.end163.cleanup.thread_crit_edge:               ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end163.cleanup.thread_crit_edge, %if.then156.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_sector) #15
  br label %invalid_optional

cleanup:                                          ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_sector) #15
  br label %if.end378

if.else178:                                       ; preds = %while.body
  %call179 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %land.lhs.true181, label %if.else202

land.lhs.true181:                                 ; preds = %if.else178
  br i1 %cmp154.not, label %land.lhs.true181.if.else262_crit_edge, label %if.then184

land.lhs.true181.if.else262_crit_edge:            ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else262

if.then184:                                       ; preds = %land.lhs.true181
  %call185 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %102 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %opt_params, align 4
  %dec186 = add i32 %103, -1
  store i32 %dec186, ptr %opt_params, align 4
  %call187 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call185, ptr noundef nonnull @.str.35, ptr noundef nonnull %high_wm_percent, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call187)
  %cmp188.not = icmp eq i32 %call187, 1
  br i1 %cmp188.not, label %if.end191, label %if.then184.invalid_optional_crit_edge

if.then184.invalid_optional_crit_edge:            ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.end191:                                        ; preds = %if.then184
  %104 = ptrtoint ptr %high_wm_percent to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %high_wm_percent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %105)
  %106 = icmp ugt i32 %105, 100
  br i1 %106, label %if.end191.invalid_optional_crit_edge, label %if.end198

if.end191.invalid_optional_crit_edge:             ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.end198:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %high_wm_percent_value to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %105, ptr %high_wm_percent_value, align 8
  %108 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %108, i32 3)
  %bf.load199 = load i24, ptr %pmem_mode, align 1
  %bf.set201 = or i24 %bf.load199, 262144
  store i24 %bf.set201, ptr %pmem_mode, align 1
  br label %if.end378

if.else202:                                       ; preds = %if.else178
  %call203 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp ne i32 %call203, 0
  %brmerge = select i1 %tobool204.not, i1 true, i1 %cmp154.not
  br i1 %brmerge, label %if.else226, label %if.then208

if.then208:                                       ; preds = %if.else202
  %call209 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %109 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %opt_params, align 4
  %dec210 = add i32 %110, -1
  store i32 %dec210, ptr %opt_params, align 4
  %call211 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call209, ptr noundef nonnull @.str.35, ptr noundef nonnull %low_wm_percent, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call211)
  %cmp212.not = icmp eq i32 %call211, 1
  br i1 %cmp212.not, label %if.end215, label %if.then208.invalid_optional_crit_edge

if.then208.invalid_optional_crit_edge:            ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.end215:                                        ; preds = %if.then208
  %111 = ptrtoint ptr %low_wm_percent to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %low_wm_percent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %112)
  %113 = icmp ugt i32 %112, 100
  br i1 %113, label %if.end215.invalid_optional_crit_edge, label %if.end222

if.end215.invalid_optional_crit_edge:             ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.end222:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %low_wm_percent_value to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %112, ptr %low_wm_percent_value, align 4
  %115 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %115, i32 3)
  %bf.load223 = load i24, ptr %pmem_mode, align 1
  %bf.set225 = or i24 %bf.load223, 131072
  store i24 %bf.set225, ptr %pmem_mode, align 1
  br label %if.end378

if.else226:                                       ; preds = %if.else202
  %call227 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %land.lhs.true229, label %if.else244

land.lhs.true229:                                 ; preds = %if.else226
  br i1 %cmp154.not, label %land.lhs.true229.if.else262_crit_edge, label %if.then232

land.lhs.true229.if.else262_crit_edge:            ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else262

if.then232:                                       ; preds = %land.lhs.true229
  %call233 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %116 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %opt_params, align 4
  %dec234 = add i32 %117, -1
  store i32 %dec234, ptr %opt_params, align 4
  %call236 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call233, ptr noundef nonnull @.str.29, ptr noundef %max_writeback_jobs, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call236)
  %cmp237.not = icmp eq i32 %call236, 1
  br i1 %cmp237.not, label %if.end240, label %if.then232.invalid_optional_crit_edge

if.then232.invalid_optional_crit_edge:            ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.end240:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #17
  %118 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %118, i32 3)
  %bf.load241 = load i24, ptr %pmem_mode, align 1
  %bf.set243 = or i24 %bf.load241, 65536
  store i24 %bf.set243, ptr %pmem_mode, align 1
  br label %if.end378

if.else244:                                       ; preds = %if.else226
  %call245 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp ne i32 %call245, 0
  %brmerge1505 = select i1 %tobool246.not, i1 true, i1 %cmp154.not
  br i1 %brmerge1505, label %if.else244.if.else262_crit_edge, label %if.then250

if.else244.if.else262_crit_edge:                  ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else262

if.then250:                                       ; preds = %if.else244
  %call251 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %119 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %opt_params, align 4
  %dec252 = add i32 %120, -1
  store i32 %dec252, ptr %opt_params, align 4
  %call254 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call251, ptr noundef nonnull @.str.29, ptr noundef %autocommit_blocks, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call254)
  %cmp255.not = icmp eq i32 %call254, 1
  br i1 %cmp255.not, label %if.end258, label %if.then250.invalid_optional_crit_edge

if.then250.invalid_optional_crit_edge:            ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.end258:                                        ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %121, i32 3)
  %bf.load259 = load i24, ptr %pmem_mode, align 1
  %bf.set261 = or i24 %bf.load259, 32768
  store i24 %bf.set261, ptr %pmem_mode, align 1
  br label %if.end378

if.else262:                                       ; preds = %if.else244.if.else262_crit_edge, %land.lhs.true229.if.else262_crit_edge, %land.lhs.true181.if.else262_crit_edge
  %call263 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %land.lhs.true265, label %if.else288

land.lhs.true265:                                 ; preds = %if.else262
  br i1 %cmp154.not, label %land.lhs.true265.if.else314_crit_edge, label %if.then268

land.lhs.true265.if.else314_crit_edge:            ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else314

if.then268:                                       ; preds = %land.lhs.true265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %autocommit_msecs) #15
  %122 = ptrtoint ptr %autocommit_msecs to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %autocommit_msecs, align 4, !annotation !253
  %call269 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %123 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %opt_params, align 4
  %dec270 = add i32 %124, -1
  store i32 %dec270, ptr %opt_params, align 4
  %call271 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call269, ptr noundef nonnull @.str.29, ptr noundef nonnull %autocommit_msecs, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call271)
  %cmp272.not = icmp eq i32 %call271, 1
  br i1 %cmp272.not, label %if.end275, label %if.then268.cleanup285.thread_crit_edge

if.then268.cleanup285.thread_crit_edge:           ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup285.thread

if.end275:                                        ; preds = %if.then268
  %125 = ptrtoint ptr %autocommit_msecs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %autocommit_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %126)
  %cmp276 = icmp ugt i32 %126, 3600000
  br i1 %cmp276, label %if.end275.cleanup285.thread_crit_edge, label %if.else.i

if.end275.cleanup285.thread_crit_edge:            ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup285.thread

if.else.i:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %126) #15
  %127 = ptrtoint ptr %autocommit_jiffies to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call2.i, ptr %autocommit_jiffies, align 8
  %128 = ptrtoint ptr %autocommit_msecs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %autocommit_msecs, align 4
  %130 = ptrtoint ptr %autocommit_time_value to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %autocommit_time_value, align 8
  %131 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %131, i32 3)
  %bf.load282 = load i24, ptr %pmem_mode, align 1
  %bf.set284 = or i24 %bf.load282, 16384
  store i24 %bf.set284, ptr %pmem_mode, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autocommit_msecs) #15
  br label %if.end378

cleanup285.thread:                                ; preds = %if.end275.cleanup285.thread_crit_edge, %if.then268.cleanup285.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autocommit_msecs) #15
  br label %invalid_optional

if.else288:                                       ; preds = %if.else262
  %call289 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp ne i32 %call289, 0
  %brmerge1506 = select i1 %tobool290.not, i1 true, i1 %cmp154.not
  br i1 %brmerge1506, label %if.else288.if.else314_crit_edge, label %if.then294

if.else288.if.else314_crit_edge:                  ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else314

if.then294:                                       ; preds = %if.else288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_age_msecs) #15
  %132 = ptrtoint ptr %max_age_msecs to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %max_age_msecs, align 4, !annotation !253
  %call295 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %133 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %opt_params, align 4
  %dec296 = add i32 %134, -1
  store i32 %dec296, ptr %opt_params, align 4
  %call297 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call295, ptr noundef nonnull @.str.29, ptr noundef nonnull %max_age_msecs, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call297)
  %cmp298.not = icmp eq i32 %call297, 1
  br i1 %cmp298.not, label %if.end301, label %if.then294.cleanup311.thread_crit_edge

if.then294.cleanup311.thread_crit_edge:           ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup311.thread

if.end301:                                        ; preds = %if.then294
  %135 = ptrtoint ptr %max_age_msecs to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_age_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400000, i32 %136)
  %cmp302 = icmp ugt i32 %136, 86400000
  br i1 %cmp302, label %if.end301.cleanup311.thread_crit_edge, label %if.else.i1433

if.end301.cleanup311.thread_crit_edge:            ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup311.thread

if.else.i1433:                                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i1432 = call i32 @__msecs_to_jiffies(i32 noundef %136) #15
  %137 = ptrtoint ptr %max_age to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call2.i1432, ptr %max_age, align 8
  %138 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %138, i32 3)
  %bf.load308 = load i24, ptr %pmem_mode, align 1
  %bf.set310 = or i24 %bf.load308, 8192
  store i24 %bf.set310, ptr %pmem_mode, align 1
  %139 = ptrtoint ptr %max_age_msecs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %max_age_msecs, align 4
  %141 = ptrtoint ptr %max_age_value to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %max_age_value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_age_msecs) #15
  br label %if.end378

cleanup311.thread:                                ; preds = %if.end301.cleanup311.thread_crit_edge, %if.then294.cleanup311.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_age_msecs) #15
  br label %invalid_optional

if.else314:                                       ; preds = %if.else288.if.else314_crit_edge, %land.lhs.true265.if.else314_crit_edge
  %call315 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.then317, label %if.else324

if.then317:                                       ; preds = %if.else314
  call void @__sanitizer_cov_trace_pc() #17
  %142 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %142, i32 3)
  %bf.load318 = load i24, ptr %pmem_mode, align 1
  %bf.set323 = or i24 %bf.load318, 1536
  store i24 %bf.set323, ptr %pmem_mode, align 1
  br label %if.end378

if.else324:                                       ; preds = %if.else314
  %call325 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.else324.invalid_optional_crit_edge, label %if.else328

if.else324.invalid_optional_crit_edge:            ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.else328:                                       ; preds = %if.else324
  %call329 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.else328.invalid_optional_crit_edge, label %if.else332

if.else328.invalid_optional_crit_edge:            ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.else332:                                       ; preds = %if.else328
  %call333 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.then335, label %if.else339

if.then335:                                       ; preds = %if.else332
  call void @__sanitizer_cov_trace_pc() #17
  %143 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %143, i32 3)
  %bf.load336 = load i24, ptr %pmem_mode, align 1
  %bf.set338 = or i24 %bf.load336, 256
  store i24 %bf.set338, ptr %pmem_mode, align 1
  br label %if.end378

if.else339:                                       ; preds = %if.else332
  %call340 = call i32 @strcasecmp(ptr noundef %call151, ptr noundef nonnull @.str.45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp ne i32 %call340, 0
  %brmerge1507 = select i1 %tobool341.not, i1 true, i1 %cmp154.not
  br i1 %brmerge1507, label %if.else339.invalid_optional_crit_edge, label %if.then345

if.else339.invalid_optional_crit_edge:            ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #17
  br label %invalid_optional

if.then345:                                       ; preds = %if.else339
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_msecs) #15
  %144 = ptrtoint ptr %pause_msecs to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %pause_msecs, align 4, !annotation !253
  %call346 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #15
  %145 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %opt_params, align 4
  %dec347 = add i32 %146, -1
  store i32 %dec347, ptr %opt_params, align 4
  %call348 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call346, ptr noundef nonnull @.str.29, ptr noundef nonnull %pause_msecs, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call348)
  %cmp349.not = icmp eq i32 %call348, 1
  br i1 %cmp349.not, label %if.end352, label %if.then345.cleanup362.thread_crit_edge

if.then345.cleanup362.thread_crit_edge:           ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup362.thread

if.end352:                                        ; preds = %if.then345
  %147 = ptrtoint ptr %pause_msecs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pause_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %148)
  %cmp353 = icmp ugt i32 %148, 60000
  br i1 %cmp353, label %if.end352.cleanup362.thread_crit_edge, label %if.else.i1440

if.end352.cleanup362.thread_crit_edge:            ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup362.thread

if.else.i1440:                                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i1439 = call i32 @__msecs_to_jiffies(i32 noundef %148) #15
  %149 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call2.i1439, ptr %pause, align 4
  %150 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %150, i32 3)
  %bf.load359 = load i24, ptr %pmem_mode, align 1
  %bf.set361 = or i24 %bf.load359, 128
  store i24 %bf.set361, ptr %pmem_mode, align 1
  %151 = ptrtoint ptr %pause_msecs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pause_msecs, align 4
  %153 = ptrtoint ptr %pause_value to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %pause_value, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_msecs) #15
  br label %if.end378

cleanup362.thread:                                ; preds = %if.end352.cleanup362.thread_crit_edge, %if.then345.cleanup362.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_msecs) #15
  br label %invalid_optional

invalid_optional:                                 ; preds = %cleanup362.thread, %if.else339.invalid_optional_crit_edge, %if.else328.invalid_optional_crit_edge, %if.else324.invalid_optional_crit_edge, %cleanup311.thread, %cleanup285.thread, %if.then250.invalid_optional_crit_edge, %if.then232.invalid_optional_crit_edge, %if.end215.invalid_optional_crit_edge, %if.then208.invalid_optional_crit_edge, %if.end191.invalid_optional_crit_edge, %if.then184.invalid_optional_crit_edge, %cleanup.thread
  %154 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.46, ptr %error145, align 8
  br label %bad

if.end378:                                        ; preds = %if.else.i1440, %if.then335, %if.then317, %if.else.i1433, %if.else.i, %if.end258, %if.end240, %if.end222, %if.end198, %cleanup
  %155 = ptrtoint ptr %opt_params to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %opt_params, align 4
  %tobool150.not = icmp eq i32 %156, 0
  br i1 %tobool150.not, label %if.end378.while.end_crit_edge, label %if.end378.while.body_crit_edge

if.end378.while.body_crit_edge:                   ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end378.while.end_crit_edge:                    ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end378.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %157 = ptrtoint ptr %high_wm_percent to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %high_wm_percent, align 4
  %159 = ptrtoint ptr %low_wm_percent to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %low_wm_percent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %160)
  %cmp379 = icmp slt i32 %158, %160
  br i1 %cmp379, label %if.then381, label %if.end383

if.then381:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %161 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.47, ptr %error145, align 8
  br label %bad

if.end383:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_blocks) #15
  %162 = ptrtoint ptr %n_blocks to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %n_blocks, align 4, !annotation !253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_metadata_blocks) #15
  %163 = ptrtoint ptr %n_metadata_blocks to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %n_metadata_blocks, align 4, !annotation !253
  %start_sector384 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 23
  %164 = ptrtoint ptr %start_sector384 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %start_sector384, align 8
  %shl.neg = mul i64 %165, -512
  %166 = ptrtoint ptr %memory_map_size to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %memory_map_size, align 8
  %sub386 = add i64 %shl.neg, %167
  store i64 %sub386, ptr %memory_map_size, align 8
  %flush_list = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 50
  %tail.i = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 50, i32 1
  %168 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %tail.i, align 4
  %169 = ptrtoint ptr %flush_list to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %flush_list, align 8
  %call388 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @writecache_flush_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.48) #15
  %cmp.i1456 = icmp ugt ptr %call388, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1456, label %if.then396, label %if.end401

if.then396:                                       ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #17
  %flush_thread1494 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 49
  %170 = ptrtoint ptr %call388 to i32
  %171 = ptrtoint ptr %flush_thread1494 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %flush_thread1494, align 4
  %172 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @.str.49, ptr %error145, align 8
  br label %cleanup460.thread

if.end401:                                        ; preds = %if.end383
  %call391 = call i32 @wake_up_process(ptr noundef %call388) #15
  %flush_thread = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 49
  %173 = ptrtoint ptr %flush_thread to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call388, ptr %flush_thread, align 4
  %174 = ptrtoint ptr %memory_map_size to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %memory_map_size, align 8
  %176 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %block_size, align 8
  %call404 = call fastcc i32 @calculate_memory_size(i64 noundef %175, i32 noundef %177, ptr noundef nonnull %n_blocks, ptr noundef nonnull %n_metadata_blocks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %if.end408, label %if.then406

if.then406:                                       ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #17
  %178 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.50, ptr %error145, align 8
  br label %cleanup460.thread

if.end408:                                        ; preds = %if.end401
  %179 = ptrtoint ptr %n_metadata_blocks to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %n_metadata_blocks, align 4
  %conv409 = zext i32 %180 to i64
  %181 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %block_size_bits, align 4
  %sh_prom = zext i8 %182 to i64
  %shl412 = shl i64 %conv409, %sh_prom
  %sub413 = add i64 %shl412, 65535
  %div1412 = lshr i64 %sub413, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488420863, i64 %sub413)
  %cmp414 = icmp ugt i64 %sub413, 140737488420863
  br i1 %cmp414, label %if.then416, label %if.end418

if.then416:                                       ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #17
  %183 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @.str.50, ptr %error145, align 8
  br label %cleanup460.thread

if.end418:                                        ; preds = %if.end408
  %conv411 = zext i8 %182 to i32
  %shl421 = shl i32 %180, %conv411
  %call422 = call noalias ptr @vmalloc(i32 noundef %shl421) #20
  %memory_map = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 24
  %184 = ptrtoint ptr %memory_map to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call422, ptr %memory_map, align 8
  %tobool424.not = icmp eq ptr %call422, null
  br i1 %tobool424.not, label %if.then425, label %if.end427

if.then425:                                       ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #17
  %185 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.51, ptr %error145, align 8
  br label %cleanup460.thread

if.end427:                                        ; preds = %if.end418
  %call428 = call ptr @dm_kcopyd_client_create(ptr noundef nonnull @dm_kcopyd_throttle) #15
  %dm_kcopyd = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 51
  %186 = ptrtoint ptr %dm_kcopyd to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call428, ptr %dm_kcopyd, align 8
  %cmp.i1458 = icmp ugt ptr %call428, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1458, label %if.then431, label %if.end436

if.then431:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %call428 to i32
  %188 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @.str.52, ptr %error145, align 8
  %189 = ptrtoint ptr %dm_kcopyd to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %dm_kcopyd, align 8
  br label %cleanup460.thread

if.end436:                                        ; preds = %if.end427
  %190 = ptrtoint ptr %n_metadata_blocks to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %n_metadata_blocks, align 4
  %192 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %block_size_bits, align 4
  %conv438 = zext i8 %193 to i32
  %sub439 = add nsw i32 %conv438, -9
  %shl440 = shl i32 %191, %sub439
  %metadata_sectors = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 26
  %194 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %shl440, ptr %metadata_sectors, align 8
  %sub442 = add nuw nsw i64 %div1412, 31
  %195 = lshr i64 %sub442, 3
  %196 = trunc i64 %195 to i32
  %conv444 = and i32 %196, -4
  %dirty_bitmap_size = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 53
  %197 = ptrtoint ptr %dirty_bitmap_size to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %conv444, ptr %dirty_bitmap_size, align 8
  %call446 = call noalias ptr @vzalloc(i32 noundef %conv444) #20
  %dirty_bitmap = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 52
  %198 = ptrtoint ptr %dirty_bitmap to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call446, ptr %dirty_bitmap, align 4
  %tobool448.not = icmp eq ptr %call446, null
  br i1 %tobool448.not, label %if.then449, label %if.end451

if.then449:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #17
  %199 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @.str.53, ptr %error145, align 8
  br label %cleanup460.thread

if.end451:                                        ; preds = %if.end436
  %200 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %block_size, align 8
  %shr453 = lshr i32 %201, 9
  %conv454 = zext i32 %shr453 to i64
  %call455 = call fastcc i32 @writecache_read_metadata(ptr noundef nonnull %call7.i.i, i64 noundef %conv454)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call455)
  %tobool456.not = icmp eq i32 %call455, 0
  br i1 %tobool456.not, label %cleanup.cont464, label %if.then457

if.then457:                                       ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #17
  %202 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.54, ptr %error145, align 8
  br label %cleanup460.thread

cleanup460.thread:                                ; preds = %if.then457, %if.then449, %if.then431, %if.then425, %if.then416, %if.then406, %if.then396
  %r.0.ph = phi i32 [ -12, %if.then425 ], [ -12, %if.then449 ], [ %call455, %if.then457 ], [ %187, %if.then431 ], [ -27, %if.then416 ], [ %call404, %if.then406 ], [ %170, %if.then396 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_metadata_blocks) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_blocks) #15
  br label %bad

cleanup.cont464:                                  ; preds = %if.end451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_metadata_blocks) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_blocks) #15
  %203 = ptrtoint ptr %memory_map to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %memory_map, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %s.sroa.0.0.copyload = load i32, ptr %204, align 1
  %s.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %204, i32 4
  %206 = ptrtoint ptr %s.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %s.sroa.7.0.copyload = load i32, ptr %s.sroa.7.0..sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.0.0.copyload)
  %tobool471.not = icmp eq i32 %s.sroa.0.0.copyload, 0
  br i1 %tobool471.not, label %land.lhs.true472, label %cleanup.cont464.if.end486_crit_edge

cleanup.cont464.if.end486_crit_edge:              ; preds = %cleanup.cont464
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end486

land.lhs.true472:                                 ; preds = %cleanup.cont464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.7.0.copyload)
  %tobool473.not = icmp eq i32 %s.sroa.7.0.copyload, 0
  br i1 %tobool473.not, label %if.then474, label %land.lhs.true472.if.then490_crit_edge

land.lhs.true472.if.then490_crit_edge:            ; preds = %land.lhs.true472
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then490

if.then474:                                       ; preds = %land.lhs.true472
  %call475 = call fastcc i32 @init_memory(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call475)
  %tobool476.not = icmp eq i32 %call475, 0
  br i1 %tobool476.not, label %if.end479, label %if.then477

if.then477:                                       ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #17
  %207 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.56, ptr %error145, align 8
  br label %bad

if.end479:                                        ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #17
  %208 = ptrtoint ptr %memory_map to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %memory_map, align 8
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %s.sroa.0.0.copyload1468 = load i32, ptr %209, align 1
  %s.sroa.7.0..sroa_idx1469 = getelementptr inbounds i8, ptr %209, i32 4
  %211 = ptrtoint ptr %s.sroa.7.0..sroa_idx1469 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %s.sroa.7.0.copyload1470 = load i32, ptr %s.sroa.7.0..sroa_idx1469, align 1
  br label %if.end486

if.end486:                                        ; preds = %if.end479, %cleanup.cont464.if.end486_crit_edge
  %s.sroa.0.0 = phi i32 [ %s.sroa.0.0.copyload1468, %if.end479 ], [ %s.sroa.0.0.copyload, %cleanup.cont464.if.end486_crit_edge ]
  %s.sroa.7.0 = phi i32 [ %s.sroa.7.0.copyload1470, %if.end479 ], [ %s.sroa.7.0.copyload, %cleanup.cont464.if.end486_crit_edge ]
  %.pn = phi ptr [ %209, %if.end479 ], [ %204, %cleanup.cont464.if.end486_crit_edge ]
  %s.sroa.101476.0.in = getelementptr inbounds i8, ptr %.pn, i32 16
  %212 = ptrtoint ptr %s.sroa.101476.0.in to i32
  call void @__asan_loadN_noabort(i32 %212, i32 8)
  %s.sroa.101476.0 = load i64, ptr %s.sroa.101476.0.in, align 1
  %s.sroa.9.0.in = getelementptr inbounds i8, ptr %.pn, i32 8
  %213 = ptrtoint ptr %s.sroa.9.0.in to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %s.sroa.9.0 = load i32, ptr %s.sroa.9.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 563300387, i32 %s.sroa.0.0)
  %cmp488.not = icmp eq i32 %s.sroa.0.0, 563300387
  br i1 %cmp488.not, label %if.end492, label %if.end486.if.then490_crit_edge

if.end486.if.then490_crit_edge:                   ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then490

if.then490:                                       ; preds = %if.end486.if.then490_crit_edge, %land.lhs.true472.if.then490_crit_edge
  %214 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.57, ptr %error145, align 8
  br label %bad

if.end492:                                        ; preds = %if.end486
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %s.sroa.7.0)
  %cmp494.not = icmp eq i32 %s.sroa.7.0, 16777216
  br i1 %cmp494.not, label %if.end498, label %if.then496

if.then496:                                       ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #17
  %215 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.58, ptr %error145, align 8
  br label %bad

if.end498:                                        ; preds = %if.end492
  %216 = call i32 @llvm.bswap.i32(i32 %s.sroa.9.0)
  %217 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %218)
  %cmp501.not = icmp eq i32 %216, %218
  br i1 %cmp501.not, label %if.end505, label %if.then503

if.then503:                                       ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #17
  %219 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.59, ptr %error145, align 8
  br label %bad

if.end505:                                        ; preds = %if.end498
  %220 = call i64 @llvm.bswap.i64(i64 %s.sroa.101476.0)
  %conv507 = trunc i64 %220 to i32
  %n_blocks508 = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 27
  %221 = ptrtoint ptr %n_blocks508 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %conv507, ptr %n_blocks508, align 4
  %conv512 = and i64 %220, 268435455
  %222 = ptrtoint ptr %memory_map to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %memory_map, align 8
  %n_blocks514 = getelementptr inbounds %struct.anon.79, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %n_blocks514 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %n_blocks514, align 8
  %226 = call i64 @llvm.bswap.i64(i64 %225)
  call void @__sanitizer_cov_trace_cmp8(i64 %conv512, i64 %226)
  %cmp515.not = icmp eq i64 %conv512, %226
  br i1 %cmp515.not, label %if.end519, label %if.end505.overflow_crit_edge

if.end505.overflow_crit_edge:                     ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #17
  br label %overflow

overflow:                                         ; preds = %lor.lhs.false541.overflow_crit_edge, %lor.lhs.false535.overflow_crit_edge, %if.end524.overflow_crit_edge, %if.end519.overflow_crit_edge, %if.end505.overflow_crit_edge
  %227 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @.str.60, ptr %error145, align 8
  br label %bad

if.end519:                                        ; preds = %if.end505
  %mul510 = shl i32 %conv507, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %mul510)
  %cmp521 = icmp ugt i32 %mul510, -65
  br i1 %cmp521, label %if.end519.overflow_crit_edge, label %if.end524

if.end519.overflow_crit_edge:                     ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #17
  br label %overflow

if.end524:                                        ; preds = %if.end519
  %add526 = add nuw i32 %mul510, 63
  %sub527 = add i32 %add526, %216
  %neg = sub i32 0, %216
  %and530 = and i32 %sub527, %neg
  %mul1414 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %216, i32 %conv507)
  %mul.val = extractvalue { i32, i1 } %mul1414, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and530)
  %tobool534.not = icmp eq i32 %and530, 0
  br i1 %tobool534.not, label %if.end524.overflow_crit_edge, label %lor.lhs.false535

if.end524.overflow_crit_edge:                     ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #17
  br label %overflow

lor.lhs.false535:                                 ; preds = %if.end524
  %mul.ov = extractvalue { i32, i1 } %mul1414, 1
  br i1 %mul.ov, label %lor.lhs.false535.overflow_crit_edge, label %lor.lhs.false541

lor.lhs.false535.overflow_crit_edge:              ; preds = %lor.lhs.false535
  call void @__sanitizer_cov_trace_pc() #17
  br label %overflow

lor.lhs.false541:                                 ; preds = %lor.lhs.false535
  %add542 = add i32 %and530, %mul.val
  call void @__sanitizer_cov_trace_cmp4(i32 %add542, i32 %and530)
  %cmp543 = icmp ult i32 %add542, %and530
  br i1 %cmp543, label %lor.lhs.false541.overflow_crit_edge, label %if.end546

lor.lhs.false541.overflow_crit_edge:              ; preds = %lor.lhs.false541
  call void @__sanitizer_cov_trace_pc() #17
  br label %overflow

if.end546:                                        ; preds = %lor.lhs.false541
  %conv548 = zext i32 %add542 to i64
  %228 = ptrtoint ptr %memory_map_size to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %memory_map_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %229, i64 %conv548)
  %cmp550 = icmp ult i64 %229, %conv548
  br i1 %cmp550, label %if.then552, label %if.end988

if.then552:                                       ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #17
  %230 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @.str.61, ptr %error145, align 8
  br label %bad

if.end988:                                        ; preds = %if.end546
  %shr555 = lshr i32 %and530, 9
  %231 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %shr555, ptr %metadata_sectors, align 8
  %add.ptr = getelementptr i8, ptr %223, i32 %and530
  %block_start = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 30
  %232 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %add.ptr, ptr %block_start, align 8
  %conv559 = and i64 %220, 4294967295
  %233 = ptrtoint ptr %high_wm_percent to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %high_wm_percent, align 4
  %sub560 = sub i32 100, %234
  %conv561 = sext i32 %sub560 to i64
  %mul562 = mul nsw i64 %conv559, %conv561
  %add563 = add nsw i64 %mul562, 50
  %235 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add563, i32 0) #21, !srcloc !255
  %asmresult.i = extractvalue { i64, i32 } %235, 0
  %asmresult4.i = extractvalue { i64, i32 } %235, 1
  %236 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add563, i64 %asmresult.i, i32 %asmresult4.i) #21, !srcloc !256
  %asmresult10.i = extractvalue { i64, i32 } %236, 0
  %extract1416 = lshr i64 %asmresult10.i, 6
  %extract.t1417 = trunc i64 %extract1416 to i32
  %freelist_high_watermark = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 6
  %237 = ptrtoint ptr %freelist_high_watermark to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %extract.t1417, ptr %freelist_high_watermark, align 8
  %238 = ptrtoint ptr %low_wm_percent to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %low_wm_percent, align 4
  %sub765 = sub i32 100, %239
  %conv766 = sext i32 %sub765 to i64
  %mul767 = mul nsw i64 %conv559, %conv766
  %add768 = add nsw i64 %mul767, 50
  %240 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add768, i32 0) #21, !srcloc !255
  %asmresult.i1464 = extractvalue { i64, i32 } %240, 0
  %asmresult4.i1465 = extractvalue { i64, i32 } %240, 1
  %241 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add768, i64 %asmresult.i1464, i32 %asmresult4.i1465) #21, !srcloc !256
  %asmresult10.i1466 = extractvalue { i64, i32 } %241, 0
  %extract1421 = lshr i64 %asmresult10.i1466, 6
  %extract.t1422 = trunc i64 %extract1421 to i32
  %freelist_low_watermark = getelementptr inbounds %struct.dm_writecache, ptr %call7.i.i, i32 0, i32 7
  %242 = ptrtoint ptr %freelist_low_watermark to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %extract.t1422, ptr %freelist_low_watermark, align 4
  %243 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_loadN_noabort(i32 %243, i32 3)
  %bf.load992 = load i24, ptr %pmem_mode, align 1
  %244 = and i24 %bf.load992, 1024
  %bf.cast.not = icmp eq i24 %244, 0
  br i1 %bf.cast.not, label %if.end988.if.end995_crit_edge, label %if.then994

if.end988.if.end995_crit_edge:                    ; preds = %if.end988
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end995

if.then994:                                       ; preds = %if.end988
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set3.i = or i24 %bf.load992, 3072
  %245 = ptrtoint ptr %pmem_mode to i32
  call void @__asan_storeN_noabort(i32 %245, i32 3)
  store i24 %bf.set3.i, ptr %pmem_mode, align 1
  %246 = ptrtoint ptr %freelist_high_watermark to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv507, ptr %freelist_high_watermark, align 8
  %247 = ptrtoint ptr %freelist_low_watermark to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %conv507, ptr %freelist_low_watermark, align 4
  br label %if.end995

if.end995:                                        ; preds = %if.then994, %if.end988.if.end995_crit_edge
  %call996 = call fastcc i32 @writecache_alloc_entries(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call996)
  %tobool997.not = icmp eq i32 %call996, 0
  br i1 %tobool997.not, label %if.end1000, label %if.then998

if.then998:                                       ; preds = %if.end995
  call void @__sanitizer_cov_trace_pc() #17
  %248 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @.str.62, ptr %error145, align 8
  br label %bad

if.end1000:                                       ; preds = %if.end995
  call void @__sanitizer_cov_trace_pc() #17
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %249 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 2, ptr %num_flush_bios, align 4
  %flush_supported = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %250 = ptrtoint ptr %flush_supported to i32
  call void @__asan_load1_noabort(i32 %250)
  %bf.load1001 = load i8, ptr %flush_supported, align 4
  %bf.set1003 = or i8 %bf.load1001, -128
  store i8 %bf.set1003, ptr %flush_supported, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %251 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 1, ptr %num_discard_bios, align 8
  br label %cleanup1005

bad_arguments:                                    ; preds = %if.end107.bad_arguments_crit_edge, %if.end96.bad_arguments_crit_edge, %if.end86.bad_arguments_crit_edge, %if.else.bad_arguments_crit_edge, %if.end68.bad_arguments_crit_edge
  %error1004 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %252 = ptrtoint ptr %error1004 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @.str.63, ptr %error1004, align 8
  br label %bad

bad:                                              ; preds = %bad_arguments, %if.then998, %if.then552, %overflow, %if.then503, %if.then496, %if.then490, %if.then477, %cleanup460.thread, %if.then381, %invalid_optional, %if.end141.bad_crit_edge, %if.then139, %if.then125, %if.then105, %if.then94, %if.then84, %if.then78, %if.then63, %if.then29, %if.then20, %if.then
  %r.1 = phi i32 [ %21, %if.then20 ], [ %40, %if.then63 ], [ -22, %bad_arguments ], [ -95, %if.then78 ], [ %call.i, %if.then84 ], [ %call92, %if.then94 ], [ %call103, %if.then105 ], [ -22, %if.then125 ], [ -22, %if.then139 ], [ %call146, %if.end141.bad_crit_edge ], [ -22, %invalid_optional ], [ -22, %if.then381 ], [ -22, %if.then490 ], [ -22, %if.then496 ], [ -22, %if.then503 ], [ -22, %overflow ], [ -22, %if.then552 ], [ %call996, %if.then998 ], [ %call475, %if.then477 ], [ -12, %if.then29 ], [ -12, %if.then ], [ %r.0.ph, %cleanup460.thread ]
  call void @writecache_dtr(ptr noundef %ti)
  br label %cleanup1005

cleanup1005:                                      ; preds = %bad, %if.end1000
  %retval.0 = phi i32 [ %r.1, %bad ], [ 0, %if.end1000 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_wm_percent) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high_wm_percent) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt_params) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %endio_thread = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %endio_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endio_thread, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %3) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %flush_thread = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %flush_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_thread, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 @kthread_stop(ptr noundef nonnull %5) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %bio_set = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 54
  tail call void @bioset_exit(ptr noundef %bio_set) #15
  %copy_pool = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 55
  tail call void @mempool_exit(ptr noundef %copy_pool) #15
  %writeback_wq = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %6 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writeback_wq, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @destroy_workqueue(ptr noundef nonnull %7) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %9) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %ssd_dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %ssd_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ssd_dev, align 8
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %11) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %entries = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entries, align 4
  tail call void @vfree(ptr noundef %13) #15
  %memory_map = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %memory_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory_map, align 8
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef nonnull %15) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %dm_kcopyd = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 51
  %16 = ptrtoint ptr %dm_kcopyd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dm_kcopyd, align 8
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dm_kcopyd_client_destroy(ptr noundef nonnull %17) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %dm_io = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 45
  %18 = ptrtoint ptr %dm_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dm_io, align 8
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dm_io_client_destroy(ptr noundef nonnull %19) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %dirty_bitmap = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 52
  %20 = ptrtoint ptr %dirty_bitmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dirty_bitmap, align 4
  tail call void @vfree(ptr noundef %21) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %2 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bi_private, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %3 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bi_opf, align 8
  %5 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !257

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @writecache_map_flush(ptr noundef %1, ptr noundef %bio)
  br label %done

if.end:                                           ; preds = %entry
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %8 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %begin, align 8
  %sub = sub i64 %7, %9
  store i64 %sub, ptr %bi_iter, align 8
  %conv7 = trunc i64 %sub to i32
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %11, 9
  %or = or i32 %shr, %conv7
  %block_size = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_size, align 8
  %div119 = lshr i32 %13, 9
  %sub9 = add nsw i32 %div119, -1
  %and10 = and i32 %sub9, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !257

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i64 noundef %sub, i32 noundef %11, i32 noundef %13) #18
  br label %sw.bb75

if.end25:                                         ; preds = %if.end
  %and27 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 3
  br i1 %cmp28, label %if.then36, label %if.end38, !prof !258

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = tail call fastcc i32 @writecache_map_discard(ptr noundef %1, ptr noundef %bio)
  br label %done

if.end38:                                         ; preds = %if.end25
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end38
  %stats.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56
  %14 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %stats.i, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %stats.i, align 8
  %16 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bi_iter, align 8
  %tree.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tree.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then45.sw.bb_crit_edge, label %while.cond.preheader.i.i, !prof !258

if.then45.sw.bb_crit_edge:                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

while.cond.preheader.i.i:                         ; preds = %if.then45
  %memory_map.i.i.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end5.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %node.0.i.i = phi ptr [ %cond.i.i, %if.end5.i.i.while.cond.i.i_crit_edge ], [ %19, %while.cond.preheader.i.i ]
  %index.i.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %node.0.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %21, i32 0, i32 1, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %17)
  %cmp.i.i = icmp eq i64 %26, %17
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond43.i.i_crit_edge, label %if.end5.i.i

while.cond.i.i.while.cond43.i.i_crit_edge:        ; preds = %while.cond.i.i
  br label %while.cond43.i.i

if.end5.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %17)
  %cmp7.not.i.i = icmp ult i64 %26, %17
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i, i32 0, i32 1
  %cond.in.i.i = select i1 %cmp7.not.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %27 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool10.not.i.i, label %if.then19.i.i, label %if.end5.i.i.while.cond.i.i_crit_edge, !prof !258

if.end5.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i

if.then19.i.i:                                    ; preds = %if.end5.i.i
  br i1 %cmp7.not.i.i, label %writecache_find_entry.exit.i, label %if.then19.i.i.land.lhs.true.i_crit_edge

if.then19.i.i.land.lhs.true.i_crit_edge:          ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

while.cond43.i.i:                                 ; preds = %cleanup.i.i.while.cond43.i.i_crit_edge, %while.cond.i.i.while.cond43.i.i_crit_edge
  %e.0.i.i = phi ptr [ %call52.i.i, %cleanup.i.i.while.cond43.i.i_crit_edge ], [ %node.0.i.i, %while.cond.i.i.while.cond43.i.i_crit_edge ]
  %call52.i.i = tail call ptr @rb_next(ptr noundef nonnull %e.0.i.i) #15
  %tobool54.not.i.i = icmp eq ptr %call52.i.i, null
  br i1 %tobool54.not.i.i, label %while.cond43.i.i.land.lhs.true.i_crit_edge, label %cleanup.i.i, !prof !258

while.cond43.i.i.land.lhs.true.i_crit_edge:       ; preds = %while.cond43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

cleanup.i.i:                                      ; preds = %while.cond43.i.i
  %28 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  %index.i.i108.i.i = getelementptr inbounds %struct.wc_entry, ptr %call52.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %index.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i108.i.i, align 4
  %arrayidx.i.i109.i.i = getelementptr %struct.wc_memory_superblock, ptr %29, i32 0, i32 1, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i109.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.i109.i.i, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #15
  %cmp69.not.i.i = icmp eq i64 %34, %17
  br i1 %cmp69.not.i.i, label %cleanup.i.i.while.cond43.i.i_crit_edge, label %cleanup.i.i.land.lhs.true.i_crit_edge

cleanup.i.i.land.lhs.true.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

cleanup.i.i.while.cond43.i.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond43.i.i

writecache_find_entry.exit.i:                     ; preds = %if.then19.i.i
  %call27.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.0.i.i) #15
  %tobool.not.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool.not.i, label %writecache_find_entry.exit.i.sw.bb_crit_edge, label %writecache_find_entry.exit.i.land.lhs.true.i_crit_edge

writecache_find_entry.exit.i.land.lhs.true.i_crit_edge: ; preds = %writecache_find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

writecache_find_entry.exit.i.sw.bb_crit_edge:     ; preds = %writecache_find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

land.lhs.true.i:                                  ; preds = %writecache_find_entry.exit.i.land.lhs.true.i_crit_edge, %cleanup.i.i.land.lhs.true.i_crit_edge, %while.cond43.i.i.land.lhs.true.i_crit_edge, %if.then19.i.i.land.lhs.true.i_crit_edge
  %retval.2.i45.i = phi ptr [ %call27.i.i, %writecache_find_entry.exit.i.land.lhs.true.i_crit_edge ], [ %node.0.i.i, %if.then19.i.i.land.lhs.true.i_crit_edge ], [ %e.0.i.i, %while.cond43.i.i.land.lhs.true.i_crit_edge ], [ %e.0.i.i, %cleanup.i.i.land.lhs.true.i_crit_edge ]
  %35 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  %index.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %retval.2.i45.i, i32 0, i32 4
  %37 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %36, i32 0, i32 1, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i.i.i, align 8
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #15
  %42 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bi_iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp.i = icmp eq i64 %41, %43
  br i1 %cmp.i, label %if.then.i, label %if.then.i41.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %read_hits.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 1
  %44 = ptrtoint ptr %read_hits.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %read_hits.i, align 8
  %inc5.i = add i64 %45, 1
  store i64 %inc5.i, ptr %read_hits.i, align 8
  %46 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %block_size, align 8
  %shr.i = lshr i32 %47, 9
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef %shr.i) #15
  %ssd_dev.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 22
  %48 = ptrtoint ptr %ssd_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ssd_dev.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %52 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %53, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %54 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %55, %51
  br i1 %cmp.not.i.i, label %if.then.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.then.i.bio_set_dev.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i.i = and i16 %53, -2177
  %56 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.then.i.bio_set_dev.exit.i_crit_edge
  %57 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %51, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #15
  %start_sector.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 23
  %58 = ptrtoint ptr %start_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %start_sector.i.i, align 8
  %metadata_sectors.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 26
  %60 = ptrtoint ptr %metadata_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %metadata_sectors.i.i, align 8
  %conv.i.i = zext i32 %61 to i64
  %add.i.i = add i64 %59, %conv.i.i
  %62 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %index.i.i.i, align 4
  %conv1.i.i = zext i32 %63 to i64
  %block_size_bits.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 33
  %64 = ptrtoint ptr %block_size_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %block_size_bits.i.i, align 4
  %conv2.i.i = zext i8 %65 to i32
  %sub.i.i = add nsw i32 %conv2.i.i, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %conv1.i.i, %sh_prom.i.i
  %add3.i.i = add i64 %add.i.i, %shl.i.i
  %66 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add3.i.i, ptr %bi_iter, align 8
  %67 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  %69 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %68, i32 0, i32 1, i32 %69, i32 1
  %70 = ptrtoint ptr %seq_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %seq_count.i.i.i, align 8
  %72 = tail call i64 @llvm.bswap.i64(i64 %71) #15
  %seq_count.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 28
  %73 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %seq_count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %74)
  %cmp.i33.i = icmp ult i64 %72, %74
  br i1 %cmp.i33.i, label %bio_set_dev.exit.i.sw.bb66_crit_edge, label %if.then10.i

bio_set_dev.exit.i.sw.bb66_crit_edge:             ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb66

if.then10.i:                                      ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @writecache_wait_for_ios(ptr noundef %1, i32 noundef 1) #15
  br label %sw.bb66

if.then.i41.i:                                    ; preds = %land.lhs.true.i
  %sub.i38.i = sub i64 %41, %43
  %75 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bi_size, align 8
  %shr.i.i = lshr i32 %76, 9
  %conv.i39.i = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i38.i, i64 %conv.i39.i)
  %cmp.i40.i = icmp ult i64 %sub.i38.i, %conv.i39.i
  %extract.t = trunc i64 %sub.i38.i to i32
  br i1 %cmp.i40.i, label %if.then.i41.i.sw.bb.sink.split_crit_edge, label %if.then.i41.i.sw.bb_crit_edge

if.then.i41.i.sw.bb_crit_edge:                    ; preds = %if.then.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.then.i41.i.sw.bb.sink.split_crit_edge:         ; preds = %if.then.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.sink.split

if.else:                                          ; preds = %if.end38
  %writes.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 2
  %error.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 13
  %tree.i.i121 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 3
  %memory_map.i.i.i.i.i122 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 24
  %seq_count.i.i123 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 28
  %write_hits_committed.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 4
  %current_free.i234.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2, i32 0, i32 1
  %writes_blocked_on_freelist.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond63.i.do.body.i_crit_edge, %if.else
  %77 = ptrtoint ptr %writes.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %writes.i, align 8
  %inc.i124 = add i64 %78, 1
  store i64 %inc.i124, ptr %writes.i, align 8
  %79 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i125 = icmp eq i32 %80, 0
  br i1 %tobool.not.i125, label %if.end.i, label %do.body.i.sw.bb75_crit_edge, !prof !257

do.body.i.sw.bb75_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb75

if.end.i:                                         ; preds = %do.body.i
  %81 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %bi_iter, align 8
  %83 = ptrtoint ptr %tree.i.i121 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tree.i.i121, align 4
  %tobool.not.i.i126 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i126, label %if.end.i.if.else.i_crit_edge, label %while.cond.preheader.i.i127, !prof !258

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

while.cond.preheader.i.i127:                      ; preds = %if.end.i
  %85 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  br label %while.cond.i.i132

while.cond.i.i132:                                ; preds = %if.end5.i.i139.while.cond.i.i132_crit_edge, %while.cond.preheader.i.i127
  %node.0.i.i128 = phi ptr [ %cond.i.i137, %if.end5.i.i139.while.cond.i.i132_crit_edge ], [ %84, %while.cond.preheader.i.i127 ]
  %index.i.i.i.i129 = getelementptr inbounds %struct.wc_entry, ptr %node.0.i.i128, i32 0, i32 4
  %87 = ptrtoint ptr %index.i.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index.i.i.i.i129, align 4
  %arrayidx.i.i.i.i130 = getelementptr %struct.wc_memory_superblock, ptr %86, i32 0, i32 1, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i.i.i130 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx.i.i.i.i130, align 8
  %91 = tail call i64 @llvm.bswap.i64(i64 %90) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %82)
  %cmp.i.i131 = icmp eq i64 %91, %82
  br i1 %cmp.i.i131, label %while.cond.i.i132.while.cond43.i.i143_crit_edge, label %if.end5.i.i139

while.cond.i.i132.while.cond43.i.i143_crit_edge:  ; preds = %while.cond.i.i132
  br label %while.cond43.i.i143

if.end5.i.i139:                                   ; preds = %while.cond.i.i132
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %82)
  %cmp7.not.i.i133 = icmp ult i64 %91, %82
  %rb_left.i.i134 = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i128, i32 0, i32 2
  %rb_right.i.i135 = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i128, i32 0, i32 1
  %cond.in.i.i136 = select i1 %cmp7.not.i.i133, ptr %rb_right.i.i135, ptr %rb_left.i.i134
  %92 = ptrtoint ptr %cond.in.i.i136 to i32
  call void @__asan_load4_noabort(i32 %92)
  %cond.i.i137 = load ptr, ptr %cond.in.i.i136, align 4
  %tobool10.not.i.i138 = icmp eq ptr %cond.i.i137, null
  br i1 %tobool10.not.i.i138, label %if.end5.i.i139.if.else.i_crit_edge, label %if.end5.i.i139.while.cond.i.i132_crit_edge, !prof !258

if.end5.i.i139.while.cond.i.i132_crit_edge:       ; preds = %if.end5.i.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i132

if.end5.i.i139.if.else.i_crit_edge:               ; preds = %if.end5.i.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

while.cond43.i.i143:                              ; preds = %cleanup.i.i147.while.cond43.i.i143_crit_edge, %while.cond.i.i132.while.cond43.i.i143_crit_edge
  %e.0.i.i140 = phi ptr [ %call52.i.i141, %cleanup.i.i147.while.cond43.i.i143_crit_edge ], [ %node.0.i.i128, %while.cond.i.i132.while.cond43.i.i143_crit_edge ]
  %call52.i.i141 = tail call ptr @rb_next(ptr noundef nonnull %e.0.i.i140) #15
  %tobool54.not.i.i142 = icmp eq ptr %call52.i.i141, null
  br i1 %tobool54.not.i.i142, label %while.cond43.i.i143.if.then5.i_crit_edge, label %cleanup.i.i147, !prof !258

while.cond43.i.i143.if.then5.i_crit_edge:         ; preds = %while.cond43.i.i143
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5.i

cleanup.i.i147:                                   ; preds = %while.cond43.i.i143
  %93 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i108.i.i144 = getelementptr inbounds %struct.wc_entry, ptr %call52.i.i141, i32 0, i32 4
  %95 = ptrtoint ptr %index.i.i108.i.i144 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %index.i.i108.i.i144, align 4
  %arrayidx.i.i109.i.i145 = getelementptr %struct.wc_memory_superblock, ptr %94, i32 0, i32 1, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i109.i.i145 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx.i.i109.i.i145, align 8
  %99 = tail call i64 @llvm.bswap.i64(i64 %98) #15
  %cmp69.not.i.i146 = icmp eq i64 %99, %82
  br i1 %cmp69.not.i.i146, label %cleanup.i.i147.while.cond43.i.i143_crit_edge, label %cleanup.i.i147.if.then5.i_crit_edge

cleanup.i.i147.if.then5.i_crit_edge:              ; preds = %cleanup.i.i147
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5.i

cleanup.i.i147.while.cond43.i.i143_crit_edge:     ; preds = %cleanup.i.i147
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond43.i.i143

if.then5.i:                                       ; preds = %cleanup.i.i147.if.then5.i_crit_edge, %while.cond43.i.i143.if.then5.i_crit_edge
  %100 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i.i122.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i.i140, i32 0, i32 4
  %102 = ptrtoint ptr %index.i.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index.i.i.i122.i, align 4
  %seq_count.i.i.i148 = getelementptr %struct.wc_memory_superblock, ptr %101, i32 0, i32 1, i32 %103, i32 1
  %104 = ptrtoint ptr %seq_count.i.i.i148 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %seq_count.i.i.i148, align 8
  %106 = tail call i64 @llvm.bswap.i64(i64 %105) #15
  %107 = ptrtoint ptr %seq_count.i.i123 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %seq_count.i.i123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %106, i64 %108)
  %cmp.i123.i = icmp ult i64 %106, %108
  br i1 %cmp.i123.i, label %if.end10.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  %write_hits_uncommitted.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 3
  %109 = ptrtoint ptr %write_hits_uncommitted.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %write_hits_uncommitted.i, align 8
  %inc9.i = add i64 %110, 1
  store i64 %inc9.i, ptr %write_hits_uncommitted.i, align 8
  br label %bio_copy.i

if.end10.i:                                       ; preds = %if.then5.i
  %111 = ptrtoint ptr %write_hits_committed.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %write_hits_committed.i, align 8
  %inc12.i = add i64 %112, 1
  store i64 %inc12.i, ptr %write_hits_committed.i, align 8
  %write_in_progress.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i.i140, i32 0, i32 3
  %113 = ptrtoint ptr %write_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %write_in_progress.i, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool13.not.i = icmp eq i8 %114, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end31.thread.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %overwrote_committed.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  %115 = ptrtoint ptr %overwrote_committed.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 3)
  %bf.load.i = load i24, ptr %overwrote_committed.i, align 1
  %bf.set.i = or i24 %bf.load.i, 2097152
  store i24 %bf.set.i, ptr %overwrote_committed.i, align 1
  br label %bio_copy.i

if.else.i:                                        ; preds = %if.end5.i.i139.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %cleaner.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  %116 = ptrtoint ptr %cleaner.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 3)
  %bf.load16.i = load i24, ptr %cleaner.i, align 1
  %117 = and i24 %bf.load16.i, 1024
  %bf.cast.not.i = icmp eq i24 %117, 0
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %if.else.i.direct_write.i_crit_edge, !prof !257

if.else.i.direct_write.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %direct_write.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %118 = and i24 %bf.load16.i, 256
  %bf.cast27.not.i = icmp eq i24 %118, 0
  br i1 %bf.cast27.not.i, label %lor.lhs.false.i.if.end31.i_crit_edge, label %land.lhs.true.i149

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

land.lhs.true.i149:                               ; preds = %lor.lhs.false.i
  %119 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bi_opf, align 8
  %121 = and i32 %120, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool28.not.i = icmp eq i32 %121, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i149.direct_write.i_crit_edge, label %land.lhs.true.i149.if.end31.i_crit_edge

land.lhs.true.i149.if.end31.i_crit_edge:          ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

land.lhs.true.i149.direct_write.i_crit_edge:      ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #17
  br label %direct_write.i

if.end31.i:                                       ; preds = %land.lhs.true.i149.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge
  %122 = ptrtoint ptr %current_free.i234.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %current_free.i234.i, align 4
  %tobool.not.i124.i = icmp eq ptr %123, null
  br i1 %tobool.not.i124.i, label %if.end31.i.direct_write.i_crit_edge, label %if.end31.i.if.end.i.i_crit_edge, !prof !258

if.end31.i.if.end.i.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.end31.i.direct_write.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %direct_write.i

if.end31.thread.i:                                ; preds = %if.end10.i
  %124 = ptrtoint ptr %current_free.i234.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %current_free.i234.i, align 4
  %tobool.not.i124235.i = icmp eq ptr %125, null
  br i1 %tobool.not.i124235.i, label %do.cond63.i, label %if.end31.thread.i.if.end.i.i_crit_edge, !prof !258

if.end31.thread.i.if.end.i.i_crit_edge:           ; preds = %if.end31.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end31.thread.i.if.end.i.i_crit_edge, %if.end31.i.if.end.i.i_crit_edge
  %126 = phi ptr [ %123, %if.end31.i.if.end.i.i_crit_edge ], [ %125, %if.end31.thread.i.if.end.i.i_crit_edge ]
  %127 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2
  %call14.i.i = tail call ptr @rb_next(ptr noundef nonnull %126) #15
  tail call void @rb_erase(ptr noundef nonnull %126, ptr noundef %127) #15
  %tobool16.not.i.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool16.not.i.i, label %if.then25.i.i, label %if.end.i.i.cleanup.cont.i.i_crit_edge, !prof !258

if.end.i.i.cleanup.cont.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.cont.i.i

if.then25.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call27.i.i150 = tail call ptr @rb_first(ptr noundef %127) #15
  br label %cleanup.cont.i.i

cleanup.cont.i.i:                                 ; preds = %if.then25.i.i, %if.end.i.i.cleanup.cont.i.i_crit_edge
  %next.0.i.i = phi ptr [ %call27.i.i150, %if.then25.i.i ], [ %call14.i.i, %if.end.i.i.cleanup.cont.i.i_crit_edge ]
  %128 = ptrtoint ptr %current_free.i234.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %next.0.i.i, ptr %current_free.i234.i, align 4
  %freelist_size.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %freelist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %freelist_size.i.i, align 8
  %dec.i.i = add i32 %130, -1
  store i32 %dec.i.i, ptr %freelist_size.i.i, align 8
  %writeback_size.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 5
  %131 = ptrtoint ptr %writeback_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %writeback_size.i.i.i, align 4
  %add.i46.i.i = add i32 %132, %dec.i.i
  %freelist_high_watermark.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 6
  %133 = ptrtoint ptr %freelist_high_watermark.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %freelist_high_watermark.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i46.i.i, i32 %134)
  %cmp.not.i.i.i = icmp ugt i32 %add.i46.i.i, %134
  br i1 %cmp.not.i.i.i, label %cleanup.cont.i.i.if.end54.i_crit_edge, label %if.then.i.i.i, !prof !257

cleanup.cont.i.i.if.end54.i_crit_edge:            ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.then.i.i.i:                                    ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %writeback_wq.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %135 = ptrtoint ptr %writeback_wq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %writeback_wq.i.i.i, align 8
  %writeback_work.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 42
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %136, ptr noundef %writeback_work.i.i.i) #15
  br label %if.end54.i

direct_write.i:                                   ; preds = %if.end31.i.direct_write.i_crit_edge, %land.lhs.true.i149.direct_write.i_crit_edge, %if.else.i.direct_write.i_crit_edge
  %writes_around.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 5
  %137 = ptrtoint ptr %writes_around.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %writes_around.i, align 8
  %inc46.i = add i64 %138, 1
  store i64 %inc46.i, ptr %writes_around.i, align 8
  %139 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %bi_iter, align 8
  br i1 %tobool.not.i.i126, label %direct_write.i.sw.bb_crit_edge, label %while.cond.preheader.i128.i, !prof !258

direct_write.i.sw.bb_crit_edge:                   ; preds = %direct_write.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

while.cond.preheader.i128.i:                      ; preds = %direct_write.i
  %141 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  br label %while.cond.i133.i

while.cond.i133.i:                                ; preds = %if.end5.i141.i.while.cond.i133.i_crit_edge, %while.cond.preheader.i128.i
  %node.0.i129.i = phi ptr [ %cond.i139.i, %if.end5.i141.i.while.cond.i133.i_crit_edge ], [ %84, %while.cond.preheader.i128.i ]
  %index.i.i.i130.i = getelementptr inbounds %struct.wc_entry, ptr %node.0.i129.i, i32 0, i32 4
  %143 = ptrtoint ptr %index.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %index.i.i.i130.i, align 4
  %arrayidx.i.i.i131.i = getelementptr %struct.wc_memory_superblock, ptr %142, i32 0, i32 1, i32 %144
  %145 = ptrtoint ptr %arrayidx.i.i.i131.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx.i.i.i131.i, align 8
  %147 = tail call i64 @llvm.bswap.i64(i64 %146) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %147, i64 %140)
  %cmp.i132.i = icmp eq i64 %147, %140
  br i1 %cmp.i132.i, label %while.cond.i133.i.while.cond43.i146.i_crit_edge, label %if.end5.i141.i

while.cond.i133.i.while.cond43.i146.i_crit_edge:  ; preds = %while.cond.i133.i
  br label %while.cond43.i146.i

if.end5.i141.i:                                   ; preds = %while.cond.i133.i
  call void @__sanitizer_cov_trace_cmp8(i64 %147, i64 %140)
  %cmp7.not.i135.i = icmp ult i64 %147, %140
  %rb_left.i136.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i129.i, i32 0, i32 2
  %rb_right.i137.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i129.i, i32 0, i32 1
  %cond.in.i138.i = select i1 %cmp7.not.i135.i, ptr %rb_right.i137.i, ptr %rb_left.i136.i
  %148 = ptrtoint ptr %cond.in.i138.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %cond.i139.i = load ptr, ptr %cond.in.i138.i, align 4
  %tobool10.not.i140.i = icmp eq ptr %cond.i139.i, null
  br i1 %tobool10.not.i140.i, label %if.then19.i143.i, label %if.end5.i141.i.while.cond.i133.i_crit_edge, !prof !258

if.end5.i141.i.while.cond.i133.i_crit_edge:       ; preds = %if.end5.i141.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i133.i

if.then19.i143.i:                                 ; preds = %if.end5.i141.i
  br i1 %cmp7.not.i135.i, label %writecache_find_entry.exit154.i, label %if.then19.i143.i.if.then.i.i154_crit_edge

if.then19.i143.i.if.then.i.i154_crit_edge:        ; preds = %if.then19.i143.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i154

while.cond43.i146.i:                              ; preds = %cleanup.i152.i.while.cond43.i146.i_crit_edge, %while.cond.i133.i.while.cond43.i146.i_crit_edge
  %e.0.i145.i = phi ptr [ %call52.i147.i, %cleanup.i152.i.while.cond43.i146.i_crit_edge ], [ %node.0.i129.i, %while.cond.i133.i.while.cond43.i146.i_crit_edge ]
  %call52.i147.i = tail call ptr @rb_next(ptr noundef nonnull %e.0.i145.i) #15
  %tobool54.not.i148.i = icmp eq ptr %call52.i147.i, null
  br i1 %tobool54.not.i148.i, label %while.cond43.i146.i.if.then.i.i154_crit_edge, label %cleanup.i152.i, !prof !258

while.cond43.i146.i.if.then.i.i154_crit_edge:     ; preds = %while.cond43.i146.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i154

cleanup.i152.i:                                   ; preds = %while.cond43.i146.i
  %149 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i108.i149.i = getelementptr inbounds %struct.wc_entry, ptr %call52.i147.i, i32 0, i32 4
  %151 = ptrtoint ptr %index.i.i108.i149.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %index.i.i108.i149.i, align 4
  %arrayidx.i.i109.i150.i = getelementptr %struct.wc_memory_superblock, ptr %150, i32 0, i32 1, i32 %152
  %153 = ptrtoint ptr %arrayidx.i.i109.i150.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx.i.i109.i150.i, align 8
  %155 = tail call i64 @llvm.bswap.i64(i64 %154) #15
  %cmp69.not.i151.i = icmp eq i64 %155, %140
  br i1 %cmp69.not.i151.i, label %cleanup.i152.i.while.cond43.i146.i_crit_edge, label %cleanup.i152.i.if.then.i.i154_crit_edge

cleanup.i152.i.if.then.i.i154_crit_edge:          ; preds = %cleanup.i152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i154

cleanup.i152.i.while.cond43.i146.i_crit_edge:     ; preds = %cleanup.i152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond43.i146.i

writecache_find_entry.exit154.i:                  ; preds = %if.then19.i143.i
  %call27.i144.i = tail call ptr @rb_next(ptr noundef nonnull %node.0.i129.i) #15
  %tobool.not.i155.i = icmp eq ptr %call27.i144.i, null
  br i1 %tobool.not.i155.i, label %writecache_find_entry.exit154.i.sw.bb_crit_edge, label %writecache_find_entry.exit154.i.if.then.i.i154_crit_edge

writecache_find_entry.exit154.i.if.then.i.i154_crit_edge: ; preds = %writecache_find_entry.exit154.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i154

writecache_find_entry.exit154.i.sw.bb_crit_edge:  ; preds = %writecache_find_entry.exit154.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.then.i.i154:                                   ; preds = %writecache_find_entry.exit154.i.if.then.i.i154_crit_edge, %cleanup.i152.i.if.then.i.i154_crit_edge, %while.cond43.i146.i.if.then.i.i154_crit_edge, %if.then19.i143.i.if.then.i.i154_crit_edge
  %retval.2.i153242.i = phi ptr [ %call27.i144.i, %writecache_find_entry.exit154.i.if.then.i.i154_crit_edge ], [ %node.0.i129.i, %if.then19.i143.i.if.then.i.i154_crit_edge ], [ %e.0.i145.i, %while.cond43.i146.i.if.then.i.i154_crit_edge ], [ %e.0.i145.i, %cleanup.i152.i.if.then.i.i154_crit_edge ]
  %156 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i.i157.i = getelementptr inbounds %struct.wc_entry, ptr %retval.2.i153242.i, i32 0, i32 4
  %158 = ptrtoint ptr %index.i.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %index.i.i.i157.i, align 4
  %arrayidx.i.i.i158.i = getelementptr %struct.wc_memory_superblock, ptr %157, i32 0, i32 1, i32 %159
  %160 = ptrtoint ptr %arrayidx.i.i.i158.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %arrayidx.i.i.i158.i, align 8
  %162 = tail call i64 @llvm.bswap.i64(i64 %161) #15
  %163 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %bi_iter, align 8
  %sub.i.i151 = sub i64 %162, %164
  %165 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bi_size, align 8
  %shr.i.i152 = lshr i32 %166, 9
  %conv.i.i153 = zext i32 %shr.i.i152 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i151, i64 %conv.i.i153)
  %cmp.i159.i = icmp ult i64 %sub.i.i151, %conv.i.i153
  %extract.t244 = trunc i64 %sub.i.i151 to i32
  br i1 %cmp.i159.i, label %if.then.i.i154.sw.bb.sink.split_crit_edge, label %if.then.i.i154.sw.bb_crit_edge

if.then.i.i154.sw.bb_crit_edge:                   ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.then.i.i154.sw.bb.sink.split_crit_edge:        ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.sink.split

if.end54.i:                                       ; preds = %if.then.i.i.i, %cleanup.cont.i.i.if.end54.i_crit_edge
  %167 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %bi_iter, align 8
  %169 = ptrtoint ptr %seq_count.i.i123 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %seq_count.i.i123, align 8
  %171 = tail call i64 @llvm.bswap.i64(i64 %168) #15
  %172 = tail call i64 @llvm.bswap.i64(i64 %170) #15
  %173 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i.i157 = getelementptr inbounds %struct.wc_entry, ptr %126, i32 0, i32 4
  %175 = ptrtoint ptr %index.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %index.i.i.i157, align 4
  %arrayidx.i.i.i158 = getelementptr %struct.wc_memory_superblock, ptr %174, i32 0, i32 1, i32 %176
  %177 = ptrtoint ptr %arrayidx.i.i.i158 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %171, ptr %arrayidx.i.i.i158, align 8
  %me.sroa.5.0.call.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i.i158, i32 8
  %178 = ptrtoint ptr %me.sroa.5.0.call.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %172, ptr %me.sroa.5.0.call.sroa_idx.i.i, align 8
  %179 = ptrtoint ptr %tree.i.i121 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tree.i.i121, align 4
  %tobool.not23.i.i = icmp eq ptr %180, null
  br i1 %tobool.not23.i.i, label %if.end54.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end54.i.while.end.i.i_crit_edge:               ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end54.i
  %181 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %183 = ptrtoint ptr %index.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %index.i.i.i157, align 4
  %arrayidx.i.i22.i.i = getelementptr %struct.wc_memory_superblock, ptr %182, i32 0, i32 1, i32 %184
  %185 = ptrtoint ptr %arrayidx.i.i22.i.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx.i.i22.i.i, align 8
  %187 = tail call i64 @llvm.bswap.i64(i64 %186) #15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %188 = phi ptr [ %180, %while.body.lr.ph.i.i ], [ %195, %while.body.i.i.while.body.i.i_crit_edge ]
  %index.i.i.i163.i = getelementptr inbounds %struct.wc_entry, ptr %188, i32 0, i32 4
  %189 = ptrtoint ptr %index.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %index.i.i.i163.i, align 4
  %arrayidx.i.i.i164.i = getelementptr %struct.wc_memory_superblock, ptr %182, i32 0, i32 1, i32 %190
  %191 = ptrtoint ptr %arrayidx.i.i.i164.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %arrayidx.i.i.i164.i, align 8
  %193 = tail call i64 @llvm.bswap.i64(i64 %192) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %193, i64 %187)
  %cmp.i165.i = icmp ugt i64 %193, %187
  %rb_left.i166.i = getelementptr inbounds %struct.rb_node, ptr %188, i32 0, i32 2
  %rb_right.i167.i = getelementptr inbounds %struct.rb_node, ptr %188, i32 0, i32 1
  %node.1.i.i = select i1 %cmp.i165.i, ptr %rb_left.i166.i, ptr %rb_right.i167.i
  %194 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %node.1.i.i, align 4
  %tobool.not.i168.i = icmp eq ptr %195, null
  br i1 %tobool.not.i168.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i.i = ptrtoint ptr %188 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.end54.i.while.end.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end54.i.while.end.i.i_crit_edge ]
  %node.0.lcssa.i.i = phi ptr [ %node.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %tree.i.i121, %if.end54.i.while.end.i.i_crit_edge ]
  %196 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %parent.0.lcssa.i.i, ptr %126, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %126, i32 0, i32 1
  %197 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %126, i32 0, i32 2
  %198 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %199 = ptrtoint ptr %node.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %126, ptr %node.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %126, ptr noundef %tree.i.i121) #15
  %lru.i.i = getelementptr inbounds %struct.wc_entry, ptr %126, i32 0, i32 1
  %lru6.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 1
  %200 = ptrtoint ptr %lru6.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %lru6.i.i, align 4
  %call.i.i.i169.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru.i.i, ptr noundef %lru6.i.i, ptr noundef %201) #15
  br i1 %call.i.i.i169.i, label %if.end.i.i.i.i, label %while.end.i.i.writecache_insert_entry.exit.i_crit_edge

while.end.i.i.writecache_insert_entry.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_insert_entry.exit.i

if.end.i.i.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %lru.i.i, ptr %prev1.i.i.i.i, align 4
  %203 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %201, ptr %lru.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %126, i32 0, i32 1, i32 1
  %204 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %lru6.i.i, ptr %prev3.i.i.i.i, align 4
  %205 = ptrtoint ptr %lru6.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %lru.i.i, ptr %lru6.i.i, align 4
  br label %writecache_insert_entry.exit.i

writecache_insert_entry.exit.i:                   ; preds = %if.end.i.i.i.i, %while.end.i.i.writecache_insert_entry.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %206 = load volatile i32, ptr @jiffies, align 128
  %age.i.i = getelementptr inbounds %struct.wc_entry, ptr %126, i32 0, i32 5
  %207 = ptrtoint ptr %age.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %age.i.i, align 4
  %uncommitted_blocks.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 10
  %208 = ptrtoint ptr %uncommitted_blocks.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %uncommitted_blocks.i, align 8
  %inc57.i = add i32 %209, 1
  store i32 %inc57.i, ptr %uncommitted_blocks.i, align 8
  %writes_allocate.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 6
  %210 = ptrtoint ptr %writes_allocate.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %writes_allocate.i, align 8
  %inc59.i = add i64 %211, 1
  store i64 %inc59.i, ptr %writes_allocate.i, align 8
  br label %bio_copy.i

bio_copy.i:                                       ; preds = %writecache_insert_entry.exit.i, %if.then14.i, %if.then7.i
  %e.0.i = phi ptr [ %126, %writecache_insert_entry.exit.i ], [ %e.0.i.i140, %if.then14.i ], [ %e.0.i.i140, %if.then7.i ]
  %search_used.0.off0.i = phi i1 [ false, %writecache_insert_entry.exit.i ], [ true, %if.then14.i ], [ true, %if.then7.i ]
  %212 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %block_size, align 8
  %start_sector.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 23
  %214 = ptrtoint ptr %start_sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %start_sector.i.i.i, align 8
  %metadata_sectors.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 26
  %216 = ptrtoint ptr %metadata_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %metadata_sectors.i.i.i, align 8
  %conv.i.i.i = zext i32 %217 to i64
  %add.i.i.i = add i64 %215, %conv.i.i.i
  %index.i.i170.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 4
  %218 = ptrtoint ptr %index.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %index.i.i170.i, align 4
  %conv1.i.i.i159 = zext i32 %219 to i64
  %block_size_bits.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 33
  %220 = ptrtoint ptr %block_size_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %block_size_bits.i.i.i, align 4
  %conv2.i.i.i = zext i8 %221 to i32
  %sub.i.i.i = add nsw i32 %conv2.i.i.i, -9
  %sh_prom.i.i.i = zext i32 %sub.i.i.i to i64
  %shl.i.i.i = shl i64 %conv1.i.i.i159, %sh_prom.i.i.i
  %add3.i.i.i = add i64 %add.i.i.i, %shl.i.i.i
  %222 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %223)
  %cmp18.i.i = icmp ult i32 %213, %223
  br i1 %cmp18.i.i, label %while.body.lr.ph.i176.i, label %bio_copy.i.while.end.i187.i_crit_edge

bio_copy.i.while.end.i187.i_crit_edge:            ; preds = %bio_copy.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

while.body.lr.ph.i176.i:                          ; preds = %bio_copy.i
  %shr.i173.i = lshr i32 %213, 9
  %conv.i174.i = zext i32 %shr.i173.i to i64
  %add.i.i160 = add i64 %add3.i.i.i, %conv.i174.i
  %lru6.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 1
  %uncommitted_blocks.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 10
  %overwrote_committed.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  %224 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2
  %freelist_size.i213.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 4
  %writeback_size.i.i215.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 5
  %freelist_high_watermark.i.i217.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 6
  %writeback_wq.i.i220.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %writeback_work.i.i221.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 42
  br label %while.body.i177.i

while.body.i177.i:                                ; preds = %if.end41.i.i.while.body.i177.i_crit_edge, %while.body.lr.ph.i176.i
  %e.addr.023.i.i = phi ptr [ %e.0.i, %while.body.lr.ph.i176.i ], [ %e.addr.2.i.i, %if.end41.i.i.while.body.i177.i_crit_edge ]
  %bio_size.021.i.i = phi i32 [ %213, %while.body.lr.ph.i176.i ], [ %add43.i.i, %if.end41.i.i.while.body.i177.i_crit_edge ]
  %current_cache_sec.019.i.i = phi i64 [ %add.i.i160, %while.body.lr.ph.i176.i ], [ %add47.i.i, %if.end41.i.i.while.body.i177.i_crit_edge ]
  br i1 %search_used.0.off0.i, label %if.else.i184.i, label %if.then.i178.i

if.then.i178.i:                                   ; preds = %while.body.i177.i
  %225 = ptrtoint ptr %current_free.i234.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %current_free.i234.i, align 4
  %tobool.not.i194.i = icmp eq ptr %226, null
  br i1 %tobool.not.i194.i, label %if.then.i178.i.while.end.i187.i_crit_edge, label %if.end.i195.i, !prof !258

if.then.i178.i.while.end.i187.i_crit_edge:        ; preds = %if.then.i178.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

if.end.i195.i:                                    ; preds = %if.then.i178.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %current_cache_sec.019.i.i)
  %cmp.not.i.i161 = icmp eq i64 %current_cache_sec.019.i.i, -1
  br i1 %cmp.not.i.i161, label %if.end.i195.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i195.i.if.end13.i.i_crit_edge:             ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i195.i
  %227 = ptrtoint ptr %start_sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %start_sector.i.i.i, align 8
  %229 = ptrtoint ptr %metadata_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %metadata_sectors.i.i.i, align 8
  %conv.i.i198.i = zext i32 %230 to i64
  %add.i.i199.i = add i64 %228, %conv.i.i198.i
  %index.i.i200.i = getelementptr inbounds %struct.wc_entry, ptr %226, i32 0, i32 4
  %231 = ptrtoint ptr %index.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %index.i.i200.i, align 4
  %conv1.i.i201.i = zext i32 %232 to i64
  %233 = ptrtoint ptr %block_size_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %block_size_bits.i.i.i, align 4
  %conv2.i.i203.i = zext i8 %234 to i32
  %sub.i.i204.i = add nsw i32 %conv2.i.i203.i, -9
  %sh_prom.i.i205.i = zext i32 %sub.i.i204.i to i64
  %shl.i.i206.i = shl i64 %conv1.i.i201.i, %sh_prom.i.i205.i
  %add3.i.i207.i = add i64 %add.i.i199.i, %shl.i.i206.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i.i207.i, i64 %current_cache_sec.019.i.i)
  %cmp5.not.i.i = icmp eq i64 %add3.i.i207.i, %current_cache_sec.019.i.i
  br i1 %cmp5.not.i.i, label %land.lhs.true.i.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i.while.end.i187.i_crit_edge, !prof !257

land.lhs.true.i.i.while.end.i187.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %land.lhs.true.i.i.if.end13.i.i_crit_edge, %if.end.i195.i.if.end13.i.i_crit_edge
  %call14.i208.i = tail call ptr @rb_next(ptr noundef nonnull %226) #15
  tail call void @rb_erase(ptr noundef nonnull %226, ptr noundef %224) #15
  %tobool16.not.i209.i = icmp eq ptr %call14.i208.i, null
  br i1 %tobool16.not.i209.i, label %if.then25.i211.i, label %if.end13.i.i.cleanup.cont.i219.i_crit_edge, !prof !258

if.end13.i.i.cleanup.cont.i219.i_crit_edge:       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.cont.i219.i

if.then25.i211.i:                                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call27.i210.i = tail call ptr @rb_first(ptr noundef %224) #15
  br label %cleanup.cont.i219.i

cleanup.cont.i219.i:                              ; preds = %if.then25.i211.i, %if.end13.i.i.cleanup.cont.i219.i_crit_edge
  %next.0.i212.i = phi ptr [ %call27.i210.i, %if.then25.i211.i ], [ %call14.i208.i, %if.end13.i.i.cleanup.cont.i219.i_crit_edge ]
  %235 = ptrtoint ptr %current_free.i234.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %next.0.i212.i, ptr %current_free.i234.i, align 4
  %236 = ptrtoint ptr %freelist_size.i213.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %freelist_size.i213.i, align 8
  %dec.i214.i = add i32 %237, -1
  store i32 %dec.i214.i, ptr %freelist_size.i213.i, align 8
  %238 = ptrtoint ptr %writeback_size.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %writeback_size.i.i215.i, align 4
  %add.i46.i216.i = add i32 %239, %dec.i214.i
  %240 = ptrtoint ptr %freelist_high_watermark.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %freelist_high_watermark.i.i217.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i46.i216.i, i32 %241)
  %cmp.not.i.i218.i = icmp ugt i32 %add.i46.i216.i, %241
  br i1 %cmp.not.i.i218.i, label %cleanup.cont.i219.i.if.end.i181.i_crit_edge, label %if.then.i.i223.i, !prof !257

cleanup.cont.i219.i.if.end.i181.i_crit_edge:      ; preds = %cleanup.cont.i219.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i181.i

if.then.i.i223.i:                                 ; preds = %cleanup.cont.i219.i
  call void @__sanitizer_cov_trace_pc() #17
  %242 = ptrtoint ptr %writeback_wq.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %writeback_wq.i.i220.i, align 8
  %call.i.i.i222.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %243, ptr noundef %writeback_work.i.i221.i) #15
  br label %if.end.i181.i

if.end.i181.i:                                    ; preds = %if.then.i.i223.i, %cleanup.cont.i219.i.if.end.i181.i_crit_edge
  %244 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %bi_iter, align 8
  %shr6.i.i = lshr i32 %bio_size.021.i.i, 9
  %conv7.i.i = zext i32 %shr6.i.i to i64
  %add8.i.i = add i64 %245, %conv7.i.i
  %246 = ptrtoint ptr %seq_count.i.i123 to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %seq_count.i.i123, align 8
  %248 = tail call i64 @llvm.bswap.i64(i64 %add8.i.i) #15
  %249 = tail call i64 @llvm.bswap.i64(i64 %247) #15
  %250 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i.i179.i = getelementptr inbounds %struct.wc_entry, ptr %226, i32 0, i32 4
  %252 = ptrtoint ptr %index.i.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %index.i.i.i179.i, align 4
  %arrayidx.i.i.i180.i = getelementptr %struct.wc_memory_superblock, ptr %251, i32 0, i32 1, i32 %253
  %254 = ptrtoint ptr %arrayidx.i.i.i180.i to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 %248, ptr %arrayidx.i.i.i180.i, align 8
  %me.sroa.5.0.call.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i.i180.i, i32 8
  %255 = ptrtoint ptr %me.sroa.5.0.call.sroa_idx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %249, ptr %me.sroa.5.0.call.sroa_idx.i.i.i, align 8
  %256 = ptrtoint ptr %tree.i.i121 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tree.i.i121, align 4
  %tobool.not23.i.i.i = icmp eq ptr %257, null
  br i1 %tobool.not23.i.i.i, label %if.end.i181.i.while.end.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end.i181.i.while.end.i.i.i_crit_edge:          ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end.i181.i
  %258 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %260 = ptrtoint ptr %index.i.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %index.i.i.i179.i, align 4
  %arrayidx.i.i22.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %259, i32 0, i32 1, i32 %261
  %262 = ptrtoint ptr %arrayidx.i.i22.i.i.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %arrayidx.i.i22.i.i.i, align 8
  %264 = tail call i64 @llvm.bswap.i64(i64 %263) #15
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %265 = phi ptr [ %257, %while.body.lr.ph.i.i.i ], [ %272, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %index.i.i.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %index.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %259, i32 0, i32 1, i32 %267
  %268 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %arrayidx.i.i.i.i.i, align 8
  %270 = tail call i64 @llvm.bswap.i64(i64 %269) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %270, i64 %264)
  %cmp.i.i.i = icmp ugt i64 %270, %264
  %rb_left.i.i182.i = getelementptr inbounds %struct.rb_node, ptr %265, i32 0, i32 2
  %rb_right.i.i183.i = getelementptr inbounds %struct.rb_node, ptr %265, i32 0, i32 1
  %node.1.i.i.i = select i1 %cmp.i.i.i, ptr %rb_left.i.i182.i, ptr %rb_right.i.i183.i
  %271 = ptrtoint ptr %node.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %node.1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %272, null
  br i1 %tobool.not.i.i.i, label %while.cond.while.end_crit_edge.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i.i.i = ptrtoint ptr %265 to i32
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.end.i181.i.while.end.i.i.i_crit_edge
  %parent.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.end.i181.i.while.end.i.i.i_crit_edge ]
  %node.0.lcssa.i.i.i = phi ptr [ %node.1.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %tree.i.i121, %if.end.i181.i.while.end.i.i.i_crit_edge ]
  %273 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %parent.0.lcssa.i.i.i, ptr %226, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %226, i32 0, i32 1
  %274 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %226, i32 0, i32 2
  %275 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %276 = ptrtoint ptr %node.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %226, ptr %node.0.lcssa.i.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %226, ptr noundef %tree.i.i121) #15
  %lru.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %226, i32 0, i32 1
  %277 = ptrtoint ptr %lru6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %lru6.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru.i.i.i, ptr noundef %lru6.i.i.i, ptr noundef %278) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.end.i.i.i.cleanup.thread.i.i_crit_edge

while.end.i.i.i.cleanup.thread.i.i_crit_edge:     ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %lru.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %280 = ptrtoint ptr %lru.i.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %278, ptr %lru.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %226, i32 0, i32 1, i32 1
  %281 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %lru6.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %282 = ptrtoint ptr %lru6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store volatile ptr %lru.i.i.i, ptr %lru6.i.i.i, align 4
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end.i.i.i.i.i, %while.end.i.i.i.cleanup.thread.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %283 = load volatile i32, ptr @jiffies, align 128
  %age.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %226, i32 0, i32 5
  %284 = ptrtoint ptr %age.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %age.i.i.i, align 4
  %285 = ptrtoint ptr %uncommitted_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %uncommitted_blocks.i.i, align 8
  %inc.i.i = add i32 %286, 1
  store i32 %inc.i.i, ptr %uncommitted_blocks.i.i, align 8
  br label %if.end41.i.i

if.else.i184.i:                                   ; preds = %while.body.i177.i
  %call10.i.i = tail call ptr @rb_next(ptr noundef %e.addr.023.i.i) #15
  %tobool11.not.i.i = icmp ne ptr %call10.i.i, null
  %add.ptr14.i.i = getelementptr %struct.wc_entry, ptr %e.addr.023.i.i, i32 1
  %cmp15.not.i.i = icmp eq ptr %call10.i.i, %add.ptr14.i.i
  %or.cond.i.i = select i1 %tobool11.not.i.i, i1 %cmp15.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end18.i.i, label %if.else.i184.i.while.end.i187.i_crit_edge

if.else.i184.i.while.end.i187.i_crit_edge:        ; preds = %if.else.i184.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

if.end18.i.i:                                     ; preds = %if.else.i184.i
  %287 = ptrtoint ptr %memory_map.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %memory_map.i.i.i.i.i122, align 8
  %index.i.i3.i.i = getelementptr inbounds %struct.wc_entry, ptr %call10.i.i, i32 0, i32 4
  %289 = ptrtoint ptr %index.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %index.i.i3.i.i, align 4
  %arrayidx.i.i4.i.i = getelementptr %struct.wc_memory_superblock, ptr %288, i32 0, i32 1, i32 %290
  %291 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %arrayidx.i.i4.i.i, align 8
  %293 = tail call i64 @llvm.bswap.i64(i64 %292) #15
  %index.i.i6.i.i = getelementptr inbounds %struct.wc_entry, ptr %e.addr.023.i.i, i32 0, i32 4
  %294 = ptrtoint ptr %index.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %index.i.i6.i.i, align 4
  %arrayidx.i.i7.i.i = getelementptr %struct.wc_memory_superblock, ptr %288, i32 0, i32 1, i32 %295
  %296 = ptrtoint ptr %arrayidx.i.i7.i.i to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %arrayidx.i.i7.i.i, align 8
  %298 = tail call i64 @llvm.bswap.i64(i64 %297) #15
  %299 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %block_size, align 8
  %shr22.i.i = lshr i32 %300, 9
  %conv23.i.i = zext i32 %shr22.i.i to i64
  %add24.i.i = add i64 %298, %conv23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %293, i64 %add24.i.i)
  %cmp25.not.i.i = icmp eq i64 %293, %add24.i.i
  br i1 %cmp25.not.i.i, label %if.end28.i.i, label %if.end18.i.i.while.end.i187.i_crit_edge

if.end18.i.i.while.end.i187.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

if.end28.i.i:                                     ; preds = %if.end18.i.i
  %write_in_progress.i.i = getelementptr inbounds %struct.wc_entry, ptr %call10.i.i, i32 0, i32 3
  %301 = ptrtoint ptr %write_in_progress.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %write_in_progress.i.i, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool29.not.i.i = icmp eq i8 %302, 0
  br i1 %tobool29.not.i.i, label %if.end33.i.i, label %if.end28.i.i.while.end.i187.i_crit_edge, !prof !257

if.end28.i.i.while.end.i187.i_crit_edge:          ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

if.end33.i.i:                                     ; preds = %if.end28.i.i
  %seq_count.i.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %288, i32 0, i32 1, i32 %290, i32 1
  %303 = ptrtoint ptr %seq_count.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %seq_count.i.i.i.i, align 8
  %305 = tail call i64 @llvm.bswap.i64(i64 %304) #15
  %306 = ptrtoint ptr %seq_count.i.i123 to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %seq_count.i.i123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %305, i64 %307)
  %cmp.i10.i.i = icmp ult i64 %305, %307
  br i1 %cmp.i10.i.i, label %if.then35.i.i, label %if.end33.i.i.if.end41.i.i_crit_edge

if.end33.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i.i

if.then35.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %308 = ptrtoint ptr %overwrote_committed.i.i to i32
  call void @__asan_loadN_noabort(i32 %308, i32 3)
  %bf.load.i.i = load i24, ptr %overwrote_committed.i.i, align 1
  %bf.set.i.i = or i24 %bf.load.i.i, 2097152
  store i24 %bf.set.i.i, ptr %overwrote_committed.i.i, align 1
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then35.i.i, %if.end33.i.i.if.end41.i.i_crit_edge, %cleanup.thread.i.i
  %e.addr.2.i.i = phi ptr [ %e.addr.023.i.i, %cleanup.thread.i.i ], [ %call10.i.i, %if.then35.i.i ], [ %call10.i.i, %if.end33.i.i.if.end41.i.i_crit_edge ]
  %309 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %block_size, align 8
  %add43.i.i = add i32 %310, %bio_size.021.i.i
  %shr45.i.i = lshr i32 %310, 9
  %conv46.i.i = zext i32 %shr45.i.i to i64
  %add47.i.i = add i64 %current_cache_sec.019.i.i, %conv46.i.i
  %311 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %bi_size, align 8
  %cmp.i185.i = icmp ult i32 %add43.i.i, %312
  br i1 %cmp.i185.i, label %if.end41.i.i.while.body.i177.i_crit_edge, label %if.end41.i.i.while.end.i187.i_crit_edge

if.end41.i.i.while.end.i187.i_crit_edge:          ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i187.i

if.end41.i.i.while.body.i177.i_crit_edge:         ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i177.i

while.end.i187.i:                                 ; preds = %if.end41.i.i.while.end.i187.i_crit_edge, %if.end28.i.i.while.end.i187.i_crit_edge, %if.end18.i.i.while.end.i187.i_crit_edge, %if.else.i184.i.while.end.i187.i_crit_edge, %land.lhs.true.i.i.while.end.i187.i_crit_edge, %if.then.i178.i.while.end.i187.i_crit_edge, %bio_copy.i.while.end.i187.i_crit_edge
  %bio_size.0.lcssa.i.i = phi i32 [ %213, %bio_copy.i.while.end.i187.i_crit_edge ], [ %bio_size.021.i.i, %if.end28.i.i.while.end.i187.i_crit_edge ], [ %bio_size.021.i.i, %if.end18.i.i.while.end.i187.i_crit_edge ], [ %bio_size.021.i.i, %if.else.i184.i.while.end.i187.i_crit_edge ], [ %add43.i.i, %if.end41.i.i.while.end.i187.i_crit_edge ], [ %bio_size.021.i.i, %if.then.i178.i.while.end.i187.i_crit_edge ], [ %bio_size.021.i.i, %land.lhs.true.i.i.while.end.i187.i_crit_edge ]
  %ssd_dev.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 22
  %313 = ptrtoint ptr %ssd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ssd_dev.i.i, align 8
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %314, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %317 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %318, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %319 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i186.i = icmp eq ptr %320, %316
  br i1 %cmp.not.i.i186.i, label %while.end.i187.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i188.i

while.end.i187.i.bio_set_dev.exit.i.i_crit_edge:  ; preds = %while.end.i187.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit.i.i

if.then.i.i188.i:                                 ; preds = %while.end.i187.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i.i.i = and i16 %318, -2177
  %321 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i188.i, %while.end.i187.i.bio_set_dev.exit.i.i_crit_edge
  %322 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %316, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #15
  %323 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %add3.i.i.i, ptr %bi_iter, align 8
  %shr50.i.i = lshr i32 %bio_size.0.lcssa.i.i, 9
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef %shr50.i.i) #15
  %uncommitted_blocks51.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 10
  %324 = ptrtoint ptr %uncommitted_blocks51.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %uncommitted_blocks51.i.i, align 8
  %autocommit_blocks.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 11
  %326 = ptrtoint ptr %autocommit_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %autocommit_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %327)
  %cmp52.not.i.i = icmp ult i32 %325, %327
  br i1 %cmp52.not.i.i, label %if.else63.i.i, label %if.then60.i.i, !prof !257

if.then60.i.i:                                    ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %328 = ptrtoint ptr %uncommitted_blocks51.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %uncommitted_blocks51.i.i, align 8
  %writeback_wq.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %329 = ptrtoint ptr %writeback_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %writeback_wq.i.i, align 8
  %flush_work.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %330, ptr noundef %flush_work.i.i) #15
  br label %sw.bb66

if.else63.i.i:                                    ; preds = %bio_set_dev.exit.i.i
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 15, i32 0, i32 1
  %331 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load volatile ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i.i = icmp eq ptr %332, null
  br i1 %tobool.not.i.i.not.i.i.i, label %if.then.i12.i.i, label %if.else63.i.i.sw.bb66_crit_edge

if.else63.i.i.sw.bb66_crit_edge:                  ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb66

if.then.i12.i.i:                                  ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %autocommit_timer.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %333 = load volatile i32, ptr @jiffies, align 128
  %autocommit_jiffies.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 14
  %334 = ptrtoint ptr %autocommit_jiffies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %autocommit_jiffies.i.i.i, align 8
  %add.i11.i.i = add i32 %335, %333
  %call2.i.i.i = tail call i32 @mod_timer(ptr noundef %autocommit_timer.i.i.i, i32 noundef %add.i11.i.i) #15
  br label %sw.bb66

do.cond63.i:                                      ; preds = %if.end31.thread.i
  %336 = ptrtoint ptr %writes_blocked_on_freelist.i to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %writes_blocked_on_freelist.i, align 8
  %inc53.i = add i64 %337, 1
  store i64 %inc53.i, ptr %writes_blocked_on_freelist.i, align 8
  tail call fastcc void @writecache_wait_on_freelist(ptr noundef %1) #15
  %338 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %bi_size, align 8
  %tobool65.not.i = icmp eq i32 %339, 0
  br i1 %tobool65.not.i, label %do.end66.i, label %do.cond63.i.do.body.i_crit_edge

do.cond63.i.do.body.i_crit_edge:                  ; preds = %do.cond63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end66.i:                                       ; preds = %do.cond63.i
  %340 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %bi_opf, align 8
  %342 = and i32 %341, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool70.not.i = icmp eq i32 %342, 0
  br i1 %tobool70.not.i, label %lor.rhs.i, label %do.end66.i.if.then79.i_crit_edge, !prof !257

do.end66.i.if.then79.i_crit_edge:                 ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79.i

lor.rhs.i:                                        ; preds = %do.end66.i
  %uncommitted_blocks71.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 10
  %343 = ptrtoint ptr %uncommitted_blocks71.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %uncommitted_blocks71.i, align 8
  %autocommit_blocks.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 11
  %345 = ptrtoint ptr %autocommit_blocks.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %autocommit_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %344, i32 %346)
  %cmp.not.i = icmp ult i32 %344, %346
  br i1 %cmp.not.i, label %if.else80.i, label %lor.rhs.i.if.then79.i_crit_edge, !prof !257

lor.rhs.i.if.then79.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79.i

if.then79.i:                                      ; preds = %lor.rhs.i.if.then79.i_crit_edge, %do.end66.i.if.then79.i_crit_edge
  tail call fastcc void @writecache_flush(ptr noundef %1) #15
  br label %sw.bb73

if.else80.i:                                      ; preds = %lor.rhs.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 15, i32 0, i32 1
  %347 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %348, null
  br i1 %tobool.not.i.i.not.i.i, label %if.then.i191.i, label %if.else80.i.sw.bb73_crit_edge

if.else80.i.sw.bb73_crit_edge:                    ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb73

if.then.i191.i:                                   ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #17
  %autocommit_timer.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %349 = load volatile i32, ptr @jiffies, align 128
  %autocommit_jiffies.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 14
  %350 = ptrtoint ptr %autocommit_jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %autocommit_jiffies.i.i, align 8
  %add.i189.i = add i32 %351, %349
  %call2.i190.i = tail call i32 @mod_timer(ptr noundef %autocommit_timer.i.i, i32 noundef %add.i189.i) #15
  br label %sw.bb73

done:                                             ; preds = %if.then36, %if.then
  %map_op.0 = phi i32 [ %call, %if.then ], [ %call37, %if.then36 ]
  %352 = zext i32 %map_op.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values)
  switch i32 %map_op.0, label %do.body76 [
    i32 2, label %done.sw.bb_crit_edge
    i32 1, label %done.sw.bb66_crit_edge
    i32 0, label %done.sw.bb73_crit_edge
    i32 3, label %sw.bb74
    i32 4, label %done.sw.bb75_crit_edge
  ]

done.sw.bb75_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb75

done.sw.bb73_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb73

done.sw.bb66_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb66

done.sw.bb_crit_edge:                             ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb.sink.split:                                 ; preds = %if.then.i.i154.sw.bb.sink.split_crit_edge, %if.then.i41.i.sw.bb.sink.split_crit_edge
  %sub.i.i151.sink.off0 = phi i32 [ %extract.t, %if.then.i41.i.sw.bb.sink.split_crit_edge ], [ %extract.t244, %if.then.i.i154.sw.bb.sink.split_crit_edge ]
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef %sub.i.i151.sink.off0) #15
  br label %sw.bb

sw.bb:                                            ; preds = %sw.bb.sink.split, %done.sw.bb_crit_edge, %if.then.i.i154.sw.bb_crit_edge, %writecache_find_entry.exit154.i.sw.bb_crit_edge, %direct_write.i.sw.bb_crit_edge, %if.then.i41.i.sw.bb_crit_edge, %writecache_find_entry.exit.i.sw.bb_crit_edge, %if.then45.sw.bb_crit_edge
  %pause = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 9
  %353 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp49.not = icmp eq i32 %354, 0
  br i1 %cmp49.not, label %sw.bb.if.end65_crit_edge, label %if.then57, !prof !258

sw.bb.if.end65_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then57:                                        ; preds = %sw.bb
  %355 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %bi_opf, align 8
  %and59 = and i32 %356, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 1
  br i1 %cmp60, label %if.then62, label %if.then57.if.end65_crit_edge

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  %iot = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 44
  tail call void @_raw_spin_lock_irq(ptr noundef %iot) #15
  %in_flight.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 44, i32 1
  %357 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load8_noabort(i32 %357)
  %358 = load i64, ptr %in_flight.i, align 8
  %add.i = add i64 %358, 1
  store i64 %add.i, ptr %in_flight.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %iot) #15
  %359 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr inttoptr (i32 2 to ptr), ptr %bi_private, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.then57.if.end65_crit_edge, %sw.bb.if.end65_crit_edge
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 21
  %360 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %dev, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %364 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i162 = and i16 %365, -2049
  store i16 %conv1.i.i162, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %366 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i163 = icmp eq ptr %367, %363
  br i1 %cmp.not.i163, label %if.end65.bio_set_dev.exit_crit_edge, label %if.then.i164

if.end65.bio_set_dev.exit_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit

if.then.i164:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i = and i16 %365, -2177
  %368 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i164, %if.end65.bio_set_dev.exit_crit_edge
  %369 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %363, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %cleanup

sw.bb66:                                          ; preds = %done.sw.bb66_crit_edge, %if.then.i12.i.i, %if.else63.i.i.sw.bb66_crit_edge, %if.then60.i.i, %if.then10.i, %bio_set_dev.exit.i.sw.bb66_crit_edge
  %370 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr inttoptr (i32 1 to ptr), ptr %bi_private, align 4
  %371 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %bi_opf, align 8
  %and.i166 = and i32 %372, 1
  %arrayidx = getelementptr %struct.dm_writecache, ptr %1, i32 0, i32 18, i32 %and.i166
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #15
  %373 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #15, !srcloc !260
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %cleanup

sw.bb73:                                          ; preds = %done.sw.bb73_crit_edge, %if.then.i191.i, %if.else80.i.sw.bb73_crit_edge, %if.then79.i
  tail call void @mutex_unlock(ptr noundef %1) #15
  tail call void @bio_endio(ptr noundef %bio) #15
  br label %cleanup

sw.bb74:                                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %cleanup

sw.bb75:                                          ; preds = %done.sw.bb75_crit_edge, %do.body.i.sw.bb75_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %1) #15
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %374 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #15
  br label %cleanup

do.body76:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1592, 0\0A.popsection", ""() #15, !srcloc !261
  unreachable

cleanup:                                          ; preds = %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb66, %bio_set_dev.exit
  %retval.0 = phi i32 [ 0, %sw.bb75 ], [ 0, %sw.bb74 ], [ 0, %sw.bb73 ], [ 1, %sw.bb66 ], [ 1, %bio_set_dev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_end_io(ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %bio, ptr nocapture noundef readnone %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %2 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_private, align 4
  %magicptr = ptrtoint ptr %3 to i32
  %4 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %magicptr, label %entry.if.end15_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then13
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then:                                          ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %6, 1
  %arrayidx = getelementptr %struct.dm_writecache, ptr %1, i32 0, i32 18, i32 %and.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #15, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then2:                                         ; preds = %if.then
  %head.i = getelementptr %struct.dm_writecache, ptr %1, i32 0, i32 19, i32 %and.i, i32 1
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i23.not = icmp eq ptr %9, %head.i
  br i1 %cmp.i.i23.not, label %if.then2.if.end15_crit_edge, label %if.then7, !prof !257

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx3 = getelementptr %struct.dm_writecache, ptr %1, i32 0, i32 19, i32 %and.i
  tail call void @__wake_up(ptr noundef %arrayidx3, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end15

if.then13:                                        ; preds = %entry
  %iot = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iot) #15
  %in_flight.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 44, i32 1
  %10 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %in_flight.i, align 8
  %sub.i = add i64 %11, -1
  store i64 %sub.i, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %tobool6.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then13.dm_iot_io_end.exit_crit_edge

if.then13.dm_iot_io_end.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %dm_iot_io_end.exit

if.then7.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %idle_time.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 44, i32 2
  %13 = ptrtoint ptr %idle_time.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %idle_time.i, align 8
  br label %dm_iot_io_end.exit

dm_iot_io_end.exit:                               ; preds = %if.then7.i, %if.then13.dm_iot_io_end.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iot, i32 noundef %call2.i) #15
  br label %if.end15

if.end15:                                         ; preds = %dm_iot_io_end.exit, %if.then7, %if.then2.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_suspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %wait.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %autocommit_timer = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 15
  %call = tail call i32 @del_timer_sync(ptr noundef %autocommit_timer) #15
  %max_age_timer = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @del_timer_sync(ptr noundef %max_age_timer) #15
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  tail call fastcc void @writecache_flush(ptr noundef %1)
  %flush_on_suspend2 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %flush_on_suspend2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %flush_on_suspend2, align 1
  %3 = and i24 %bf.load, 2048
  %bf.cast.not = icmp eq i24 %3, 0
  br i1 %bf.cast.not, label %if.end11.critedge, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear5 = and i24 %bf.load, -2049
  %4 = ptrtoint ptr %flush_on_suspend2 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 3)
  store i24 %bf.clear5, ptr %flush_on_suspend2, align 1
  %writeback_all = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %writeback_all to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writeback_all, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %writeback_all, align 4
  %writeback_wq = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %writeback_wq, align 8
  %writeback_work = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 42
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %writeback_work) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  %9 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %writeback_wq, align 8
  tail call void @drain_workqueue(ptr noundef %10) #15
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %11 = ptrtoint ptr %writeback_all to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writeback_all, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %writeback_all, align 4
  br label %if.end11

if.end11.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %1) #15
  %writeback_wq7.c29 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %13 = ptrtoint ptr %writeback_wq7.c29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %writeback_wq7.c29, align 8
  tail call void @drain_workqueue(ptr noundef %14) #15
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %if.then
  %writeback_size.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %writeback_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writeback_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i30 = icmp eq i32 %16, 0
  br i1 %tobool.not.i30, label %if.end11.while.end_crit_edge, label %writecache_wait_for_writeback.exit.lr.ph

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

writecache_wait_for_writeback.exit.lr.ph:         ; preds = %if.end11
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3, i32 1
  %freelist_wait.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 16
  br label %writecache_wait_for_writeback.exit

writecache_wait_for_writeback.exit:               ; preds = %writecache_wait_for_writeback.exit.writecache_wait_for_writeback.exit_crit_edge, %writecache_wait_for_writeback.exit.lr.ph
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i) #15
  %21 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %wait.i.i, align 4
  %22 = call i32 @llvm.read_register.i32(metadata !243) #15
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i, align 8
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %17, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @autoremove_wake_function, ptr %18, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %19, ptr %19, align 4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %19, ptr %20, align 4
  call void @prepare_to_wait(ptr noundef %freelist_wait.i.i, ptr noundef nonnull %wait.i.i, i32 noundef 2) #15
  call void @mutex_unlock(ptr noundef %1) #15
  call void @io_schedule() #15
  call void @finish_wait(ptr noundef %freelist_wait.i.i, ptr noundef nonnull %wait.i.i) #15
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i) #15
  %30 = ptrtoint ptr %writeback_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writeback_size.i, align 4
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %writecache_wait_for_writeback.exit.while.end_crit_edge, label %writecache_wait_for_writeback.exit.writecache_wait_for_writeback.exit_crit_edge

writecache_wait_for_writeback.exit.writecache_wait_for_writeback.exit_crit_edge: ; preds = %writecache_wait_for_writeback.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_wait_for_writeback.exit

writecache_wait_for_writeback.exit.while.end_crit_edge: ; preds = %writecache_wait_for_writeback.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %writecache_wait_for_writeback.exit.while.end_crit_edge, %if.end11.while.end_crit_edge
  %tree.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %tree.i, align 4
  %lru.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i, align 4
  %prev.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %35 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev3.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev3.i, align 4
  call void @mutex_unlock(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %region.i = alloca %struct.dm_io_region, align 8
  %req.i = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i, align 8
  %data_device_sectors = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %data_device_sectors to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %data_device_sectors, align 8
  %metadata_sectors = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %metadata_sectors, align 8
  %conv = zext i32 %10 to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region.i) #15
  %11 = ptrtoint ptr %region.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %region.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req.i) #15
  %12 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 2, i32 2
  %15 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 4
  %ssd_dev.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 22
  %17 = getelementptr inbounds i8, ptr %req.i, i32 12
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %19 = ptrtoint ptr %ssd_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ssd_dev.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %region.i, align 8
  %start_sector.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %start_sector.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start_sector.i, align 8
  %sector.i = getelementptr inbounds %struct.dm_io_region, ptr %region.i, i32 0, i32 1
  %26 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %sector.i, align 8
  %count.i = getelementptr inbounds %struct.dm_io_region, ptr %region.i, i32 0, i32 2
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %count.i, align 8
  %28 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %req.i, align 4
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2048, ptr %12, align 4
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %13, align 4
  %memory_map.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memory_map.i, align 8
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %14, align 4
  %dm_io.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 45
  %34 = ptrtoint ptr %dm_io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dm_io.i, align 8
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %16, align 4
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %15, align 4
  %call.i223 = call i32 @dm_io(ptr noundef nonnull %req.i, i32 noundef 1, ptr noundef nonnull %region.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool.not = icmp eq i32 %call.i223, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 13
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !265
  call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %38 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error, i32 0, i32 %call.i223) #15, !srcloc !266
  %asmresult.i = extractvalue { i32, i32 } %38, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %38, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool18.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool18.not, label %do.end22, label %__cmpxchg.exit.if.end_crit_edge

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end22:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %call.i223) #18
  br label %if.end

if.end:                                           ; preds = %do.end22, %__cmpxchg.exit.if.end_crit_edge
  %freelist_wait = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 16
  call void @__wake_up(ptr noundef %freelist_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %39 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %memory_map.i, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 64
  %41 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %metadata_sectors, align 8
  %shl = shl i32 %42, 9
  %sub = add i32 %shl, -64
  %43 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub)
  br label %if.end28

if.end28:                                         ; preds = %if.end, %entry.if.end28_crit_edge
  %tree = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %tree, align 4
  %lru = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %lru, ptr %prev.i, align 4
  %47 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %47, align 4
  %current_free = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %current_free to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %current_free, align 4
  %freelist_size = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %freelist_size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %freelist_size, align 8
  %51 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %memory_map.i, align 8
  %seq_count = getelementptr inbounds %struct.anon.79, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %seq_count to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %sb_seq_count.0.copyload = load i64, ptr %seq_count, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %sb_seq_count.0.copyload)
  %seq_count70 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 28
  %55 = ptrtoint ptr %seq_count70 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %seq_count70, align 8
  %n_blocks = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 27
  %56 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp321.not = icmp eq i32 %57, 0
  br i1 %cmp321.not, label %if.end28.if.end140_crit_edge, label %for.body.lr.ph

if.end28.if.end140_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

for.body.lr.ph:                                   ; preds = %if.end28
  %entries = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 31
  %error91 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 13
  %freelist_wait123 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end135.for.body_crit_edge, %for.body.lr.ph
  %b.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end135.for.body_crit_edge ]
  %need_flush.0.off0322 = phi i1 [ false, %for.body.lr.ph ], [ %need_flush.4.off0, %if.end135.for.body_crit_edge ]
  %58 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323
  %60 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %memory_map.i, align 8
  %index.i.i.i = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 4
  %62 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i.i = getelementptr %struct.wc_memory_superblock, ptr %61, i32 0, i32 1, i32 %63, i32 1
  %64 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seq_count.i.i, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #15
  %67 = ptrtoint ptr %seq_count70 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %seq_count70, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %68)
  %cmp.i = icmp ult i64 %66, %68
  br i1 %cmp.i, label %if.else, label %if.then73

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %65)
  %cmp75.not = icmp eq i64 %65, -1
  br i1 %cmp75.not, label %if.then73.if.end78_crit_edge, label %if.then73.erase_this_crit_edge

if.then73.erase_this_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_this

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

erase_this:                                       ; preds = %if.end126.erase_this_crit_edge, %if.then73.erase_this_crit_edge
  %69 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %memory_map.i, align 8
  %71 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i228 = getelementptr %struct.wc_memory_superblock, ptr %70, i32 0, i32 1, i32 %72, i32 1
  %73 = ptrtoint ptr %seq_count.i228 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 -1, ptr %seq_count.i228, align 8
  br label %if.end78

if.end78:                                         ; preds = %erase_this, %if.then73.if.end78_crit_edge
  %need_flush.1.off0 = phi i1 [ true, %erase_this ], [ %need_flush.0.off0322, %if.then73.if.end78_crit_edge ]
  %74 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %47, align 4
  %tobool.not.i229 = icmp eq ptr %75, null
  br i1 %tobool.not.i229, label %if.end.thread.i, label %if.end78.while.body.i_crit_edge, !prof !258

if.end78.while.body.i_crit_edge:                  ; preds = %if.end78
  br label %while.body.i

if.end.thread.i:                                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %current_free to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx, ptr %current_free, align 4
  br label %writecache_add_to_freelist.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end78.while.body.i_crit_edge
  %77 = phi ptr [ %79, %while.body.i.while.body.i_crit_edge ], [ %75, %if.end78.while.body.i_crit_edge ]
  %cmp.i230 = icmp ugt ptr %77, %arrayidx
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  %node.1.i = select i1 %cmp.i230, ptr %rb_left.i, ptr %rb_right.i
  %78 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %node.1.i, align 4
  %tobool4.not.i = icmp eq ptr %79, null
  br i1 %tobool4.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i = ptrtoint ptr %77 to i32
  br label %writecache_add_to_freelist.exit

writecache_add_to_freelist.exit:                  ; preds = %while.cond.while.end_crit_edge.i, %if.end.thread.i
  %node.0.lcssa.i = phi ptr [ %node.1.i, %while.cond.while.end_crit_edge.i ], [ %47, %if.end.thread.i ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.thread.i ]
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %parent.0.lcssa.i, ptr %arrayidx, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %arrayidx, i32 0, i32 1
  %81 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %arrayidx, i32 0, i32 2
  %82 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %rb_left.i.i, align 4
  %83 = ptrtoint ptr %node.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx, ptr %node.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %arrayidx, ptr noundef %47) #15
  %84 = ptrtoint ptr %freelist_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %freelist_size, align 8
  %inc.i = add i32 %85, 1
  store i32 %inc.i, ptr %freelist_size, align 8
  br label %if.end135

if.else:                                          ; preds = %for.body
  %arrayidx.i.i = getelementptr %struct.wc_memory_superblock, ptr %61, i32 0, i32 1, i32 %63
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.i.i, align 8
  %88 = call i64 @llvm.bswap.i64(i64 %87) #15
  %89 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tree, align 4
  %tobool.not.i233 = icmp eq ptr %90, null
  br i1 %tobool.not.i233, label %if.else.while.end.i_crit_edge, label %if.else.while.cond.i_crit_edge, !prof !258

if.else.while.cond.i_crit_edge:                   ; preds = %if.else
  br label %while.cond.i

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.cond.i:                                     ; preds = %if.end5.i.while.cond.i_crit_edge, %if.else.while.cond.i_crit_edge
  %node.0.i = phi ptr [ %cond.i, %if.end5.i.while.cond.i_crit_edge ], [ %90, %if.else.while.cond.i_crit_edge ]
  %index.i.i.i235 = getelementptr inbounds %struct.wc_entry, ptr %node.0.i, i32 0, i32 4
  %91 = ptrtoint ptr %index.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index.i.i.i235, align 4
  %arrayidx.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %61, i32 0, i32 1, i32 %92
  %93 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %87)
  %cmp.i236 = icmp eq i64 %94, %87
  br i1 %cmp.i236, label %while.cond.i.while.cond43.i_crit_edge, label %if.end5.i

while.cond.i.while.cond43.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond43.i

if.end5.i:                                        ; preds = %while.cond.i
  %95 = call i64 @llvm.bswap.i64(i64 %94) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %88)
  %cmp7.not.i = icmp ult i64 %95, %88
  %rb_left.i237 = getelementptr inbounds %struct.rb_node, ptr %node.0.i, i32 0, i32 2
  %rb_right.i238 = getelementptr inbounds %struct.rb_node, ptr %node.0.i, i32 0, i32 1
  %cond.in.i = select i1 %cmp7.not.i, ptr %rb_right.i238, ptr %rb_left.i237
  %96 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool10.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool10.not.i, label %if.then82, label %if.end5.i.while.cond.i_crit_edge, !prof !258

if.end5.i.while.cond.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

while.cond43.i:                                   ; preds = %cleanup.i.while.cond43.i_crit_edge, %while.cond.i.while.cond43.i_crit_edge
  %e.0.i = phi ptr [ %call52.i, %cleanup.i.while.cond43.i_crit_edge ], [ %node.0.i, %while.cond.i.while.cond43.i_crit_edge ]
  %call52.i = call ptr @rb_next(ptr noundef nonnull %e.0.i) #15
  %tobool54.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool54.not.i, label %while.cond43.i.if.else83_crit_edge, label %cleanup.i, !prof !258

while.cond43.i.if.else83_crit_edge:               ; preds = %while.cond43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else83

cleanup.i:                                        ; preds = %while.cond43.i
  %97 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %memory_map.i, align 8
  %index.i.i108.i = getelementptr inbounds %struct.wc_entry, ptr %call52.i, i32 0, i32 4
  %99 = ptrtoint ptr %index.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %index.i.i108.i, align 4
  %arrayidx.i.i109.i = getelementptr %struct.wc_memory_superblock, ptr %98, i32 0, i32 1, i32 %100
  %101 = ptrtoint ptr %arrayidx.i.i109.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx.i.i109.i, align 8
  %cmp69.not.i = icmp eq i64 %102, %87
  br i1 %cmp69.not.i, label %cleanup.i.while.cond43.i_crit_edge, label %cleanup.i.if.else83_crit_edge

cleanup.i.if.else83_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else83

cleanup.i.while.cond43.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond43.i

if.then82:                                        ; preds = %if.end5.i
  %103 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr = load ptr, ptr %tree, align 4
  %tobool.not23.i = icmp eq ptr %.pr, null
  br i1 %tobool.not23.i, label %if.then82.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then82.while.end.i_crit_edge:                  ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then82
  %104 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %memory_map.i, align 8
  %106 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i22.i = getelementptr %struct.wc_memory_superblock, ptr %105, i32 0, i32 1, i32 %107
  %108 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i.i22.i, align 8
  %110 = call i64 @llvm.bswap.i64(i64 %109) #15
  br label %while.body.i249

while.body.i249:                                  ; preds = %while.body.i249.while.body.i249_crit_edge, %while.body.lr.ph.i
  %111 = phi ptr [ %.pr, %while.body.lr.ph.i ], [ %118, %while.body.i249.while.body.i249_crit_edge ]
  %index.i.i.i242 = getelementptr inbounds %struct.wc_entry, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %index.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index.i.i.i242, align 4
  %arrayidx.i.i.i243 = getelementptr %struct.wc_memory_superblock, ptr %105, i32 0, i32 1, i32 %113
  %114 = ptrtoint ptr %arrayidx.i.i.i243 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx.i.i.i243, align 8
  %116 = call i64 @llvm.bswap.i64(i64 %115) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %116, i64 %110)
  %cmp.i244 = icmp ugt i64 %116, %110
  %rb_left.i245 = getelementptr inbounds %struct.rb_node, ptr %111, i32 0, i32 2
  %rb_right.i246 = getelementptr inbounds %struct.rb_node, ptr %111, i32 0, i32 1
  %node.1.i247 = select i1 %cmp.i244, ptr %rb_left.i245, ptr %rb_right.i246
  %117 = ptrtoint ptr %node.1.i247 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %node.1.i247, align 4
  %tobool.not.i248 = icmp eq ptr %118, null
  br i1 %tobool.not.i248, label %while.cond.while.end_crit_edge.i251, label %while.body.i249.while.body.i249_crit_edge

while.body.i249.while.body.i249_crit_edge:        ; preds = %while.body.i249
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i249

while.cond.while.end_crit_edge.i251:              ; preds = %while.body.i249
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i250 = ptrtoint ptr %111 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i251, %if.then82.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  %parent.0.lcssa.i252 = phi i32 [ %phi.cast.le.i250, %while.cond.while.end_crit_edge.i251 ], [ 0, %if.then82.while.end.i_crit_edge ], [ 0, %if.else.while.end.i_crit_edge ]
  %node.0.lcssa.i253 = phi ptr [ %node.1.i247, %while.cond.while.end_crit_edge.i251 ], [ %tree, %if.then82.while.end.i_crit_edge ], [ %tree, %if.else.while.end.i_crit_edge ]
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %parent.0.lcssa.i252, ptr %arrayidx, align 4
  %rb_right.i.i254 = getelementptr inbounds %struct.rb_node, ptr %arrayidx, i32 0, i32 1
  %120 = ptrtoint ptr %rb_right.i.i254 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %rb_right.i.i254, align 4
  %rb_left.i.i255 = getelementptr inbounds %struct.rb_node, ptr %arrayidx, i32 0, i32 2
  %121 = ptrtoint ptr %rb_left.i.i255 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %rb_left.i.i255, align 4
  %122 = ptrtoint ptr %node.0.lcssa.i253 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %arrayidx, ptr %node.0.lcssa.i253, align 4
  call void @rb_insert_color(ptr noundef %arrayidx, ptr noundef %tree) #15
  %lru.i = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 1
  %123 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %lru, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lru.i, ptr noundef %lru, ptr noundef %124) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end.i.writecache_insert_entry.exit_crit_edge

while.end.i.writecache_insert_entry.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_insert_entry.exit

if.end.i.i.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %lru.i, ptr %prev1.i.i.i, align 4
  %126 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %124, ptr %lru.i, align 4
  %prev3.i.i.i = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 1, i32 1
  %127 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %lru, ptr %prev3.i.i.i, align 4
  %128 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %lru.i, ptr %lru, align 4
  br label %writecache_insert_entry.exit

writecache_insert_entry.exit:                     ; preds = %if.end.i.i.i, %while.end.i.writecache_insert_entry.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  %age.i = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 5
  %130 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %age.i, align 4
  br label %if.end135

if.else83:                                        ; preds = %cleanup.i.if.else83_crit_edge, %while.cond43.i.if.else83_crit_edge
  %131 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %memory_map.i, align 8
  %index.i.i257 = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 4
  %133 = ptrtoint ptr %index.i.i257 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %index.i.i257, align 4
  %seq_count.i258 = getelementptr %struct.wc_memory_superblock, ptr %132, i32 0, i32 1, i32 %134, i32 1
  %135 = ptrtoint ptr %seq_count.i258 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %seq_count.i258, align 8
  %137 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i261 = getelementptr %struct.wc_memory_superblock, ptr %132, i32 0, i32 1, i32 %138, i32 1
  %139 = ptrtoint ptr %seq_count.i261 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %seq_count.i261, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %136, i64 %140)
  %cmp86 = icmp eq i64 %136, %140
  br i1 %cmp86, label %do.body89, label %if.else83.if.end126_crit_edge

if.else83.if.end126_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

do.body89:                                        ; preds = %if.else83
  %call.i222 = call zeroext i1 @__kasan_check_write(ptr noundef %error91, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  call void @llvm.prefetch.p0(ptr %error91, i32 1, i32 3, i32 1) #15
  br label %do.body.i264

do.body.i264:                                     ; preds = %do.body.i264.do.body.i264_crit_edge, %do.body89
  %141 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error91, i32 0, i32 -22) #15, !srcloc !266
  %asmresult.i262 = extractvalue { i32, i32 } %141, 0
  %tobool.not.i263 = icmp eq i32 %asmresult.i262, 0
  br i1 %tobool.not.i263, label %__cmpxchg.exit266, label %do.body.i264.do.body.i264_crit_edge

do.body.i264.do.body.i264_crit_edge:              ; preds = %do.body.i264
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i264

__cmpxchg.exit266:                                ; preds = %do.body.i264
  %asmresult1.i265 = extractvalue { i32, i32 } %141, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i265)
  %tobool112.not = icmp eq i32 %asmresult1.i265, 0
  br i1 %tobool112.not, label %do.end116, label %__cmpxchg.exit266.if.end122_crit_edge

__cmpxchg.exit266.if.end122_crit_edge:            ; preds = %__cmpxchg.exit266
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

do.end116:                                        ; preds = %__cmpxchg.exit266
  call void @__sanitizer_cov_trace_pc() #17
  %conv118 = zext i32 %b.0323 to i64
  %142 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %memory_map.i, align 8
  %144 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i269 = getelementptr %struct.wc_memory_superblock, ptr %143, i32 0, i32 1, i32 %145
  %146 = ptrtoint ptr %arrayidx.i.i269 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx.i.i269, align 8
  %148 = call i64 @llvm.bswap.i64(i64 %147) #15
  %seq_count.i272 = getelementptr %struct.wc_memory_superblock, ptr %143, i32 0, i32 1, i32 %145, i32 1
  %149 = ptrtoint ptr %seq_count.i272 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %seq_count.i272, align 8
  %151 = call i64 @llvm.bswap.i64(i64 %150) #15
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i64 noundef %conv118, i64 noundef %148, i64 noundef %151) #18
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %__cmpxchg.exit266.if.end122_crit_edge
  call void @__wake_up(ptr noundef %freelist_wait123, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end126

if.end126:                                        ; preds = %if.end122, %if.else83.if.end126_crit_edge
  %152 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %memory_map.i, align 8
  %154 = ptrtoint ptr %index.i.i257 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %index.i.i257, align 4
  %seq_count.i275 = getelementptr %struct.wc_memory_superblock, ptr %153, i32 0, i32 1, i32 %155, i32 1
  %156 = ptrtoint ptr %seq_count.i275 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %seq_count.i275, align 8
  %158 = call i64 @llvm.bswap.i64(i64 %157) #15
  %159 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i278 = getelementptr %struct.wc_memory_superblock, ptr %153, i32 0, i32 1, i32 %160, i32 1
  %161 = ptrtoint ptr %seq_count.i278 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %seq_count.i278, align 8
  %163 = call i64 @llvm.bswap.i64(i64 %162) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %158, i64 %163)
  %cmp129 = icmp ugt i64 %158, %163
  br i1 %cmp129, label %if.end126.erase_this_crit_edge, label %if.else132

if.end126.erase_this_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_this

if.else132:                                       ; preds = %if.end126
  call fastcc void @writecache_free_entry(ptr noundef %1, ptr noundef nonnull %e.0.i)
  %164 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tree, align 4
  %tobool.not23.i280 = icmp eq ptr %165, null
  br i1 %tobool.not23.i280, label %if.else132.while.end.i302_crit_edge, label %while.body.lr.ph.i284

if.else132.while.end.i302_crit_edge:              ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i302

while.body.lr.ph.i284:                            ; preds = %if.else132
  %166 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %memory_map.i, align 8
  %168 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i22.i283 = getelementptr %struct.wc_memory_superblock, ptr %167, i32 0, i32 1, i32 %169
  %170 = ptrtoint ptr %arrayidx.i.i22.i283 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx.i.i22.i283, align 8
  %172 = call i64 @llvm.bswap.i64(i64 %171) #15
  br label %while.body.i292

while.body.i292:                                  ; preds = %while.body.i292.while.body.i292_crit_edge, %while.body.lr.ph.i284
  %173 = phi ptr [ %165, %while.body.lr.ph.i284 ], [ %180, %while.body.i292.while.body.i292_crit_edge ]
  %index.i.i.i285 = getelementptr inbounds %struct.wc_entry, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %index.i.i.i285 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %index.i.i.i285, align 4
  %arrayidx.i.i.i286 = getelementptr %struct.wc_memory_superblock, ptr %167, i32 0, i32 1, i32 %175
  %176 = ptrtoint ptr %arrayidx.i.i.i286 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %arrayidx.i.i.i286, align 8
  %178 = call i64 @llvm.bswap.i64(i64 %177) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %178, i64 %172)
  %cmp.i287 = icmp ugt i64 %178, %172
  %rb_left.i288 = getelementptr inbounds %struct.rb_node, ptr %173, i32 0, i32 2
  %rb_right.i289 = getelementptr inbounds %struct.rb_node, ptr %173, i32 0, i32 1
  %node.1.i290 = select i1 %cmp.i287, ptr %rb_left.i288, ptr %rb_right.i289
  %179 = ptrtoint ptr %node.1.i290 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %node.1.i290, align 4
  %tobool.not.i291 = icmp eq ptr %180, null
  br i1 %tobool.not.i291, label %while.cond.while.end_crit_edge.i294, label %while.body.i292.while.body.i292_crit_edge

while.body.i292.while.body.i292_crit_edge:        ; preds = %while.body.i292
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i292

while.cond.while.end_crit_edge.i294:              ; preds = %while.body.i292
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i293 = ptrtoint ptr %173 to i32
  br label %while.end.i302

while.end.i302:                                   ; preds = %while.cond.while.end_crit_edge.i294, %if.else132.while.end.i302_crit_edge
  %parent.0.lcssa.i295 = phi i32 [ %phi.cast.le.i293, %while.cond.while.end_crit_edge.i294 ], [ 0, %if.else132.while.end.i302_crit_edge ]
  %node.0.lcssa.i296 = phi ptr [ %node.1.i290, %while.cond.while.end_crit_edge.i294 ], [ %tree, %if.else132.while.end.i302_crit_edge ]
  %181 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %parent.0.lcssa.i295, ptr %arrayidx, align 4
  %rb_right.i.i297 = getelementptr inbounds %struct.rb_node, ptr %arrayidx, i32 0, i32 1
  %182 = ptrtoint ptr %rb_right.i.i297 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %rb_right.i.i297, align 4
  %rb_left.i.i298 = getelementptr inbounds %struct.rb_node, ptr %arrayidx, i32 0, i32 2
  %183 = ptrtoint ptr %rb_left.i.i298 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %rb_left.i.i298, align 4
  %184 = ptrtoint ptr %node.0.lcssa.i296 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %arrayidx, ptr %node.0.lcssa.i296, align 4
  call void @rb_insert_color(ptr noundef %arrayidx, ptr noundef %tree) #15
  %lru.i299 = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 1
  %185 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lru, align 4
  %call.i.i.i301 = call zeroext i1 @__list_add_valid(ptr noundef %lru.i299, ptr noundef %lru, ptr noundef %186) #15
  br i1 %call.i.i.i301, label %if.end.i.i.i305, label %while.end.i302.writecache_insert_entry.exit307_crit_edge

while.end.i302.writecache_insert_entry.exit307_crit_edge: ; preds = %while.end.i302
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_insert_entry.exit307

if.end.i.i.i305:                                  ; preds = %while.end.i302
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i303 = getelementptr inbounds %struct.list_head, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %prev1.i.i.i303 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %lru.i299, ptr %prev1.i.i.i303, align 4
  %188 = ptrtoint ptr %lru.i299 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %186, ptr %lru.i299, align 4
  %prev3.i.i.i304 = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 1, i32 1
  %189 = ptrtoint ptr %prev3.i.i.i304 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %lru, ptr %prev3.i.i.i304, align 4
  %190 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %lru.i299, ptr %lru, align 4
  br label %writecache_insert_entry.exit307

writecache_insert_entry.exit307:                  ; preds = %if.end.i.i.i305, %while.end.i302.writecache_insert_entry.exit307_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %191 = load volatile i32, ptr @jiffies, align 128
  %age.i306 = getelementptr %struct.wc_entry, ptr %59, i32 %b.0323, i32 5
  %192 = ptrtoint ptr %age.i306 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %age.i306, align 4
  br label %if.end135

if.end135:                                        ; preds = %writecache_insert_entry.exit307, %writecache_insert_entry.exit, %writecache_add_to_freelist.exit
  %need_flush.4.off0 = phi i1 [ %need_flush.1.off0, %writecache_add_to_freelist.exit ], [ %need_flush.0.off0322, %writecache_insert_entry.exit ], [ true, %writecache_insert_entry.exit307 ]
  call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 1090, i32 noundef 0) #15
  %call.i308 = call i32 @__cond_resched() #15
  %inc = add nuw i32 %b.0323, 1
  %193 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %n_blocks, align 4
  %cmp = icmp ult i32 %inc, %194
  br i1 %cmp, label %if.end135.for.body_crit_edge, label %for.end

if.end135.for.body_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end135
  br i1 %need_flush.4.off0, label %if.then139, label %for.end.if.end140_crit_edge

for.end.if.end140_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then139:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %dirty_bitmap.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 52
  %195 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dirty_bitmap.i, align 4
  %dirty_bitmap_size.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 53
  %197 = ptrtoint ptr %dirty_bitmap_size.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %dirty_bitmap_size.i, align 8
  %199 = call ptr @memset(ptr %196, i32 255, i32 %198)
  call fastcc void @writecache_commit_flushed(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %for.end.if.end140_crit_edge, %if.end28.if.end140_crit_edge
  %200 = ptrtoint ptr %freelist_size to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %freelist_size, align 8
  %writeback_size.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 5
  %202 = ptrtoint ptr %writeback_size.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %writeback_size.i, align 4
  %add.i = add i32 %203, %201
  %freelist_high_watermark.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 6
  %204 = ptrtoint ptr %freelist_high_watermark.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %freelist_high_watermark.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %205)
  %cmp.not.i = icmp ugt i32 %add.i, %205
  br i1 %cmp.not.i, label %if.end140.writecache_verify_watermark.exit_crit_edge, label %if.then.i, !prof !257

if.end140.writecache_verify_watermark.exit_crit_edge: ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_verify_watermark.exit

if.then.i:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %writeback_wq.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %206 = ptrtoint ptr %writeback_wq.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %writeback_wq.i, align 8
  %writeback_work.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 42
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %207, ptr noundef %writeback_work.i) #15
  br label %writecache_verify_watermark.exit

writecache_verify_watermark.exit:                 ; preds = %if.then.i, %if.end140.writecache_verify_watermark.exit_crit_edge
  %max_age = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 8
  %208 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %max_age, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %209)
  %cmp141.not = icmp eq i32 %209, -1
  br i1 %cmp141.not, label %writecache_verify_watermark.exit.if.end146_crit_edge, label %if.then143

writecache_verify_watermark.exit.if.end146_crit_edge: ; preds = %writecache_verify_watermark.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end146

if.then143:                                       ; preds = %writecache_verify_watermark.exit
  call void @__sanitizer_cov_trace_pc() #17
  %max_age_timer = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %210 = load volatile i32, ptr @jiffies, align 128
  %div221 = lshr i32 %209, 4
  %add = add i32 %210, %div221
  %call145 = call i32 @mod_timer(ptr noundef %max_age_timer, i32 noundef %add) #15
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %writecache_verify_watermark.exit.if.end146_crit_edge
  call void @mutex_unlock(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb299
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %error = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  %n_blocks = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_blocks, align 4
  %conv = zext i32 %6 to i64
  %freelist_size = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %freelist_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freelist_size, align 8
  %conv2 = zext i32 %8 to i64
  %writeback_size = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %writeback_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writeback_size, align 4
  %conv3 = zext i32 %10 to i64
  %stats = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56
  %11 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %stats, align 8
  %read_hits = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 1
  %13 = ptrtoint ptr %read_hits to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %read_hits, align 8
  %writes = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 2
  %15 = ptrtoint ptr %writes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %writes, align 8
  %write_hits_uncommitted = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 3
  %17 = ptrtoint ptr %write_hits_uncommitted to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %write_hits_uncommitted, align 8
  %write_hits_committed = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 4
  %19 = ptrtoint ptr %write_hits_committed to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %write_hits_committed, align 8
  %writes_around = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 5
  %21 = ptrtoint ptr %writes_around to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %writes_around, align 8
  %writes_allocate = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 6
  %23 = ptrtoint ptr %writes_allocate to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %writes_allocate, align 8
  %writes_blocked_on_freelist = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 7
  %25 = ptrtoint ptr %writes_blocked_on_freelist to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %writes_blocked_on_freelist, align 8
  %flushes = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 8
  %27 = ptrtoint ptr %flushes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flushes, align 8
  %discards = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56, i32 9
  %29 = ptrtoint ptr %discards to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %discards, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.87, i32 noundef %lnot.ext, i64 noundef %conv, i64 noundef %conv2, i64 noundef %conv3, i64 noundef %12, i64 noundef %14, i64 noundef %16, i64 noundef %18, i64 noundef %20, i64 noundef %22, i64 noundef %24, i64 noundef %26, i64 noundef %28, i64 noundef %30) #15
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp14 = icmp eq i32 %maxlen, 0
  br i1 %cmp14, label %sw.bb13.cond.end23_crit_edge, label %cond.false17

sw.bb13.cond.end23_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end23

cond.false17:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %32, i32 0, i32 3
  %ssd_dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 22
  %33 = ptrtoint ptr %ssd_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ssd_dev, align 8
  %name20 = getelementptr inbounds %struct.dm_dev, ptr %34, i32 0, i32 3
  %block_size = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 32
  %35 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %block_size, align 8
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.88, i32 noundef 115, ptr noundef %name, ptr noundef %name20, i32 noundef %36) #15
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false17, %sw.bb13.cond.end23_crit_edge
  %cond24 = phi i32 [ %call22, %cond.false17 ], [ 0, %sw.bb13.cond.end23_crit_edge ]
  %start_sector_set = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  call void @__sanitizer_cov_trace_cmp4(i32 %cond24, i32 %maxlen)
  %cmp96.not = icmp ult i32 %cond24, %maxlen
  br i1 %cmp96.not, label %cond.false99, label %cond.end23.cond.end103_crit_edge

cond.end23.cond.end103_crit_edge:                 ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end103

cond.false99:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %37, i32 3)
  %bf.load = load i24, ptr %start_sector_set, align 1
  %38 = and i24 %bf.load, 128
  %bf.cast92.not = icmp eq i24 %38, 0
  %39 = and i24 %bf.load, 8192
  %bf.cast65.not = icmp eq i24 %39, 0
  %40 = and i24 %bf.load, 16384
  %bf.cast58.not = icmp eq i24 %40, 0
  %41 = and i24 %bf.load, 32768
  %bf.cast51.not = icmp eq i24 %41, 0
  %42 = and i24 %bf.load, 65536
  %bf.cast44.not = icmp eq i24 %42, 0
  %43 = and i24 %bf.load, 131072
  %bf.cast37.not = icmp eq i24 %43, 0
  %44 = and i24 %bf.load, 262144
  %bf.cast30.not = icmp eq i24 %44, 0
  %45 = lshr i24 %bf.load, 18
  %46 = and i24 %45, 2
  %47 = zext i24 %46 to i32
  %add32 = add nuw nsw i32 %47, 2
  %extra_args.1 = select i1 %bf.cast30.not, i32 %47, i32 %add32
  %add39 = add nuw nsw i32 %extra_args.1, 2
  %extra_args.2 = select i1 %bf.cast37.not, i32 %extra_args.1, i32 %add39
  %add46 = add nuw nsw i32 %extra_args.2, 2
  %extra_args.3 = select i1 %bf.cast44.not, i32 %extra_args.2, i32 %add46
  %add53 = add nuw nsw i32 %extra_args.3, 2
  %extra_args.4 = select i1 %bf.cast51.not, i32 %extra_args.3, i32 %add53
  %add60 = add nuw nsw i32 %extra_args.4, 2
  %extra_args.5 = select i1 %bf.cast58.not, i32 %extra_args.4, i32 %add60
  %add67 = add nuw nsw i32 %extra_args.5, 2
  %extra_args.6 = select i1 %bf.cast65.not, i32 %extra_args.5, i32 %add67
  %48 = lshr i24 %bf.load, 9
  %.lobit = and i24 %48, 1
  %49 = lshr i24 %bf.load, 12
  %.lobit454 = and i24 %49, 1
  %50 = lshr i24 %bf.load, 8
  %.lobit455 = and i24 %50, 1
  %narrow = add nuw nsw i24 %.lobit454, %.lobit
  %narrow456 = add nuw nsw i24 %narrow, %.lobit455
  %extra_args.8 = zext i24 %narrow456 to i32
  %extra_args.9 = add nuw nsw i32 %extra_args.6, %extra_args.8
  %add94 = add nuw nsw i32 %extra_args.9, 2
  %extra_args.10 = select i1 %bf.cast92.not, i32 %extra_args.9, i32 %add94
  %add.ptr100 = getelementptr i8, ptr %result, i32 %cond24
  %sub101 = sub i32 %maxlen, %cond24
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.89, i32 noundef %extra_args.10) #15
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false99, %cond.end23.cond.end103_crit_edge
  %cond104 = phi i32 [ %call102, %cond.false99 ], [ 0, %cond.end23.cond.end103_crit_edge ]
  %add105 = add i32 %cond104, %cond24
  %51 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %51, i32 3)
  %bf.load107 = load i24, ptr %start_sector_set, align 1
  %52 = and i24 %bf.load107, 524288
  %bf.cast110.not = icmp eq i24 %52, 0
  br i1 %bf.cast110.not, label %cond.end103.if.end122_crit_edge, label %if.then111

cond.end103.if.end122_crit_edge:                  ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.then111:                                       ; preds = %cond.end103
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %maxlen)
  %cmp112.not = icmp ult i32 %add105, %maxlen
  br i1 %cmp112.not, label %cond.false115, label %if.then111.cond.end119_crit_edge

if.then111.cond.end119_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end119

cond.false115:                                    ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr116 = getelementptr i8, ptr %result, i32 %add105
  %sub117 = sub i32 %maxlen, %add105
  %start_sector = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 23
  %53 = ptrtoint ptr %start_sector to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %start_sector, align 8
  %call118 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr116, i32 noundef %sub117, ptr noundef nonnull @.str.90, i64 noundef %54) #15
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false115, %if.then111.cond.end119_crit_edge
  %cond120 = phi i32 [ %call118, %cond.false115 ], [ 0, %if.then111.cond.end119_crit_edge ]
  %add121 = add i32 %cond120, %add105
  br label %if.end122

if.end122:                                        ; preds = %cond.end119, %cond.end103.if.end122_crit_edge
  %sz.0 = phi i32 [ %add121, %cond.end119 ], [ %add105, %cond.end103.if.end122_crit_edge ]
  %55 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %55, i32 3)
  %bf.load124 = load i24, ptr %start_sector_set, align 1
  %56 = and i24 %bf.load124, 262144
  %bf.cast127.not = icmp eq i24 %56, 0
  br i1 %bf.cast127.not, label %if.end122.if.end139_crit_edge, label %if.then128

if.end122.if.end139_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139

if.then128:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0, i32 %maxlen)
  %cmp129.not = icmp ult i32 %sz.0, %maxlen
  br i1 %cmp129.not, label %cond.false132, label %if.then128.cond.end136_crit_edge

if.then128.cond.end136_crit_edge:                 ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end136

cond.false132:                                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr133 = getelementptr i8, ptr %result, i32 %sz.0
  %sub134 = sub i32 %maxlen, %sz.0
  %high_wm_percent_value = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 35
  %57 = ptrtoint ptr %high_wm_percent_value to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %high_wm_percent_value, align 8
  %call135 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.91, i32 noundef %58) #15
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false132, %if.then128.cond.end136_crit_edge
  %cond137 = phi i32 [ %call135, %cond.false132 ], [ 0, %if.then128.cond.end136_crit_edge ]
  %add138 = add i32 %cond137, %sz.0
  br label %if.end139

if.end139:                                        ; preds = %cond.end136, %if.end122.if.end139_crit_edge
  %sz.1 = phi i32 [ %add138, %cond.end136 ], [ %sz.0, %if.end122.if.end139_crit_edge ]
  %59 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %59, i32 3)
  %bf.load141 = load i24, ptr %start_sector_set, align 1
  %60 = and i24 %bf.load141, 131072
  %bf.cast144.not = icmp eq i24 %60, 0
  br i1 %bf.cast144.not, label %if.end139.if.end156_crit_edge, label %if.then145

if.end139.if.end156_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

if.then145:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1, i32 %maxlen)
  %cmp146.not = icmp ult i32 %sz.1, %maxlen
  br i1 %cmp146.not, label %cond.false149, label %if.then145.cond.end153_crit_edge

if.then145.cond.end153_crit_edge:                 ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end153

cond.false149:                                    ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr150 = getelementptr i8, ptr %result, i32 %sz.1
  %sub151 = sub i32 %maxlen, %sz.1
  %low_wm_percent_value = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 36
  %61 = ptrtoint ptr %low_wm_percent_value to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %low_wm_percent_value, align 4
  %call152 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr150, i32 noundef %sub151, ptr noundef nonnull @.str.92, i32 noundef %62) #15
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false149, %if.then145.cond.end153_crit_edge
  %cond154 = phi i32 [ %call152, %cond.false149 ], [ 0, %if.then145.cond.end153_crit_edge ]
  %add155 = add i32 %cond154, %sz.1
  br label %if.end156

if.end156:                                        ; preds = %cond.end153, %if.end139.if.end156_crit_edge
  %sz.2 = phi i32 [ %add155, %cond.end153 ], [ %sz.1, %if.end139.if.end156_crit_edge ]
  %63 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %63, i32 3)
  %bf.load158 = load i24, ptr %start_sector_set, align 1
  %64 = and i24 %bf.load158, 65536
  %bf.cast161.not = icmp eq i24 %64, 0
  br i1 %bf.cast161.not, label %if.end156.if.end173_crit_edge, label %if.then162

if.end156.if.end173_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173

if.then162:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2, i32 %maxlen)
  %cmp163.not = icmp ult i32 %sz.2, %maxlen
  br i1 %cmp163.not, label %cond.false166, label %if.then162.cond.end170_crit_edge

if.then162.cond.end170_crit_edge:                 ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end170

cond.false166:                                    ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr167 = getelementptr i8, ptr %result, i32 %sz.2
  %sub168 = sub i32 %maxlen, %sz.2
  %max_writeback_jobs = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 12
  %65 = ptrtoint ptr %max_writeback_jobs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_writeback_jobs, align 8
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr167, i32 noundef %sub168, ptr noundef nonnull @.str.93, i32 noundef %66) #15
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false166, %if.then162.cond.end170_crit_edge
  %cond171 = phi i32 [ %call169, %cond.false166 ], [ 0, %if.then162.cond.end170_crit_edge ]
  %add172 = add i32 %cond171, %sz.2
  br label %if.end173

if.end173:                                        ; preds = %cond.end170, %if.end156.if.end173_crit_edge
  %sz.3 = phi i32 [ %add172, %cond.end170 ], [ %sz.2, %if.end156.if.end173_crit_edge ]
  %67 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %67, i32 3)
  %bf.load175 = load i24, ptr %start_sector_set, align 1
  %68 = and i24 %bf.load175, 32768
  %bf.cast178.not = icmp eq i24 %68, 0
  br i1 %bf.cast178.not, label %if.end173.if.end190_crit_edge, label %if.then179

if.end173.if.end190_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end190

if.then179:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3, i32 %maxlen)
  %cmp180.not = icmp ult i32 %sz.3, %maxlen
  br i1 %cmp180.not, label %cond.false183, label %if.then179.cond.end187_crit_edge

if.then179.cond.end187_crit_edge:                 ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end187

cond.false183:                                    ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr184 = getelementptr i8, ptr %result, i32 %sz.3
  %sub185 = sub i32 %maxlen, %sz.3
  %autocommit_blocks = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %autocommit_blocks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %autocommit_blocks, align 4
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr184, i32 noundef %sub185, ptr noundef nonnull @.str.94, i32 noundef %70) #15
  br label %cond.end187

cond.end187:                                      ; preds = %cond.false183, %if.then179.cond.end187_crit_edge
  %cond188 = phi i32 [ %call186, %cond.false183 ], [ 0, %if.then179.cond.end187_crit_edge ]
  %add189 = add i32 %cond188, %sz.3
  br label %if.end190

if.end190:                                        ; preds = %cond.end187, %if.end173.if.end190_crit_edge
  %sz.4 = phi i32 [ %add189, %cond.end187 ], [ %sz.3, %if.end173.if.end190_crit_edge ]
  %71 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %71, i32 3)
  %bf.load192 = load i24, ptr %start_sector_set, align 1
  %72 = and i24 %bf.load192, 16384
  %bf.cast195.not = icmp eq i24 %72, 0
  br i1 %bf.cast195.not, label %if.end190.if.end207_crit_edge, label %if.then196

if.end190.if.end207_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end207

if.then196:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.4, i32 %maxlen)
  %cmp197.not = icmp ult i32 %sz.4, %maxlen
  br i1 %cmp197.not, label %cond.false200, label %if.then196.cond.end204_crit_edge

if.then196.cond.end204_crit_edge:                 ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end204

cond.false200:                                    ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr201 = getelementptr i8, ptr %result, i32 %sz.4
  %sub202 = sub i32 %maxlen, %sz.4
  %autocommit_time_value = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 37
  %73 = ptrtoint ptr %autocommit_time_value to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %autocommit_time_value, align 8
  %call203 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr201, i32 noundef %sub202, ptr noundef nonnull @.str.95, i32 noundef %74) #15
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false200, %if.then196.cond.end204_crit_edge
  %cond205 = phi i32 [ %call203, %cond.false200 ], [ 0, %if.then196.cond.end204_crit_edge ]
  %add206 = add i32 %cond205, %sz.4
  br label %if.end207

if.end207:                                        ; preds = %cond.end204, %if.end190.if.end207_crit_edge
  %sz.5 = phi i32 [ %add206, %cond.end204 ], [ %sz.4, %if.end190.if.end207_crit_edge ]
  %75 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %75, i32 3)
  %bf.load209 = load i24, ptr %start_sector_set, align 1
  %76 = and i24 %bf.load209, 8192
  %bf.cast212.not = icmp eq i24 %76, 0
  br i1 %bf.cast212.not, label %if.end207.if.end224_crit_edge, label %if.then213

if.end207.if.end224_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end224

if.then213:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.5, i32 %maxlen)
  %cmp214.not = icmp ult i32 %sz.5, %maxlen
  br i1 %cmp214.not, label %cond.false217, label %if.then213.cond.end221_crit_edge

if.then213.cond.end221_crit_edge:                 ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end221

cond.false217:                                    ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr218 = getelementptr i8, ptr %result, i32 %sz.5
  %sub219 = sub i32 %maxlen, %sz.5
  %max_age_value = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 38
  %77 = ptrtoint ptr %max_age_value to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_age_value, align 4
  %call220 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr218, i32 noundef %sub219, ptr noundef nonnull @.str.96, i32 noundef %78) #15
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false217, %if.then213.cond.end221_crit_edge
  %cond222 = phi i32 [ %call220, %cond.false217 ], [ 0, %if.then213.cond.end221_crit_edge ]
  %add223 = add i32 %cond222, %sz.5
  br label %if.end224

if.end224:                                        ; preds = %cond.end221, %if.end207.if.end224_crit_edge
  %sz.6 = phi i32 [ %add223, %cond.end221 ], [ %sz.5, %if.end207.if.end224_crit_edge ]
  %79 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %79, i32 3)
  %bf.load226 = load i24, ptr %start_sector_set, align 1
  %80 = and i24 %bf.load226, 512
  %bf.cast229.not = icmp eq i24 %80, 0
  br i1 %bf.cast229.not, label %if.end224.if.end241_crit_edge, label %if.then230

if.end224.if.end241_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end241

if.then230:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.6, i32 %maxlen)
  %cmp231.not = icmp ult i32 %sz.6, %maxlen
  br i1 %cmp231.not, label %cond.false234, label %if.then230.cond.end238_crit_edge

if.then230.cond.end238_crit_edge:                 ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end238

cond.false234:                                    ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr235 = getelementptr i8, ptr %result, i32 %sz.6
  %sub236 = sub i32 %maxlen, %sz.6
  %call237 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr235, i32 noundef %sub236, ptr noundef nonnull @.str.97) #15
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false234, %if.then230.cond.end238_crit_edge
  %cond239 = phi i32 [ %call237, %cond.false234 ], [ 0, %if.then230.cond.end238_crit_edge ]
  %add240 = add i32 %cond239, %sz.6
  br label %if.end241

if.end241:                                        ; preds = %cond.end238, %if.end224.if.end241_crit_edge
  %sz.7 = phi i32 [ %add240, %cond.end238 ], [ %sz.6, %if.end224.if.end241_crit_edge ]
  %81 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %81, i32 3)
  %bf.load243 = load i24, ptr %start_sector_set, align 1
  %82 = and i24 %bf.load243, 4096
  %bf.cast246.not = icmp eq i24 %82, 0
  br i1 %bf.cast246.not, label %if.end241.if.end264_crit_edge, label %if.then247

if.end241.if.end264_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end264

if.then247:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.7, i32 %maxlen)
  %cmp248.not = icmp ult i32 %sz.7, %maxlen
  br i1 %cmp248.not, label %cond.false251, label %if.then247.cond.end261_crit_edge

if.then247.cond.end261_crit_edge:                 ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end261

cond.false251:                                    ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr252 = getelementptr i8, ptr %result, i32 %sz.7
  %sub253 = sub i32 %maxlen, %sz.7
  %83 = and i24 %bf.load243, 4194304
  %bf.cast257.not = icmp eq i24 %83, 0
  %cond259 = select i1 %bf.cast257.not, ptr @.str.100, ptr @.str.99
  %call260 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr252, i32 noundef %sub253, ptr noundef nonnull @.str.98, ptr noundef nonnull %cond259) #15
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false251, %if.then247.cond.end261_crit_edge
  %cond262 = phi i32 [ %call260, %cond.false251 ], [ 0, %if.then247.cond.end261_crit_edge ]
  %add263 = add i32 %cond262, %sz.7
  br label %if.end264

if.end264:                                        ; preds = %cond.end261, %if.end241.if.end264_crit_edge
  %sz.8 = phi i32 [ %add263, %cond.end261 ], [ %sz.7, %if.end241.if.end264_crit_edge ]
  %84 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %84, i32 3)
  %bf.load266 = load i24, ptr %start_sector_set, align 1
  %85 = and i24 %bf.load266, 256
  %bf.cast269.not = icmp eq i24 %85, 0
  br i1 %bf.cast269.not, label %if.end264.if.end281_crit_edge, label %if.then270

if.end264.if.end281_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end281

if.then270:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.8, i32 %maxlen)
  %cmp271.not = icmp ult i32 %sz.8, %maxlen
  br i1 %cmp271.not, label %cond.false274, label %if.then270.cond.end278_crit_edge

if.then270.cond.end278_crit_edge:                 ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end278

cond.false274:                                    ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr275 = getelementptr i8, ptr %result, i32 %sz.8
  %sub276 = sub i32 %maxlen, %sz.8
  %call277 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr275, i32 noundef %sub276, ptr noundef nonnull @.str.101) #15
  br label %cond.end278

cond.end278:                                      ; preds = %cond.false274, %if.then270.cond.end278_crit_edge
  %cond279 = phi i32 [ %call277, %cond.false274 ], [ 0, %if.then270.cond.end278_crit_edge ]
  %add280 = add i32 %cond279, %sz.8
  br label %if.end281

if.end281:                                        ; preds = %cond.end278, %if.end264.if.end281_crit_edge
  %sz.9 = phi i32 [ %add280, %cond.end278 ], [ %sz.8, %if.end264.if.end281_crit_edge ]
  %86 = ptrtoint ptr %start_sector_set to i32
  call void @__asan_loadN_noabort(i32 %86, i32 3)
  %bf.load283 = load i24, ptr %start_sector_set, align 1
  %87 = and i24 %bf.load283, 128
  %bf.cast286.not = icmp ne i24 %87, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.9, i32 %maxlen)
  %cmp288.not = icmp ult i32 %sz.9, %maxlen
  %or.cond = select i1 %bf.cast286.not, i1 %cmp288.not, i1 false
  br i1 %or.cond, label %cond.false291, label %if.end281.sw.epilog_crit_edge

if.end281.sw.epilog_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cond.false291:                                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr292 = getelementptr i8, ptr %result, i32 %sz.9
  %sub293 = sub i32 %maxlen, %sz.9
  %pause_value = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 39
  %88 = ptrtoint ptr %pause_value to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pause_value, align 8
  %call294 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr292, i32 noundef %sub293, ptr noundef nonnull @.str.102, i32 noundef %89) #15
  br label %sw.epilog

sw.bb299:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb299, %cond.false291, %if.end281.sw.epilog_crit_edge, %cond.false, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not.i = icmp eq i32 %argc, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end.i:                                         ; preds = %if.then
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %ti.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ti.i, align 8
  %call.i = tail call i32 @dm_suspended(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %if.end24

do.end.i:                                         ; preds = %if.end.i
  %error.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %if.then6.i, !prof !257

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %if.end24

if.end7.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @writecache_flush(ptr noundef %1) #15
  %writeback_all.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %writeback_all.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writeback_all.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %writeback_all.i, align 4
  %writeback_wq.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %10 = ptrtoint ptr %writeback_wq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %writeback_wq.i, align 8
  %writeback_work.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %writeback_work.i) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  %12 = ptrtoint ptr %writeback_wq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %writeback_wq.i, align 8
  tail call void @flush_workqueue(ptr noundef %13) #15
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %14 = ptrtoint ptr %writeback_all.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writeback_all.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %writeback_all.i, align 4
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not.i = icmp eq i32 %17, 0
  tail call void @mutex_unlock(ptr noundef %1) #15
  %..i = select i1 %tobool15.not.i, i32 0, i32 -5, !prof !257
  br label %if.end24

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not.i39 = icmp eq i32 %argc, 1
  br i1 %cmp.not.i39, label %if.end.i40, label %if.then5.if.end24_crit_edge

if.then5.if.end24_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end.i40:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %flush_on_suspend.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  %18 = ptrtoint ptr %flush_on_suspend.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 3)
  %bf.load.i = load i24, ptr %flush_on_suspend.i, align 1
  %bf.set.i = or i24 %bf.load.i, 2048
  store i24 %bf.set.i, ptr %flush_on_suspend.i, align 1
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %if.end24

if.else7:                                         ; preds = %if.else
  %call9 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not.i42 = icmp eq i32 %argc, 1
  br i1 %cmp.not.i42, label %if.end.i46, label %if.then11.if.end24_crit_edge

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end.i46:                                       ; preds = %if.then11
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %flush_on_suspend.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %flush_on_suspend.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 3)
  %bf.load.i.i = load i24, ptr %flush_on_suspend.i.i, align 1
  %bf.set3.i.i = or i24 %bf.load.i.i, 3072
  store i24 %bf.set3.i.i, ptr %flush_on_suspend.i.i, align 1
  %n_blocks.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %n_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_blocks.i.i, align 4
  %freelist_high_watermark.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %freelist_high_watermark.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %freelist_high_watermark.i.i, align 8
  %freelist_low_watermark.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %freelist_low_watermark.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %freelist_low_watermark.i.i, align 4
  %ti.i43 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %ti.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ti.i43, align 8
  %call.i44 = tail call i32 @dm_suspended(ptr noundef %25) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.then1.i47, label %if.end.i46.if.end2.i_crit_edge

if.end.i46.if.end2.i_crit_edge:                   ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2.i

if.then1.i47:                                     ; preds = %if.end.i46
  %freelist_size.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %freelist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freelist_size.i.i, align 8
  %writeback_size.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %writeback_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writeback_size.i.i, align 4
  %add.i.i = add i32 %29, %27
  %30 = ptrtoint ptr %freelist_high_watermark.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %freelist_high_watermark.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %31)
  %cmp.not.i.i = icmp ugt i32 %add.i.i, %31
  br i1 %cmp.not.i.i, label %if.then1.i47.if.end2.i_crit_edge, label %if.then.i.i, !prof !257

if.then1.i47.if.end2.i_crit_edge:                 ; preds = %if.then1.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2.i

if.then.i.i:                                      ; preds = %if.then1.i47
  call void @__sanitizer_cov_trace_pc() #17
  %writeback_wq.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 41
  %32 = ptrtoint ptr %writeback_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %writeback_wq.i.i, align 8
  %writeback_work.i.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %writeback_work.i.i) #15
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.i, %if.then1.i47.if.end2.i_crit_edge, %if.end.i46.if.end2.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %if.end24

if.else13:                                        ; preds = %if.else7
  %call15 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %do.end

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not.i49 = icmp eq i32 %argc, 1
  br i1 %cmp.not.i49, label %if.end.i50, label %if.then17.if.end24_crit_edge

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end.i50:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %stats.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 56
  %34 = call ptr @memset(ptr %stats.i, i32 0, i32 80)
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %if.end24

do.end:                                           ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %3) #18
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end.i50, %if.then17.if.end24_crit_edge, %if.end2.i, %if.then11.if.end24_crit_edge, %if.end.i40, %if.then5.if.end24_crit_edge, %if.end7.i, %if.then6.i, %if.then1.i, %if.then.if.end24_crit_edge
  %r.0 = phi i32 [ -22, %do.end ], [ -16, %if.then1.i ], [ -5, %if.then6.i ], [ -22, %if.then.if.end24_crit_edge ], [ %..i, %if.end7.i ], [ 0, %if.end.i40 ], [ -22, %if.then5.if.end24_crit_edge ], [ 0, %if.end2.i ], [ -22, %if.then11.if.end24_crit_edge ], [ 0, %if.end.i50 ], [ -22, %if.then17.if.end24_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %5, ptr noundef %data) #15
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @writecache_io_hints(ptr nocapture noundef readonly %ti, ptr nocapture noundef %limits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 9
  %2 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_block_size, align 4
  %block_size = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %logical_block_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %physical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 8
  %7 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %physical_block_size, align 4
  %9 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp ult i32 %8, %10
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %physical_block_size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %io_min = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 11
  %12 = ptrtoint ptr %io_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_min, align 4
  %14 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10 = icmp ult i32 %13, %15
  br i1 %cmp10, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %io_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %io_min, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_autocommit_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !257

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %writeback_wq = getelementptr i8, ptr %t, i32 364
  %2 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writeback_wq, align 8
  %flush_work = getelementptr i8, ptr %t, i32 412
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %flush_work) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_max_age_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ti = getelementptr i8, ptr %t, i32 160
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %call = tail call i32 @dm_suspended(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  %error = getelementptr i8, ptr %t, i32 -108
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then, label %do.end.if.end_crit_edge, !prof !257

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %writeback_wq = getelementptr i8, ptr %t, i32 264
  %4 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %writeback_wq, align 8
  %writeback_work = getelementptr i8, ptr %t, i32 268
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %writeback_work) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %max_age = getelementptr i8, ptr %t, i32 -128
  %7 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_age, align 8
  %div12 = lshr i32 %8, 4
  %add = add i32 %div12, %6
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_io_client_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_writeback(ptr noundef %work) #2 align 64 {
entry:
  %wait.i.i = alloca %struct.wait_queue_entry, align 4
  %from.i = alloca %struct.dm_io_region, align 8
  %to.i = alloca %struct.dm_io_region, align 8
  %plug = alloca %struct.blk_plug, align 4
  %skipped = alloca %struct.list_head, align 4
  %wbl = alloca %struct.writeback_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -524
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #15
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %skipped) #15
  %1 = getelementptr inbounds %struct.list_head, ptr %skipped, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wbl) #15
  %2 = getelementptr inbounds %struct.list_head, ptr %wbl, i32 0, i32 1
  %3 = getelementptr inbounds %struct.writeback_list, ptr %wbl, i32 0, i32 1
  %dm_kcopyd = getelementptr i8, ptr %work, i32 228
  %4 = ptrtoint ptr %dm_kcopyd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm_kcopyd, align 8
  tail call void @dm_kcopyd_client_flush(ptr noundef %5) #15
  %pause = getelementptr i8, ptr %work, i32 -392
  %6 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.end34_crit_edge, label %while.cond.preheader, !prof !258

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

while.cond.preheader:                             ; preds = %entry
  %writeback_all = getelementptr i8, ptr %work, i32 -8
  %ti = getelementptr i8, ptr %work, i32 -108
  %cleaner = getelementptr i8, ptr %work, i32 -31
  %8 = ptrtoint ptr %cleaner to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load550 = load i24, ptr %cleaner, align 1
  %9 = and i24 %bf.load550, 1024
  %bf.cast.not551 = icmp eq i24 %9, 0
  br i1 %bf.cast.not551, label %lor.lhs.false.lr.ph, label %while.cond.preheader.if.end34_crit_edge, !prof !257

while.cond.preheader.if.end34_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

lor.lhs.false.lr.ph:                              ; preds = %while.cond.preheader
  %iot = getelementptr i8, ptr %work, i32 92
  %in_flight.i = getelementptr i8, ptr %work, i32 140
  %idle_time.i = getelementptr i8, ptr %work, i32 148
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %10 = ptrtoint ptr %writeback_all to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writeback_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %lor.lhs.false15, label %lor.lhs.false.if.end34_crit_edge, !prof !257

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ti, align 8
  %call = tail call i32 @dm_suspended(ptr noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end, label %lor.lhs.false15.if.end34_crit_edge, !prof !257

lor.lhs.false15.if.end34_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end:                                           ; preds = %lor.lhs.false15
  tail call void @_raw_spin_lock_irq(ptr noundef %iot) #15
  %14 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.dm_iot_idle_time.exit_crit_edge

if.end.dm_iot_idle_time.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dm_iot_idle_time.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = ptrtoint ptr %idle_time.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idle_time.i, align 8
  %sub.i = sub i32 %16, %18
  br label %dm_iot_idle_time.exit

dm_iot_idle_time.exit:                            ; preds = %if.then.i, %if.end.dm_iot_idle_time.exit_crit_edge
  %r.0.i = phi i32 [ 0, %if.end.dm_iot_idle_time.exit_crit_edge ], [ %sub.i, %if.then.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %iot) #15
  %19 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %r.0.i)
  %cmp26.not = icmp ugt i32 %20, %r.0.i
  br i1 %cmp26.not, label %cleanup, label %dm_iot_idle_time.exit.if.end34_crit_edge

dm_iot_idle_time.exit.if.end34_crit_edge:         ; preds = %dm_iot_idle_time.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

cleanup:                                          ; preds = %dm_iot_idle_time.exit
  %sub = sub i32 %20, %r.0.i
  %21 = tail call i32 @llvm.umin.i32(i32 %sub, i32 100)
  %call33 = tail call i32 @schedule_timeout_idle(i32 noundef %21) #15
  %22 = ptrtoint ptr %cleaner to i32
  call void @__asan_loadN_noabort(i32 %22, i32 3)
  %bf.load = load i24, ptr %cleaner, align 1
  %23 = and i24 %bf.load, 1024
  %bf.cast.not = icmp eq i24 %23, 0
  br i1 %bf.cast.not, label %cleanup.lor.lhs.false_crit_edge, label %cleanup.if.end34_crit_edge, !prof !257

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

cleanup.lor.lhs.false_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %dm_iot_idle_time.exit.if.end34_crit_edge, %lor.lhs.false15.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge, %while.cond.preheader.if.end34_crit_edge, %entry.if.end34_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  %error = getelementptr i8, ptr %work, i32 -376
  %writeback_all45 = getelementptr i8, ptr %work, i32 -8
  br label %restart

restart:                                          ; preds = %if.then53.restart_crit_edge, %if.end34
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool36.not = icmp eq i32 %25, 0
  br i1 %tobool36.not, label %if.end44, label %if.then43, !prof !257

if.then43:                                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %add.ptr) #15
  br label %cleanup367

if.end44:                                         ; preds = %restart
  %26 = ptrtoint ptr %writeback_all45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writeback_all45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool46.not = icmp eq i32 %27, 0
  br i1 %tobool46.not, label %if.end44.if.end57_crit_edge, label %if.then53, !prof !257

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then53:                                        ; preds = %if.end44
  %call54 = tail call fastcc zeroext i1 @writecache_wait_for_writeback(ptr noundef %add.ptr)
  br i1 %call54, label %if.then53.restart_crit_edge, label %if.then53.if.end57_crit_edge

if.then53.if.end57_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then53.restart_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart

if.end57:                                         ; preds = %if.then53.if.end57_crit_edge, %if.end44.if.end57_crit_edge
  %overwrote_committed = getelementptr i8, ptr %work, i32 -31
  %28 = ptrtoint ptr %overwrote_committed to i32
  call void @__asan_loadN_noabort(i32 %28, i32 3)
  %bf.load58 = load i24, ptr %overwrote_committed, align 1
  %29 = and i24 %bf.load58, 2097152
  %bf.cast61.not = icmp eq i24 %29, 0
  br i1 %bf.cast61.not, label %if.end57.if.end63_crit_edge, label %if.then62

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @writecache_wait_for_ios(ptr noundef %add.ptr, i32 noundef 1)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end57.if.end63_crit_edge
  %30 = ptrtoint ptr %skipped to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %skipped, ptr %skipped, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %skipped, ptr %1, align 4
  %32 = ptrtoint ptr %wbl to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %wbl, ptr %wbl, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wbl, ptr %2, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %3, align 4
  %lru = getelementptr i8, ptr %work, i32 -432
  %35 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %lru, align 4
  %cmp.i.not552572 = icmp eq ptr %36, %lru
  br i1 %cmp.i.not552572, label %if.end63.while.end334_crit_edge, label %land.rhs.lr.ph.lr.ph

if.end63.while.end334_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end334

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end63
  %tree = getelementptr i8, ptr %work, i32 -416
  %freelist_size = getelementptr i8, ptr %work, i32 -412
  %writeback_size = getelementptr i8, ptr %work, i32 -408
  %freelist_low_watermark = getelementptr i8, ptr %work, i32 -400
  %prev = getelementptr i8, ptr %work, i32 -428
  %max_age = getelementptr i8, ptr %work, i32 -396
  %memory_map.i.i.i.i = getelementptr i8, ptr %work, i32 -84
  %seq_count.i = getelementptr i8, ptr %work, i32 -60
  %block_size = getelementptr i8, ptr %work, i32 -36
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.end331.land.rhs.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph
  %g.0.ph575 = phi ptr [ inttoptr (i32 -1 to ptr), %land.rhs.lr.ph.lr.ph ], [ %g.2, %while.end331.land.rhs.lr.ph_crit_edge ]
  %e.0.ph574 = phi ptr [ null, %land.rhs.lr.ph.lr.ph ], [ %e.1, %while.end331.land.rhs.lr.ph_crit_edge ]
  %n_walked.0.ph573 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %n_walked.2, %while.end331.land.rhs.lr.ph_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %do.end209.land.rhs_crit_edge, %land.rhs.lr.ph
  %e.0554 = phi ptr [ %e.0.ph574, %land.rhs.lr.ph ], [ %e.1, %do.end209.land.rhs_crit_edge ]
  %n_walked.0553 = phi i32 [ %n_walked.0.ph573, %land.rhs.lr.ph ], [ %inc519524, %do.end209.land.rhs_crit_edge ]
  %37 = ptrtoint ptr %writeback_all45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %writeback_all45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool68.not = icmp eq i32 %38, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %while.body79.thread

lor.lhs.false69:                                  ; preds = %land.rhs
  %39 = ptrtoint ptr %freelist_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %freelist_size, align 8
  %41 = ptrtoint ptr %writeback_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %writeback_size, align 4
  %add = add i32 %42, %40
  %43 = ptrtoint ptr %freelist_low_watermark to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %freelist_low_watermark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %44)
  %cmp70.not = icmp ugt i32 %add, %44
  br i1 %cmp70.not, label %lor.rhs, label %lor.lhs.false69.while.body79_crit_edge

lor.lhs.false69.while.body79_crit_edge:           ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body79

lor.rhs:                                          ; preds = %lor.lhs.false69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %46 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev, align 4
  %age = getelementptr i8, ptr %47, i32 16
  %48 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %age, align 4
  %sub75 = sub i32 %45, %49
  %50 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_age, align 8
  %div467 = lshr i32 %51, 4
  %sub77 = sub i32 %51, %div467
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75, i32 %sub77)
  %cmp78.not = icmp ult i32 %sub75, %sub77
  br i1 %cmp78.not, label %lor.rhs.while.end334_crit_edge, label %lor.rhs.while.body79_crit_edge

lor.rhs.while.body79_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body79

lor.rhs.while.end334_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end334

while.body79:                                     ; preds = %lor.rhs.while.body79_crit_edge, %lor.lhs.false69.while.body79_crit_edge
  %inc = add i32 %n_walked.0553, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc)
  %cmp80 = icmp ugt i32 %inc, 64
  br i1 %cmp80, label %if.then97.critedge, label %if.else137, !prof !258

while.body79.thread:                              ; preds = %land.rhs
  %inc517 = add i32 %n_walked.0553, 1
  %tobool122.not = icmp eq ptr %e.0554, null
  br i1 %tobool122.not, label %if.then131, label %while.body79.thread.do.body144_crit_edge, !prof !258

while.body79.thread.do.body144_crit_edge:         ; preds = %while.body79.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body144

if.then97.critedge:                               ; preds = %while.body79
  %ti98 = getelementptr i8, ptr %work, i32 -108
  %52 = ptrtoint ptr %ti98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ti98, align 8
  %call99 = call i32 @dm_suspended(ptr noundef %53) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then109, label %if.then97.critedge.while.end334_crit_edge, !prof !257

if.then97.critedge.while.end334_crit_edge:        ; preds = %if.then97.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end334

if.then109:                                       ; preds = %if.then97.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %writeback_wq = getelementptr i8, ptr %work, i32 -4
  %54 = ptrtoint ptr %writeback_wq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %writeback_wq, align 8
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %work) #15
  br label %while.end334

if.then131:                                       ; preds = %while.body79.thread
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @writecache_flush(ptr noundef %add.ptr)
  %call133 = call ptr @rb_first(ptr noundef %tree) #15
  br label %do.body144

if.else137:                                       ; preds = %while.body79
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev, align 4
  %add.ptr142 = getelementptr i8, ptr %57, i32 -12
  br label %do.body144

do.body144:                                       ; preds = %if.else137, %if.then131, %while.body79.thread.do.body144_crit_edge
  %inc519524 = phi i32 [ %inc517, %if.then131 ], [ %inc, %if.else137 ], [ %inc517, %while.body79.thread.do.body144_crit_edge ]
  %e.1 = phi ptr [ %call133, %if.then131 ], [ %add.ptr142, %if.else137 ], [ %g.0.ph575, %while.body79.thread.do.body144_crit_edge ]
  %write_in_progress = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 3
  %58 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %write_in_progress, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool145.not = icmp eq i8 %59, 0
  br i1 %tobool145.not, label %do.end161, label %do.body153, !prof !257

do.body153:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1992, 0\0A.popsection", ""() #15, !srcloc !270
  unreachable

do.end161:                                        ; preds = %do.body144
  %60 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 4
  %62 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i.i = getelementptr %struct.wc_memory_superblock, ptr %61, i32 0, i32 1, i32 %63, i32 1
  %64 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seq_count.i.i, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #15
  %67 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %seq_count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %68)
  %cmp.i469 = icmp ult i64 %66, %68
  br i1 %cmp.i469, label %do.end161.if.end172_crit_edge, label %if.then171, !prof !257

do.end161.if.end172_crit_edge:                    ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172

if.then171:                                       ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @writecache_flush(ptr noundef %add.ptr)
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %do.end161.if.end172_crit_edge
  %call173 = call ptr @rb_prev(ptr noundef %e.1) #15
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %if.end172.if.end214_crit_edge, label %if.then175

if.end172.if.end214_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214

if.then175:                                       ; preds = %if.end172
  %69 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i = getelementptr inbounds %struct.wc_entry, ptr %call173, i32 0, i32 4
  %71 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.wc_memory_superblock, ptr %70, i32 0, i32 1, i32 %72
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx.i.i, align 8
  %75 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i472 = getelementptr %struct.wc_memory_superblock, ptr %70, i32 0, i32 1, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i472 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i.i472, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %78)
  %cmp181 = icmp eq i64 %74, %78
  br i1 %cmp181, label %do.body189, label %if.then175.if.end214_crit_edge, !prof !258

if.then175.if.end214_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214

do.body189:                                       ; preds = %if.then175
  %write_in_progress190 = getelementptr inbounds %struct.wc_entry, ptr %call173, i32 0, i32 3
  %79 = ptrtoint ptr %write_in_progress190 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_in_progress190, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool191.not = icmp eq i8 %80, 0
  br i1 %tobool191.not, label %do.body201, label %do.end209, !prof !258

do.body201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #15, !srcloc !271
  unreachable

do.end209:                                        ; preds = %do.body189
  %lru210 = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 1
  call fastcc void @list_move(ptr noundef %lru210, ptr noundef nonnull %skipped)
  call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 2003, i32 noundef 0) #15
  %call.i473 = call i32 @__cond_resched() #15
  %81 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %lru, align 4
  %cmp.i.not = icmp eq ptr %82, %lru
  br i1 %cmp.i.not, label %do.end209.while.end334_crit_edge, label %do.end209.land.rhs_crit_edge

do.end209.land.rhs_crit_edge:                     ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

do.end209.while.end334_crit_edge:                 ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end334

if.end214:                                        ; preds = %if.then175.if.end214_crit_edge, %if.end172.if.end214_crit_edge
  %write_in_progress.le = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 3
  %83 = ptrtoint ptr %writeback_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %writeback_size, align 4
  %inc216 = add i32 %84, 1
  store i32 %inc216, ptr %writeback_size, align 4
  %lru217 = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru217) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end214.__list_del_entry.exit.i_crit_edge

if.end214.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %lru217 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lru217, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end214.__list_del_entry.exit.i_crit_edge
  %91 = ptrtoint ptr %wbl to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wbl, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lru217, ptr noundef nonnull %wbl, ptr noundef %92) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %lru217, ptr %prev1.i.i2.i, align 4
  %94 = ptrtoint ptr %lru217 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %lru217, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %wbl, ptr %prev3.i.i.i, align 4
  %96 = ptrtoint ptr %wbl to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %lru217, ptr %wbl, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  %inc220 = add i32 %98, 1
  store i32 %inc220, ptr %3, align 4
  %99 = ptrtoint ptr %write_in_progress.le to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %write_in_progress.le, align 2
  %wc_list_contiguous = getelementptr inbounds %struct.wc_entry, ptr %e.1, i32 0, i32 2
  %100 = ptrtoint ptr %wc_list_contiguous to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %wc_list_contiguous, align 4
  %call225557565 = call ptr @rb_next(ptr noundef %e.1) #15
  %tobool226.not558566 = icmp eq ptr %call225557565, null
  br i1 %tobool226.not558566, label %list_move.exit.while.end331_crit_edge, label %list_move.exit.if.end236.lr.ph_crit_edge, !prof !258

list_move.exit.if.end236.lr.ph_crit_edge:         ; preds = %list_move.exit
  br label %if.end236.lr.ph

list_move.exit.while.end331_crit_edge:            ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

while.cond222.outer:                              ; preds = %list_move.exit500
  %call225557 = call ptr @rb_next(ptr noundef nonnull %call225560) #15
  %tobool226.not558 = icmp eq ptr %call225557, null
  br i1 %tobool226.not558, label %while.cond222.outer.while.end331_crit_edge, label %while.cond222.outer.if.end236.lr.ph_crit_edge, !prof !258

while.cond222.outer.if.end236.lr.ph_crit_edge:    ; preds = %while.cond222.outer
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end236.lr.ph

while.cond222.outer.while.end331_crit_edge:       ; preds = %while.cond222.outer
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

if.end236.lr.ph:                                  ; preds = %while.cond222.outer.if.end236.lr.ph_crit_edge, %list_move.exit.if.end236.lr.ph_crit_edge
  %call225557569 = phi ptr [ %call225557, %while.cond222.outer.if.end236.lr.ph_crit_edge ], [ %call225557565, %list_move.exit.if.end236.lr.ph_crit_edge ]
  %f.0.ph568 = phi ptr [ %call225560, %while.cond222.outer.if.end236.lr.ph_crit_edge ], [ %e.1, %list_move.exit.if.end236.lr.ph_crit_edge ]
  %n_walked.1.ph567 = phi i32 [ %inc284, %while.cond222.outer.if.end236.lr.ph_crit_edge ], [ %inc519524, %list_move.exit.if.end236.lr.ph_crit_edge ]
  br label %if.end236

while.cond222:                                    ; preds = %if.end236
  %call225 = call ptr @rb_next(ptr noundef nonnull %call225560) #15
  %tobool226.not = icmp eq ptr %call225, null
  br i1 %tobool226.not, label %while.cond222.while.end331_crit_edge, label %while.cond222.if.end236_crit_edge, !prof !258

while.cond222.if.end236_crit_edge:                ; preds = %while.cond222
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end236

while.cond222.while.end331_crit_edge:             ; preds = %while.cond222
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

if.end236:                                        ; preds = %while.cond222.if.end236_crit_edge, %if.end236.lr.ph
  %call225560 = phi ptr [ %call225557569, %if.end236.lr.ph ], [ %call225, %while.cond222.if.end236_crit_edge ]
  %f.0559 = phi ptr [ %f.0.ph568, %if.end236.lr.ph ], [ %call225560, %while.cond222.if.end236_crit_edge ]
  %101 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i475 = getelementptr inbounds %struct.wc_entry, ptr %call225560, i32 0, i32 4
  %103 = ptrtoint ptr %index.i.i475 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index.i.i475, align 4
  %arrayidx.i.i476 = getelementptr %struct.wc_memory_superblock, ptr %102, i32 0, i32 1, i32 %104
  %105 = ptrtoint ptr %arrayidx.i.i476 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx.i.i476, align 8
  %index.i.i478 = getelementptr inbounds %struct.wc_entry, ptr %f.0559, i32 0, i32 4
  %107 = ptrtoint ptr %index.i.i478 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %index.i.i478, align 4
  %arrayidx.i.i479 = getelementptr %struct.wc_memory_superblock, ptr %102, i32 0, i32 1, i32 %108
  %109 = ptrtoint ptr %arrayidx.i.i479 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx.i.i479, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %106, i64 %110)
  %cmp242 = icmp eq i64 %106, %110
  br i1 %cmp242, label %while.cond222, label %if.end250, !prof !258

if.end250:                                        ; preds = %if.end236
  %111 = call i64 @llvm.bswap.i64(i64 %110) #15
  %112 = call i64 @llvm.bswap.i64(i64 %106) #15
  %113 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %block_size, align 8
  %shr = lshr i32 %114, 9
  %conv = zext i32 %shr to i64
  %add253 = add i64 %111, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %112, i64 %add253)
  %cmp254.not = icmp eq i64 %112, %add253
  br i1 %cmp254.not, label %if.end257, label %if.end250.while.end331_crit_edge

if.end250.while.end331_crit_edge:                 ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

if.end257:                                        ; preds = %if.end250
  %write_in_progress258 = getelementptr inbounds %struct.wc_entry, ptr %call225560, i32 0, i32 3
  %115 = ptrtoint ptr %write_in_progress258 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %write_in_progress258, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool259.not = icmp eq i8 %116, 0
  br i1 %tobool259.not, label %if.end267, label %if.end257.while.end331_crit_edge, !prof !257

if.end257.while.end331_crit_edge:                 ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

if.end267:                                        ; preds = %if.end257
  %seq_count.i.i488 = getelementptr %struct.wc_memory_superblock, ptr %102, i32 0, i32 1, i32 %104, i32 1
  %117 = ptrtoint ptr %seq_count.i.i488 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %seq_count.i.i488, align 8
  %119 = call i64 @llvm.bswap.i64(i64 %118) #15
  %120 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %seq_count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %121)
  %cmp.i490 = icmp ult i64 %119, %121
  %add.ptr279 = getelementptr %struct.wc_entry, ptr %f.0559, i32 1
  %cmp280.not = icmp eq ptr %call225560, %add.ptr279
  %or.cond = select i1 %cmp.i490, i1 %cmp280.not, i1 false
  br i1 %or.cond, label %if.end283, label %if.end267.while.end331_crit_edge, !prof !272

if.end267.while.end331_crit_edge:                 ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

if.end283:                                        ; preds = %if.end267
  %inc284 = add i32 %n_walked.1.ph567, 1
  %122 = ptrtoint ptr %writeback_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %writeback_size, align 4
  %inc286 = add i32 %123, 1
  store i32 %inc286, ptr %writeback_size, align 4
  %lru287 = getelementptr inbounds %struct.wc_entry, ptr %call225560, i32 0, i32 1
  %call.i.i491 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru287) #15
  br i1 %call.i.i491, label %if.end.i.i494, label %if.end283.__list_del_entry.exit.i496_crit_edge

if.end283.__list_del_entry.exit.i496_crit_edge:   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i496

if.end.i.i494:                                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i492 = getelementptr inbounds %struct.wc_entry, ptr %call225560, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %prev.i.i492 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i492, align 4
  %126 = ptrtoint ptr %lru287 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lru287, align 4
  %prev1.i.i.i493 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i493 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i493, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %__list_del_entry.exit.i496

__list_del_entry.exit.i496:                       ; preds = %if.end.i.i494, %if.end283.__list_del_entry.exit.i496_crit_edge
  %130 = ptrtoint ptr %wbl to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wbl, align 4
  %call.i.i.i495 = call zeroext i1 @__list_add_valid(ptr noundef %lru287, ptr noundef nonnull %wbl, ptr noundef %131) #15
  br i1 %call.i.i.i495, label %if.end.i.i.i499, label %__list_del_entry.exit.i496.list_move.exit500_crit_edge

__list_del_entry.exit.i496.list_move.exit500_crit_edge: ; preds = %__list_del_entry.exit.i496
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move.exit500

if.end.i.i.i499:                                  ; preds = %__list_del_entry.exit.i496
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2.i497 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i2.i497 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %lru287, ptr %prev1.i.i2.i497, align 4
  %133 = ptrtoint ptr %lru287 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %131, ptr %lru287, align 4
  %prev3.i.i.i498 = getelementptr inbounds %struct.wc_entry, ptr %call225560, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %prev3.i.i.i498 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %wbl, ptr %prev3.i.i.i498, align 4
  %135 = ptrtoint ptr %wbl to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %lru287, ptr %wbl, align 4
  br label %list_move.exit500

list_move.exit500:                                ; preds = %if.end.i.i.i499, %__list_del_entry.exit.i496.list_move.exit500_crit_edge
  %136 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %3, align 4
  %inc290 = add i32 %137, 1
  store i32 %inc290, ptr %3, align 4
  %138 = ptrtoint ptr %write_in_progress258 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %write_in_progress258, align 2
  %wc_list_contiguous292 = getelementptr inbounds %struct.wc_entry, ptr %call225560, i32 0, i32 2
  %139 = ptrtoint ptr %wc_list_contiguous292 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 256, ptr %wc_list_contiguous292, align 4
  %140 = ptrtoint ptr %wc_list_contiguous to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %wc_list_contiguous, align 4
  %inc294 = add i16 %141, 1
  store i16 %inc294, ptr %wc_list_contiguous, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %inc294)
  %cmp297 = icmp eq i16 %inc294, 256
  br i1 %cmp297, label %if.then305, label %while.cond222.outer, !prof !258

if.then305:                                       ; preds = %list_move.exit500
  %142 = ptrtoint ptr %writeback_all45 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %writeback_all45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool307.not = icmp eq i32 %143, 0
  br i1 %tobool307.not, label %if.then305.while.end331_crit_edge, label %if.then314, !prof !257

if.then305.while.end331_crit_edge:                ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end331

if.then314:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #17
  %call316 = call ptr @rb_next(ptr noundef nonnull %call225560) #15
  %tobool317.not = icmp eq ptr %call316, null
  %spec.select = select i1 %tobool317.not, ptr %call225560, ptr %call316, !prof !258
  br label %while.end331

while.end331:                                     ; preds = %if.then314, %if.then305.while.end331_crit_edge, %if.end267.while.end331_crit_edge, %if.end257.while.end331_crit_edge, %if.end250.while.end331_crit_edge, %while.cond222.while.end331_crit_edge, %while.cond222.outer.while.end331_crit_edge, %list_move.exit.while.end331_crit_edge
  %n_walked.2 = phi i32 [ %inc284, %if.then305.while.end331_crit_edge ], [ %inc284, %if.then314 ], [ %inc519524, %list_move.exit.while.end331_crit_edge ], [ %n_walked.1.ph567, %while.cond222.while.end331_crit_edge ], [ %inc284, %while.cond222.outer.while.end331_crit_edge ], [ %n_walked.1.ph567, %if.end267.while.end331_crit_edge ], [ %n_walked.1.ph567, %if.end257.while.end331_crit_edge ], [ %n_walked.1.ph567, %if.end250.while.end331_crit_edge ]
  %g.2 = phi ptr [ %call225560, %if.then305.while.end331_crit_edge ], [ %spec.select, %if.then314 ], [ %g.0.ph575, %list_move.exit.while.end331_crit_edge ], [ %call225560, %while.cond222.while.end331_crit_edge ], [ %call225560, %if.end250.while.end331_crit_edge ], [ %call225560, %if.end257.while.end331_crit_edge ], [ %call225560, %if.end267.while.end331_crit_edge ], [ %call225560, %while.cond222.outer.while.end331_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 2058, i32 noundef 0) #15
  %call.i501 = call i32 @__cond_resched() #15
  %144 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %lru, align 4
  %cmp.i.not552 = icmp eq ptr %145, %lru
  br i1 %cmp.i.not552, label %while.end331.while.end334_crit_edge, label %while.end331.land.rhs.lr.ph_crit_edge

while.end331.land.rhs.lr.ph_crit_edge:            ; preds = %while.end331
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.lr.ph

while.end331.while.end334_crit_edge:              ; preds = %while.end331
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end334

while.end334:                                     ; preds = %while.end331.while.end334_crit_edge, %do.end209.while.end334_crit_edge, %if.then109, %if.then97.critedge.while.end334_crit_edge, %lor.rhs.while.end334_crit_edge, %if.end63.while.end334_crit_edge
  %146 = ptrtoint ptr %skipped to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %skipped, align 4
  %cmp.i502.not = icmp eq ptr %147, %skipped
  br i1 %cmp.i502.not, label %while.end334.if.end352_crit_edge, label %if.then337

while.end334.if.end352_crit_edge:                 ; preds = %while.end334
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end352

if.then337:                                       ; preds = %while.end334
  %148 = ptrtoint ptr %skipped to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile ptr, ptr %skipped, align 4
  %cmp.i.not.i = icmp eq ptr %149, %skipped
  br i1 %cmp.i.not.i, label %if.then337.list_splice_tail.exit_crit_edge, label %if.then.i505

if.then337.list_splice_tail.exit_crit_edge:       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_tail.exit

if.then.i505:                                     ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i504 = getelementptr i8, ptr %work, i32 -428
  %150 = ptrtoint ptr %prev.i504 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i504, align 4
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  %154 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev3.i.i, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %149, ptr %151, align 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %lru, ptr %153, align 4
  store ptr %153, ptr %prev.i504, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i505, %if.then337.list_splice_tail.exit_crit_edge
  %157 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool340.not = icmp eq i32 %158, 0
  br i1 %tobool340.not, label %if.then349, label %list_splice_tail.exit.if.end352_crit_edge, !prof !258

list_splice_tail.exit.if.end352_crit_edge:        ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end352

if.then349:                                       ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call350 = call fastcc zeroext i1 @writecache_wait_for_writeback(ptr noundef %add.ptr)
  br label %if.end352

if.end352:                                        ; preds = %if.then349, %list_splice_tail.exit.if.end352_crit_edge, %while.end334.if.end352_crit_edge
  call void @mutex_unlock(ptr noundef %add.ptr) #15
  call void @blk_start_plug(ptr noundef nonnull %plug) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from.i) #15
  %159 = call ptr @memset(ptr %from.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to.i) #15
  %160 = call ptr @memset(ptr %to.i, i32 255, i32 24)
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not107.i = icmp eq i32 %162, 0
  br i1 %tobool.not107.i, label %if.end352.__writecache_writeback_ssd.exit_crit_edge, label %while.body.lr.ph.i

if.end352.__writecache_writeback_ssd.exit_crit_edge: ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #17
  br label %__writecache_writeback_ssd.exit

while.body.lr.ph.i:                               ; preds = %if.end352
  %block_size_bits.i = getelementptr i8, ptr %work, i32 -32
  %ssd_dev.i = getelementptr i8, ptr %work, i32 -100
  %start_sector.i.i = getelementptr i8, ptr %work, i32 -92
  %metadata_sectors.i.i = getelementptr i8, ptr %work, i32 -68
  %sector.i = getelementptr inbounds %struct.dm_io_region, ptr %from.i, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.dm_io_region, ptr %from.i, i32 0, i32 2
  %dev.i = getelementptr i8, ptr %work, i32 -104
  %memory_map.i.i.i.i507 = getelementptr i8, ptr %work, i32 -84
  %sector8.i = getelementptr inbounds %struct.dm_io_region, ptr %to.i, i32 0, i32 1
  %count10.i = getelementptr inbounds %struct.dm_io_region, ptr %to.i, i32 0, i32 2
  %copy_pool.i = getelementptr i8, ptr %work, i32 844
  %block_size.i = getelementptr i8, ptr %work, i32 -36
  %data_device_sectors.i = getelementptr i8, ptr %work, i32 -52
  %max_writeback_jobs.i.i = getelementptr i8, ptr %work, i32 -380
  %writeback_size.i.i = getelementptr i8, ptr %work, i32 -408
  %163 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 1
  %164 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 2
  %165 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3
  %166 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3, i32 1
  %freelist_wait.i.i = getelementptr i8, ptr %work, i32 -320
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %167 = phi i32 [ %162, %while.body.lr.ph.i ], [ %269, %cleanup.i.while.body.i_crit_edge ]
  %dec.i = add i32 %167, -1
  %168 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %dec.i, ptr %3, align 4
  %169 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %170, i32 -12
  %call.i.i.i508 = call zeroext i1 @__list_del_entry_valid(ptr noundef %170) #15
  br i1 %call.i.i.i508, label %if.end.i.i.i509, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i509:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i.i, align 4
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %170, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i509, %while.body.i.list_del.exit.i_crit_edge
  %177 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr inttoptr (i32 256 to ptr), ptr %170, align 4
  %prev.i.i510 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %178 = ptrtoint ptr %prev.i.i510 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i510, align 4
  %wc_list_contiguous.i = getelementptr i8, ptr %170, i32 8
  %179 = ptrtoint ptr %wc_list_contiguous.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %wc_list_contiguous.i, align 4
  %conv.i511 = zext i16 %180 to i32
  %181 = ptrtoint ptr %block_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %block_size_bits.i, align 4
  %conv2.i = zext i8 %182 to i32
  %sub.i512 = add nsw i32 %conv2.i, -9
  %shl.i = shl i32 %conv.i511, %sub.i512
  %183 = ptrtoint ptr %ssd_dev.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ssd_dev.i, align 8
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %187 = ptrtoint ptr %from.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %186, ptr %from.i, align 8
  %188 = ptrtoint ptr %start_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %start_sector.i.i, align 8
  %190 = ptrtoint ptr %metadata_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %metadata_sectors.i.i, align 8
  %conv.i.i = zext i32 %191 to i64
  %add.i.i = add i64 %189, %conv.i.i
  %index.i.i513 = getelementptr i8, ptr %170, i32 12
  %192 = ptrtoint ptr %index.i.i513 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %index.i.i513, align 4
  %conv1.i.i = zext i32 %193 to i64
  %sh_prom.i.i = zext i32 %sub.i512 to i64
  %shl.i.i = shl i64 %conv1.i.i, %sh_prom.i.i
  %add3.i.i = add i64 %add.i.i, %shl.i.i
  %194 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %add3.i.i, ptr %sector.i, align 8
  %conv4.i = zext i32 %shl.i to i64
  %195 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv4.i, ptr %count.i, align 8
  %196 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %to.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %199, ptr %to.i, align 8
  %201 = ptrtoint ptr %memory_map.i.i.i.i507 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %memory_map.i.i.i.i507, align 8
  %203 = load i32, ptr %index.i.i513, align 4
  %arrayidx.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %202, i32 0, i32 1, i32 %203
  %204 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %arrayidx.i.i.i, align 8
  %206 = call i64 @llvm.bswap.i64(i64 %205) #15
  %207 = ptrtoint ptr %sector8.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %206, ptr %sector8.i, align 8
  %208 = ptrtoint ptr %count10.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %conv4.i, ptr %count10.i, align 8
  %call11.i = call noalias ptr @mempool_alloc(ptr noundef %copy_pool.i, i32 noundef 3072) #15
  %wc12.i = getelementptr inbounds %struct.copy_struct, ptr %call11.i, i32 0, i32 1
  %209 = ptrtoint ptr %wc12.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %add.ptr, ptr %wc12.i, align 4
  %e13.i = getelementptr inbounds %struct.copy_struct, ptr %call11.i, i32 0, i32 2
  %210 = ptrtoint ptr %e13.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %add.ptr.i, ptr %e13.i, align 4
  %211 = ptrtoint ptr %wc_list_contiguous.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %wc_list_contiguous.i, align 4
  %conv15.i = zext i16 %212 to i32
  %n_entries.i = getelementptr inbounds %struct.copy_struct, ptr %call11.i, i32 0, i32 3
  %213 = ptrtoint ptr %n_entries.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv15.i, ptr %n_entries.i, align 4
  %214 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %block_size.i, align 8
  %shr103.i = lshr i32 %215, 9
  %sub17104.i = sub i32 %shl.i, %shr103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17104.i)
  %tobool18.not105.i = icmp eq i32 %sub17104.i, 0
  br i1 %tobool18.not105.i, label %list_del.exit.i.while.end.i_crit_edge, label %list_del.exit.i.while.body19.i_crit_edge

list_del.exit.i.while.body19.i_crit_edge:         ; preds = %list_del.exit.i
  br label %while.body19.i

list_del.exit.i.while.end.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body19.i:                                   ; preds = %list_del.exit100.i.while.body19.i_crit_edge, %list_del.exit.i.while.body19.i_crit_edge
  %sub17106.i = phi i32 [ %sub17.i, %list_del.exit100.i.while.body19.i_crit_edge ], [ %sub17104.i, %list_del.exit.i.while.body19.i_crit_edge ]
  %216 = phi ptr [ %220, %list_del.exit100.i.while.body19.i_crit_edge ], [ %170, %list_del.exit.i.while.body19.i_crit_edge ]
  %217 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %3, align 4
  %dec21.i = add i32 %218, -1
  store i32 %dec21.i, ptr %3, align 4
  %219 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %2, align 4
  %add.ptr26.i = getelementptr i8, ptr %220, i32 -12
  %add.ptr27.i = getelementptr i8, ptr %216, i32 20
  %cmp.not.i = icmp eq ptr %add.ptr26.i, %add.ptr27.i
  br i1 %cmp.not.i, label %do.end36.i, label %do.body31.i, !prof !257

do.body31.i:                                      ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1900, 0\0A.popsection", ""() #15, !srcloc !273
  unreachable

do.end36.i:                                       ; preds = %while.body19.i
  %call.i.i95.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %220) #15
  br i1 %call.i.i95.i, label %if.end.i.i98.i, label %do.end36.i.list_del.exit100.i_crit_edge

do.end36.i.list_del.exit100.i_crit_edge:          ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit100.i

if.end.i.i98.i:                                   ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i96.i = getelementptr inbounds %struct.list_head, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %prev.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %prev.i.i96.i, align 4
  %223 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %220, align 4
  %prev1.i.i.i97.i = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %prev1.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %222, ptr %prev1.i.i.i97.i, align 4
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile ptr %224, ptr %222, align 4
  br label %list_del.exit100.i

list_del.exit100.i:                               ; preds = %if.end.i.i98.i, %do.end36.i.list_del.exit100.i_crit_edge
  %227 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr inttoptr (i32 256 to ptr), ptr %220, align 4
  %prev.i99.i = getelementptr inbounds %struct.list_head, ptr %220, i32 0, i32 1
  %228 = ptrtoint ptr %prev.i99.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i99.i, align 4
  %229 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %block_size.i, align 8
  %shr.i = lshr i32 %230, 9
  %sub17.i = sub i32 %sub17106.i, %shr.i
  %tobool18.not.i = icmp eq i32 %sub17.i, 0
  br i1 %tobool18.not.i, label %list_del.exit100.i.while.end.i_crit_edge, label %list_del.exit100.i.while.body19.i_crit_edge

list_del.exit100.i.while.body19.i_crit_edge:      ; preds = %list_del.exit100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body19.i

list_del.exit100.i.while.end.i_crit_edge:         ; preds = %list_del.exit100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %list_del.exit100.i.while.end.i_crit_edge, %list_del.exit.i.while.end.i_crit_edge
  %231 = ptrtoint ptr %sector8.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %sector8.i, align 8
  %233 = ptrtoint ptr %count10.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %count10.i, align 8
  %add.i = add i64 %234, %232
  %235 = ptrtoint ptr %data_device_sectors.i to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %data_device_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %236)
  %cmp40.i = icmp ugt i64 %add.i, %236
  br i1 %cmp40.i, label %if.then48.i, label %while.end.i.if.end60.i_crit_edge, !prof !258

while.end.i.if.end60.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60.i

if.then48.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %236, i64 %232)
  %cmp51.not.i = icmp ugt i64 %236, %232
  br i1 %cmp51.not.i, label %if.end54.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @writecache_copy_endio(i32 noundef 0, i32 noundef 0, ptr noundef %call11.i) #15
  br label %cleanup.i

if.end54.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub57.i = sub i64 %236, %232
  %237 = ptrtoint ptr %count10.i to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %sub57.i, ptr %count10.i, align 8
  %238 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %sub57.i, ptr %count.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end54.i, %while.end.i.if.end60.i_crit_edge
  %239 = ptrtoint ptr %dm_kcopyd to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dm_kcopyd, align 8
  call void @dm_kcopyd_copy(ptr noundef %240, ptr noundef nonnull %from.i, i32 noundef 1, ptr noundef nonnull %to.i, i32 noundef 0, ptr noundef nonnull @writecache_copy_endio, ptr noundef %call11.i) #15
  %241 = ptrtoint ptr %max_writeback_jobs.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %max_writeback_jobs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.i.i = icmp eq i32 %242, 0
  br i1 %tobool.not.i.i, label %if.end60.i.__writeback_throttle.exit.i_crit_edge, label %do.end.i.i, !prof !257

if.end60.i.__writeback_throttle.exit.i_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__writeback_throttle.exit.i

do.end.i.i:                                       ; preds = %if.end60.i
  %243 = ptrtoint ptr %writeback_size.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %writeback_size.i.i, align 4
  %245 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %3, align 4
  %sub.i101.i = sub i32 %244, %246
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i101.i, i32 %242)
  %cmp.not.i.i = icmp ult i32 %sub.i101.i, %242
  br i1 %cmp.not.i.i, label %do.end.i.i.__writeback_throttle.exit.i_crit_edge, label %if.then4.i.i

do.end.i.i.__writeback_throttle.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__writeback_throttle.exit.i

if.then4.i.i:                                     ; preds = %do.end.i.i
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  %247 = ptrtoint ptr %writeback_size.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %writeback_size.i.i, align 4
  %249 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %3, align 4
  %sub720.i.i = sub i32 %248, %250
  %251 = ptrtoint ptr %max_writeback_jobs.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %max_writeback_jobs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub720.i.i, i32 %252)
  %cmp9.not21.i.i = icmp ult i32 %sub720.i.i, %252
  br i1 %cmp9.not21.i.i, label %if.then4.i.i.while.end.i.i_crit_edge, label %if.then4.i.i.while.body.i.i_crit_edge

if.then4.i.i.while.body.i.i_crit_edge:            ; preds = %if.then4.i.i
  br label %while.body.i.i

if.then4.i.i.while.end.i.i_crit_edge:             ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then4.i.i.while.body.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i) #15
  %253 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %wait.i.i, align 4
  %254 = call i32 @llvm.read_register.i32(metadata !243) #15
  %and.i.i.i = and i32 %254, -16384
  %255 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %task.i.i, align 8
  %258 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %257, ptr %163, align 4
  %259 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @autoremove_wake_function, ptr %164, align 4
  %260 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %165, ptr %165, align 4
  %261 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %165, ptr %166, align 4
  call void @prepare_to_wait(ptr noundef %freelist_wait.i.i, ptr noundef nonnull %wait.i.i, i32 noundef 2) #15
  call void @mutex_unlock(ptr noundef %add.ptr) #15
  call void @io_schedule() #15
  call void @finish_wait(ptr noundef %freelist_wait.i.i, ptr noundef nonnull %wait.i.i) #15
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i) #15
  %262 = ptrtoint ptr %writeback_size.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %writeback_size.i.i, align 4
  %264 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %3, align 4
  %sub7.i.i = sub i32 %263, %265
  %266 = ptrtoint ptr %max_writeback_jobs.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %max_writeback_jobs.i.i, align 8
  %cmp9.not.i.i = icmp ult i32 %sub7.i.i, %267
  br i1 %cmp9.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.then4.i.i.while.end.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %add.ptr) #15
  br label %__writeback_throttle.exit.i

__writeback_throttle.exit.i:                      ; preds = %while.end.i.i, %do.end.i.i.__writeback_throttle.exit.i_crit_edge, %if.end60.i.__writeback_throttle.exit.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 1807, i32 noundef 0) #15
  %call.i.i102.i = call i32 @__cond_resched() #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %__writeback_throttle.exit.i, %if.then53.i
  %268 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %3, align 4
  %tobool.not.i514 = icmp eq i32 %269, 0
  br i1 %tobool.not.i514, label %cleanup.i.__writecache_writeback_ssd.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cleanup.i.__writecache_writeback_ssd.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__writecache_writeback_ssd.exit

__writecache_writeback_ssd.exit:                  ; preds = %cleanup.i.__writecache_writeback_ssd.exit_crit_edge, %if.end352.__writecache_writeback_ssd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from.i) #15
  call void @blk_finish_plug(ptr noundef nonnull %plug) #15
  %270 = ptrtoint ptr %writeback_all45 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %writeback_all45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool354.not = icmp eq i32 %271, 0
  br i1 %tobool354.not, label %__writecache_writeback_ssd.exit.cleanup367_crit_edge, label %if.then361, !prof !257

__writecache_writeback_ssd.exit.cleanup367_crit_edge: ; preds = %__writecache_writeback_ssd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup367

if.then361:                                       ; preds = %__writecache_writeback_ssd.exit
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  br label %while.cond362

while.cond362:                                    ; preds = %while.cond362.while.cond362_crit_edge, %if.then361
  %call363 = call fastcc zeroext i1 @writecache_wait_for_writeback(ptr noundef %add.ptr)
  br i1 %call363, label %while.cond362.while.cond362_crit_edge, label %while.end365

while.cond362.while.cond362_crit_edge:            ; preds = %while.cond362
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond362

while.end365:                                     ; preds = %while.cond362
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %add.ptr) #15
  br label %cleanup367

cleanup367:                                       ; preds = %while.end365, %__writecache_writeback_ssd.exit.cleanup367_crit_edge, %if.then43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wbl) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %skipped) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_flush_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -568
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  tail call fastcc void @writecache_flush(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_endio_thread(ptr noundef %data) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %endio_list_lock = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 46
  %endio_list = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 47
  %prev.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 47, i32 1
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 21
  %error4.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 13
  %freelist_wait.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 16
  %writeback_size.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 5
  %copy_pool.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 55
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #15
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 8, !annotation !253
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !253
  call void @_raw_spin_lock_irq(ptr noundef %endio_list_lock) #15
  %3 = ptrtoint ptr %endio_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %endio_list, align 4
  %cmp.i.not = icmp eq ptr %4, %endio_list
  br i1 %cmp.i.not, label %__here, label %pop_from_list

__here:                                           ; preds = %while.cond
  %5 = call i32 @llvm.read_register.i32(metadata !243) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@writecache_endio_thread, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %10, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !274
  call void @_raw_spin_unlock_irq(ptr noundef %endio_list_lock) #15
  %call65 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call65, label %while.end, label %if.end153, !prof !258

if.end153:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  call void @schedule() #15
  br label %cleanup

pop_from_list:                                    ; preds = %while.cond
  %12 = ptrtoint ptr %endio_list to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %endio_list, align 8
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %list, align 8
  %15 = trunc i64 %13 to i32
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %16, align 4
  %18 = load ptr, ptr %list, align 8
  %prev156 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev156 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev156, align 4
  store volatile ptr %endio_list, ptr %endio_list, align 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %endio_list, ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %endio_list_lock) #15
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call fastcc void @writecache_disk_flush(ptr noundef %data, ptr noundef %22)
  call void @mutex_lock_nested(ptr noundef %data, i32 noundef 0) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.end93.i.do.body.i_crit_edge, %pop_from_list
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.i.list_del.exit.i_crit_edge

do.body.i.list_del.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.body.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %error.i = getelementptr inbounds %struct.copy_struct, ptr %24, i32 0, i32 4
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %list_del.exit.i.if.end31.i_crit_edge, label %do.body3.i, !prof !257

list_del.exit.i.if.end31.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

do.body3.i:                                       ; preds = %list_del.exit.i
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %error4.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !275
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i, align 4
  call void @llvm.prefetch.p0(ptr %error4.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body3.i
  %37 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error4.i, i32 0, i32 %36) #15, !srcloc !266
  %asmresult.i.i = extractvalue { i32, i32 } %37, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %37, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool22.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool22.not.i, label %do.end26.i, label %__cmpxchg.exit.i.if.end.i_crit_edge

__cmpxchg.exit.i.if.end.i_crit_edge:              ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end26.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end26.i, %__cmpxchg.exit.i.if.end.i_crit_edge
  call void @__wake_up(ptr noundef %freelist_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end.i, %list_del.exit.i.if.end31.i_crit_edge
  %e32.i = getelementptr inbounds %struct.copy_struct, ptr %24, i32 0, i32 2
  %38 = ptrtoint ptr %e32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %e32.i, align 4
  %n_entries.i = getelementptr inbounds %struct.copy_struct, ptr %24, i32 0, i32 3
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.end88.i.do.body33.i_crit_edge, %if.end31.i
  %e.0.i = phi ptr [ %39, %if.end31.i ], [ %incdec.ptr.i, %do.end88.i.do.body33.i_crit_edge ]
  %write_in_progress.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 3
  %40 = ptrtoint ptr %write_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %write_in_progress.i, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35.not.i = icmp eq i8 %41, 0
  br i1 %tobool35.not.i, label %do.body45.i, label %do.end53.i, !prof !258

do.body45.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1715, 0\0A.popsection", ""() #15, !srcloc !277
  unreachable

do.end53.i:                                       ; preds = %do.body33.i
  %42 = ptrtoint ptr %write_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %write_in_progress.i, align 2
  %lru.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %lru.i, ptr %lru.i, align 4
  %prev.i117.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i117.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %lru.i, ptr %prev.i117.i, align 4
  %45 = ptrtoint ptr %error4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %error4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool60.not.i = icmp eq i32 %46, 0
  br i1 %tobool60.not.i, label %if.then67.i, label %do.end53.i.do.body69.i_crit_edge, !prof !257

do.end53.i.do.body69.i_crit_edge:                 ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69.i

if.then67.i:                                      ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @writecache_free_entry(ptr noundef %data, ptr noundef %e.0.i) #15
  br label %do.body69.i

do.body69.i:                                      ; preds = %if.then67.i, %do.end53.i.do.body69.i_crit_edge
  %47 = ptrtoint ptr %writeback_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %writeback_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool70.not.i = icmp eq i32 %48, 0
  br i1 %tobool70.not.i, label %do.body80.i, label %do.end88.i, !prof !258

do.body80.i:                                      ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1721, 0\0A.popsection", ""() #15, !srcloc !278
  unreachable

do.end88.i:                                       ; preds = %do.body69.i
  %dec.i = add i32 %48, -1
  %49 = ptrtoint ptr %writeback_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dec.i, ptr %writeback_size.i, align 4
  %incdec.ptr.i = getelementptr %struct.wc_entry, ptr %e.0.i, i32 1
  %50 = ptrtoint ptr %n_entries.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_entries.i, align 4
  %dec91.i = add i32 %51, -1
  store i32 %dec91.i, ptr %n_entries.i, align 4
  %tobool92.not.i = icmp eq i32 %dec91.i, 0
  br i1 %tobool92.not.i, label %do.end93.i, label %do.end88.i.do.body33.i_crit_edge

do.end88.i.do.body33.i_crit_edge:                 ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body33.i

do.end93.i:                                       ; preds = %do.end88.i
  call void @mempool_free(ptr noundef %24, ptr noundef %copy_pool.i) #15
  %52 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %list, align 8
  %cmp.i.not.i = icmp eq ptr %53, %list
  br i1 %cmp.i.not.i, label %__writecache_endio_ssd.exit, label %do.end93.i.do.body.i_crit_edge

do.end93.i.do.body.i_crit_edge:                   ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__writecache_endio_ssd.exit:                      ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @writecache_wait_for_ios(ptr noundef %data, i32 noundef 0)
  call fastcc void @writecache_commit_flushed(ptr noundef %data, i1 noundef zeroext false)
  call void @mutex_unlock(ptr noundef %data) #15
  br label %cleanup

cleanup:                                          ; preds = %__writecache_endio_ssd.exit, %if.end153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #15
  br label %while.cond

while.end:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  %54 = inttoptr i32 %and.i to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.le to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.le, align 8
  %task_state_change127 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 212
  %57 = ptrtoint ptr %task_state_change127 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 ptrtoint (ptr blockaddress(@writecache_endio_thread, %while.end) to i32), ptr %task_state_change127, align 4
  %58 = load ptr, ptr %task.le, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %58, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @writecache_flush_thread(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_list = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 50
  %tail.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 50, i32 1
  %error = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 13
  %tree.i.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 3
  %memory_map.i.i.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 24
  %seq_count.i.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 28
  %uncommitted_blocks.i = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 10
  %dev = getelementptr inbounds %struct.dm_writecache, ptr %data, i32 0, i32 21
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  tail call void @mutex_lock_nested(ptr noundef %data, i32 noundef 0) #15
  %0 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flush_list, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %__here, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %flush_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %flush_list, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.end152_crit_edge

if.then.i.if.end152_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tail.i, align 4
  br label %if.end152

__here:                                           ; preds = %while.cond
  %6 = tail call i32 @llvm.read_register.i32(metadata !243) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 212
  %10 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 ptrtoint (ptr blockaddress(@writecache_flush_thread, %__here) to i32), ptr %task_state_change, align 4
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %11, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @mutex_unlock(ptr noundef %data) #15
  %call63 = tail call zeroext i1 @kthread_should_stop() #15
  br i1 %call63, label %while.end, label %if.end151, !prof !258

if.end151:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @schedule() #15
  br label %while.cond.backedge

if.end152:                                        ; preds = %if.then5.i, %if.then.i.if.end152_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf, align 8
  %and = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.then153, label %if.else

if.then153:                                       ; preds = %if.end152
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %19, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %17, %conv
  %20 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tree.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then153.writecache_discard.exit_crit_edge, label %while.cond.preheader.i.i, !prof !258

if.then153.writecache_discard.exit_crit_edge:     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_discard.exit

while.cond.preheader.i.i:                         ; preds = %if.then153
  %22 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end5.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %node.0.i.i = phi ptr [ %cond.i.i, %if.end5.i.i.while.cond.i.i_crit_edge ], [ %21, %while.cond.preheader.i.i ]
  %index.i.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %node.0.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %23, i32 0, i32 1, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %17)
  %cmp.i.i = icmp eq i64 %28, %17
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond43.i.i_crit_edge, label %if.end5.i.i

while.cond.i.i.while.cond43.i.i_crit_edge:        ; preds = %while.cond.i.i
  br label %while.cond43.i.i

if.end5.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %17)
  %cmp7.not.i.i = icmp ult i64 %28, %17
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i, i32 0, i32 1
  %cond.in.i.i = select i1 %cmp7.not.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %29 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool10.not.i.i, label %if.then19.i.i, label %if.end5.i.i.while.cond.i.i_crit_edge, !prof !258

if.end5.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i

if.then19.i.i:                                    ; preds = %if.end5.i.i
  br i1 %cmp7.not.i.i, label %writecache_find_entry.exit.i, label %if.then19.i.i.while.cond.i.preheader_crit_edge

if.then19.i.i.while.cond.i.preheader_crit_edge:   ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.preheader

while.cond43.i.i:                                 ; preds = %cleanup.i.i.while.cond43.i.i_crit_edge, %while.cond.i.i.while.cond43.i.i_crit_edge
  %e.0.i.i = phi ptr [ %call49.i.i, %cleanup.i.i.while.cond43.i.i_crit_edge ], [ %node.0.i.i, %while.cond.i.i.while.cond43.i.i_crit_edge ]
  %call49.i.i = tail call ptr @rb_prev(ptr noundef nonnull %e.0.i.i) #15
  %tobool54.not.i.i = icmp eq ptr %call49.i.i, null
  br i1 %tobool54.not.i.i, label %while.cond43.i.i.while.cond.i.preheader_crit_edge, label %cleanup.i.i, !prof !258

while.cond43.i.i.while.cond.i.preheader_crit_edge: ; preds = %while.cond43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.preheader

cleanup.i.i:                                      ; preds = %while.cond43.i.i
  %30 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  %index.i.i108.i.i = getelementptr inbounds %struct.wc_entry, ptr %call49.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %index.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i.i108.i.i, align 4
  %arrayidx.i.i109.i.i = getelementptr %struct.wc_memory_superblock, ptr %31, i32 0, i32 1, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i109.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.i109.i.i, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #15
  %cmp69.not.i.i = icmp eq i64 %36, %17
  br i1 %cmp69.not.i.i, label %cleanup.i.i.while.cond43.i.i_crit_edge, label %cleanup.i.i.while.cond.i.preheader_crit_edge

cleanup.i.i.while.cond.i.preheader_crit_edge:     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.preheader

cleanup.i.i.while.cond43.i.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond43.i.i

writecache_find_entry.exit.i:                     ; preds = %if.then19.i.i
  %call27.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.0.i.i) #15
  %tobool.not.i192 = icmp eq ptr %call27.i.i, null
  br i1 %tobool.not.i192, label %writecache_find_entry.exit.i.writecache_discard.exit_crit_edge, label %writecache_find_entry.exit.i.while.cond.i.preheader_crit_edge, !prof !258

writecache_find_entry.exit.i.while.cond.i.preheader_crit_edge: ; preds = %writecache_find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.preheader

writecache_find_entry.exit.i.writecache_discard.exit_crit_edge: ; preds = %writecache_find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_discard.exit

while.cond.i.preheader:                           ; preds = %writecache_find_entry.exit.i.while.cond.i.preheader_crit_edge, %cleanup.i.i.while.cond.i.preheader_crit_edge, %while.cond43.i.i.while.cond.i.preheader_crit_edge, %if.then19.i.i.while.cond.i.preheader_crit_edge
  %e.0.i.ph = phi ptr [ %node.0.i.i, %if.then19.i.i.while.cond.i.preheader_crit_edge ], [ %call27.i.i, %writecache_find_entry.exit.i.while.cond.i.preheader_crit_edge ], [ %e.0.i.i, %while.cond43.i.i.while.cond.i.preheader_crit_edge ], [ %e.0.i.i, %cleanup.i.i.while.cond.i.preheader_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end22.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %discarded_something.0.off0.i = phi i1 [ %discarded_something.2.off0.i, %if.end22.i.while.cond.i_crit_edge ], [ false, %while.cond.i.preheader ]
  %e.0.i = phi ptr [ %call5.i, %if.end22.i.while.cond.i_crit_edge ], [ %e.0.i.ph, %while.cond.i.preheader ]
  %37 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  %index.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 4
  %39 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %38, i32 0, i32 1, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i.i.i, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %add)
  %cmp.i = icmp ult i64 %43, %add
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %call5.i = tail call ptr @rb_next(ptr noundef nonnull %e.0.i) #15
  %write_in_progress.i = getelementptr inbounds %struct.wc_entry, ptr %e.0.i, i32 0, i32 3
  %44 = ptrtoint ptr %write_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_in_progress.i, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool6.not.i = icmp eq i8 %45, 0
  br i1 %tobool6.not.i, label %if.then15.i, label %while.body.i.if.end22.i_crit_edge, !prof !257

while.body.i.if.end22.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.then15.i:                                      ; preds = %while.body.i
  br i1 %discarded_something.0.off0.i, label %if.then15.i.if.end18.i_crit_edge, label %if.then17.i

if.then15.i.if.end18.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @writecache_wait_for_ios(ptr noundef %data, i32 noundef 0) #15
  tail call fastcc void @writecache_wait_for_ios(ptr noundef %data, i32 noundef 1) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.then15.i.if.end18.i_crit_edge
  %46 = ptrtoint ptr %memory_map.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory_map.i.i.i.i.i, align 8
  %48 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i.i.i = getelementptr %struct.wc_memory_superblock, ptr %47, i32 0, i32 1, i32 %49, i32 1
  %50 = ptrtoint ptr %seq_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %seq_count.i.i.i, align 8
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #15
  %53 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %seq_count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp.i62.i = icmp ult i64 %52, %54
  br i1 %cmp.i62.i, label %if.end18.i.if.end21.i_crit_edge, label %if.then20.i

if.end18.i.if.end21.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %uncommitted_blocks.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %uncommitted_blocks.i, align 8
  %dec.i = add i32 %56, -1
  store i32 %dec.i, ptr %uncommitted_blocks.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end21.i_crit_edge
  tail call fastcc void @writecache_free_entry(ptr noundef %data, ptr noundef nonnull %e.0.i) #15
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end21.i, %while.body.i.if.end22.i_crit_edge
  %discarded_something.2.off0.i = phi i1 [ true, %if.end21.i ], [ %discarded_something.0.off0.i, %while.body.i.if.end22.i_crit_edge ]
  %tobool23.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool23.not.i, label %if.end22.i.while.end.i_crit_edge, label %if.end22.i.while.cond.i_crit_edge

if.end22.i.while.cond.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

if.end22.i.while.end.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.end22.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %discarded_something.3.off0.i = phi i1 [ %discarded_something.2.off0.i, %if.end22.i.while.end.i_crit_edge ], [ %discarded_something.0.off0.i, %while.cond.i.while.end.i_crit_edge ]
  br i1 %discarded_something.3.off0.i, label %if.then35.i, label %while.end.i.writecache_discard.exit_crit_edge

while.end.i.writecache_discard.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_discard.exit

if.then35.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @writecache_commit_flushed(ptr noundef %data, i1 noundef zeroext false) #15
  br label %writecache_discard.exit

writecache_discard.exit:                          ; preds = %if.then35.i, %while.end.i.writecache_discard.exit_crit_edge, %writecache_find_entry.exit.i.writecache_discard.exit_crit_edge, %if.then153.writecache_discard.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %data) #15
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %62, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %64, %60
  br i1 %cmp.not.i, label %writecache_discard.exit.bio_set_dev.exit_crit_edge, label %if.then.i193

writecache_discard.exit.bio_set_dev.exit_crit_edge: ; preds = %writecache_discard.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit

if.then.i193:                                     ; preds = %writecache_discard.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i = and i16 %62, -2177
  %65 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i193, %writecache_discard.exit.bio_set_dev.exit_crit_edge
  %66 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %1) #15
  tail call void @submit_bio_noacct(ptr noundef nonnull %1) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end169, %bio_set_dev.exit, %if.end151
  br label %while.cond

if.else:                                          ; preds = %if.end152
  tail call fastcc void @writecache_flush(ptr noundef %data)
  tail call void @mutex_unlock(ptr noundef %data) #15
  %67 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool161.not = icmp eq i32 %68, 0
  br i1 %tobool161.not, label %if.else.if.end169_crit_edge, label %if.then168, !prof !257

if.else.if.end169_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169

if.then168:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %bi_status = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %bi_status, align 2
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.else.if.end169_crit_edge
  tail call void @bio_endio(ptr noundef nonnull %1) #15
  br label %while.cond.backedge

while.end:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  %70 = inttoptr i32 %and.i to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.le, align 8
  %task_state_change125 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 212
  %73 = ptrtoint ptr %task_state_change125 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 ptrtoint (ptr blockaddress(@writecache_flush_thread, %while.end) to i32), ptr %task_state_change125, align 4
  %74 = load ptr, ptr %task.le, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %74, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !281
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc i32 @calculate_memory_size(i64 noundef %device_size, i32 noundef %block_size, ptr noundef writeonly %n_blocks_p, ptr noundef writeonly %n_metadata_blocks_p) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %block_size, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %device_size)
  %cmp165 = icmp ult i64 %device_size, 4294967296
  br i1 %cmp165, label %if.then169, label %if.else175, !prof !257

if.then169:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv170 = trunc i64 %device_size to i32
  %div173 = udiv i32 %conv170, %add
  %conv174 = zext i32 %div173 to i64
  br label %if.end179

if.else175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %device_size) #21, !srcloc !282
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end179

if.end179:                                        ; preds = %if.else175, %if.then169
  %n_blocks.0 = phi i64 [ %conv174, %if.then169 ], [ %asmresult1.i, %if.else175 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n_blocks.0)
  %tobool181.not336 = icmp eq i64 %n_blocks.0, 0
  br i1 %tobool181.not336, label %if.end179.cleanup_crit_edge, label %if.end183.lr.ph

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end183.lr.ph:                                  ; preds = %if.end179
  %conv190 = zext i32 %block_size to i64
  %add191 = add nsw i64 %conv190, -1
  %sub193 = add i32 %block_size, -1
  %conv194 = zext i32 %sub193 to i64
  %neg195 = xor i64 %conv194, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435451, i64 %n_blocks.0)
  %cmp184340 = icmp ugt i64 %n_blocks.0, 268435451
  br label %if.end183

if.end183:                                        ; preds = %if.end203.if.end183_crit_edge, %if.end183.lr.ph
  %n_blocks.1337 = phi i64 [ %n_blocks.0, %if.end183.lr.ph ], [ %dec, %if.end203.if.end183_crit_edge ]
  br i1 %cmp184340, label %if.end183.cleanup_crit_edge, label %if.end187

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end187:                                        ; preds = %if.end183
  %conv188 = trunc i64 %n_blocks.1337 to i32
  %1 = shl nuw i32 %conv188, 4
  %2 = add nuw i32 %1, 64
  %conv189 = zext i32 %2 to i64
  %sub192 = add nsw i64 %add191, %conv189
  %and196 = and i64 %sub192, %neg195
  %mul198 = mul nuw nsw i64 %n_blocks.1337, %conv190
  %add199 = add nuw nsw i64 %and196, %mul198
  call void @__sanitizer_cov_trace_cmp8(i64 %add199, i64 %device_size)
  %cmp200.not = icmp ugt i64 %add199, %device_size
  br i1 %cmp200.not, label %if.end203, label %if.end210

if.end203:                                        ; preds = %if.end187
  %dec = add nsw i64 %n_blocks.1337, -1
  %tobool181.not = icmp eq i64 %dec, 0
  br i1 %tobool181.not, label %if.end203.cleanup_crit_edge, label %if.end203.if.end183_crit_edge

if.end203.if.end183_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end210:                                        ; preds = %if.end187
  %tobool211.not = icmp eq ptr %n_blocks_p, null
  br i1 %tobool211.not, label %if.end210.if.end214_crit_edge, label %if.then212

if.end210.if.end214_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214

if.then212:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  %conv188.le = trunc i64 %n_blocks.1337 to i32
  %3 = ptrtoint ptr %n_blocks_p to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv188.le, ptr %n_blocks_p, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.end210.if.end214_crit_edge
  %tobool215.not = icmp eq ptr %n_metadata_blocks_p, null
  br i1 %tobool215.not, label %if.end214.cleanup_crit_edge, label %if.then216

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  %4 = tail call i32 @llvm.cttz.i32(i32 %block_size, i1 false) #15, !range !254
  %sh_prom218 = zext i32 %4 to i64
  %shr219 = lshr i64 %and196, %sh_prom218
  %conv220 = trunc i64 %shr219 to i32
  %5 = ptrtoint ptr %n_metadata_blocks_p to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv220, ptr %n_metadata_blocks_p, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then216, %if.end214.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.end179.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then216 ], [ 0, %if.end214.cleanup_crit_edge ], [ -28, %if.end179.cleanup_crit_edge ], [ -28, %if.end203.cleanup_crit_edge ], [ -27, %if.end183.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_client_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writecache_read_metadata(ptr nocapture noundef readonly %wc, i64 noundef %n_sectors) unnamed_addr #2 align 64 {
entry:
  %region = alloca %struct.dm_io_region, align 8
  %req = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region) #15
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %region, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #15
  %1 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 4
  %ssd_dev = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 22
  %6 = getelementptr inbounds i8, ptr %req, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %ssd_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssd_dev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %region, align 8
  %start_sector = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 23
  %13 = ptrtoint ptr %start_sector to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start_sector, align 8
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %region, i32 0, i32 1
  %15 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %sector, align 8
  %count = getelementptr inbounds %struct.dm_io_region, ptr %region, i32 0, i32 2
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %n_sectors, ptr %count, align 8
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %req, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2048, ptr %1, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %2, align 4
  %memory_map = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 24
  %20 = ptrtoint ptr %memory_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory_map, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %3, align 4
  %dm_io = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 45
  %23 = ptrtoint ptr %dm_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dm_io, align 8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %5, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %4, align 4
  %call = call i32 @dm_io(ptr noundef nonnull %req, i32 noundef 1, ptr noundef nonnull %region, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #15
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_memory(ptr noundef %wc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %memory_map_size = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 25
  %0 = ptrtoint ptr %memory_map_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %memory_map_size, align 8
  %block_size = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 32
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 8
  %n_blocks = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 27
  %add.i = add i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp165.i = icmp ult i64 %1, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !257

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv170.i = trunc i64 %1 to i32
  %div173.i = udiv i32 %conv170.i, %add.i
  %conv174.i = zext i32 %div173.i to i64
  br label %if.end179.i

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %1) #21, !srcloc !282
  %asmresult1.i.i = extractvalue { i64, i64 } %4, 1
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else175.i, %if.then169.i
  %n_blocks.0.i = phi i64 [ %conv174.i, %if.then169.i ], [ %asmresult1.i.i, %if.else175.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n_blocks.0.i)
  %tobool181.not336.i = icmp eq i64 %n_blocks.0.i, 0
  br i1 %tobool181.not336.i, label %if.end179.i.cleanup_crit_edge, label %if.end183.lr.ph.i

if.end179.i.cleanup_crit_edge:                    ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end183.lr.ph.i:                                ; preds = %if.end179.i
  %conv190.i = zext i32 %3 to i64
  %add191.i = add nsw i64 %conv190.i, -1
  %sub193.i = add i32 %3, -1
  %conv194.i = zext i32 %sub193.i to i64
  %neg195.i = xor i64 %conv194.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435451, i64 %n_blocks.0.i)
  %cmp184340.i = icmp ugt i64 %n_blocks.0.i, 268435451
  br i1 %cmp184340.i, label %if.end183.lr.ph.i.cleanup_crit_edge, label %if.end183.lr.ph.i.if.end183.i_crit_edge

if.end183.lr.ph.i.if.end183.i_crit_edge:          ; preds = %if.end183.lr.ph.i
  br label %if.end183.i

if.end183.lr.ph.i.cleanup_crit_edge:              ; preds = %if.end183.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end183.i:                                      ; preds = %if.end203.i.if.end183.i_crit_edge, %if.end183.lr.ph.i.if.end183.i_crit_edge
  %n_blocks.1337.i = phi i64 [ %dec.i, %if.end203.i.if.end183.i_crit_edge ], [ %n_blocks.0.i, %if.end183.lr.ph.i.if.end183.i_crit_edge ]
  %conv188.i = trunc i64 %n_blocks.1337.i to i32
  %5 = shl nuw i32 %conv188.i, 4
  %6 = add nuw i32 %5, 64
  %conv189.i = zext i32 %6 to i64
  %sub192.i = add nsw i64 %add191.i, %conv189.i
  %and196.i = and i64 %sub192.i, %neg195.i
  %mul198.i = mul nuw nsw i64 %n_blocks.1337.i, %conv190.i
  %add199.i = add nuw nsw i64 %and196.i, %mul198.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add199.i, i64 %1)
  %cmp200.not.i = icmp ugt i64 %add199.i, %1
  br i1 %cmp200.not.i, label %if.end203.i, label %if.end210.i

if.end203.i:                                      ; preds = %if.end183.i
  %dec.i = add nsw i64 %n_blocks.1337.i, -1
  %tobool181.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool181.not.i, label %if.end203.i.cleanup_crit_edge, label %if.end203.i.if.end183.i_crit_edge

if.end203.i.if.end183.i_crit_edge:                ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183.i

if.end203.i.cleanup_crit_edge:                    ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end210.i:                                      ; preds = %if.end183.i
  %tobool211.not.i = icmp eq ptr %n_blocks, null
  br i1 %tobool211.not.i, label %if.end210.i.if.end_crit_edge, label %if.then212.i

if.end210.i.if.end_crit_edge:                     ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then212.i:                                     ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv188.i.le = trunc i64 %n_blocks.1337.i to i32
  %7 = ptrtoint ptr %n_blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv188.i.le, ptr %n_blocks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then212.i, %if.end210.i.if.end_crit_edge
  %entries.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 31
  %8 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries.i, align 4
  %tobool.not.i55 = icmp eq ptr %9, null
  br i1 %tobool.not.i55, label %if.end.i, label %if.end.writecache_alloc_entries.exit_crit_edge

if.end.writecache_alloc_entries.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_alloc_entries.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_blocks, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 32) #15
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %retval.0.i.i = select i1 %13, i32 -1, i32 %14
  %call1.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i) #20
  %15 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %entries.i, align 4
  %tobool4.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i
  %16 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19.not.i = icmp eq i32 %17, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.writecache_alloc_entries.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.writecache_alloc_entries.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_alloc_entries.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %b.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries.i, align 4
  %index.i = getelementptr %struct.wc_entry, ptr %19, i32 %b.020.i, i32 4
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %b.020.i, ptr %index.i, align 4
  %write_in_progress.i = getelementptr %struct.wc_entry, ptr %19, i32 %b.020.i, i32 3
  %21 = ptrtoint ptr %write_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %write_in_progress.i, align 2
  tail call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 969, i32 noundef 0) #15
  %call.i.i = tail call i32 @__cond_resched() #15
  %inc.i = add nuw i32 %b.020.i, 1
  %22 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_blocks, align 4
  %cmp.i56 = icmp ult i32 %inc.i, %23
  br i1 %cmp.i56, label %for.body.i.for.body.i_crit_edge, label %for.body.i.writecache_alloc_entries.exit_crit_edge

for.body.i.writecache_alloc_entries.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_alloc_entries.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

writecache_alloc_entries.exit:                    ; preds = %for.body.i.writecache_alloc_entries.exit_crit_edge, %for.cond.preheader.i.writecache_alloc_entries.exit_crit_edge, %if.end.writecache_alloc_entries.exit_crit_edge
  %memory_map.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 24
  %24 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory_map.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %25, align 8
  %27 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.1 = getelementptr [8 x i64], ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %arrayidx.1, align 8
  %29 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.2 = getelementptr [8 x i64], ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %arrayidx.2, align 8
  %31 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.3 = getelementptr [8 x i64], ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %arrayidx.3, align 8
  %33 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.4 = getelementptr [8 x i64], ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %arrayidx.4, align 8
  %35 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.5 = getelementptr [8 x i64], ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %arrayidx.5, align 8
  %37 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.6 = getelementptr [8 x i64], ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %arrayidx.6, align 8
  %39 = load ptr, ptr %memory_map.i, align 8
  %arrayidx.7 = getelementptr [8 x i64], ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %arrayidx.7, align 8
  %41 = load ptr, ptr %memory_map.i, align 8
  %version = getelementptr inbounds %struct.anon.79, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16777216, ptr %version, align 4
  %43 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %block_size, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory_map.i, align 8
  %block_size9 = getelementptr inbounds %struct.anon.79, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %block_size9 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %block_size9, align 8
  %49 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_blocks, align 4
  %conv = zext i32 %50 to i64
  %51 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %52 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %memory_map.i, align 8
  %n_blocks12 = getelementptr inbounds %struct.anon.79, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %n_blocks12 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %51, ptr %n_blocks12, align 8
  %55 = load ptr, ptr %memory_map.i, align 8
  %seq_count = getelementptr inbounds %struct.anon.79, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %seq_count to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %seq_count, align 8
  %57 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1672.not = icmp eq i32 %58, 0
  br i1 %cmp1672.not, label %writecache_alloc_entries.exit.for.end23_crit_edge, label %writecache_alloc_entries.exit.for.body18_crit_edge

writecache_alloc_entries.exit.for.body18_crit_edge: ; preds = %writecache_alloc_entries.exit
  br label %for.body18

writecache_alloc_entries.exit.for.end23_crit_edge: ; preds = %writecache_alloc_entries.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end23

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %writecache_alloc_entries.exit.for.body18_crit_edge
  %b.173 = phi i32 [ %inc22, %for.body18.for.body18_crit_edge ], [ 0, %writecache_alloc_entries.exit.for.body18_crit_edge ]
  %59 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %entries.i, align 4
  %61 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %memory_map.i, align 8
  %index.i.i = getelementptr %struct.wc_entry, ptr %60, i32 %b.173, i32 4
  %63 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.wc_memory_superblock, ptr %62, i32 0, i32 1, i32 %64
  %65 = call ptr @memset(ptr %arrayidx.i.i, i32 255, i32 16)
  tail call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 2146, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  %inc22 = add nuw i32 %b.173, 1
  %66 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_blocks, align 4
  %cmp16 = icmp ult i32 %inc22, %67
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.body18.for.end23_crit_edge

for.body18.for.end23_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end23

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body18

for.end23:                                        ; preds = %for.body18.for.end23_crit_edge, %writecache_alloc_entries.exit.for.end23_crit_edge
  %dirty_bitmap.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 52
  %68 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dirty_bitmap.i, align 4
  %dirty_bitmap_size.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 53
  %70 = ptrtoint ptr %dirty_bitmap_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dirty_bitmap_size.i, align 8
  %72 = call ptr @memset(ptr %69, i32 255, i32 %71)
  tail call fastcc void @writecache_commit_flushed(ptr noundef %wc, i1 noundef zeroext false)
  %73 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %memory_map.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 563300387, ptr %74, align 8
  %76 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dirty_bitmap.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %or.i.i = or i32 %79, 1
  store i32 %or.i.i, ptr %77, align 4
  tail call fastcc void @writecache_commit_flushed(ptr noundef %wc, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %if.end.i.cleanup_crit_edge, %if.end203.i.cleanup_crit_edge, %if.end183.lr.ph.i.cleanup_crit_edge, %if.end179.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end23 ], [ -28, %if.end179.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -27, %if.end183.lr.ph.i.cleanup_crit_edge ], [ -28, %if.end203.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writecache_alloc_entries(ptr nocapture noundef %wc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 31
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_blocks = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 27
  %2 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_blocks, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 32) #15
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %retval.0.i = select i1 %5, i32 -1, i32 %6
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #20
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %entries, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %8 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp19.not = icmp eq i32 %9, 0
  br i1 %cmp19.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %b.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %index = getelementptr %struct.wc_entry, ptr %11, i32 %b.020, i32 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %b.020, ptr %index, align 4
  %write_in_progress = getelementptr %struct.wc_entry, ptr %11, i32 %b.020, i32 3
  %13 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %write_in_progress, align 2
  tail call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 969, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  %inc = add nuw i32 %b.020, 1
  %14 = ptrtoint ptr %n_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_blocks, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_idle(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @writecache_wait_for_writeback(ptr noundef %wc) unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_size = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %writeback_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writeback_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #15
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !243) #15
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %freelist_wait.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 16
  call void @prepare_to_wait(ptr noundef %freelist_wait.i, ptr noundef nonnull %wait.i, i32 noundef 2) #15
  call void @mutex_unlock(ptr noundef %wc) #15
  call void @io_schedule() #15
  call void @finish_wait(ptr noundef %freelist_wait.i, ptr noundef nonnull %wait.i) #15
  call void @mutex_lock_nested(ptr noundef %wc, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #15
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %15 = xor i1 %tobool.not, true
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writecache_wait_for_ios(ptr noundef %wc, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.64, i32 noundef 492) #15
  %arrayidx = getelementptr %struct.dm_writecache, ptr %wc, i32 0, i32 18, i32 %direction
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %if.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %arrayidx4 = getelementptr %struct.dm_writecache, ptr %wc, i32 0, i32 19, i32 %direction
  %call524 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx4, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call.i.i2125 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not26 = icmp eq i32 %4, 0
  br i1 %tobool9.not26, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #15
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx4, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx, align 4
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %arrayidx4, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end14

do.end14:                                         ; preds = %for.end, %entry.do.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writecache_flush(ptr noundef %wc) unnamed_addr #2 align 64 {
entry:
  %region.i = alloca %struct.dm_io_region, align 8
  %req.i = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %uncommitted_blocks = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 10
  %0 = ptrtoint ptr %uncommitted_blocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %uncommitted_blocks, align 8
  %autocommit_timer = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 15
  %call = tail call i32 @del_timer(ptr noundef %autocommit_timer) #15
  %lru = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 1
  %1 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %lru, align 4
  %cmp.i.not = icmp eq ptr %2, %lru
  br i1 %cmp.i.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup81

if.end:                                           ; preds = %entry
  %memory_map.i.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 24
  %3 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i.i = getelementptr i8, ptr %2, i32 12
  %5 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i.i, align 4
  %seq_count.i.i = getelementptr %struct.wc_memory_superblock, ptr %4, i32 0, i32 1, i32 %6, i32 1
  %7 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %seq_count.i.i, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #15
  %seq_count.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 28
  %10 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %seq_count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i125 = icmp ult i64 %9, %11
  br i1 %cmp.i125, label %if.then4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %dirty_bitmap.i.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 52
  %12 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.idx.i151 = shl i32 %13, 4
  %arrayidx.i.offs.i152 = add i32 %arrayidx.i.idx.i151, 64
  %div.i.i153 = sdiv i32 %arrayidx.i.offs.i152, 65536
  %14 = ptrtoint ptr %dirty_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dirty_bitmap.i.i, align 4
  %rem.i.i.i154 = and i32 %div.i.i153, 31
  %shl.i.i.i155 = shl nuw i32 1, %rem.i.i.i154
  %div2.i.i.i156 = lshr i32 %div.i.i153, 5
  %add.ptr.i.i.i157 = getelementptr i32, ptr %15, i32 %div2.i.i.i156
  %16 = ptrtoint ptr %add.ptr.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i157, align 4
  %or.i.i.i158 = or i32 %shl.i.i.i155, %17
  store i32 %or.i.i.i158, ptr %add.ptr.i.i.i157, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %cmp159 = icmp eq ptr %19, %lru
  br i1 %cmp159, label %while.cond.preheader.while.end_crit_edge, label %if.end17.preheader, !prof !258

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end17.preheader:                               ; preds = %while.cond.preheader
  %20 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i.i127165 = getelementptr i8, ptr %19, i32 12
  %22 = ptrtoint ptr %index.i.i.i127165 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i.i127165, align 4
  %seq_count.i.i128166 = getelementptr %struct.wc_memory_superblock, ptr %21, i32 0, i32 1, i32 %23, i32 1
  %24 = ptrtoint ptr %seq_count.i.i128166 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seq_count.i.i128166, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #15
  %27 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %seq_count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp.i130167 = icmp ult i64 %26, %28
  br i1 %cmp.i130167, label %if.end17.preheader.while.end_crit_edge, label %if.end17.preheader.if.end25_crit_edge

if.end17.preheader.if.end25_crit_edge:            ; preds = %if.end17.preheader
  br label %if.end25

if.end17.preheader.while.end_crit_edge:           ; preds = %if.end17.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then4:                                         ; preds = %if.end
  %overwrote_committed = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 34
  %29 = ptrtoint ptr %overwrote_committed to i32
  call void @__asan_loadN_noabort(i32 %29, i32 3)
  %bf.load = load i24, ptr %overwrote_committed, align 1
  %30 = and i24 %bf.load, 2097152
  %bf.cast.not = icmp eq i24 %30, 0
  br i1 %bf.cast.not, label %if.then4.cleanup81_crit_edge, label %if.then5

if.then4.cleanup81_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup81

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @writecache_wait_for_ios(ptr noundef %wc, i32 noundef 1)
  %ssd_dev = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 22
  %31 = ptrtoint ptr %ssd_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ssd_dev, align 8
  tail call fastcc void @writecache_disk_flush(ptr noundef %wc, ptr noundef %32)
  %33 = ptrtoint ptr %overwrote_committed to i32
  call void @__asan_loadN_noabort(i32 %33, i32 3)
  %bf.load7 = load i24, ptr %overwrote_committed, align 1
  %bf.clear8 = and i24 %bf.load7, -2097153
  store i24 %bf.clear8, ptr %overwrote_committed, align 1
  br label %cleanup81

if.end17:                                         ; preds = %if.end25
  %34 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i.i127 = getelementptr i8, ptr %51, i32 12
  %36 = ptrtoint ptr %index.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i.i127, align 4
  %seq_count.i.i128 = getelementptr %struct.wc_memory_superblock, ptr %35, i32 0, i32 1, i32 %37, i32 1
  %38 = ptrtoint ptr %seq_count.i.i128 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %seq_count.i.i128, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #15
  %41 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %seq_count.i, align 8
  %cmp.i130 = icmp ult i64 %40, %42
  br i1 %cmp.i130, label %if.end17.while.end_crit_edge, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end25:                                         ; preds = %if.end17.if.end25_crit_edge, %if.end17.preheader.if.end25_crit_edge
  %index.i.i.i127168 = phi ptr [ %index.i.i.i127, %if.end17.if.end25_crit_edge ], [ %index.i.i.i127165, %if.end17.preheader.if.end25_crit_edge ]
  %43 = phi ptr [ %51, %if.end17.if.end25_crit_edge ], [ %19, %if.end17.preheader.if.end25_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 821, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  %44 = ptrtoint ptr %index.i.i.i127168 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index.i.i.i127168, align 4
  %arrayidx.i.idx.i = shl i32 %45, 4
  %arrayidx.i.offs.i = add i32 %arrayidx.i.idx.i, 64
  %div.i.i = sdiv i32 %arrayidx.i.offs.i, 65536
  %46 = ptrtoint ptr %dirty_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dirty_bitmap.i.i, align 4
  %rem.i.i.i = and i32 %div.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %div.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %47, i32 %div2.i.i.i
  %48 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %49
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %43, align 4
  %cmp = icmp eq ptr %51, %lru
  br i1 %cmp, label %if.end25.while.end_crit_edge, label %if.end17, !prof !258

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %if.end17.while.end_crit_edge, %if.end17.preheader.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.pn.lcssa = phi ptr [ %2, %while.cond.preheader.while.end_crit_edge ], [ %2, %if.end17.preheader.while.end_crit_edge ], [ %43, %if.end25.while.end_crit_edge ], [ %43, %if.end17.while.end_crit_edge ]
  tail call fastcc void @writecache_commit_flushed(ptr noundef %wc, i1 noundef zeroext true)
  %52 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %seq_count.i, align 8
  %inc = add i64 %53, 1
  store i64 %inc, ptr %seq_count.i, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %inc)
  %55 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %seq_count30 = getelementptr inbounds %struct.anon.79, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %seq_count30 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %54, ptr %seq_count30, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region.i) #15
  %58 = ptrtoint ptr %region.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %region.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req.i) #15
  %59 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 2
  %61 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 2, i32 2
  %62 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 3
  %63 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 3, i32 1
  %64 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 4
  %ssd_dev.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 22
  %65 = getelementptr inbounds i8, ptr %req.i, i32 12
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %65, align 4
  %67 = ptrtoint ptr %ssd_dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ssd_dev.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %region.i, align 8
  %sector.i = getelementptr inbounds %struct.dm_io_region, ptr %region.i, i32 0, i32 1
  %block_size.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 32
  %72 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %block_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %73)
  %cmp.i131 = icmp ult i32 %73, 4096
  %phi.bo.i = lshr i32 %73, 9
  %cond.i = select i1 %cmp.i131, i32 8, i32 %phi.bo.i
  %conv.i132 = zext i32 %cond.i to i64
  %count.i = getelementptr inbounds %struct.dm_io_region, ptr %region.i, i32 0, i32 2
  %74 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv.i132, ptr %count.i, align 8
  %metadata_sectors.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 26
  %75 = ptrtoint ptr %metadata_sectors.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %metadata_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %76)
  %cmp5.i = icmp ugt i32 %cond.i, %76
  br i1 %cmp5.i, label %if.then.i, label %while.end.if.end.i_crit_edge, !prof !258

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i = zext i32 %76 to i64
  %77 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv4.i, ptr %count.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.if.end.i_crit_edge
  %start_sector.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 23
  %78 = ptrtoint ptr %start_sector.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %start_sector.i, align 8
  %80 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %sector.i, align 8
  %81 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %req.i, align 4
  %82 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 133120, ptr %59, align 4
  %83 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %60, align 4
  %84 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %86 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %61, align 4
  %dm_io.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 45
  %87 = ptrtoint ptr %dm_io.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dm_io.i, align 8
  %89 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %64, align 4
  %90 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %62, align 4
  %91 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %63, align 4
  %call.i134 = call i32 @dm_io(ptr noundef nonnull %req.i, i32 noundef 1, ptr noundef nonnull %region.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool16.not.i = icmp eq i32 %call.i134, 0
  br i1 %tobool16.not.i, label %if.end.i.ssd_commit_superblock.exit_crit_edge, label %do.body.i, !prof !257

if.end.i.ssd_commit_superblock.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ssd_commit_superblock.exit

do.body.i:                                        ; preds = %if.end.i
  %error.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %error.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !283
  call void @llvm.prefetch.p0(ptr %error.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %92 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error.i, i32 0, i32 %call.i134) #15, !srcloc !266
  %asmresult.i.i = extractvalue { i32, i32 } %92, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %92, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !284
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool41.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %__cmpxchg.exit.i.if.end48.i_crit_edge

__cmpxchg.exit.i.if.end48.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

do.end45.i:                                       ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #18
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end45.i, %__cmpxchg.exit.i.if.end48.i_crit_edge
  %freelist_wait.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 16
  call void @__wake_up(ptr noundef %freelist_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %ssd_commit_superblock.exit

ssd_commit_superblock.exit:                       ; preds = %if.end48.i, %if.end.i.ssd_commit_superblock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region.i) #15
  %overwrote_committed31 = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 34
  %93 = ptrtoint ptr %overwrote_committed31 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 3)
  %bf.load32 = load i24, ptr %overwrote_committed31, align 1
  %bf.clear33 = and i24 %bf.load32, -2097153
  store i24 %bf.clear33, ptr %overwrote_committed31, align 1
  br label %while.cond35

while.cond35:                                     ; preds = %cleanup, %ssd_commit_superblock.exit
  %need_flush_after_free.0.off0 = phi i1 [ false, %ssd_commit_superblock.exit ], [ %need_flush_after_free.1.off0147, %cleanup ]
  %.pn.pn = phi ptr [ %.pn.lcssa, %ssd_commit_superblock.exit ], [ %110, %cleanup ]
  %e.1 = getelementptr i8, ptr %.pn.pn, i32 -12
  %call38 = call ptr @rb_prev(ptr noundef %e.1) #15
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %while.cond35.if.end58_crit_edge, label %if.then40

while.cond35.if.end58_crit_edge:                  ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then40:                                        ; preds = %while.cond35
  %94 = ptrtoint ptr %memory_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %memory_map.i.i.i.i, align 8
  %index.i.i135 = getelementptr inbounds %struct.wc_entry, ptr %call38, i32 0, i32 4
  %96 = ptrtoint ptr %index.i.i135 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index.i.i135, align 4
  %arrayidx.i.i = getelementptr %struct.wc_memory_superblock, ptr %95, i32 0, i32 1, i32 %97
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx.i.i, align 8
  %index.i.i137 = getelementptr i8, ptr %.pn.pn, i32 12
  %100 = ptrtoint ptr %index.i.i137 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index.i.i137, align 4
  %arrayidx.i.i138 = getelementptr %struct.wc_memory_superblock, ptr %95, i32 0, i32 1, i32 %101
  %102 = ptrtoint ptr %arrayidx.i.i138 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx.i.i138, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %103)
  %cmp46 = icmp eq i64 %99, %103
  br i1 %cmp46, label %land.lhs.true, label %if.then40.if.end58_crit_edge

if.then40.if.end58_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

land.lhs.true:                                    ; preds = %if.then40
  %write_in_progress = getelementptr inbounds %struct.wc_entry, ptr %call38, i32 0, i32 3
  %104 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %write_in_progress, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool47.not = icmp eq i8 %105, 0
  br i1 %tobool47.not, label %if.end58.thread, label %land.lhs.true.if.end58_crit_edge, !prof !257

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %if.then40.if.end58_crit_edge, %while.cond35.if.end58_crit_edge
  %prev = getelementptr i8, ptr %.pn.pn, i32 4
  %106 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev, align 4
  %cmp61 = icmp eq ptr %107, %lru
  br i1 %cmp61, label %while.end77, label %if.end58.cleanup_crit_edge, !prof !258

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end58.thread:                                  ; preds = %land.lhs.true
  call fastcc void @writecache_free_entry(ptr noundef %wc, ptr noundef nonnull %call38)
  %prev144 = getelementptr i8, ptr %.pn.pn, i32 4
  %108 = ptrtoint ptr %prev144 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev144, align 4
  %cmp61145 = icmp eq ptr %109, %lru
  br i1 %cmp61145, label %if.end58.thread.if.then79_crit_edge, label %if.end58.thread.cleanup_crit_edge, !prof !258

if.end58.thread.cleanup_crit_edge:                ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end58.thread.if.then79_crit_edge:              ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

cleanup:                                          ; preds = %if.end58.thread.cleanup_crit_edge, %if.end58.cleanup_crit_edge
  %110 = phi ptr [ %109, %if.end58.thread.cleanup_crit_edge ], [ %107, %if.end58.cleanup_crit_edge ]
  %need_flush_after_free.1.off0147 = phi i1 [ true, %if.end58.thread.cleanup_crit_edge ], [ %need_flush_after_free.0.off0, %if.end58.cleanup_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.64, i32 noundef 850, i32 noundef 0) #15
  %call.i139 = call i32 @__cond_resched() #15
  br label %while.cond35

while.end77:                                      ; preds = %if.end58
  br i1 %need_flush_after_free.0.off0, label %while.end77.if.then79_crit_edge, label %while.end77.cleanup81_crit_edge

while.end77.cleanup81_crit_edge:                  ; preds = %while.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup81

while.end77.if.then79_crit_edge:                  ; preds = %while.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

if.then79:                                        ; preds = %while.end77.if.then79_crit_edge, %if.end58.thread.if.then79_crit_edge
  call fastcc void @writecache_commit_flushed(ptr noundef %wc, i1 noundef zeroext false)
  br label %cleanup81

cleanup81:                                        ; preds = %if.then79, %while.end77.cleanup81_crit_edge, %if.then5, %if.then4.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #15
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #15
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writecache_wait_on_freelist(ptr noundef %wc) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #15
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !243) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %freelist_wait = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 16
  call void @prepare_to_wait(ptr noundef %freelist_wait, ptr noundef nonnull %wait, i32 noundef 2) #15
  call void @mutex_unlock(ptr noundef %wc) #15
  call void @io_schedule() #15
  call void @finish_wait(ptr noundef %freelist_wait, ptr noundef nonnull %wait) #15
  call void @mutex_lock_nested(ptr noundef %wc, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writecache_disk_flush(ptr noundef %wc, ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %region = alloca %struct.dm_io_region, align 8
  %req = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region) #15
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %region, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #15
  %1 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dm_io_request, ptr %req, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %req, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %region, align 8
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %region, i32 0, i32 1
  %11 = call ptr @memset(ptr %sector, i32 0, i32 16)
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %req, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262144, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %3, align 4
  %dm_io = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 45
  %16 = ptrtoint ptr %dm_io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dm_io, align 8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %5, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %4, align 4
  %call = call i32 @dm_io(ptr noundef nonnull %req, i32 noundef 1, ptr noundef nonnull %region, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %do.body, !prof !257

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

do.body:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 13
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !285
  call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %20 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error, i32 0, i32 %call) #15, !srcloc !266
  %asmresult.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %20, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool21.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool21.not, label %do.end25, label %__cmpxchg.exit.if.end_crit_edge

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end25:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call) #18
  br label %if.end

if.end:                                           ; preds = %do.end25, %__cmpxchg.exit.if.end_crit_edge
  %freelist_wait = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 16
  call void @__wake_up(ptr noundef %freelist_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end30

if.end30:                                         ; preds = %if.end, %entry.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writecache_commit_flushed(ptr noundef %wc, i1 noundef zeroext %wait_for_ios) unnamed_addr #2 align 64 {
entry:
  %region.i = alloca %struct.dm_io_region, align 8
  %req.i = alloca %struct.dm_io_request, align 4
  %endio.i = alloca %struct.io_notify, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region.i) #15
  %0 = call ptr @memset(ptr %region.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req.i) #15
  %1 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.dm_io_request, ptr %req.i, i32 0, i32 4
  %7 = call ptr @memset(ptr %req.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %endio.i) #15
  %8 = getelementptr inbounds i8, ptr %endio.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 56)
  %10 = ptrtoint ptr %endio.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wc, ptr %endio.i, align 4
  %c.i = getelementptr inbounds %struct.io_notify, ptr %endio.i, i32 0, i32 1
  %11 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %c.i, align 4
  call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.67, ptr noundef nonnull @init_completion.__key) #15
  %count.i = getelementptr inbounds %struct.io_notify, ptr %endio.i, i32 0, i32 2
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %count.i, align 4
  %dirty_bitmap_size.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 53
  %13 = ptrtoint ptr %dirty_bitmap_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_bitmap_size.i, align 8
  %mul.i = shl i32 %14, 3
  %dirty_bitmap.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 52
  %15 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dirty_bitmap.i, align 4
  %call83.i = call i32 @_find_next_bit_be(ptr noundef %16, i32 noundef %mul.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call83.i, i32 %mul.i)
  %cmp84.i = icmp eq i32 %call83.i, %mul.i
  br i1 %cmp84.i, label %entry.while.end.i_crit_edge, label %if.end.lr.ph.i, !prof !258

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end.lr.ph.i:                                   ; preds = %entry
  %ssd_dev.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 22
  %sector.i = getelementptr inbounds %struct.dm_io_region, ptr %region.i, i32 0, i32 1
  %count11.i = getelementptr inbounds %struct.dm_io_region, ptr %region.i, i32 0, i32 2
  %metadata_sectors.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 26
  %start_sector.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 23
  %memory_map.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 24
  %dm_io.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 45
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %call85.i = phi i32 [ %call83.i, %if.end.lr.ph.i ], [ %call.i, %cleanup.i.if.end.i_crit_edge ]
  %17 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dirty_bitmap.i, align 4
  %call6.i = call i32 @_find_next_zero_bit_be(ptr noundef %18, i32 noundef %mul.i, i32 noundef %call85.i) #15
  %19 = ptrtoint ptr %ssd_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ssd_dev.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %region.i, align 8
  %conv.i = zext i32 %call85.i to i64
  %mul8.i = shl nuw nsw i64 %conv.i, 7
  %24 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %mul8.i, ptr %sector.i, align 8
  %sub.i = sub i32 %call6.i, %call85.i
  %conv9.i = zext i32 %sub.i to i64
  %mul10.i = shl nuw nsw i64 %conv9.i, 7
  %25 = ptrtoint ptr %count11.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %mul10.i, ptr %count11.i, align 8
  %26 = ptrtoint ptr %metadata_sectors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %metadata_sectors.i, align 8
  %conv13.i = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul8.i, i64 %conv13.i)
  %cmp14.not.i = icmp ult i64 %mul8.i, %conv13.i
  br i1 %cmp14.not.i, label %if.end23.i, label %if.end.i.while.end.i_crit_edge, !prof !257

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end23.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i64 %mul10.i, %mul8.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv13.i)
  %cmp28.i = icmp ugt i64 %add.i, %conv13.i
  br i1 %cmp28.i, label %if.then36.i, label %if.end23.i.cleanup.i_crit_edge, !prof !258

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then36.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub40.i = sub nsw i64 %conv13.i, %mul8.i
  %28 = ptrtoint ptr %count11.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sub40.i, ptr %count11.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then36.i, %if.end23.i.cleanup.i_crit_edge
  %29 = ptrtoint ptr %start_sector.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start_sector.i, align 8
  %add44.i = add i64 %30, %mul8.i
  %31 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add44.i, ptr %sector.i, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !260
  %33 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %req.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2048, ptr %1, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %2, align 4
  %36 = ptrtoint ptr %memory_map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memory_map.i, align 8
  %mul46.i = shl i32 %call85.i, 16
  %add.ptr.i = getelementptr i8, ptr %37, i32 %mul46.i
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %3, align 4
  %39 = ptrtoint ptr %dm_io.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dm_io.i, align 8
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %6, align 4
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @writecache_notify_io, ptr %4, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %endio.i, ptr %5, align 4
  %call49.i = call i32 @dm_io(ptr noundef nonnull %req.i, i32 noundef 1, ptr noundef nonnull %region.i, ptr noundef null) #15
  %44 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dirty_bitmap.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef %45, i32 noundef %mul.i, i32 noundef %call6.i) #15
  %cmp.i = icmp eq i32 %call.i, %mul.i
  br i1 %cmp.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.if.end.i_crit_edge, !prof !258

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #15
  %46 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp31.i.i = icmp slt i32 %47, 1
  br i1 %cmp31.i.i, label %do.body39.i.i, label %do.end47.i.i, !prof !258

do.body39.i.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 484, 0\0A.popsection", ""() #15, !srcloc !287
  unreachable

do.end47.i.i:                                     ; preds = %while.end.i
  %call.i.i57.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !262
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !263
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then50.i.i, label %do.end47.i.i.writecache_notify_io.exit.i_crit_edge

do.end47.i.i.writecache_notify_io.exit.i_crit_edge: ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_notify_io.exit.i

if.then50.i.i:                                    ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @complete(ptr noundef %c.i) #15
  br label %writecache_notify_io.exit.i

writecache_notify_io.exit.i:                      ; preds = %if.then50.i.i, %do.end47.i.i.writecache_notify_io.exit.i_crit_edge
  call void @wait_for_completion_io(ptr noundef %c.i) #15
  br i1 %wait_for_ios, label %if.then52.i, label %writecache_notify_io.exit.i.ssd_commit_flushed.exit_crit_edge

writecache_notify_io.exit.i.ssd_commit_flushed.exit_crit_edge: ; preds = %writecache_notify_io.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ssd_commit_flushed.exit

if.then52.i:                                      ; preds = %writecache_notify_io.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @writecache_wait_for_ios(ptr noundef %wc, i32 noundef 1) #15
  br label %ssd_commit_flushed.exit

ssd_commit_flushed.exit:                          ; preds = %if.then52.i, %writecache_notify_io.exit.i.ssd_commit_flushed.exit_crit_edge
  %ssd_dev54.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 22
  %49 = ptrtoint ptr %ssd_dev54.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ssd_dev54.i, align 8
  call fastcc void @writecache_disk_flush(ptr noundef %wc, ptr noundef %50) #15
  %51 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dirty_bitmap.i, align 4
  %53 = ptrtoint ptr %dirty_bitmap_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dirty_bitmap_size.i, align 8
  %55 = call ptr @memset(ptr %52, i32 0, i32 %54)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endio.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writecache_free_entry(ptr noundef %wc, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lru.i = getelementptr inbounds %struct.wc_entry, ptr %e, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.writecache_unlink.exit_crit_edge

entry.writecache_unlink.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %writecache_unlink.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.wc_entry, ptr %e, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %writecache_unlink.exit

writecache_unlink.exit:                           ; preds = %if.end.i.i.i, %entry.writecache_unlink.exit_crit_edge
  %6 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wc_entry, ptr %e, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tree.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 3
  tail call void @rb_erase(ptr noundef %e, ptr noundef %tree.i) #15
  %8 = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %writecache_unlink.exit.while.body.i_crit_edge, !prof !258

writecache_unlink.exit.while.body.i_crit_edge:    ; preds = %writecache_unlink.exit
  br label %while.body.i

if.end.thread.i:                                  ; preds = %writecache_unlink.exit
  call void @__sanitizer_cov_trace_pc() #17
  %current_free.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %current_free.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %e, ptr %current_free.i, align 4
  br label %writecache_add_to_freelist.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %writecache_unlink.exit.while.body.i_crit_edge
  %12 = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %10, %writecache_unlink.exit.while.body.i_crit_edge ]
  %cmp.i = icmp ugt ptr %12, %e
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %node.1.i = select i1 %cmp.i, ptr %rb_left.i, ptr %rb_right.i
  %13 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node.1.i, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i = ptrtoint ptr %12 to i32
  br label %writecache_add_to_freelist.exit

writecache_add_to_freelist.exit:                  ; preds = %while.cond.while.end_crit_edge.i, %if.end.thread.i
  %node.0.lcssa.i = phi ptr [ %node.1.i, %while.cond.while.end_crit_edge.i ], [ %8, %if.end.thread.i ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.thread.i ]
  %15 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.0.lcssa.i, ptr %e, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %e, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %e, i32 0, i32 2
  %17 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i.i, align 4
  %18 = ptrtoint ptr %node.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %e, ptr %node.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %e, ptr noundef %8) #15
  %freelist_size.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 4
  %19 = ptrtoint ptr %freelist_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freelist_size.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %freelist_size.i, align 8
  %memory_map.i.i.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 24
  %21 = ptrtoint ptr %memory_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory_map.i.i.i, align 8
  %index.i.i = getelementptr inbounds %struct.wc_entry, ptr %e, i32 0, i32 4
  %23 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i, align 4
  %seq_count.i = getelementptr %struct.wc_memory_superblock, ptr %22, i32 0, i32 1, i32 %24, i32 1
  %25 = ptrtoint ptr %seq_count.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %seq_count.i, align 8
  %26 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.idx = shl i32 %26, 4
  %arrayidx.i.offs = add i32 %arrayidx.i.idx, 64
  %div.i = sdiv i32 %arrayidx.i.offs, 65536
  %dirty_bitmap.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 52
  %27 = ptrtoint ptr %dirty_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dirty_bitmap.i, align 4
  %rem.i.i = and i32 %div.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %div.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %28, i32 %div2.i.i
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %30
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %head.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %32, %head.i
  br i1 %cmp.i.i.not, label %writecache_add_to_freelist.exit.if.end_crit_edge, label %if.then, !prof !257

writecache_add_to_freelist.exit.if.end_crit_edge: ; preds = %writecache_add_to_freelist.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %writecache_add_to_freelist.exit
  call void @__sanitizer_cov_trace_pc() #17
  %freelist_wait = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %freelist_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %writecache_add_to_freelist.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_io(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_notify_io(i32 noundef %error, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %cmp.not = icmp eq i32 %error, 0
  br i1 %cmp.not, label %entry.do.body29_crit_edge, label %do.body, !prof !257

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %error2 = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 13
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error2, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !288
  tail call void @llvm.prefetch.p0(ptr %error2, i32 1, i32 3, i32 1) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error2, i32 0, i32 -5) #15, !srcloc !266
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool18.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool18.not, label %do.end22, label %__cmpxchg.exit.if.end_crit_edge

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end22:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #18
  br label %if.end

if.end:                                           ; preds = %do.end22, %__cmpxchg.exit.if.end_crit_edge
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %freelist_wait = getelementptr inbounds %struct.dm_writecache, ptr %4, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %freelist_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %do.body29

do.body29:                                        ; preds = %if.end, %entry.do.body29_crit_edge
  %count = getelementptr inbounds %struct.io_notify, ptr %context, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #15
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp31 = icmp slt i32 %6, 1
  br i1 %cmp31, label %do.body39, label %do.end47, !prof !258

do.body39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-writecache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 484, 0\0A.popsection", ""() #15, !srcloc !287
  unreachable

do.end47:                                         ; preds = %do.body29
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !262
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #15, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then50, label %do.end47.if.end51_crit_edge

do.end47.if.end51_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then50:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  %c = getelementptr inbounds %struct.io_notify, ptr %context, i32 0, i32 1
  tail call void @complete(ptr noundef %c) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.end47.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writecache_copy_endio(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wc1 = getelementptr inbounds %struct.copy_struct, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %wc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc1, align 4
  %or = or i32 %write_err, %read_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  %cond = select i1 %tobool.not, i32 0, i32 -5, !prof !257
  %error = getelementptr inbounds %struct.copy_struct, ptr %ptr, i32 0, i32 4
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %error, align 4
  %endio_list_lock = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 46
  tail call void @_raw_spin_lock_irq(ptr noundef %endio_list_lock) #15
  %endio_list = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 47
  %3 = ptrtoint ptr %endio_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %endio_list, align 4
  %cmp.i.not = icmp eq ptr %4, %endio_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %endio_thread = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %endio_thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endio_thread, align 8
  %call12 = tail call i32 @wake_up_process(ptr noundef %6) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prev.i = getelementptr inbounds %struct.dm_writecache, ptr %1, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ptr, ptr noundef %8, ptr noundef %endio_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ptr, ptr %prev.i, align 4
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %endio_list, ptr %ptr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ptr, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ptr, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %endio_list_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_io_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writecache_map_flush(ptr noundef %wc, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 13
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge, !prof !257

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @dm_bio_get_target_bio_nr(ptr noundef %bio) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end5:                                          ; preds = %if.end
  %flushes = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 56, i32 8
  %2 = ptrtoint ptr %flushes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flushes, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %flushes, align 8
  %flush_list.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 50
  %4 = ptrtoint ptr %flush_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %flush_thread.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 49
  %6 = ptrtoint ptr %flush_thread.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flush_thread.i, align 4
  %call1.i = tail call i32 @wake_up_process(ptr noundef %7) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %8 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 50, i32 1
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bio, ptr %10, align 8
  br label %writecache_offload_bio.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %flush_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bio, ptr %flush_list.i, align 4
  br label %writecache_offload_bio.exit

writecache_offload_bio.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bio, ptr %tail.i.i, align 4
  br label %return

return:                                           ; preds = %writecache_offload_bio.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 3, %writecache_offload_bio.exit ], [ 4, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writecache_map_discard(ptr noundef %wc, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %discards = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 56, i32 9
  %0 = ptrtoint ptr %discards to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %discards, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %discards, align 8
  %error = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 13
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge, !prof !257

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %flush_list.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 50
  %4 = ptrtoint ptr %flush_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flush_thread.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 49
  %6 = ptrtoint ptr %flush_thread.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flush_thread.i, align 4
  %call1.i = tail call i32 @wake_up_process(ptr noundef %7) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %8 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.dm_writecache, ptr %wc, i32 0, i32 50, i32 1
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bio, ptr %10, align 8
  br label %writecache_offload_bio.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %flush_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bio, ptr %flush_list.i, align 4
  br label %writecache_offload_bio.exit

writecache_offload_bio.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bio, ptr %tail.i.i, align 4
  br label %return

return:                                           ; preds = %writecache_offload_bio.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 3, %writecache_offload_bio.exit ], [ 4, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bio_get_target_bio_nr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_accept_partial_bio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !168, !170, !172, !173, !174, !175, !177, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !225, !227, !229, !231, !233, !235, !236, !237, !238, !240, !241, !242}
!llvm.named.register.sp = !{!243}
!llvm.module.flags = !{!244, !245, !246, !247, !248, !249, !250, !251}
!llvm.ident = !{!252}

!0 = !{ptr @__param_dm_writecache_throttle, !1, !"__param_dm_writecache_throttle", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-writecache.c", i32 243, i32 1}
!2 = !{ptr @__UNIQUE_ID_dm_writecache_throttletype267, !1, !"__UNIQUE_ID_dm_writecache_throttletype267", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dm_writecache_throttle268, !1, !"__UNIQUE_ID_dm_writecache_throttle268", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dm_writecache__295_2764_dm_writecache_init6, !5, !"__initcall__kmod_dm_writecache__295_2764_dm_writecache_init6", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-writecache.c", i32 2764, i32 1}
!6 = !{ptr @__exitcall_dm_writecache_exit, !7, !"__exitcall_dm_writecache_exit", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-writecache.c", i32 2765, i32 1}
!8 = !{ptr @__UNIQUE_ID_description296, !9, !"__UNIQUE_ID_description296", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-writecache.c", i32 2767, i32 1}
!10 = !{ptr @__UNIQUE_ID_author297, !11, !"__UNIQUE_ID_author297", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-writecache.c", i32 2768, i32 1}
!12 = !{ptr @__UNIQUE_ID_file298, !13, !"__UNIQUE_ID_file298", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-writecache.c", i32 2769, i32 1}
!14 = !{ptr @__UNIQUE_ID_license299, !13, !"__UNIQUE_ID_license299", i1 false, i1 false}
!15 = !{ptr @__param_str_dm_writecache_throttle, !1, !"__param_str_dm_writecache_throttle", i1 false, i1 false}
!16 = !{ptr @dm_kcopyd_throttle, !1, !"dm_kcopyd_throttle", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-writecache.c", i32 2731, i32 12}
!19 = !{ptr @writecache_target, !20, !"writecache_target", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-writecache.c", i32 2730, i32 27}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-writecache.c", i32 2219, i32 11}
!23 = !{ptr @writecache_ctr._args, !24, !"_args", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-writecache.c", i32 2218, i32 23}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-writecache.c", i32 2227, i32 15}
!27 = !{ptr @writecache_ctr.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-writecache.c", i32 2234, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @writecache_ctr.__key.4, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-writecache.c", i32 2237, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @writecache_ctr.__key.6, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-writecache.c", i32 2238, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @writecache_ctr.__key.8, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-writecache.c", i32 2239, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @writecache_ctr.__key.10, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-writecache.c", i32 2243, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-writecache.c", i32 2249, i32 15}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-writecache.c", i32 2254, i32 37}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-writecache.c", i32 2257, i32 15}
!48 = !{ptr @writecache_ctr.__key.15, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-writecache.c", i32 2260, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @writecache_ctr.__key.17, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-writecache.c", i32 2261, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @writecache_ctr.__key.19, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-writecache.c", i32 2265, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-writecache.c", i32 2267, i32 21}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-writecache.c", i32 2271, i32 15}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-writecache.c", i32 2282, i32 26}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-writecache.c", i32 2284, i32 33}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-writecache.c", i32 2295, i32 15}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-writecache.c", i32 2314, i32 16}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-writecache.c", i32 2327, i32 15}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-writecache.c", i32 2340, i32 15}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-writecache.c", i32 2351, i32 21}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-writecache.c", i32 2355, i32 15}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-writecache.c", i32 2361, i32 15}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-writecache.c", i32 2379, i32 27}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-writecache.c", i32 2382, i32 23}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-writecache.c", i32 2389, i32 34}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-writecache.c", i32 2391, i32 23}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-writecache.c", i32 2397, i32 34}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-writecache.c", i32 2405, i32 34}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-writecache.c", i32 2410, i32 34}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/md/dm-writecache.c", i32 2415, i32 34}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/md/dm-writecache.c", i32 2425, i32 34}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-writecache.c", i32 2435, i32 34}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-writecache.c", i32 2438, i32 34}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-writecache.c", i32 2443, i32 34}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/dm-writecache.c", i32 2448, i32 34}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-writecache.c", i32 2450, i32 34}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-writecache.c", i32 2465, i32 16}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-writecache.c", i32 2472, i32 15}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-writecache.c", i32 2495, i32 22}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-writecache.c", i32 2499, i32 16}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-writecache.c", i32 2506, i32 16}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-writecache.c", i32 2522, i32 16}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-writecache.c", i32 2529, i32 16}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-writecache.c", i32 2540, i32 16}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-writecache.c", i32 2546, i32 16}
!125 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/md/dm-writecache.c", i32 2553, i32 15}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/dm-writecache.c", i32 2559, i32 16}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-writecache.c", i32 2571, i32 15}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm-writecache.c", i32 2577, i32 15}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-writecache.c", i32 2583, i32 15}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-writecache.c", i32 2593, i32 15}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/md/dm-writecache.c", i32 2606, i32 15}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/md/dm-writecache.c", i32 2628, i32 15}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/md/dm-writecache.c", i32 2643, i32 14}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-writecache.c", i32 2003, i32 5}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/md/dm-writecache.c", i32 603, i32 3}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @writecache_disk_flush._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @writecache_disk_flush._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @init_completion.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../include/linux/completion.h", i32 87, i32 2}
!152 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/md/dm-writecache.c", i32 483, i32 3}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @writecache_notify_io._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @writecache_notify_io._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/md/dm-writecache.c", i32 574, i32 3}
!160 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ssd_commit_superblock._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ssd_commit_superblock._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @dm_iot_init.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/md/dm-io-tracker.h", i32 30, i32 2}
!165 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../drivers/md/dm-writecache.c", i32 1739, i32 3}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../drivers/md/dm-writecache.c", i32 1743, i32 4}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/md/dm-writecache.c", i32 1711, i32 4}
!172 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__writecache_endio_ssd._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @__writecache_endio_ssd._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../drivers/md/dm-writecache.c", i32 1286, i32 4}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../drivers/md/dm-writecache.c", i32 1290, i32 5}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/md/dm-writecache.c", i32 1541, i32 3}
!181 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @writecache_map._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @writecache_map._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/md/dm-writecache.c", i32 1011, i32 4}
!186 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @writecache_resume._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @writecache_resume._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/md/dm-writecache.c", i32 1031, i32 3}
!191 = !{ptr @writecache_resume._entry.81, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @writecache_resume._entry_ptr.83, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/md/dm-writecache.c", i32 1076, i32 6}
!195 = !{ptr @writecache_resume._entry.84, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @writecache_resume._entry_ptr.86, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/dm-writecache.c", i32 2658, i32 3}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/dm-writecache.c", i32 2674, i32 3}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/md/dm-writecache.c", i32 2700, i32 3}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/md/dm-writecache.c", i32 2702, i32 4}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/md/dm-writecache.c", i32 2704, i32 4}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/md/dm-writecache.c", i32 2706, i32 4}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/md/dm-writecache.c", i32 2708, i32 4}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/md/dm-writecache.c", i32 2710, i32 4}
!213 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/md/dm-writecache.c", i32 2712, i32 4}
!215 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/md/dm-writecache.c", i32 2714, i32 4}
!217 = !{ptr @.str.97, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/dm-writecache.c", i32 2716, i32 4}
!219 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/md/dm-writecache.c", i32 2718, i32 4}
!221 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/md/dm-writecache.c", i32 2720, i32 4}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/md/dm-writecache.c", i32 2722, i32 4}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/md/dm-writecache.c", i32 1191, i32 27}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/md/dm-writecache.c", i32 1193, i32 32}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/md/dm-writecache.c", i32 1197, i32 32}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/md/dm-writecache.c", i32 1200, i32 3}
!235 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @writecache_message._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @writecache_message._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/md/dm-writecache.c", i32 2752, i32 3}
!240 = !{ptr @.str.109, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @dm_writecache_init._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @dm_writecache_init._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{!"sp"}
!244 = !{i32 1, !"wchar_size", i32 2}
!245 = !{i32 1, !"min_enum_size", i32 4}
!246 = !{i32 8, !"branch-target-enforcement", i32 0}
!247 = !{i32 8, !"sign-return-address", i32 0}
!248 = !{i32 8, !"sign-return-address-all", i32 0}
!249 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!250 = !{i32 7, !"uwtable", i32 1}
!251 = !{i32 7, !"frame-pointer", i32 2}
!252 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!253 = !{!"auto-init"}
!254 = !{i32 0, i32 33}
!255 = !{i64 996390, i64 996417, i64 996439, i64 996467}
!256 = !{i64 996798, i64 996825, i64 996858, i64 996879, i64 996906, i64 996932}
!257 = !{!"branch_weights", i32 2000, i32 1}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{i8 0, i8 2}
!260 = !{i64 2148632149, i64 2148632175, i64 2148632204, i64 2148632238, i64 2148632269, i64 2148632292}
!261 = !{i64 2154556191, i64 2154556683, i64 2154556228, i64 2154556284, i64 2154556318, i64 2154556342, i64 2154556383, i64 2154556404, i64 2154556432, i64 2154556466}
!262 = !{i64 2148720625}
!263 = !{i64 2148635334, i64 2148635366, i64 2148635395, i64 2148635429, i64 2148635460, i64 2148635483}
!264 = !{i64 2148720854}
!265 = !{i64 2154459050}
!266 = !{i64 1141641, i64 1141662, i64 1141685, i64 1141704, i64 1141723}
!267 = !{i64 2154459451}
!268 = !{i64 2154467299}
!269 = !{i64 2154467703}
!270 = !{i64 2154621443, i64 2154621935, i64 2154621480, i64 2154621536, i64 2154621570, i64 2154621594, i64 2154621635, i64 2154621656, i64 2154621684, i64 2154621718}
!271 = !{i64 2154628449, i64 2154628941, i64 2154628486, i64 2154628542, i64 2154628576, i64 2154628600, i64 2154628641, i64 2154628662, i64 2154628690, i64 2154628724}
!272 = !{!"branch_weights", i32 2000, i32 2002}
!273 = !{i64 2154610324, i64 2154610816, i64 2154610361, i64 2154610417, i64 2154610451, i64 2154610475, i64 2154610516, i64 2154610537, i64 2154610565, i64 2154610599}
!274 = !{i64 2154589090}
!275 = !{i64 2154574740}
!276 = !{i64 2154575148}
!277 = !{i64 2154577531, i64 2154578023, i64 2154577568, i64 2154577624, i64 2154577658, i64 2154577682, i64 2154577723, i64 2154577744, i64 2154577772, i64 2154577806}
!278 = !{i64 2154583060, i64 2154583552, i64 2154583097, i64 2154583153, i64 2154583187, i64 2154583211, i64 2154583252, i64 2154583273, i64 2154583301, i64 2154583335}
!279 = !{i64 2154593919}
!280 = !{i64 2154521935}
!281 = !{i64 2154526716}
!282 = !{i64 2148481934, i64 2148482214, i64 2148482548, i64 2148482882}
!283 = !{i64 2154424374}
!284 = !{i64 2154424775}
!285 = !{i64 2154428258}
!286 = !{i64 2154428659}
!287 = !{i64 2154418517, i64 2154419008, i64 2154418554, i64 2154418610, i64 2154418644, i64 2154418668, i64 2154418709, i64 2154418730, i64 2154418758, i64 2154418792}
!288 = !{i64 2154415587}
!289 = !{i64 2154415990}
