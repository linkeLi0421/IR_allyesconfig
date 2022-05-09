; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/super.c_pt.bc'
source_filename = "../drivers/md/bcache/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.85 }
%union.anon.85 = type { ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.86 }
%union.anon.86 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cached_dev = type { %struct.list_head, %struct.bcache_device, ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.closure, %struct.semaphore, %struct.refcount_struct, %struct.work_struct, %struct.atomic_t, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.bch_ratelimit, %struct.delayed_work, %struct.semaphore, ptr, ptr, %struct.keybuf, ptr, %struct.closure_waitlist, %struct.atomic_t, [128 x %struct.io], [129 x %struct.hlist_head], %struct.list_head, %struct.spinlock, %struct.cache_accounting, i32, i8, i8, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32 }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.71, [32 x i8], i64, i64, i64, i64, i64, %union.anon.72, i32, i16, %union.anon.75, [256 x i64] }
%union.anon.71 = type { i64, [8 x i8] }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i16, i16, i16, i32 }
%union.anon.75 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.90 }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.rb_root = type { ptr }
%struct.anon.90 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.91, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.91 = type { [8 x i64] }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.io = type { %struct.hlist_node, %struct.list_head, i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.cache_sb_disk = type { i64, i64, i64, [16 x i8], [16 x i8], %union.anon.76, [32 x i8], i64, i64, i64, i64, i64, [5 x i64], %union.anon.77, i32, i16, %union.anon.80, [256 x i64], i16 }
%union.anon.76 = type { i64, [8 x i8] }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, i16, i16, i16, i16 }
%union.anon.80 = type { i16 }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%union.anon.96 = type { [8 x i64] }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.97, %union.anon.98, [2 x %struct.journal_write], ptr }
%struct.anon.97 = type { i32, i32, i32, i32, ptr }
%union.anon.98 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.87], %struct.anon.88, i32, ptr, %struct.anon.89, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.anon.87 = type { i32, i32, i32, i32, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%union.anon.105 = type { [8 x i64] }
%struct.prio_set = type { i64, i64, i64, i32, i32, i64, [0 x %struct.bucket_disk] }
%struct.bucket_disk = type <{ i16, i8 }>
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.anon = type { ptr, ptr, %struct.llist_node, ptr }
%struct.llist_node = type { ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.anon.95 = type { [16 x i8], [32 x i8], i32, i32, i32, i32, i64 }
%struct.uuid_entry = type { %union.anon.94 }
%union.anon.94 = type { %struct.anon.95, [56 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.btree = type { %struct.hlist_node, %union.anon.92, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%union.anon.92 = type { [8 x i64] }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.btree_write = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.async_reg_args = type { %struct.delayed_work, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.82 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.84 = type { ptr }
%struct.journal_replay = type { %struct.list_head, ptr, %struct.jset }
%struct.jset = type { i64, i64, i64, i32, i32, i64, %union.anon.99, %union.anon.100, i16, [3 x i16], [8 x i64], %union.anon.101 }
%union.anon.99 = type { [8 x i64] }
%union.anon.100 = type { [8 x i64] }
%union.anon.101 = type { [0 x %struct.bkey] }
%struct.uuid_entry_v0 = type { [16 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.pdev = type { %struct.list_head, ptr }

@bch_cache_sets = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bch_cache_sets, ptr @bch_cache_sets }, [24 x i8] zeroinitializer }, align 32
@bch_prio_write.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcache\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bch_prio_write\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/md/bcache/super.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"free_prio=%zu, free_none=%zu, free_inc=%zu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bcache: %s() free_prio=%zu, free_none=%zu, free_inc=%zu\0A\00", [39 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DRIVER=bcache\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CACHED_UUID=%pU\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CACHED_LABEL=%s\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@bch_cached_dev_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bcache: %s() I/O disabled on cached dev %pg\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bch_cached_dev_run\00", [45 x i8] zeroinitializer }, align 32
@bch_cached_dev_run._entry_ptr = internal global ptr @bch_cached_dev_run._entry, section ".printk_index", align 4
@bch_cached_dev_run._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016bcache: %s() cached dev %pg is running already\0A\00", [46 x i8] zeroinitializer }, align 32
@bch_cached_dev_run._entry_ptr.13 = internal global ptr @bch_cached_dev_run._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@bch_cached_dev_run._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013bcache: %s() Couldn't create bcache dev <-> disk sysfs symlinks\0A\00", [61 x i8] zeroinitializer }, align 32
@bch_cached_dev_run._entry_ptr.17 = internal global ptr @bch_cached_dev_run._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcache_status_update\00", [43 x i8] zeroinitializer }, align 32
@bch_cached_dev_run._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\014bcache: %s() failed to create bcache_status_update kthread, continue to run without monitoring backing device status\0A\00", [40 x i8] zeroinitializer }, align 32
@bch_cached_dev_run._entry_ptr.21 = internal global ptr @bch_cached_dev_run._entry.19, section ".printk_index", align 4
@bch_register_lock = dso_local global { %struct.mutex, [36 x i8] } zeroinitializer, align 32
@bch_cached_dev_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013bcache: %s() Can't attach %pg: already attached\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bch_cached_dev_attach\00", [42 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr = internal global ptr @bch_cached_dev_attach._entry, section ".printk_index", align 4
@bch_cached_dev_attach._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bcache: %s() Can't attach %pg: shutting down\0A\00", [48 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.26 = internal global ptr @bch_cached_dev_attach._entry.24, section ".printk_index", align 4
@bch_cached_dev_attach._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013bcache: %s() Couldn't attach %pg: block size less than set's block size\0A\00", [53 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.29 = internal global ptr @bch_cached_dev_attach._entry.27, section ".printk_index", align 4
@bch_cached_dev_attach._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013bcache: %s() Tried to attach %pg but duplicate UUID already attached\0A\00", [56 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.32 = internal global ptr @bch_cached_dev_attach._entry.30, section ".printk_index", align 4
@invalid_uuid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\A0>\F8\ED>\E1\B8x\C8P\FC^\CB\16\CD\99", [16 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bcache: %s() Couldn't find uuid for %pg in set\0A\00", [46 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.35 = internal global ptr @bch_cached_dev_attach._entry.33, section ".printk_index", align 4
@bch_cached_dev_attach._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bcache: %s() Not caching %pg, no room for UUID\0A\00", [46 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.38 = internal global ptr @bch_cached_dev_attach._entry.36, section ".printk_index", align 4
@bch_cached_dev_attach._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.2, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013bcache: %s() Couldn't start writeback facilities for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.41 = internal global ptr @bch_cached_dev_attach._entry.39, section ".printk_index", align 4
@bch_cached_dev_attach._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bcache: %s() Couldn't run cached device %pg\0A\00", [49 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.44 = internal global ptr @bch_cached_dev_attach._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdev\00", [27 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.23, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013bcache: %s() The obsoleted large bucket layout is unsupported, set the bcache device into read-only\0A\00", [57 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.48 = internal global ptr @bch_cached_dev_attach._entry.46, section ".printk_index", align 4
@bch_cached_dev_attach._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.23, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013bcache: %s() Please update to the latest bcache-tools to create the cache device\0A\00", [44 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.51 = internal global ptr @bch_cached_dev_attach._entry.49, section ".printk_index", align 4
@bch_cached_dev_attach._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.23, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bcache: %s() Caching %pg as %s on set %pU\0A\00", [51 x i8] zeroinitializer }, align 32
@bch_cached_dev_attach._entry_ptr.54 = internal global ptr @bch_cached_dev_attach._entry.52, section ".printk_index", align 4
@bch_flash_dev_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bcache: %s() Can't create volume, no room for UUID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bch_flash_dev_create\00", [43 x i8] zeroinitializer }, align 32
@bch_flash_dev_create._entry_ptr = internal global ptr @bch_flash_dev_create._entry, section ".printk_index", align 4
@bch_cached_dev_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013bcache: %s() stop %s: too many IO errors on backing device %pg\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bch_cached_dev_error\00", [43 x i8] zeroinitializer }, align 32
@bch_cached_dev_error._entry_ptr = internal global ptr @bch_cached_dev_error._entry, section ".printk_index", align 4
@bch_cache_set_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bcache: %s() CACHE_SET_IO_DISABLE already set\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bch_cache_set_error\00", [44 x i8] zeroinitializer }, align 32
@bch_cache_set_error._entry_ptr = internal global ptr @bch_cache_set_error._entry, section ".printk_index", align 4
@bch_cache_set_error._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013bcache: %s() error on %pU: %pV, disabling caching\0A\00", [43 x i8] zeroinitializer }, align 32
@bch_cache_set_error._entry_ptr.63 = internal global ptr @bch_cache_set_error._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"panic forced after error\0A\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bch_cache_set_ktype = external dso_local global %struct.kobj_type, align 4
@bch_cache_set_internal_ktype = external dso_local global %struct.kobj_type, align 4
@bch_cache_set_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&c->bucket_lock\00", [16 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&c->btree_cache_wait\00", [43 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&c->btree_cannibalize_lock\00", [37 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&c->bucket_wait\00", [16 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&c->gc_wait\00", [20 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&c->btree_gc_time.lock\00", [41 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&c->btree_split_time.lock\00", [38 x i8] zeroinitializer }, align 32
@bch_cache_set_alloc.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&c->btree_read_time.lock\00", [39 x i8] zeroinitializer }, align 32
@bch_search_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcache_gc\00", [22 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__exitcall_bcache_exit = internal global ptr @bcache_exit, section ".exitcall.exit", align 4
@__initcall__kmod_bcache__290_2933_bcache_init6 = internal global ptr @bcache_init, section ".initcall6.init", align 4
@__param_str_bch_cutoff_writeback = internal constant [28 x i8] c"bcache.bch_cutoff_writeback\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bch_cutoff_writeback = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bch_cutoff_writeback = internal constant %struct.kernel_param { ptr @__param_str_bch_cutoff_writeback, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.85 { ptr @bch_cutoff_writeback } }, section "__param", align 4
@__UNIQUE_ID_bch_cutoff_writebacktype291 = internal constant [42 x i8] c"bcache.parmtype=bch_cutoff_writeback:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bch_cutoff_writeback292 = internal constant [63 x i8] c"bcache.parm=bch_cutoff_writeback:threshold to cutoff writeback\00", section ".modinfo", align 1
@__param_str_bch_cutoff_writeback_sync = internal constant [33 x i8] c"bcache.bch_cutoff_writeback_sync\00", align 1
@bch_cutoff_writeback_sync = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bch_cutoff_writeback_sync = internal constant %struct.kernel_param { ptr @__param_str_bch_cutoff_writeback_sync, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.85 { ptr @bch_cutoff_writeback_sync } }, section "__param", align 4
@__UNIQUE_ID_bch_cutoff_writeback_synctype293 = internal constant [47 x i8] c"bcache.parmtype=bch_cutoff_writeback_sync:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bch_cutoff_writeback_sync294 = internal constant [73 x i8] c"bcache.parm=bch_cutoff_writeback_sync:hard threshold to cutoff writeback\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [53 x i8] c"bcache.description=Bcache: a Linux block layer cache\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [58 x i8] c"bcache.author=Kent Overstreet <kent.overstreet@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"bcache.file=drivers/md/bcache/bcache\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [19 x i8] c"bcache.license=GPL\00", section ".modinfo", align 1
@bcache_is_reboot = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@bcache_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bch_flush_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bch_journal_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__write_super.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__write_super\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ver %llu, flags %llu, seq %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bcache: %s() ver %llu, flags %llu, seq %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"writing superblock\00", [45 x i8] zeroinitializer }, align 32
@uuid_io.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uuid_io\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s UUIDs at %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bcache: %s() %s UUIDs at %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wrote\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@uuid_io.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.90, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Slot %zi: %pU: %s: 1st: %u last: %u inv: %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bcache: %s() Slot %zi: %pU: %s: 1st: %u last: %u inv: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"accessing uuids\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"accessing priorities\00", [43 x i8] zeroinitializer }, align 32
@closure_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cl->work)\00", [35 x i8] zeroinitializer }, align 32
@cached_dev_status_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013bcache: %s() %pg: device offline for %d seconds\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cached_dev_status_update\00", [39 x i8] zeroinitializer }, align 32
@cached_dev_status_update._entry_ptr = internal global ptr @cached_dev_status_update._entry, section ".printk_index", align 4
@cached_dev_status_update._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 1033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013bcache: %s() %s: disable I/O request due to backing device offline\0A\00", [58 x i8] zeroinitializer }, align 32
@cached_dev_status_update._entry_ptr.99 = internal global ptr @cached_dev_status_update._entry.97, section ".printk_index", align 4
@uuid_find_empty.zero_uuid = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@cancel_writeback_rate_update_dwork._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014bcache: %s() give up waiting for dc->writeback_write_update to quit\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cancel_writeback_rate_update_dwork\00", [61 x i8] zeroinitializer }, align 32
@cancel_writeback_rate_update_dwork._entry_ptr = internal global ptr @cancel_writeback_rate_update_dwork._entry, section ".printk_index", align 4
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@bcache_device_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013bcache: %s() Couldn't create device -> cache set symlink\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcache_device_link\00", [45 x i8] zeroinitializer }, align 32
@bcache_device_link._entry_ptr = internal global ptr @bcache_device_link._entry, section ".printk_index", align 4
@bcache_device_link._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013bcache: %s() Couldn't create cache set -> device symlink\0A\00", [36 x i8] zeroinitializer }, align 32
@bcache_device_link._entry_ptr.109 = internal global ptr @bcache_device_link._entry.107, section ".printk_index", align 4
@bch_flash_dev_ktype = external dso_local global %struct.kobj_type, align 4
@bcache_flash_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @flash_dev_submit_bio, ptr @open_dev, ptr @release_dev, ptr null, ptr @ioctl_dev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"volume\00", [25 x i8] zeroinitializer }, align 32
@flash_dev_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.111, ptr @.str.2, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flash_dev_run\00", [18 x i8] zeroinitializer }, align 32
@flash_dev_run._entry_ptr = internal global ptr @flash_dev_run._entry, section ".printk_index", align 4
@flash_dev_run._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.111, ptr @.str.2, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@flash_dev_run._entry_ptr.113 = internal global ptr @flash_dev_run._entry.112, section ".printk_index", align 4
@bcache_device_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016bcache: %s() %s stopped\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcache_device_free\00", [45 x i8] zeroinitializer }, align 32
@bcache_device_free._entry_ptr = internal global ptr @bcache_device_free._entry, section ".printk_index", align 4
@bcache_device_free._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013bcache: %s() bcache device (NULL gendisk) stopped\0A\00", [43 x i8] zeroinitializer }, align 32
@bcache_device_free._entry_ptr.118 = internal global ptr @bcache_device_free._entry.116, section ".printk_index", align 4
@bcache_device_idx = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.119, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcache_device_idx.xa_lock\00", [38 x i8] zeroinitializer }, align 32
@bcache_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013bcache: %s() nr_stripes too large or invalid: %llu (start sector beyond end of disk?)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcache_device_init\00", [45 x i8] zeroinitializer }, align 32
@bcache_device_init._entry_ptr = internal global ptr @bcache_device_init._entry, section ".printk_index", align 4
@bcache_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bcache%i\00", [23 x i8] zeroinitializer }, align 32
@bcache_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bcache_device_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.121, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\016bcache: %s() %s: sb/logical block size (%u) greater than page size (%lu) falling back to device logical block size (%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@bcache_device_init._entry_ptr.125 = internal global ptr @bcache_device_init._entry.123, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cache_set_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bcache: %s() Cache set %pU unregistered\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cache_set_free\00", [17 x i8] zeroinitializer }, align 32
@cache_set_free._entry_ptr = internal global ptr @cache_set_free._entry, section ".printk_index", align 4
@unregister_wait = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@conditional_stop_bcache_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014bcache: %s() stop_when_cache_set_failed of %s is \22always\22, stop it for failed cache set %pU.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"conditional_stop_bcache_device\00", [33 x i8] zeroinitializer }, align 32
@conditional_stop_bcache_device._entry_ptr = internal global ptr @conditional_stop_bcache_device._entry, section ".printk_index", align 4
@conditional_stop_bcache_device._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\014bcache: %s() stop_when_cache_set_failed of %s is \22auto\22 and cache is dirty, stop it to avoid potential data corruption.\0A\00", [37 x i8] zeroinitializer }, align 32
@conditional_stop_bcache_device._entry_ptr.132 = internal global ptr @conditional_stop_bcache_device._entry.130, section ".printk_index", align 4
@conditional_stop_bcache_device._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.2, i32 1811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014bcache: %s() stop_when_cache_set_failed of %s is \22auto\22 and cache is clean, keep it alive.\0A\00", [34 x i8] zeroinitializer }, align 32
@conditional_stop_bcache_device._entry_ptr.135 = internal global ptr @conditional_stop_bcache_device._entry.133, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@bcache_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@reboot = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @bcache_reboot, ptr null, i32 2147483647 }, [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@uncached_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @uncached_devices, ptr @uncached_devices }, [24 x i8] zeroinitializer }, align 32
@bcache_reboot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016bcache: %s() Stopping all devices:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcache_reboot\00", [18 x i8] zeroinitializer }, align 32
@bcache_reboot._entry_ptr = internal global ptr @bcache_reboot._entry, section ".printk_index", align 4
@bcache_reboot._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016bcache: %s() All devices stopped\0A\00", [60 x i8] zeroinitializer }, align 32
@bcache_reboot._entry_ptr.143 = internal global ptr @bcache_reboot._entry.141, section ".printk_index", align 4
@bcache_reboot._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 2805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015bcache: %s() Timeout waiting for devices to be closed\0A\00", [39 x i8] zeroinitializer }, align 32
@bcache_reboot._entry_ptr.146 = internal global ptr @bcache_reboot._entry.144, section ".printk_index", align 4
@bcache_init.files = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ksysfs_register, ptr @ksysfs_register_quiet, ptr @ksysfs_pendings_cleanup, ptr null], [16 x i8] zeroinitializer }, align 32
@ksysfs_register = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.152, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @register_bcache }, [36 x i8] zeroinitializer }, align 32
@ksysfs_register_quiet = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.263, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @register_bcache }, [36 x i8] zeroinitializer }, align 32
@ksysfs_pendings_cleanup = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.264, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bch_pending_bdevs_cleanup }, [36 x i8] zeroinitializer }, align 32
@bcache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&bch_register_lock\00", [45 x i8] zeroinitializer }, align 32
@bcache_init.__key.148 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&unregister_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bch_flush\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bch_journal\00", [20 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"register\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to reference bcache module\00", [62 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcache is in reboot\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot allocate memory\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to open device\00", [42 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"device already registered\00", [38 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device busy\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set blocksize\00", [40 x i8] zeroinitializer }, align 32
@register_bcache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 2665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016bcache: %s() error %s: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_bcache\00", [16 x i8] zeroinitializer }, align 32
@register_bcache._entry_ptr = internal global ptr @register_bcache._entry, section ".printk_index", align 4
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IO error\00", [23 x i8] zeroinitializer }, align 32
@read_super.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.164, ptr @.str.2, ptr @.str.165, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_super\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"read sb version %llu, flags %llu, seq %llu, journal size %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"bcache: %s() read sb version %llu, flags %llu, seq %llu, journal size %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not a bcache superblock (bad offset)\00", [59 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Not a bcache superblock (bad magic)\00", [60 x i8] zeroinitializer }, align 32
@bcache_magic = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\C6\85s\F6N\1AE\CA\82e\F5\7FH\BAm\81", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bad checksum\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bad UUID\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Superblock block size smaller than device block size\00", [43 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad data offset\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported compatible feature found\00", [59 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported read-only compatible feature found\00", [49 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported incompatible feature found\00", [57 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported superblock version\00", [33 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Too many journal buckets\00", [39 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Too many buckets\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Not enough buckets\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Bad block size (not power of 2)\00", [32 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Bad block size (larger than page size)\00", [57 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bad bucket size (not power of 2)\00", [63 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Bad bucket size (smaller than page size)\00", [55 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid superblock: device too small\00", [59 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad cache device number in set\00", [33 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Journal buckets not sequential\00", [33 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid superblock: first bucket comes before end of super\00", [37 x i8] zeroinitializer }, align 32
@get_bucket_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bcache: %s() Bucket size (1 << %u) overflows\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_bucket_size\00", [16 x i8] zeroinitializer }, align 32
@get_bucket_size._entry_ptr = internal global ptr @get_bucket_size._entry, section ".printk_index", align 4
@register_device_async.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.190 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&args->reg_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@register_device_async.__key.191 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.192 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&args->reg_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@register_device_async.__key.193 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@register_device_async.__key.194 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@register_bdev_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 2481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016bcache: %s() error %s: fail to register backing device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register_bdev_worker\00", [43 x i8] zeroinitializer }, align 32
@register_bdev_worker._entry_ptr = internal global ptr @register_bdev_worker._entry, section ".printk_index", align 4
@register_cache_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 2510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016bcache: %s() error %s: fail to register cache device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register_cache_worker\00", [42 x i8] zeroinitializer }, align 32
@register_cache_worker._entry_ptr = internal global ptr @register_cache_worker._entry, section ".printk_index", align 4
@.str.199 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error creating kobject\00", [41 x i8] zeroinitializer }, align 32
@register_bdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016bcache: %s() registered backing device %pg\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"register_bdev\00", [18 x i8] zeroinitializer }, align 32
@register_bdev._entry_ptr = internal global ptr @register_bdev._entry, section ".printk_index", align 4
@.str.202 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to run cached device\00", [36 x i8] zeroinitializer }, align 32
@register_bdev._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.201, ptr @.str.2, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015bcache: %s() error %pg: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@register_bdev._entry_ptr.205 = internal global ptr @register_bdev._entry.203, section ".printk_index", align 4
@bch_cached_dev_ktype = external dso_local global %struct.kobj_type, align 4
@cached_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.206 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&dc->detach)\00", [33 x i8] zeroinitializer }, align 32
@cached_dev_init.__key.207 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dc->io_lock\00", [19 x i8] zeroinitializer }, align 32
@bcache_cached_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @cached_dev_submit_bio, ptr @open_dev, ptr @release_dev, ptr null, ptr @ioctl_dev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cached_dev_detach_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016bcache: %s() Caching disabled for %pg\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cached_dev_detach_finish\00", [39 x i8] zeroinitializer }, align 32
@cached_dev_detach_finish._entry_ptr = internal global ptr @cached_dev_detach_finish._entry, section ".printk_index", align 4
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cache_alloc(): -ENOMEM\00", [41 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cache_alloc(): cache device is too small\00", [55 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error calling kobject_add\00", [38 x i8] zeroinitializer }, align 32
@register_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.2, i32 2392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016bcache: %s() registered cache device %pg\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_cache\00", [17 x i8] zeroinitializer }, align 32
@register_cache._entry_ptr = internal global ptr @register_cache._entry, section ".printk_index", align 4
@register_cache._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.216, ptr @.str.2, i32 2399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@register_cache._entry_ptr.218 = internal global ptr @register_cache._entry.217, section ".printk_index", align 4
@bch_cache_ktype = external dso_local global %struct.kobj_type, align 4
@.str.219 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ca->sb.nbuckets is too small\00", [35 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ca->free[RESERVE_BTREE] alloc failed\00", [59 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ca->free[RESERVE_PRIO] alloc failed\00", [60 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ca->free[RESERVE_MOVINGGC] alloc failed\00", [56 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ca->free[RESERVE_NONE] alloc failed\00", [60 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ca->free_inc alloc failed\00", [38 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ca->heap alloc failed\00", [42 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ca->buckets alloc failed\00", [39 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ca->prio_buckets alloc failed\00", [34 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ca->disk_buckets alloc failed\00", [34 x i8] zeroinitializer }, align 32
@cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.229, ptr @.str.2, i32 2341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache_alloc\00", [20 x i8] zeroinitializer }, align 32
@cache_alloc._entry_ptr = internal global ptr @cache_alloc._entry, section ".printk_index", align 4
@.str.230 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"duplicate cache set member\00", [37 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pU\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cache%i\00", [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to run cache set\00", [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot allocate memory for journal\00", [61 x i8] zeroinitializer }, align 32
@run_cache_set.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.237, ptr @.str.2, ptr @.str.238, i8 1, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run_cache_set\00", [18 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btree_journal_read() done\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bcache: %s() btree_journal_read() done\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no journal entries found\00", [39 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IO error reading priorities\00", [36 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad btree root\00", [17 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error reading btree root\00", [39 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error in recovery\00", [46 x i8] zeroinitializer }, align 32
@run_cache_set.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.237, ptr @.str.2, ptr @.str.245, i8 1, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.245 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btree_check() done\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcache: %s() btree_check() done\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error starting allocator thread\00", [32 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcache: replay journal failed\00", [34 x i8] zeroinitializer }, align 32
@run_cache_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.237, ptr @.str.2, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015bcache: %s() invalidating existing data\0A\00", [53 x i8] zeroinitializer }, align 32
@run_cache_set._entry_ptr = internal global ptr @run_cache_set._entry, section ".printk_index", align 4
@.str.250 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot allocate new UUID bucket\00", [32 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot allocate new btree root\00", [33 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error starting gc thread\00", [39 x i8] zeroinitializer }, align 32
@run_cache_set._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.237, ptr @.str.2, i32 2127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013bcache: %s() Detect obsoleted large bucket layout, all attached bcache device will be read-only\0A\00", [61 x i8] zeroinitializer }, align 32
@run_cache_set._entry_ptr.255 = internal global ptr @run_cache_set._entry.253, section ".printk_index", align 4
@.str.256 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@prio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014bcache: %s() bad csum reading priorities\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prio_read\00", [22 x i8] zeroinitializer }, align 32
@prio_read._entry_ptr = internal global ptr @prio_read._entry, section ".printk_index", align 4
@prio_read._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.258, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014bcache: %s() bad magic reading priorities\0A\00", [51 x i8] zeroinitializer }, align 32
@prio_read._entry_ptr.261 = internal global ptr @prio_read._entry.259, section ".printk_index", align 4
@.str.262 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad uuid pointer\00", [47 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_quiet\00", [17 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pendings_cleanup\00", [47 x i8] zeroinitializer }, align 32
@bch_pending_bdevs_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.2, i32 2710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016bcache: %s() delete pdev %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bch_pending_bdevs_cleanup\00", [38 x i8] zeroinitializer }, align 32
@bch_pending_bdevs_cleanup._entry_ptr = internal global ptr @bch_pending_bdevs_cleanup._entry, section ".printk_index", align 4
@check_module_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.268, ptr @.str.2, i32 2845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014bcache: %s() set bch_cutoff_writeback_sync (%u) to max value %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_module_parameters\00", [40 x i8] zeroinitializer }, align 32
@check_module_parameters._entry_ptr = internal global ptr @check_module_parameters._entry, section ".printk_index", align 4
@check_module_parameters._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.268, ptr @.str.2, i32 2853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014bcache: %s() set bch_cutoff_writeback (%u) to max value %u\0A\00", [34 x i8] zeroinitializer }, align 32
@check_module_parameters._entry_ptr.271 = internal global ptr @check_module_parameters._entry.269, section ".printk_index", align 4
@check_module_parameters._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.268, ptr @.str.2, i32 2859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014bcache: %s() set bch_cutoff_writeback (%u) to %u\0A\00", [44 x i8] zeroinitializer }, align 32
@check_module_parameters._entry_ptr.274 = internal global ptr @check_module_parameters._entry.272, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.276 = internal global [5 x i64] [i64 3, i64 64, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.277 = internal global [8 x i64] [i64 6, i64 64, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@___asan_gen_.279 = private unnamed_addr constant [15 x i8] c"bch_cache_sets\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 46, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 620, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1054, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1055, i32 25 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1056, i32 25 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1056, i32 52 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1061, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1067, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1093, i32 63 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1096, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1101, i32 29 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1104, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"bch_register_lock\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 44, i32 14 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1207, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1212, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1218, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1226, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant [13 x i8] c"invalid_uuid\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 38, i32 19 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1245, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1251, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1296, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1319, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1323, i32 35 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1327, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1328, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1335, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1599, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1624, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1644, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1656, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1662, i32 9 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1901, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1902, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1903, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1904, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1905, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1908, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1909, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1910, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1947, i32 36 }
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c"bch_cutoff_writeback\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 30, i32 14 }
@___asan_gen_.510 = private unnamed_addr constant [26 x i8] c"bch_cutoff_writeback_sync\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 31, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c"bcache_is_reboot\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 45, i32 6 }
@___asan_gen_.516 = private unnamed_addr constant [10 x i8] c"bcache_wq\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 52, i32 26 }
@___asan_gen_.519 = private unnamed_addr constant [13 x i8] c"bch_flush_wq\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 53, i32 26 }
@___asan_gen_.522 = private unnamed_addr constant [15 x i8] c"bch_journal_wq\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 54, i32 26 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 325, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 364, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 450, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 454, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 408, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 588, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [31 x i8] c"../drivers/md/bcache/closure.h\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 247, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1029, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1032, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant [10 x i8] c"zero_uuid\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 552, i32 20 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1134, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 815, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 817, i32 46 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 819, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 823, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant [17 x i8] c"bcache_flash_ops\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 773, i32 45 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1558, i32 27 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1561, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1562, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 880, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 882, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant [18 x i8] c"bcache_device_idx\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 50, i32 8 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 915, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 940, i32 12 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 945, i32 46 }
@___asan_gen_.669 = private unnamed_addr constant [13 x i8] c"bcache_major\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 49, i32 12 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 969, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1711, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [16 x i8] c"unregister_wait\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 51, i32 26 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1780, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1788, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1810, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 33, i32 31 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 34, i32 28 }
@___asan_gen_.718 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 35, i32 39 }
@___asan_gen_.721 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 717, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [12 x i8] c"bcache_kobj\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 43, i32 24 }
@___asan_gen_.726 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2813, i32 30 }
@___asan_gen_.729 = private unnamed_addr constant [17 x i8] c"uncached_devices\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 47, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2753, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2803, i32 4 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2805, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2866, i32 33 }
@___asan_gen_.756 = private unnamed_addr constant [16 x i8] c"ksysfs_register\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [22 x i8] c"ksysfs_register_quiet\00", align 1
@___asan_gen_.762 = private unnamed_addr constant [24 x i8] c"ksysfs_pendings_cleanup\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2875, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2876, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2902, i32 33 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2906, i32 35 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2412, i32 1 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2544, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2550, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2555, i32 8 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2565, i32 8 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2576, i32 11 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2578, i32 11 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2586, i32 8 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2665, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 178, i32 10 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 197, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 200, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 204, i32 8 }
@___asan_gen_.834 = private unnamed_addr constant [13 x i8] c"bcache_magic\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 33, i32 19 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 208, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 212, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 218, i32 8 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 230, i32 9 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 251, i32 9 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 255, i32 9 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 259, i32 9 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 268, i32 9 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 105, i32 8 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 109, i32 8 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 113, i32 8 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 117, i32 8 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 121, i32 8 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 125, i32 8 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 129, i32 8 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 133, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 142, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 148, i32 8 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 157, i32 8 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 80, i32 5 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2520, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2522, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2480, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2509, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1468, i32 8 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1474, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1483, i32 9 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1491, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1411, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1414, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant [18 x i8] c"bcache_cached_ops\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 765, i32 45 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1167, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2369, i32 10 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2371, i32 10 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2378, i32 9 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2392, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2399, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2258, i32 9 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2264, i32 9 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2270, i32 9 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2275, i32 9 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2280, i32 9 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2285, i32 9 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2290, i32 9 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2297, i32 9 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2305, i32 9 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2311, i32 9 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2341, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2159, i32 12 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2169, i32 41 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2170, i32 42 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2180, i32 15 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2181, i32 45 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2189, i32 8 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1993, i32 9 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1997, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1999, i32 9 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2005, i32 9 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2017, i32 9 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2021, i32 9 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2035, i32 9 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2041, i32 3 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2050, i32 9 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2067, i32 9 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2073, i32 3 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2090, i32 9 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2094, i32 9 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2118, i32 8 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2127, i32 3 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2145, i32 25 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 715, i32 5 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 720, i32 5 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 466, i32 10 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2413, i32 1 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2414, i32 1 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2710, i32 3 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2844, i32 3 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2852, i32 3 }
@___asan_gen_.1170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1174 = private constant [29 x i8] c"../drivers/md/bcache/super.c\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2858, i32 3 }
@llvm.compiler.used = appending global [366 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_bch_cutoff_writeback292, ptr @__UNIQUE_ID_bch_cutoff_writeback_sync294, ptr @__UNIQUE_ID_bch_cutoff_writeback_synctype293, ptr @__UNIQUE_ID_bch_cutoff_writebacktype291, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_bcache_exit, ptr @__initcall__kmod_bcache__290_2933_bcache_init6, ptr @__param_bch_cutoff_writeback, ptr @__param_bch_cutoff_writeback_sync, ptr @bcache_device_free._entry, ptr @bcache_device_free._entry.116, ptr @bcache_device_free._entry_ptr, ptr @bcache_device_free._entry_ptr.118, ptr @bcache_device_init._entry, ptr @bcache_device_init._entry.123, ptr @bcache_device_init._entry_ptr, ptr @bcache_device_init._entry_ptr.125, ptr @bcache_device_link._entry, ptr @bcache_device_link._entry.107, ptr @bcache_device_link._entry_ptr, ptr @bcache_device_link._entry_ptr.109, ptr @bcache_reboot._entry, ptr @bcache_reboot._entry.141, ptr @bcache_reboot._entry.144, ptr @bcache_reboot._entry_ptr, ptr @bcache_reboot._entry_ptr.143, ptr @bcache_reboot._entry_ptr.146, ptr @bch_cache_set_error._entry, ptr @bch_cache_set_error._entry.61, ptr @bch_cache_set_error._entry_ptr, ptr @bch_cache_set_error._entry_ptr.63, ptr @bch_cached_dev_attach._entry, ptr @bch_cached_dev_attach._entry.24, ptr @bch_cached_dev_attach._entry.27, ptr @bch_cached_dev_attach._entry.30, ptr @bch_cached_dev_attach._entry.33, ptr @bch_cached_dev_attach._entry.36, ptr @bch_cached_dev_attach._entry.39, ptr @bch_cached_dev_attach._entry.42, ptr @bch_cached_dev_attach._entry.46, ptr @bch_cached_dev_attach._entry.49, ptr @bch_cached_dev_attach._entry.52, ptr @bch_cached_dev_attach._entry_ptr, ptr @bch_cached_dev_attach._entry_ptr.26, ptr @bch_cached_dev_attach._entry_ptr.29, ptr @bch_cached_dev_attach._entry_ptr.32, ptr @bch_cached_dev_attach._entry_ptr.35, ptr @bch_cached_dev_attach._entry_ptr.38, ptr @bch_cached_dev_attach._entry_ptr.41, ptr @bch_cached_dev_attach._entry_ptr.44, ptr @bch_cached_dev_attach._entry_ptr.48, ptr @bch_cached_dev_attach._entry_ptr.51, ptr @bch_cached_dev_attach._entry_ptr.54, ptr @bch_cached_dev_error._entry, ptr @bch_cached_dev_error._entry_ptr, ptr @bch_cached_dev_run._entry, ptr @bch_cached_dev_run._entry.11, ptr @bch_cached_dev_run._entry.15, ptr @bch_cached_dev_run._entry.19, ptr @bch_cached_dev_run._entry_ptr, ptr @bch_cached_dev_run._entry_ptr.13, ptr @bch_cached_dev_run._entry_ptr.17, ptr @bch_cached_dev_run._entry_ptr.21, ptr @bch_flash_dev_create._entry, ptr @bch_flash_dev_create._entry_ptr, ptr @bch_pending_bdevs_cleanup._entry, ptr @bch_pending_bdevs_cleanup._entry_ptr, ptr @cache_alloc._entry, ptr @cache_alloc._entry_ptr, ptr @cache_set_free._entry, ptr @cache_set_free._entry_ptr, ptr @cached_dev_detach_finish._entry, ptr @cached_dev_detach_finish._entry_ptr, ptr @cached_dev_status_update._entry, ptr @cached_dev_status_update._entry.97, ptr @cached_dev_status_update._entry_ptr, ptr @cached_dev_status_update._entry_ptr.99, ptr @cancel_writeback_rate_update_dwork._entry, ptr @cancel_writeback_rate_update_dwork._entry_ptr, ptr @check_module_parameters._entry, ptr @check_module_parameters._entry.269, ptr @check_module_parameters._entry.272, ptr @check_module_parameters._entry_ptr, ptr @check_module_parameters._entry_ptr.271, ptr @check_module_parameters._entry_ptr.274, ptr @conditional_stop_bcache_device._entry, ptr @conditional_stop_bcache_device._entry.130, ptr @conditional_stop_bcache_device._entry.133, ptr @conditional_stop_bcache_device._entry_ptr, ptr @conditional_stop_bcache_device._entry_ptr.132, ptr @conditional_stop_bcache_device._entry_ptr.135, ptr @flash_dev_run._entry, ptr @flash_dev_run._entry.112, ptr @flash_dev_run._entry_ptr, ptr @flash_dev_run._entry_ptr.113, ptr @get_bucket_size._entry, ptr @get_bucket_size._entry_ptr, ptr @prio_read._entry, ptr @prio_read._entry.259, ptr @prio_read._entry_ptr, ptr @prio_read._entry_ptr.261, ptr @register_bcache._entry, ptr @register_bcache._entry_ptr, ptr @register_bdev._entry, ptr @register_bdev._entry.203, ptr @register_bdev._entry_ptr, ptr @register_bdev._entry_ptr.205, ptr @register_bdev_worker._entry, ptr @register_bdev_worker._entry_ptr, ptr @register_cache._entry, ptr @register_cache._entry.217, ptr @register_cache._entry_ptr, ptr @register_cache._entry_ptr.218, ptr @register_cache_worker._entry, ptr @register_cache_worker._entry_ptr, ptr @run_cache_set._entry, ptr @run_cache_set._entry.253, ptr @run_cache_set._entry_ptr, ptr @run_cache_set._entry_ptr.255, ptr @bch_cache_sets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @bch_register_lock, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @invalid_uuid, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @bch_cache_set_alloc.__key, ptr @.str.65, ptr @bch_cache_set_alloc.__key.66, ptr @.str.67, ptr @bch_cache_set_alloc.__key.68, ptr @.str.69, ptr @bch_cache_set_alloc.__key.70, ptr @.str.71, ptr @bch_cache_set_alloc.__key.72, ptr @.str.73, ptr @bch_cache_set_alloc.__key.74, ptr @.str.75, ptr @bch_cache_set_alloc.__key.76, ptr @.str.77, ptr @bch_cache_set_alloc.__key.78, ptr @.str.79, ptr @.str.80, ptr @bch_cutoff_writeback, ptr @bch_cutoff_writeback_sync, ptr @bcache_is_reboot, ptr @bcache_wq, ptr @bch_flush_wq, ptr @bch_journal_wq, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @closure_queue.__key, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @uuid_find_empty.zero_uuid, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @bcache_flash_ops, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @bcache_device_idx, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @bcache_device_init.__key, ptr @.str.122, ptr @bcache_major, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @unregister_wait, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @sema_init.__key, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @bcache_kobj, ptr @reboot, ptr @uncached_devices, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @bcache_init.files, ptr @ksysfs_register, ptr @ksysfs_register_quiet, ptr @ksysfs_pendings_cleanup, ptr @bcache_init.__key, ptr @.str.147, ptr @bcache_init.__key.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @bcache_magic, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @register_device_async.__key, ptr @.str.190, ptr @register_device_async.__key.191, ptr @.str.192, ptr @register_device_async.__key.193, ptr @register_device_async.__key.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @cached_dev_init.__key, ptr @.str.206, ptr @cached_dev_init.__key.207, ptr @.str.208, ptr @bcache_cached_ops, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.254, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.260, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.270, ptr @.str.273], section "llvm.metadata"
@0 = internal global [299 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_sets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_run._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_run._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_run._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_register_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invalid_uuid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_attach._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_flash_dev_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_error._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_alloc.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cutoff_writeback to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cutoff_writeback_sync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_is_reboot to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_flush_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @closure_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_dev_status_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_dev_status_update._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uuid_find_empty.zero_uuid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cancel_writeback_rate_update_dwork._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_link._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_flash_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_dev_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_dev_run._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_free._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_idx to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_device_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_set_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conditional_stop_bcache_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conditional_stop_bcache_device._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conditional_stop_bcache_device._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uncached_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_reboot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_reboot._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_reboot._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_init.files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksysfs_register to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksysfs_register_quiet to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksysfs_pendings_cleanup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_init.__key.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_bcache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_magic to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_bucket_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device_async.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device_async.__key.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device_async.__key.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device_async.__key.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_bdev_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_cache_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_bdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_bdev._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_dev_init.__key.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_cached_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_dev_detach_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_cache._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_cache_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_cache_set._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prio_read._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_pending_bdevs_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_module_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_module_parameters._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_module_parameters._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_write_bdev_super(ptr noundef %dc, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_write = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 7
  %sb_bio = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 5
  %sb_write_mutex = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 8
  tail call void @down(ptr noundef %sb_write_mutex) #18
  %0 = call ptr @memset(ptr %sb_write, i32 0, i32 72)
  %parent1.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %entry.closure_init.exit_crit_edge, label %if.then.i

entry.closure_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_init.exit

if.then.i:                                        ; preds = %entry
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %parent, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #18
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %if.then.i.closure_init.exit_crit_edge, !prof !590

if.then.i.closure_init.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_init.exit

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_init.exit:                                ; preds = %if.then.i.closure_init.exit_crit_edge, %entry.closure_init.exit_crit_edge
  %remaining.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 7, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %3 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %sb_write) #18
  tail call fastcc void @closure_set_ip(ptr noundef %sb_write) #18
  %sb_bv = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 6
  tail call void @bio_init(ptr noundef %sb_bio, ptr noundef %sb_bv, i16 noundef zeroext 1) #18
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %closure_init.exit.bio_set_dev.exit_crit_edge, label %if.then.i15

closure_init.exit.bio_set_dev.exit_crit_edge:     ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_set_dev.exit

if.then.i15:                                      ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i15, %closure_init.exit.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %sb_bio) #18
  %bi_end_io = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 5, i32 10
  %12 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @write_bdev_super_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 5, i32 11
  %13 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dc, ptr %bi_private, align 4
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i = and i32 %asmresult.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body2.i, label %closure_get.exit, !prof !590

do.body2.i:                                       ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_get.exit:                                 ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  %sb = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3
  %sb_disk = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 4
  %15 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sb_disk, align 8
  tail call fastcc void @__write_super(ptr noundef %sb, ptr noundef %16, ptr noundef %sb_bio)
  tail call fastcc void @closure_set_ip(ptr noundef %sb_write) #18
  %fn1.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 7, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bch_write_bdev_super_unlock, ptr %fn1.i, align 4
  %18 = ptrtoint ptr %sb_write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sb_write, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  tail call void @closure_sub(ptr noundef %sb_write, i32 noundef 1006632961) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_bdev_super_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bch_count_backing_io_errors(ptr noundef %1, ptr noundef %bio) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sb_write = getelementptr inbounds %struct.cached_dev, ptr %1, i32 0, i32 7
  tail call void @closure_put(ptr noundef %sb_write) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__write_super(ptr nocapture noundef readonly %sb, ptr noundef %out, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6145, ptr %bi_opf, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %1 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 8, ptr %bi_iter, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %out to i32
  %sub = add i32 %3, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %shr
  %and = and i32 %3, 4095
  tail call void @__bio_add_page(ptr noundef %bio, ptr noundef %add.ptr, i32 noundef 4096, i32 noundef %and) #18
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %offset2 = getelementptr %struct.cache_sb_disk, ptr %out, i32 0, i32 1
  %7 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %offset2, align 8
  %uuid = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 4
  %uuid3 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %uuid, ptr %uuid3, i32 16)
  %9 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 5
  %10 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %9, ptr %10, i32 16)
  %label = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 6
  %label8 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %label, ptr %label8, i32 32)
  %flags = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %flags, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %flags10 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 7
  %16 = ptrtoint ptr %flags10 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %flags10, align 8
  %seq = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 7
  %17 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %seq, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %seq11 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 8
  %20 = ptrtoint ptr %seq11 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %seq11, align 8
  %last_mount = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 12
  %21 = ptrtoint ptr %last_mount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_mount, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %last_mount12 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 14
  %24 = ptrtoint ptr %last_mount12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_mount12, align 8
  %first_bucket = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 13
  %25 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %first_bucket, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %first_bucket13 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 15
  %28 = ptrtoint ptr %first_bucket13 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %first_bucket13, align 4
  %29 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 16
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %32, ptr %33, align 2
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp84.not = icmp eq i16 %36, 0
  br i1 %cmp84.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cache_sb, ptr %sb, i32 0, i32 15, i32 %i.085
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38)
  %arrayidx16 = getelementptr %struct.cache_sb_disk, ptr %out, i32 0, i32 17, i32 %i.085
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx16, align 8
  %inc = add nuw nsw i32 %i.085, 1
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %29, align 2
  %conv = zext i16 %42 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %version = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 1
  %43 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %44)
  %cmp17 = icmp ugt i64 %44, 4
  br i1 %cmp17, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %feature_compat = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 8
  %45 = ptrtoint ptr %feature_compat to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %feature_compat, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46)
  %feature_compat19 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 9
  %48 = ptrtoint ptr %feature_compat19 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %feature_compat19, align 8
  %feature_incompat = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 9
  %49 = ptrtoint ptr %feature_incompat to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %feature_incompat, align 8
  %51 = tail call i64 @llvm.bswap.i64(i64 %50)
  %feature_incompat20 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 10
  %52 = ptrtoint ptr %feature_incompat20 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %feature_incompat20, align 8
  %feature_ro_compat = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 10
  %53 = ptrtoint ptr %feature_ro_compat to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %feature_ro_compat, align 8
  %55 = tail call i64 @llvm.bswap.i64(i64 %54)
  %feature_ro_compat21 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 11
  %56 = ptrtoint ptr %feature_ro_compat21 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %feature_ro_compat21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %57 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %version, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58)
  %version23 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 2
  %60 = ptrtoint ptr %version23 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %version23, align 8
  %d25 = getelementptr inbounds %struct.cache_sb_disk, ptr %out, i32 0, i32 17
  %61 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %33, align 2
  %conv27 = zext i16 %62 to i32
  %add.ptr.i = getelementptr i64, ptr %d25, i32 %conv27
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %offset2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i = tail call i64 @crc64_be(i64 noundef -1, ptr noundef %offset2, i32 noundef %sub.ptr.sub) #21
  %xor.i = xor i64 %call.i, -1
  %63 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %xor.i, ptr %out, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__write_super.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__write_super, %if.then33)) #18
          to label %do.end [label %if.then33], !srcloc !593

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %version, align 8
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %flags, align 8
  %68 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__write_super.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i64 noundef %65, i64 noundef %67, i64 noundef %69) #18
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.end
  tail call void @submit_bio(ptr noundef %bio) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_write_bdev_super_unlock(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_write_mutex = getelementptr i8, ptr %cl, i32 72
  tail call void @up(ptr noundef %sb_write_mutex) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_sub(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcache_write_super(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_write = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 17
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %sb_write_mutex = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 18
  tail call void @down(ptr noundef %sb_write_mutex) #18
  %2 = call ptr @memset(ptr %sb_write, i32 0, i32 72)
  %parent1.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %c, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %c, null
  br i1 %tobool.not.i, label %entry.closure_init.exit_crit_edge, label %if.then.i

entry.closure_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_init.exit

if.then.i:                                        ; preds = %entry
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %c, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #18
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %if.then.i.closure_init.exit_crit_edge, !prof !590

if.then.i.closure_init.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_init.exit

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_init.exit:                                ; preds = %if.then.i.closure_init.exit_crit_edge, %entry.closure_init.exit_crit_edge
  %remaining.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 17, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %5 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %sb_write) #18
  tail call fastcc void @closure_set_ip(ptr noundef %sb_write) #18
  %seq = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %seq, align 8
  %version3 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %version3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %version3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %9)
  %cmp = icmp ult i64 %9, 3
  br i1 %cmp, label %if.then, label %closure_init.exit.if.end_crit_edge

closure_init.exit.if.end_crit_edge:               ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %version3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 3, ptr %version3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %closure_init.exit.if.end_crit_edge
  %sb_bio = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3
  %sb_bv = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 4
  tail call void @bio_init(ptr noundef %sb_bio, ptr noundef %sb_bv, i16 noundef zeroext 1) #18
  %bdev = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %14, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %16, %12
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i28

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_set_dev.exit

if.then.i28:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i = and i16 %14, -2177
  %17 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i28, %if.end.bio_set_dev.exit_crit_edge
  %18 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %sb_bio) #18
  %bi_end_io = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @write_super_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 3, i32 11
  %20 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %bi_private, align 4
  %call.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i = and i32 %asmresult.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body2.i, label %closure_get.exit, !prof !590

do.body2.i:                                       ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_get.exit:                                 ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  %sb = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1
  %sb_disk = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sb_disk, align 8
  tail call fastcc void @__write_super(ptr noundef %sb, ptr noundef %23, ptr noundef %sb_bio)
  tail call fastcc void @closure_set_ip(ptr noundef %sb_write) #18
  %fn1.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 17, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bcache_write_super_unlock, ptr %fn1.i, align 4
  %25 = ptrtoint ptr %sb_write to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sb_write, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  tail call void @closure_sub(ptr noundef %sb_write, i32 noundef 1006632961) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_super_endio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  tail call void @bch_count_io_errors(ptr noundef %1, i8 noundef zeroext %3, i32 noundef 0, ptr noundef nonnull @.str.84) #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %sb_write = getelementptr inbounds %struct.cache_set, ptr %5, i32 0, i32 17
  tail call void @closure_put(ptr noundef %sb_write) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcache_write_super_unlock(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_write_mutex = getelementptr i8, ptr %cl, i32 72
  tail call void @up(ptr noundef %sb_write_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_uuid_write(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__uuid_write(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bch_journal_meta(ptr noundef %c, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uuid_write(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %k = alloca %union.anon.105, align 8
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %k) #18
  %0 = call ptr @memset(ptr %k, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #18
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %1 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache, align 4
  %3 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @bch_register_lock, i32 0, i32 5), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !590

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 510, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = call i32 @bch_bucket_alloc_set(ptr noundef %c, i32 noundef 0, ptr noundef nonnull %k, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 11, i32 0, i32 4
  %6 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucket_size.i, align 8
  %div18.i = lshr i32 %7, 3
  %8 = call i32 @llvm.umin.i32(i32 %div18.i, i32 2048) #18
  %mul = shl nuw nsw i32 %8, 3
  %conv = zext i32 %mul to i64
  %9 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %k, align 8
  %and.i = and i64 %10, -68718428161
  %and1.i = shl nuw nsw i64 %conv, 20
  %or.i = or i64 %and1.i, %and.i
  store i64 %or.i, ptr %k, align 8
  call fastcc void @uuid_io(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %k, ptr noundef nonnull %cl)
  %call.i.i.i42 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %11 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %remaining.i, align 4
  %and.i43 = and i32 %12, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i43)
  %cmp.not.i = icmp eq i32 %and.i43, 1
  br i1 %cmp.not.i, label %if.end27.closure_sync.exit_crit_edge, label %if.then.i

if.end27.closure_sync.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  call void @__closure_sync(ptr noundef nonnull %cl) #18
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i, %if.end27.closure_sync.exit_crit_edge
  %13 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bucket_size.i, align 8
  %meta_sectors_written = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 22
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %meta_sectors_written, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %meta_sectors_written, i32 1, i32 3, i32 1) #18
  %15 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %meta_sectors_written, ptr %meta_sectors_written, i32 %14, ptr elementtype(i32) %meta_sectors_written) #18, !srcloc !594
  %16 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 59
  %17 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %k, align 8
  %sh.diff.i = lshr i64 %18, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %19 = call ptr @memcpy(ptr %16, ptr %k, i32 %mul.i)
  call void @bkey_put(ptr noundef %c, ptr noundef nonnull %k) #18
  br label %cleanup

cleanup:                                          ; preds = %closure_sync.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %closure_sync.exit ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %k) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_journal_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_prio_write(ptr noundef %ca, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_prio_write.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_prio_write, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !593

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1
  %back = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %back, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %1, %3
  %mask = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 3
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %5
  %arrayidx9 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3
  %back10 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 1
  %6 = ptrtoint ptr %back10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %back10, align 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %sub14 = sub i32 %7, %9
  %mask17 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 3
  %10 = ptrtoint ptr %mask17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask17, align 4
  %and18 = and i32 %sub14, %11
  %free_inc = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13
  %back19 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %back19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %back19, align 4
  %14 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_inc, align 8
  %sub22 = sub i32 %13, %15
  %mask24 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 3
  %16 = ptrtoint ptr %mask24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask24, align 4
  %and25 = and i32 %sub22, %17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_prio_write.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %and18, i32 noundef %and25) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %wait, label %do.end.if.end63_crit_edge, label %if.then27

do.end.if.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

if.then27:                                        ; preds = %do.end
  %arrayidx29 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1
  %back30 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 1
  %18 = ptrtoint ptr %back30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %back30, align 4
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %sub34 = sub i32 %19, %21
  %mask37 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 3
  %22 = ptrtoint ptr %mask37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask37, align 4
  %and38 = and i32 %sub34, %23
  %arrayidx40 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3
  %back41 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 1
  %24 = ptrtoint ptr %back41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %back41, align 4
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40, align 4
  %sub45 = sub i32 %25, %27
  %mask48 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 3
  %28 = ptrtoint ptr %mask48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask48, align 4
  %and49 = and i32 %sub45, %29
  %add = add i32 %and49, %and38
  %30 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %conv = trunc i64 %32 to i32
  %bucket_size.i.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 4
  %33 = ptrtoint ptr %bucket_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bucket_size.i.i, align 8
  %div18.i.i = lshr i32 %34, 3
  %35 = tail call i32 @llvm.umin.i32(i32 %div18.i.i, i32 2048) #18
  %shl.i = shl nuw nsw i32 %35, 12
  %sub52 = add nsw i32 %shl.i, -40
  %div = udiv i32 %sub52, 3
  %add53 = add i32 %conv, -1
  %sub54 = add i32 %add53, %div
  %div59 = udiv i32 %sub54, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div59, i32 %add)
  %cmp = icmp ugt i32 %div59, %add
  br i1 %cmp, label %if.then27.cleanup260_crit_edge, label %if.then27.if.end63_crit_edge

if.then27.if.end63_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

if.then27.cleanup260_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup260

if.end63:                                         ; preds = %if.then27.if.end63_crit_edge, %do.end.if.end63_crit_edge
  %36 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %37 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %38 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool65.not = icmp eq i32 %38, 0
  br i1 %tobool65.not, label %if.end63.if.end92_crit_edge, label %land.rhs

if.end63.if.end92_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

land.rhs:                                         ; preds = %if.end63
  %39 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ca, align 8
  %dep_map = getelementptr inbounds %struct.cache_set, ptr %40, i32 0, i32 23, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp67.not = icmp eq i32 %call.i, 0
  br i1 %cmp67.not, label %do.end86, label %land.rhs.if.end92_crit_edge, !prof !590

land.rhs.if.end92_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

do.end86:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 639, i32 noundef 9, ptr noundef null) #18
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %land.rhs.if.end92_crit_edge, %if.end63.if.end92_crit_edge
  %disk_buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 9
  %41 = ptrtoint ptr %disk_buckets to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %disk_buckets, align 4
  %seq = getelementptr inbounds %struct.prio_set, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %seq, align 8
  %inc = add i64 %44, 1
  store i64 %inc, ptr %seq, align 8
  %45 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11
  %bucket_size = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 4
  %46 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bucket_size, align 8
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %45, align 8
  %conv105 = trunc i64 %49 to i32
  %div18.i.i348 = lshr i32 %47, 3
  %50 = call i32 @llvm.umin.i32(i32 %div18.i.i348, i32 2048) #18
  %shl.i349 = shl nuw nsw i32 %50, 12
  %sub108 = add nsw i32 %shl.i349, -40
  %div109 = udiv i32 %sub108, 3
  %add110 = add i32 %conv105, -1
  %sub111 = add i32 %add110, %div109
  %div116 = udiv i32 %sub111, %div109
  %mul = mul i32 %div116, %47
  %meta_sectors_written = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 22
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %meta_sectors_written, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %meta_sectors_written, i32 1, i32 3, i32 1) #18
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %meta_sectors_written, ptr %meta_sectors_written, i32 %mul, ptr elementtype(i32) %meta_sectors_written) #18, !srcloc !594
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %45, align 8
  %conv119 = trunc i64 %53 to i32
  %54 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bucket_size, align 8
  %div18.i.i354 = lshr i32 %55, 3
  %56 = call i32 @llvm.umin.i32(i32 %div18.i.i354, i32 2048) #18
  %shl.i355 = shl nuw nsw i32 %56, 12
  %sub122 = add nsw i32 %shl.i355, -40
  %div123 = udiv i32 %sub122, 3
  %add124 = add i32 %conv119, -1
  %sub125 = add i32 %add124, %div123
  %div130 = udiv i32 %sub125, %div123
  %buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 15
  %prio_buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 10
  %57 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 4
  br label %for.cond

for.cond:                                         ; preds = %do.end189.for.cond_crit_edge, %if.end92
  %i.0.in = phi i32 [ %div130, %if.end92 ], [ %i.0, %do.end189.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp132 = icmp sgt i32 %i.0, -1
  br i1 %cmp132, label %for.body, label %for.end221

for.body:                                         ; preds = %for.cond
  %58 = ptrtoint ptr %disk_buckets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %disk_buckets, align 4
  %data = getelementptr inbounds %struct.prio_set, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bucket_size, align 8
  %div18.i.i360 = lshr i32 %61, 3
  %62 = call i32 @llvm.umin.i32(i32 %div18.i.i360, i32 2048) #18
  %shl.i361 = shl nuw nsw i32 %62, 12
  %sub137 = add nsw i32 %shl.i361, -40
  %div138 = udiv i32 %sub137, 3
  %add.ptr = getelementptr %struct.bucket_disk, ptr %data, i32 %div138
  %63 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buckets, align 8
  %mul143 = mul i32 %div138, %i.0
  %add.ptr144 = getelementptr %struct.bucket, ptr %64, i32 %mul143
  %65 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %45, align 8
  %idx.ext379 = trunc i64 %66 to i32
  %add.ptr149380 = getelementptr %struct.bucket, ptr %64, i32 %idx.ext379
  %cmp150381 = icmp ult ptr %add.ptr144, %add.ptr149380
  %cmp153382 = icmp ult ptr %data, %add.ptr
  %or.cond383 = select i1 %cmp150381, i1 %cmp153382, i1 false
  br i1 %or.cond383, label %for.body.for.body156_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body156_crit_edge:                   ; preds = %for.body
  br label %for.body156

for.body156:                                      ; preds = %for.body156.for.body156_crit_edge, %for.body.for.body156_crit_edge
  %d.0385 = phi ptr [ %incdec.ptr159, %for.body156.for.body156_crit_edge ], [ %data, %for.body.for.body156_crit_edge ]
  %b.0384 = phi ptr [ %incdec.ptr, %for.body156.for.body156_crit_edge ], [ %add.ptr144, %for.body.for.body156_crit_edge ]
  %prio = getelementptr inbounds %struct.bucket, ptr %b.0384, i32 0, i32 1
  %67 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %prio, align 4
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %70 = ptrtoint ptr %d.0385 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %d.0385, align 1
  %gen = getelementptr inbounds %struct.bucket, ptr %b.0384, i32 0, i32 2
  %71 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %gen, align 2
  %gen158 = getelementptr inbounds %struct.bucket_disk, ptr %d.0385, i32 0, i32 1
  %73 = ptrtoint ptr %gen158 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %gen158, align 1
  %incdec.ptr = getelementptr %struct.bucket, ptr %b.0384, i32 1
  %incdec.ptr159 = getelementptr %struct.bucket_disk, ptr %d.0385, i32 1
  %74 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buckets, align 8
  %76 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %45, align 8
  %idx.ext = trunc i64 %77 to i32
  %add.ptr149 = getelementptr %struct.bucket, ptr %75, i32 %idx.ext
  %cmp150 = icmp ult ptr %incdec.ptr, %add.ptr149
  %cmp153 = icmp ult ptr %incdec.ptr159, %add.ptr
  %or.cond = select i1 %cmp150, i1 %cmp153, i1 false
  br i1 %or.cond, label %for.body156.for.body156_crit_edge, label %for.body156.for.end_crit_edge

for.body156.for.end_crit_edge:                    ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body156.for.body156_crit_edge:                ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body156

for.end:                                          ; preds = %for.body156.for.end_crit_edge, %for.body.for.end_crit_edge
  %78 = ptrtoint ptr %prio_buckets to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prio_buckets, align 8
  %arrayidx161 = getelementptr i64, ptr %79, i32 %i.0.in
  %80 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx161, align 8
  %next_bucket = getelementptr inbounds %struct.prio_set, ptr %59, i32 0, i32 5
  %82 = ptrtoint ptr %next_bucket to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %next_bucket, align 8
  %83 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %57, align 8
  %xor.i = xor i64 %84, 7444697984449871761
  %magic = getelementptr inbounds %struct.prio_set, ptr %59, i32 0, i32 1
  %85 = ptrtoint ptr %magic to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %xor.i, ptr %magic, align 8
  %86 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bucket_size, align 8
  %div18.i.i366 = lshr i32 %87, 3
  %88 = call i32 @llvm.umin.i32(i32 %div18.i.i366, i32 2048) #18
  %shl.i367 = shl nuw nsw i32 %88, 12
  %sub167 = add nsw i32 %shl.i367, -8
  %call.i368 = call i64 @crc64_be(i64 noundef -1, ptr noundef %magic, i32 noundef %sub167) #21
  %xor.i369 = xor i64 %call.i368, -1
  %89 = ptrtoint ptr %59 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %xor.i369, ptr %59, align 8
  %call170 = call i32 @bch_bucket_alloc(ptr noundef %ca, i32 noundef 1, i1 noundef zeroext %wait) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call170)
  %cmp172 = icmp eq i32 %call170, -1
  br i1 %cmp172, label %do.body181, label %do.end189, !prof !590

do.body181:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 664, 0\0A.popsection", ""() #18, !srcloc !595
  unreachable

do.end189:                                        ; preds = %for.end
  %90 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ca, align 8
  %bucket_lock191 = getelementptr inbounds %struct.cache_set, ptr %91, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock191) #18
  %conv192 = sext i32 %call170 to i64
  call fastcc void @prio_io(ptr noundef %ca, i64 noundef %conv192, i32 noundef 1)
  %92 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ca, align 8
  %bucket_lock194 = getelementptr inbounds %struct.cache_set, ptr %93, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock194, i32 noundef 0) #18
  %94 = ptrtoint ptr %prio_buckets to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prio_buckets, align 8
  %arrayidx197 = getelementptr i64, ptr %95, i32 %i.0
  %96 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv192, ptr %arrayidx197, align 8
  %97 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %buckets, align 8
  %arrayidx200 = getelementptr %struct.bucket, ptr %98, i32 %call170
  %call.i.i343 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx200, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  call void @llvm.prefetch.p0(ptr %arrayidx200, i32 1, i32 3, i32 1) #18
  %99 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx200, ptr %arrayidx200, i32 1, ptr elementtype(i32) %arrayidx200) #18, !srcloc !597
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %99, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  %cmp202 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp202, label %do.body211, label %do.end189.for.cond_crit_edge, !prof !590

do.end189.for.cond_crit_edge:                     ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

do.body211:                                       ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 671, 0\0A.popsection", ""() #18, !srcloc !599
  unreachable

for.end221:                                       ; preds = %for.cond
  %100 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ca, align 8
  %bucket_lock223 = getelementptr inbounds %struct.cache_set, ptr %101, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock223) #18
  %102 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ca, align 8
  call void @bch_journal_meta(ptr noundef %103, ptr noundef nonnull %cl) #18
  %call.i.i.i371 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %104 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %remaining.i, align 4
  %and.i = and i32 %105, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %for.end221.closure_sync.exit_crit_edge, label %if.then.i

for.end221.closure_sync.exit_crit_edge:           ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit

if.then.i:                                        ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #20
  call void @__closure_sync(ptr noundef nonnull %cl) #18
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i, %for.end221.closure_sync.exit_crit_edge
  %106 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ca, align 8
  %bucket_lock226 = getelementptr inbounds %struct.cache_set, ptr %107, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock226, i32 noundef 0) #18
  %108 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %45, align 8
  %conv230386 = trunc i64 %109 to i32
  %110 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bucket_size, align 8
  %div18.i.i373387 = lshr i32 %111, 3
  %112 = call i32 @llvm.umin.i32(i32 %div18.i.i373387, i32 2048) #18
  %shl.i374388 = shl nuw nsw i32 %112, 12
  %sub233389 = add nsw i32 %shl.i374388, -40
  %div234390 = udiv i32 %sub233389, 3
  %add235391 = add i32 %conv230386, -1
  %113 = xor i32 %div234390, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add235391, i32 %113)
  %cmp242394.not = icmp ugt i32 %add235391, %113
  br i1 %cmp242394.not, label %closure_sync.exit.cleanup260_crit_edge, label %for.body244.lr.ph

closure_sync.exit.cleanup260_crit_edge:           ; preds = %closure_sync.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup260

for.body244.lr.ph:                                ; preds = %closure_sync.exit
  %prio_last_buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 11
  br label %for.body244

for.body244:                                      ; preds = %if.end252.for.body244_crit_edge, %for.body244.lr.ph
  %i.1395 = phi i32 [ 0, %for.body244.lr.ph ], [ %inc258, %if.end252.for.body244_crit_edge ]
  %114 = ptrtoint ptr %prio_last_buckets to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prio_last_buckets, align 4
  %arrayidx245 = getelementptr i64, ptr %115, i32 %i.1395
  %116 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx245, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %117)
  %tobool246.not = icmp eq i64 %117, 0
  br i1 %tobool246.not, label %for.body244.if.end252_crit_edge, label %if.then247

for.body244.if.end252_crit_edge:                  ; preds = %for.body244
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end252

if.then247:                                       ; preds = %for.body244
  call void @__sanitizer_cov_trace_pc() #20
  %118 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buckets, align 8
  %idxprom = trunc i64 %117 to i32
  %arrayidx251 = getelementptr %struct.bucket, ptr %119, i32 %idxprom
  call void @__bch_bucket_free(ptr noundef %ca, ptr noundef %arrayidx251) #18
  br label %if.end252

if.end252:                                        ; preds = %if.then247, %for.body244.if.end252_crit_edge
  %120 = ptrtoint ptr %prio_buckets to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prio_buckets, align 8
  %arrayidx254 = getelementptr i64, ptr %121, i32 %i.1395
  %122 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx254, align 8
  %124 = ptrtoint ptr %prio_last_buckets to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prio_last_buckets, align 4
  %arrayidx256 = getelementptr i64, ptr %125, i32 %i.1395
  %126 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %123, ptr %arrayidx256, align 8
  %inc258 = add nuw i32 %i.1395, 1
  %127 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %45, align 8
  %conv230 = trunc i64 %128 to i32
  %129 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bucket_size, align 8
  %div18.i.i373 = lshr i32 %130, 3
  %131 = call i32 @llvm.umin.i32(i32 %div18.i.i373, i32 2048) #18
  %shl.i374 = shl nuw nsw i32 %131, 12
  %sub233 = add nsw i32 %shl.i374, -40
  %div234 = udiv i32 %sub233, 3
  %add235 = add i32 %conv230, -1
  %sub236 = add i32 %add235, %div234
  %div241 = udiv i32 %sub236, %div234
  %cmp242 = icmp ult i32 %inc258, %div241
  br i1 %cmp242, label %if.end252.for.body244_crit_edge, label %if.end252.cleanup260_crit_edge

if.end252.cleanup260_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup260

if.end252.for.body244_crit_edge:                  ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body244

cleanup260:                                       ; preds = %if.end252.cleanup260_crit_edge, %closure_sync.exit.cleanup260_crit_edge, %if.then27.cleanup260_crit_edge
  %retval.1 = phi i32 [ -12, %if.then27.cleanup260_crit_edge ], [ 0, %closure_sync.exit.cleanup260_crit_edge ], [ 0, %if.end252.cleanup260_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #18
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bucket_alloc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prio_io(ptr noundef %ca, i64 noundef %bucket, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %prio = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 8
  %0 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca, align 8
  %call = tail call ptr @bch_bbio_alloc(ptr noundef %1) #18
  %2 = call ptr @memset(ptr %prio, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 8, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %3 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  %bucket_size = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 4
  %4 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bucket_size, align 8
  %conv = zext i32 %5 to i64
  %mul = mul i64 %conv, %bucket
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul, ptr %bi_iter, align 8
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %10, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %12, %8
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i = and i16 %10, -2177
  %13 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %14 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call) #18
  %15 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bucket_size, align 8
  %div18.i.i = lshr i32 %16, 3
  %17 = tail call i32 @llvm.umin.i32(i32 %div18.i.i, i32 2048) #18
  %shl.i = shl nuw nsw i32 %17, 12
  %bi_size = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl.i, ptr %bi_size, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 10
  %19 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @prio_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 11
  %20 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ca, ptr %bi_private, align 4
  %or.i = or i32 %op, 6144
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %bi_opf.i, align 8
  %disk_buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 9
  %22 = ptrtoint ptr %disk_buckets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk_buckets, align 4
  tail call void @bch_bio_map(ptr noundef %call, ptr noundef %23) #18
  %24 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ca, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !590

do.body2.i.i:                                     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_get.exit.i:                               ; preds = %bio_set_dev.exit
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i1, !prof !600

if.then.i1:                                       ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 6
  %30 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %call) #18
  br label %closure_bio_submit.exit

if.end.i:                                         ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @submit_bio_noacct(ptr noundef %call) #18
  br label %closure_bio_submit.exit

closure_bio_submit.exit:                          ; preds = %if.end.i, %if.then.i1
  %call.i.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %31 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %remaining.i, align 4
  %and.i = and i32 %32, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i4 = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i4, label %closure_bio_submit.exit.closure_sync.exit_crit_edge, label %if.then.i5

closure_bio_submit.exit.closure_sync.exit_crit_edge: ; preds = %closure_bio_submit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit

if.then.i5:                                       ; preds = %closure_bio_submit.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__closure_sync(ptr noundef %prio) #18
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i5, %closure_bio_submit.exit.closure_sync.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @closure_sync(ptr noundef %cl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %remaining = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %remaining, i32 noundef 4) #18
  %0 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %remaining, align 4
  %and = and i32 %1, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__closure_sync(ptr noundef %cl) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bch_bucket_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcache_device_stop(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %if.then
  tail call void @__init_work(ptr noundef %d, i32 noundef 0) #18
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %d, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %d, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %d, i32 0, i32 1
  %3 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %d, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %1, ptr noundef %d) #18
  br i1 %call.i.i, label %do.body2.i.if.end_crit_edge, label %do.body12.i, !prof !600

do.body2.i.if.end_crit_edge:                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i = getelementptr inbounds %struct.anon, ptr %d, i32 0, i32 3
  %5 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fn.i, align 4
  tail call void %6(ptr noundef %d) #18
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.body2.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_cached_dev_run(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %env = alloca [4 x ptr], align 4
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %label = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 5
  %call = tail call ptr @kmemdup_nul(ptr noundef %label, i32 noundef 32, i32 noundef 3264) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %env) #18
  %0 = getelementptr inbounds [4 x ptr], ptr %env, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %env, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %env, i32 0, i32 3
  %3 = ptrtoint ptr %env to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.5, ptr %env, align 4
  %uuid = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 3
  %call3 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %uuid) #18
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %0, align 4
  %tobool.not = icmp eq ptr %call, null
  %..str.8 = select i1 %tobool.not, ptr @.str.8, ptr %call
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %..str.8) #18
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  %io_disable = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 30
  %7 = ptrtoint ptr %io_disable to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %io_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %9) #22
  br label %out

if.end:                                           ; preds = %entry
  %running = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !602
  tail call void @llvm.prefetch.p0(ptr %running, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %running) #18, !srcloc !603
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !604
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool10.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool10.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %bdev16 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %11 = ptrtoint ptr %bdev16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %12) #22
  br label %out

if.end18:                                         ; preds = %if.end
  %c = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %land.lhs.true, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end18
  %flags.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %flags.i, align 8
  %17 = and i64 %16, 6917529027641081856
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.not = icmp eq i64 %17, 0
  br i1 %cmp.not, label %land.lhs.true.if.end24_crit_edge, label %if.then22

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #18
  %18 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %19 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %flags.i, align 8
  %or.i = or i64 %21, 6917529027641081856
  store i64 %or.i, ptr %flags.i, align 8
  call void @bch_write_bdev_super(ptr noundef %dc, ptr noundef nonnull %cl)
  %call.i.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %22 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %remaining.i, align 4
  %and.i102 = and i32 %23, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i102)
  %cmp.not.i = icmp eq i32 %and.i102, 1
  br i1 %cmp.not.i, label %if.then22.closure_sync.exit_crit_edge, label %if.then.i

if.then22.closure_sync.exit_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  call void @__closure_sync(ptr noundef nonnull %cl) #18
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i, %if.then22.closure_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #18
  br label %if.end24

if.end24:                                         ; preds = %closure_sync.exit, %land.lhs.true.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %disk25 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %disk25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk25, align 4
  %call.i = call i32 @device_add_disk(ptr noundef null, ptr noundef %25, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end29:                                         ; preds = %if.end24
  %bdev30 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %26 = ptrtoint ptr %bdev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev30, align 4
  %28 = ptrtoint ptr %disk25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disk25, align 4
  %call33 = call i32 @bd_link_disk_holder(ptr noundef %27, ptr noundef %29) #18
  %30 = ptrtoint ptr %disk25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disk25, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 10
  %call36 = call i32 @kobject_uevent_env(ptr noundef %bd_device, i32 noundef 2, ptr noundef nonnull %env) #18
  %kobj37 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %disk25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disk25, align 4
  %part039 = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %part039 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %part039, align 4
  %bd_device40 = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 10
  %call42 = call i32 @sysfs_create_link(ptr noundef %kobj37, ptr noundef %bd_device40, ptr noundef nonnull @.str.14) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.end29.do.end54_crit_edge

if.end29.do.end54_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end54

lor.lhs.false:                                    ; preds = %if.end29
  %38 = ptrtoint ptr %disk25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disk25, align 4
  %part045 = getelementptr inbounds %struct.gendisk, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %part045 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %part045, align 4
  %bd_device46 = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 10
  %call49 = call i32 @sysfs_create_link(ptr noundef %bd_device46, ptr noundef %kobj37, ptr noundef nonnull @.str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end57, label %lor.lhs.false.do.end54_crit_edge

lor.lhs.false.do.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end54

do.end54:                                         ; preds = %lor.lhs.false.do.end54_crit_edge, %if.end29.do.end54_crit_edge
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10) #22
  br label %out

if.end57:                                         ; preds = %lor.lhs.false
  %call58 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cached_dev_status_update, ptr noundef %dc, i32 noundef -1, ptr noundef nonnull @.str.18) #18
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end69, label %if.end62

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %call61 = call i32 @wake_up_process(ptr noundef %call58) #18
  %status_update_thread = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 21
  %42 = ptrtoint ptr %status_update_thread to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call58, ptr %status_update_thread, align 8
  br label %out

do.end69:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %status_update_thread104 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 21
  %43 = ptrtoint ptr %status_update_thread104 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call58, ptr %status_update_thread104, align 8
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10) #22
  br label %out

out:                                              ; preds = %do.end69, %if.end62, %do.end54, %if.end24.out_crit_edge, %do.end14, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -16, %do.end14 ], [ %call.i, %if.end24.out_crit_edge ], [ -12, %do.end54 ], [ 0, %do.end69 ], [ 0, %if.end62 ]
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %45) #18
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %47) #18
  call void @kfree(ptr noundef %call) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %env) #18
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bd_link_disk_holder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cached_dev_status_update(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call33 = tail call zeroext i1 @kthread_should_stop() #18
  br i1 %call33, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %io_disable = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 30
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 2
  %offline_seconds = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 48
  br label %land.rhs

land.rhs:                                         ; preds = %if.end23.land.rhs_crit_edge, %land.rhs.lr.ph
  %0 = ptrtoint ptr %io_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %io_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %1 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %queue_flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %offline_seconds to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offline_seconds, align 4
  br label %if.end23

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %offline_seconds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offline_seconds, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %offline_seconds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp ugt i32 %inc, 4
  br i1 %cmp, label %do.end, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

do.end:                                           ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef %2, i32 noundef 5) #22
  %disk = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1
  %name = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, ptr noundef %name) #22
  %11 = ptrtoint ptr %io_disable to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load15 = load i8, ptr %io_disable, align 8
  %bf.set = or i8 %bf.load15, -128
  store i8 %bf.set, ptr %io_disable, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !605
  %flags.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 6
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.then.i:                                        ; preds = %do.end
  %12 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.then.i
  tail call void @__init_work(ptr noundef %disk, i32 noundef 0) #18
  %14 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %disk, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %13, ptr noundef %disk) #18
  br i1 %call.i.i.i, label %do.body2.i.i.while.end_crit_edge, label %do.body12.i.i, !prof !600

do.body2.i.i.while.end_crit_edge:                 ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fn.i.i, align 4
  tail call void %18(ptr noundef %disk) #18
  br label %while.end

if.end23:                                         ; preds = %if.end.if.end23_crit_edge, %if.end.thread
  %call24 = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #18
  %call = tail call zeroext i1 @kthread_should_stop() #18
  br i1 %call, label %if.end23.while.end_crit_edge, label %if.end23.land.rhs_crit_edge

if.end23.land.rhs_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %if.else.i.i, %do.body2.i.i.while.end_crit_edge, %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @wait_for_kthread_stop()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cached_dev_detach(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @bch_register_lock, i32 0, i32 5), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !590

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1175, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool25.not = icmp eq i32 %and1.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end27:                                         ; preds = %if.end
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end33:                                         ; preds = %if.end27
  %remaining.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i = and i32 %asmresult.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body2.i, label %closure_get.exit, !prof !590

do.body2.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_get.exit:                                 ; preds = %if.end33
  %writeback_thread.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 18
  %4 = ptrtoint ptr %writeback_thread.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %writeback_thread.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %closure_get.exit.bch_writeback_queue.exit_crit_edge, label %if.then.i

closure_get.exit.bch_writeback_queue.exit_crit_edge: ; preds = %closure_get.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bch_writeback_queue.exit

if.then.i:                                        ; preds = %closure_get.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call2.i = tail call i32 @wake_up_process(ptr noundef nonnull %5) #18
  br label %bch_writeback_queue.exit

bch_writeback_queue.exit:                         ; preds = %if.then.i, %closure_get.exit.bch_writeback_queue.exit_crit_edge
  %count.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !606
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #18, !srcloc !607
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i41, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %bch_writeback_queue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !600

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #18
  br label %return

if.then.i41:                                      ; preds = %bch_writeback_queue.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !608
  %detach.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i40 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %detach.i) #18
  br label %return

return:                                           ; preds = %if.then.i41, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %if.end27.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_cached_dev_attach(ptr noundef %dc, ptr noundef %c, ptr noundef readonly %set_uuid) local_unnamed_addr #0 align 64 {
entry:
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #18
  %conv = trunc i64 %call to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %tobool.not = icmp eq ptr %set_uuid, null
  br i1 %tobool.not, label %land.lhs.true5.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %set_uuid1 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %bcmp296 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %set_uuid, ptr noundef dereferenceable(16) %set_uuid1, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp296)
  %tobool3.not = icmp eq i32 %bcmp296, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true5.critedge:                          ; preds = %entry
  %1 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 4
  %set_uuid7 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %1, ptr noundef dereferenceable(16) %set_uuid7, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %land.lhs.true5.critedge.if.end_crit_edge, label %land.lhs.true5.critedge.cleanup_crit_edge

land.lhs.true5.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true5.critedge.if.end_crit_edge:         ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.critedge.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %disk = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1
  %c11 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %c11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c11, align 8
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef %5) #22
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %bdev23 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %9 = ptrtoint ptr %bdev23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev23, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, ptr noundef %10) #22
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %block_size = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 11, i32 0, i32 1
  %11 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %block_size, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache, align 4
  %block_size29 = getelementptr inbounds %struct.cache, ptr %14, i32 0, i32 1, i32 11, i32 0, i32 1
  %15 = ptrtoint ptr %block_size29 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %block_size29, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %16)
  %cmp = icmp ult i16 %12, %16
  br i1 %cmp, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  %bdev37 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %17 = ptrtoint ptr %bdev37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev37, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, ptr noundef %18) #22
  br label %cleanup

if.end39:                                         ; preds = %if.end25
  %cached_devs = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 13
  %uuid = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end39
  %exist_dc.0.in = phi ptr [ %cached_devs, %if.end39 ], [ %exist_dc.0, %for.body.for.cond_crit_edge ]
  %19 = ptrtoint ptr %exist_dc.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %exist_dc.0 = load ptr, ptr %exist_dc.0.in, align 4
  %cmp47.not = icmp eq ptr %exist_dc.0, %cached_devs
  br i1 %cmp47.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %uuid52 = getelementptr inbounds %struct.cached_dev, ptr %exist_dc.0, i32 0, i32 3, i32 3
  %bcmp295 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %uuid52, i32 16) #23
  %tobool55.not = icmp eq i32 %bcmp295, 0
  br i1 %tobool55.not, label %do.end59, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

do.end59:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %bdev61 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %20 = ptrtoint ptr %bdev61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, ptr noundef %21) #22
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call72 = tail call fastcc ptr @uuid_find(ptr noundef %c, ptr noundef %uuid)
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %for.end.if.then91_crit_edge, label %land.lhs.true74

for.end.if.then91_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then91

land.lhs.true74:                                  ; preds = %for.end
  %flags.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 6
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %flags.i, align 8
  %shr.i298 = lshr i64 %23, 61
  %trunc = trunc i64 %shr.i298 to i2
  %24 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %land.lhs.true74.if.end114_crit_edge [
    i2 -1, label %land.lhs.true74.if.then84_crit_edge
    i2 0, label %land.lhs.true74.if.then84_crit_edge315
  ]

land.lhs.true74.if.then84_crit_edge315:           ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then84

land.lhs.true74.if.then84_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then84

land.lhs.true74.if.end114_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end114

if.then84:                                        ; preds = %land.lhs.true74.if.then84_crit_edge, %land.lhs.true74.if.then84_crit_edge315
  %25 = call ptr @memcpy(ptr %call72, ptr @invalid_uuid, i32 16)
  %call87 = tail call i64 @ktime_get_real_seconds() #18
  %conv88 = trunc i64 %call87 to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv88)
  %invalidated = getelementptr inbounds %struct.anon.95, ptr %call72, i32 0, i32 4
  %27 = ptrtoint ptr %invalidated to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %invalidated, align 8
  br label %if.then91

if.then91:                                        ; preds = %if.then84, %for.end.if.then91_crit_edge
  %flags.i302 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %flags.i302 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flags.i302, align 8
  %30 = and i64 %29, 6917529027641081856
  call void @__sanitizer_cov_trace_const_cmp8(i64 4611686018427387904, i64 %30)
  %cmp94 = icmp eq i64 %30, 4611686018427387904
  br i1 %cmp94, label %do.end99, label %if.end103

do.end99:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  %bdev101 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %31 = ptrtoint ptr %bdev101 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev101, align 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.23, ptr noundef %32) #22
  br label %cleanup

if.end103:                                        ; preds = %if.then91
  %call104 = tail call fastcc ptr @uuid_find_empty(ptr noundef %c)
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %do.end109, label %if.end103.if.end114_crit_edge

if.end103.if.end114_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end114

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  %bdev111 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %33 = ptrtoint ptr %bdev111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev111, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.23, ptr noundef %34) #22
  br label %cleanup

if.end114:                                        ; preds = %if.end103.if.end114_crit_edge, %land.lhs.true74.if.end114_crit_edge
  %u.1 = phi ptr [ %call104, %if.end103.if.end114_crit_edge ], [ %call72, %land.lhs.true74.if.end114_crit_edge ]
  %call117 = tail call zeroext i1 @bch_is_zero(ptr noundef nonnull %u.1, i32 noundef 16) #18
  br i1 %call117, label %if.then118, label %if.else

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #18
  %35 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %36 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  %37 = call ptr @memcpy(ptr %u.1, ptr %uuid, i32 16)
  %label = getelementptr inbounds %struct.anon.95, ptr %u.1, i32 0, i32 1
  %label126 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 5
  %38 = call ptr @memcpy(ptr %label, ptr %label126, i32 32)
  %last_reg = getelementptr inbounds %struct.anon.95, ptr %u.1, i32 0, i32 3
  %39 = ptrtoint ptr %last_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %0, ptr %last_reg, align 4
  %first_reg = getelementptr inbounds %struct.anon.95, ptr %u.1, i32 0, i32 2
  %40 = ptrtoint ptr %first_reg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %0, ptr %first_reg, align 8
  %call128 = call i32 @bch_uuid_write(ptr noundef %c)
  %41 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 4
  %set_uuid131 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %42 = call ptr @memcpy(ptr %41, ptr %set_uuid131, i32 16)
  %flags.i305 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 6
  %43 = ptrtoint ptr %flags.i305 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %flags.i305, align 8
  %and.i306 = and i64 %44, -6917529027641081857
  %or.i = or i64 %and.i306, 2305843009213693952
  store i64 %or.i, ptr %flags.i305, align 8
  call void @bch_write_bdev_super(ptr noundef %dc, ptr noundef nonnull %cl)
  call fastcc void @closure_sync(ptr noundef nonnull %cl)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #18
  br label %if.end136

if.else:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #20
  %last_reg134 = getelementptr inbounds %struct.anon.95, ptr %u.1, i32 0, i32 3
  %45 = ptrtoint ptr %last_reg134 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %0, ptr %last_reg134, align 4
  %call135 = tail call i32 @bch_uuid_write(ptr noundef %c)
  br label %if.end136

if.end136:                                        ; preds = %if.else, %if.then118
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %46 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %uuids, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %u.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %47 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 7
  call fastcc void @bcache_device_attach(ptr noundef %disk, ptr noundef %c, i32 noundef %sub.ptr.div)
  call fastcc void @list_move(ptr noundef %dc, ptr noundef %cached_devs)
  %48 = ptrtoint ptr %cached_devs to i32
  call void @__asan_load4_noabort(i32 %48)
  %dc.012.i = load ptr, ptr %cached_devs, align 4
  %cmp.not13.i = icmp eq ptr %dc.012.i, %cached_devs
  br i1 %cmp.not13.i, label %if.end136.calc_cached_dev_sectors.exit_crit_edge, label %if.end136.for.body.i_crit_edge

if.end136.for.body.i_crit_edge:                   ; preds = %if.end136
  br label %for.body.i

if.end136.calc_cached_dev_sectors.exit_crit_edge: ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #20
  br label %calc_cached_dev_sectors.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end136.for.body.i_crit_edge
  %dc.015.i = phi ptr [ %dc.0.i, %for.body.i.for.body.i_crit_edge ], [ %dc.012.i, %if.end136.for.body.i_crit_edge ]
  %sectors.014.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end136.for.body.i_crit_edge ]
  %bdev.i = getelementptr inbounds %struct.cached_dev, ptr %dc.015.i, i32 0, i32 2
  %49 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %add.i = add i64 %52, %sectors.014.i
  %53 = ptrtoint ptr %dc.015.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %dc.0.i = load ptr, ptr %dc.015.i, align 4
  %cmp.not.i = icmp eq ptr %dc.0.i, %cached_devs
  br i1 %cmp.not.i, label %for.body.i.calc_cached_dev_sectors.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.calc_cached_dev_sectors.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calc_cached_dev_sectors.exit

calc_cached_dev_sectors.exit:                     ; preds = %for.body.i.calc_cached_dev_sectors.exit_crit_edge, %if.end136.calc_cached_dev_sectors.exit_crit_edge
  %sectors.0.lcssa.i = phi i64 [ 0, %if.end136.calc_cached_dev_sectors.exit_crit_edge ], [ %add.i, %for.body.i.calc_cached_dev_sectors.exit_crit_edge ]
  %cached_dev_sectors.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 14
  %54 = ptrtoint ptr %cached_dev_sectors.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sectors.0.lcssa.i, ptr %cached_dev_sectors.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !609
  %count = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 9
  %call.i.i.i307 = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #18
  %55 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 1, ptr %count, align 4
  %writeback_lock = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 12
  call void @down_write(ptr noundef %writeback_lock) #18
  %call146 = call i32 @bch_cached_dev_writeback_start(ptr noundef %dc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end158, label %if.then148

if.then148:                                       ; preds = %calc_cached_dev_sectors.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @up_write(ptr noundef %writeback_lock) #18
  %disk155 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %disk155 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %disk155, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 3
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.23, ptr noundef %disk_name) #22
  br label %cleanup

if.end158:                                        ; preds = %calc_cached_dev_sectors.exit
  %flags.i308 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %flags.i308 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %flags.i308, align 8
  %60 = and i64 %59, 6917529027641081856
  call void @__sanitizer_cov_trace_const_cmp8(i64 4611686018427387904, i64 %60)
  %cmp161 = icmp eq i64 %60, 4611686018427387904
  br i1 %cmp161, label %if.then163, label %if.end158.if.end164_crit_edge

if.end158.if.end164_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end164

if.then163:                                       ; preds = %if.end158
  %has_dirty = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %has_dirty, i32 noundef 4) #18
  %61 = ptrtoint ptr %has_dirty to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %has_dirty, align 4
  %writeback_thread.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 18
  %62 = ptrtoint ptr %writeback_thread.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %writeback_thread.i, align 4
  %tobool.not.i.i = icmp eq ptr %63, null
  %cmp.i.i = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then163.if.end164_crit_edge, label %if.then.i

if.then163.if.end164_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end164

if.then.i:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #20
  %call2.i = call i32 @wake_up_process(ptr noundef nonnull %63) #18
  br label %if.end164

if.end164:                                        ; preds = %if.then.i, %if.then163.if.end164_crit_edge, %if.end158.if.end164_crit_edge
  call void @bch_sectors_dirty_init(ptr noundef %disk) #18
  %call166 = call i32 @bch_cached_dev_run(ptr noundef %dc)
  %64 = zext i32 %call166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %call166, label %if.then171 [
    i32 0, label %if.end164.if.end180_crit_edge
    i32 -16, label %if.end164.if.end180_crit_edge316
  ]

if.end164.if.end180_crit_edge316:                 ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end180

if.end164.if.end180_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end180

if.then171:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #20
  call void @up_write(ptr noundef %writeback_lock) #18
  %writeback_thread = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 18
  %65 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %writeback_thread, align 4
  %call173 = call i32 @kthread_stop(ptr noundef %66) #18
  call fastcc void @cancel_writeback_rate_update_dwork(ptr noundef %dc)
  %bdev178 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %67 = ptrtoint ptr %bdev178 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bdev178, align 4
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.23, ptr noundef %68) #22
  br label %cleanup

if.end180:                                        ; preds = %if.end164.if.end180_crit_edge, %if.end164.if.end180_crit_edge316
  call fastcc void @bcache_device_link(ptr noundef %disk, ptr noundef %c, ptr noundef nonnull @.str.45)
  %attached_dev_nr = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 12
  %call.i.i297 = call zeroext i1 @__kasan_check_write(ptr noundef %attached_dev_nr, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %attached_dev_nr, i32 1, i32 3, i32 1) #18
  %69 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %attached_dev_nr, ptr %attached_dev_nr, i32 1, ptr elementtype(i32) %attached_dev_nr) #18, !srcloc !594
  %70 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cache, align 4
  %version.i = getelementptr inbounds %struct.cache, ptr %71, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %73)
  %cmp.i = icmp ult i64 %73, 5
  br i1 %cmp.i, label %if.end180.if.end199_crit_edge, label %bch_has_feature_obso_large_bucket.exit

if.end180.if.end199_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end199

bch_has_feature_obso_large_bucket.exit:           ; preds = %if.end180
  %feature_incompat.i = getelementptr inbounds %struct.cache, ptr %71, i32 0, i32 1, i32 9
  %74 = ptrtoint ptr %feature_incompat.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %feature_incompat.i, align 8
  %76 = and i64 %75, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool185.not = icmp eq i64 %76, 0
  br i1 %tobool185.not, label %bch_has_feature_obso_large_bucket.exit.if.end199_crit_edge, label %do.end189

bch_has_feature_obso_large_bucket.exit.if.end199_crit_edge: ; preds = %bch_has_feature_obso_large_bucket.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end199

do.end189:                                        ; preds = %bch_has_feature_obso_large_bucket.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.23) #22
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.23) #22
  %disk198 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 5
  %77 = ptrtoint ptr %disk198 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %disk198, align 4
  call void @set_disk_ro(ptr noundef %78, i1 noundef zeroext true) #18
  br label %if.end199

if.end199:                                        ; preds = %do.end189, %bch_has_feature_obso_large_bucket.exit.if.end199_crit_edge, %if.end180.if.end199_crit_edge
  call void @up_write(ptr noundef %writeback_lock) #18
  %bdev205 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %79 = ptrtoint ptr %bdev205 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bdev205, align 4
  %disk207 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 5
  %81 = ptrtoint ptr %disk207 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %disk207, align 4
  %disk_name208 = getelementptr inbounds %struct.gendisk, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %c11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %c11, align 8
  %set_uuid212 = getelementptr inbounds %struct.cache_set, ptr %84, i32 0, i32 56
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.23, ptr noundef %80, ptr noundef %disk_name208, ptr noundef %set_uuid212) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %if.then171, %if.then148, %do.end109, %do.end99, %do.end59, %do.end35, %do.end21, %do.end, %land.lhs.true5.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ -22, %do.end35 ], [ -22, %do.end59 ], [ -12, %if.then148 ], [ %call166, %if.then171 ], [ 0, %if.end199 ], [ -2, %do.end99 ], [ -22, %do.end109 ], [ -2, %land.lhs.true5.critedge.cleanup_crit_edge ], [ -2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @uuid_find(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %uuid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %0 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uuids, align 8
  %nr_uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 57
  %2 = ptrtoint ptr %nr_uuids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_uuids, align 4
  %add.ptr = getelementptr %struct.uuid_entry, ptr %1, i32 %3
  %cmp8 = icmp ult ptr %1, %add.ptr
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %u.09 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %u.09, ptr noundef dereferenceable(16) %uuid, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.uuid_entry, ptr %u.09, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %u.09, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @uuid_find_empty(ptr nocapture noundef readonly %c) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %uuids.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %0 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uuids.i, align 8
  %nr_uuids.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 57
  %2 = ptrtoint ptr %nr_uuids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_uuids.i, align 4
  %add.ptr.i = getelementptr %struct.uuid_entry, ptr %1, i32 %3
  %cmp8.i = icmp ult ptr %1, %add.ptr.i
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.uuid_find.exit_crit_edge

entry.uuid_find.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %uuid_find.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %u.09.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %u.09.i, ptr noundef nonnull dereferenceable(16) @uuid_find_empty.zero_uuid, i32 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %for.body.i.uuid_find.exit_crit_edge, label %for.inc.i

for.body.i.uuid_find.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %uuid_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.uuid_entry, ptr %u.09.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.uuid_find.exit_crit_edge

for.inc.i.uuid_find.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %uuid_find.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

uuid_find.exit:                                   ; preds = %for.inc.i.uuid_find.exit_crit_edge, %for.body.i.uuid_find.exit_crit_edge, %entry.uuid_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.uuid_find.exit_crit_edge ], [ %u.09.i, %for.body.i.uuid_find.exit_crit_edge ], [ null, %for.inc.i.uuid_find.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_is_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcache_device_attach(ptr noundef %d, ptr noundef %c, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %id1, align 4
  %c2 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %c, ptr %c2, align 4
  %devices = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 10
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devices, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %d, ptr %arrayidx, align 4
  %devices_max_used = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 11
  %5 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices_max_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %id)
  %cmp.not = icmp ugt i32 %6, %id
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add = add i32 %id, 1
  %7 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %devices_max_used, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %remaining.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i = and i32 %asmresult.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body2.i, label %closure_get.exit, !prof !590

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_get.exit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #18
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #18
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #20
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
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_cached_dev_writeback_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_sectors_dirty_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cancel_writeback_rate_update_dwork(ptr noundef %dc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %time_out.0 = phi i32 [ 6000, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.if.end8_crit_edge, label %if.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end:                                           ; preds = %do.body
  %dec = add nsw i32 %time_out.0, -1
  %call1 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #18
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.end6, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #22
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %do.body.if.end8_crit_edge
  %writeback_rate_update = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %writeback_rate_update) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcache_device_link(ptr noundef %d, ptr noundef %c, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 4
  %disk = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  %call = tail call i32 @bd_link_disk_holder(ptr noundef %3, ptr noundef %5) #18
  %name1 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 4
  %id = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1, i32 noundef 12, ptr noundef nonnull @.str.103, ptr noundef %name, i32 noundef %7)
  %kobj = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 1
  %kobj3 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 2
  %call4 = tail call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj3, ptr noundef nonnull @.str.104) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call10 = tail call i32 @sysfs_create_link(ptr noundef %kobj3, ptr noundef %kobj, ptr noundef %name1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106) #22
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end.if.end18_crit_edge
  %flags = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cached_dev_release(ptr noundef %kobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -80
  tail call void @kfree(ptr noundef %add.ptr) #18
  tail call void @module_put(ptr noundef null) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_flash_dev_release(ptr noundef %kobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -72
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_flash_dev_create(ptr noundef %c, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %uuids.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %6 = ptrtoint ptr %uuids.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uuids.i.i, align 8
  %nr_uuids.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 57
  %8 = ptrtoint ptr %nr_uuids.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_uuids.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.uuid_entry, ptr %7, i32 %9
  %cmp8.i.i = icmp ult ptr %7, %add.ptr.i.i
  br i1 %cmp8.i.i, label %if.end5.for.body.i.i_crit_edge, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end5.for.body.i.i_crit_edge:                   ; preds = %if.end5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end5.for.body.i.i_crit_edge
  %u.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %7, %if.end5.for.body.i.i_crit_edge ]
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %u.09.i.i, ptr noundef nonnull dereferenceable(16) @uuid_find_empty.zero_uuid, i32 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %uuid_find_empty.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.uuid_entry, ptr %u.09.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end_crit_edge

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

uuid_find_empty.exit:                             ; preds = %for.body.i.i
  %tobool7.not = icmp eq ptr %u.09.i.i, null
  br i1 %tobool7.not, label %uuid_find_empty.exit.do.end_crit_edge, label %if.end10

uuid_find_empty.exit.do.end_crit_edge:            ; preds = %uuid_find_empty.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %uuid_find_empty.exit.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %if.end5.do.end_crit_edge
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #22
  br label %cleanup

if.end10:                                         ; preds = %uuid_find_empty.exit
  tail call void @get_random_bytes(ptr noundef nonnull %u.09.i.i, i32 noundef 16) #18
  %label = getelementptr inbounds %struct.anon.95, ptr %u.09.i.i, i32 0, i32 1
  %10 = call ptr @memset(ptr %label, i32 0, i32 32)
  %call12 = tail call i64 @ktime_get_real_seconds() #18
  %conv = trunc i64 %call12 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %last_reg = getelementptr inbounds %struct.anon.95, ptr %u.09.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %last_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_reg, align 4
  %first_reg = getelementptr inbounds %struct.anon.95, ptr %u.09.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %first_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %first_reg, align 8
  %flags.i = getelementptr inbounds %struct.anon.95, ptr %u.09.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %conv5.i = or i32 %15, 1
  store i32 %conv5.i, ptr %flags.i, align 4
  %shr = lshr i64 %size, 9
  %sectors = getelementptr inbounds %struct.anon.95, ptr %u.09.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %sectors to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shr, ptr %sectors, align 8
  %call.i = tail call fastcc i32 @__uuid_write(ptr noundef %c) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end10.bch_uuid_write.exit_crit_edge

if.end10.bch_uuid_write.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %bch_uuid_write.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bch_journal_meta(ptr noundef %c, ptr noundef null) #18
  br label %bch_uuid_write.exit

bch_uuid_write.exit:                              ; preds = %if.then.i, %if.end10.bch_uuid_write.exit_crit_edge
  %call14 = tail call fastcc i32 @flash_dev_run(ptr noundef %c, ptr noundef nonnull %u.09.i.i)
  br label %cleanup

cleanup:                                          ; preds = %bch_uuid_write.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %bch_uuid_write.exit ], [ -22, %do.end ], [ -4, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flash_dev_run(ptr noundef %c, ptr noundef %u) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 868) #25
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %remaining.i = getelementptr inbounds %struct.closure, ptr %call7.i.i, i32 0, i32 2
  %1 = call ptr @memset(ptr %call7.i.i, i32 0, i32 72)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %2 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1073741825, ptr %remaining.i, align 8
  tail call void @closure_debug_create(ptr noundef nonnull %call7.i.i) #18
  tail call fastcc void @closure_set_ip(ptr noundef nonnull %call7.i.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %fn1.i = getelementptr inbounds %struct.anon, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @flash_dev_flush, ptr %fn1.i, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call7.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  %kobj = getelementptr inbounds %struct.bcache_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @bch_flash_dev_ktype) #18
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 4
  %block_size = getelementptr inbounds %struct.cache, ptr %7, i32 0, i32 1, i32 11, i32 0, i32 1
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %block_size, align 8
  %conv = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv, 9
  %sectors = getelementptr inbounds %struct.anon.95, ptr %u, i32 0, i32 6
  %10 = ptrtoint ptr %sectors to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sectors, align 8
  %call2 = tail call fastcc i32 @bcache_device_init(ptr noundef nonnull %call7.i.i, i32 noundef %shl, i64 noundef %11, ptr noundef null, ptr noundef nonnull @bcache_flash_ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err30_crit_edge

if.end.err30_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err30

if.end5:                                          ; preds = %if.end
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %12 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uuids, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %u to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 7
  %id1.i = getelementptr inbounds %struct.bcache_device, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.div, ptr %id1.i, align 4
  %c2.i = getelementptr inbounds %struct.bcache_device, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %c2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %c, ptr %c2.i, align 8
  %devices.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 10
  %16 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devices.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %sub.ptr.div
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %devices_max_used.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 11
  %19 = ptrtoint ptr %devices_max_used.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devices_max_used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub.ptr.div)
  %cmp.not.i = icmp ugt i32 %20, %sub.ptr.div
  br i1 %cmp.not.i, label %if.end5.if.end.i_crit_edge, label %if.then.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %add.i = add nsw i32 %sub.ptr.div, 1
  %21 = ptrtoint ptr %devices_max_used.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %devices_max_used.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %remaining.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %bcache_device_attach.exit, !prof !590

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

bcache_device_attach.exit:                        ; preds = %if.end.i
  tail call void @bch_sectors_dirty_init(ptr noundef nonnull %call7.i.i) #18
  tail call void @bch_flash_dev_request_init(ptr noundef nonnull %call7.i.i) #18
  %disk = getelementptr inbounds %struct.bcache_device, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disk, align 4
  %call.i = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %24, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %bcache_device_attach.exit.err30_crit_edge

bcache_device_attach.exit.err30_crit_edge:        ; preds = %bcache_device_attach.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err30

if.end9:                                          ; preds = %bcache_device_attach.exit
  %25 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 10
  %call13 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj, ptr noundef %bd_device, ptr noundef nonnull @.str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.err30_crit_edge

if.end9.err30_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %err30

if.end16:                                         ; preds = %if.end9
  tail call fastcc void @bcache_device_link(ptr noundef nonnull %call7.i.i, ptr noundef %c, ptr noundef nonnull @.str.110)
  %29 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cache, align 4
  %version.i = getelementptr inbounds %struct.cache, ptr %30, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %32)
  %cmp.i = icmp ult i64 %32, 5
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %bch_has_feature_obso_large_bucket.exit

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

bch_has_feature_obso_large_bucket.exit:           ; preds = %if.end16
  %feature_incompat.i = getelementptr inbounds %struct.cache, ptr %30, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %feature_incompat.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %feature_incompat.i, align 8
  %35 = and i64 %34, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool20.not = icmp eq i64 %35, 0
  br i1 %tobool20.not, label %bch_has_feature_obso_large_bucket.exit.cleanup_crit_edge, label %do.end

bch_has_feature_obso_large_bucket.exit.cleanup_crit_edge: ; preds = %bch_has_feature_obso_large_bucket.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %bch_has_feature_obso_large_bucket.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.111) #22
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.111) #22
  %36 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disk, align 4
  tail call void @set_disk_ro(ptr noundef %37, i1 noundef zeroext true) #18
  br label %cleanup

err30:                                            ; preds = %if.end9.err30_crit_edge, %bcache_device_attach.exit.err30_crit_edge, %if.end.err30_crit_edge
  %err.0 = phi i32 [ -12, %if.end.err30_crit_edge ], [ %call.i, %bcache_device_attach.exit.err30_crit_edge ], [ %call13, %if.end9.err30_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj) #18
  br label %cleanup

cleanup:                                          ; preds = %err30, %do.end, %bch_has_feature_obso_large_bucket.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %bch_has_feature_obso_large_bucket.exit.cleanup_crit_edge ], [ %err.0, %err30 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bch_cached_dev_error(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dc, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool1.not = icmp eq i32 %and1.i, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %disk = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1
  %io_disable = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 30
  %2 = ptrtoint ptr %io_disable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %io_disable, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %io_disable, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !610
  %disk7 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %disk7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disk7, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 3
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %disk_name, ptr noundef %6) #22
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then.i:                                        ; preds = %if.end
  %7 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.then.i
  tail call void @__init_work(ptr noundef %disk, i32 noundef 0) #18
  %9 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %disk, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %8, ptr noundef %disk) #18
  br i1 %call.i.i.i, label %do.body2.i.i.return_crit_edge, label %do.body12.i.i, !prof !600

do.body2.i.i.return_crit_edge:                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn.i.i, align 4
  tail call void %13(ptr noundef %disk) #18
  br label %return

return:                                           ; preds = %if.else.i.i, %do.body2.i.i.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %do.body2.i.i.return_crit_edge ], [ true, %if.else.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bch_cache_set_error(ptr noundef %c, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #18
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !611
  %on_error = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 80
  %2 = ptrtoint ptr %on_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %on_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags1 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #22
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %7 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fmt, ptr %vaf, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %args, ptr %0, align 4
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, ptr noundef %set_uuid, ptr noundef nonnull %vaf) #22
  call void @llvm.va_end(ptr nonnull %args)
  %9 = ptrtoint ptr %on_error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %on_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.64) #26
  unreachable

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  call void @bch_cache_set_unregister(ptr noundef %c)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end16 ], [ false, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #18
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cache_set_unregister(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.bch_cache_set_stop.exit_crit_edge

entry.bch_cache_set_stop.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bch_cache_set_stop.exit

if.then.i:                                        ; preds = %entry
  %caching.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16
  %0 = ptrtoint ptr %caching.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caching.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.then.i
  tail call void @__init_work(ptr noundef %caching.i, i32 noundef 0) #18
  %2 = ptrtoint ptr %caching.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %caching.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %1, ptr noundef %caching.i) #18
  br i1 %call.i.i.i, label %do.body2.i.i.bch_cache_set_stop.exit_crit_edge, label %do.body12.i.i, !prof !600

do.body2.i.i.bch_cache_set_stop.exit_crit_edge:   ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bch_cache_set_stop.exit

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fn.i.i, align 4
  tail call void %6(ptr noundef %caching.i) #18
  br label %bch_cache_set_stop.exit

bch_cache_set_stop.exit:                          ; preds = %if.else.i.i, %do.body2.i.i.bch_cache_set_stop.exit_crit_edge, %entry.bch_cache_set_stop.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cache_set_release(ptr noundef %kobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -80
  tail call void @kfree(ptr noundef %add.ptr) #18
  tail call void @module_put(ptr noundef null) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cache_set_stop(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %caching = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16
  %0 = ptrtoint ptr %caching to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caching, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %if.then
  tail call void @__init_work(ptr noundef %caching, i32 noundef 0) #18
  %2 = ptrtoint ptr %caching to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %caching, align 4
  %lockdep_map.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %1, ptr noundef %caching) #18
  br i1 %call.i.i, label %do.body2.i.if.end_crit_edge, label %do.body12.i, !prof !600

do.body2.i.if.end_crit_edge:                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 16, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fn.i, align 4
  tail call void %6(ptr noundef %caching) #18
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.body2.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_cache_set_alloc(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 64712, i32 noundef 3520, i32 noundef 4) #27
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__module_get(ptr noundef null) #18
  %remaining.i = getelementptr inbounds %struct.closure, ptr %call1.i.i.i, i32 0, i32 2
  %0 = call ptr @memset(ptr %call1.i.i.i, i32 0, i32 72)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %1 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1073741825, ptr %remaining.i, align 16
  tail call void @closure_debug_create(ptr noundef nonnull %call1.i.i.i) #18
  tail call fastcc void @closure_set_ip(ptr noundef nonnull %call1.i.i.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %fn1.i = getelementptr inbounds %struct.anon, ptr %call1.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cache_set_free, ptr %fn1.i, align 4
  %4 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %call1.i.i.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  %caching = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 16
  %5 = call ptr @memset(ptr %caching, i32 0, i32 72)
  %parent1.i275 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %parent1.i275 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i.i, ptr %parent1.i275, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_init.exit, !prof !590

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_init.exit:                                ; preds = %if.then.i
  %add.ptr = getelementptr i8, ptr %sb, i32 -8
  %remaining.i276 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 16, i32 2
  %call.i.i.i277 = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i276, i32 noundef 4) #18
  %8 = ptrtoint ptr %remaining.i276 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1073741825, ptr %remaining.i276, align 4
  tail call void @closure_debug_create(ptr noundef %caching) #18
  tail call fastcc void @closure_set_ip(ptr noundef %caching) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %fn1.i278 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 16, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %fn1.i278 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__cache_set_unregister, ptr %fn1.i278, align 8
  %11 = ptrtoint ptr %caching to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %caching, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  %call.i.i.i280 = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1073741824, ptr elementtype(i32) %remaining.i) #18, !srcloc !612
  tail call void @closure_put(ptr noundef nonnull %call1.i.i.i) #18
  %kobj = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 2
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @bch_cache_set_ktype) #18
  %internal = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 3
  tail call void @kobject_init(ptr noundef %internal, ptr noundef nonnull @bch_cache_set_internal_ktype) #18
  %accounting = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 5
  tail call void @bch_cache_accounting_init(ptr noundef %accounting, ptr noundef nonnull %call1.i.i.i) #18
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 56
  %13 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %set_uuid, ptr %13, i32 16)
  %cache = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %cache, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i.i, ptr %add.ptr, align 8
  %bucket_size = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 4
  %17 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bucket_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #18, !range !613
  %20 = trunc i32 %19 to i16
  %21 = xor i16 %20, 31
  %conv17 = select i1 %tobool.not.i.i, i16 -1, i16 %21
  %bucket_bits = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 24
  %22 = ptrtoint ptr %bucket_bits to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv17, ptr %bucket_bits, align 32
  %block_size = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 1
  %23 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i281 = icmp eq i16 %24, 0
  %25 = call i16 @llvm.ctlz.i16(i16 %24, i1 true), !range !614
  %26 = xor i16 %25, 15
  %conv37 = select i1 %tobool.not.i.i281, i16 -1, i16 %26
  %block_bits = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 25
  %27 = ptrtoint ptr %block_bits to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv37, ptr %block_bits, align 2
  %div18.i.i = lshr i32 %18, 3
  %28 = tail call i32 @llvm.umin.i32(i32 %div18.i.i, i32 2048) #18
  %shl.i = shl nuw nsw i32 %28, 5
  %nr_uuids = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 57
  %29 = ptrtoint ptr %nr_uuids to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl.i, ptr %nr_uuids, align 4
  %devices_max_used = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 11
  %30 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %devices_max_used, align 4
  %attached_dev_nr = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attached_dev_nr, i32 noundef 4) #18
  %31 = ptrtoint ptr %attached_dev_nr to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %attached_dev_nr, align 16
  %32 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bucket_size, align 8
  %div18.i = lshr i32 %33, 3
  %34 = tail call i32 @llvm.umin.i32(i32 %div18.i, i32 2048) #18
  %btree_pages = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %34)
  %cmp41 = icmp ugt i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %34)
  %cmp47 = icmp ugt i32 %34, 259
  %div45274 = lshr i32 %34, 2
  %cond52 = select i1 %cmp47, i32 %div45274, i32 64
  %storemerge = select i1 %cmp41, i32 %cond52, i32 %34
  %35 = ptrtoint ptr %btree_pages to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %btree_pages, align 4
  %sb_write_mutex = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18
  %wait_list1.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 2
  %36 = ptrtoint ptr %sb_write_mutex to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sb_write_mutex, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 1
  %37 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 32
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 2
  %38 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 3
  %39 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 4
  %40 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.136, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 0, i32 4, i32 5
  %44 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 8
  %46 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 18, i32 2, i32 1
  %47 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 16
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.137, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %bucket_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @bch_cache_set_alloc.__key) #18
  %btree_cache_wait = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 31
  tail call void @__init_waitqueue_head(ptr noundef %btree_cache_wait, ptr noundef nonnull @.str.67, ptr noundef nonnull @bch_cache_set_alloc.__key.66) #18
  %btree_cannibalize_lock = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %btree_cannibalize_lock, ptr noundef nonnull @.str.69, ptr noundef nonnull @bch_cache_set_alloc.__key.68, i16 noundef signext 3) #18
  %bucket_wait = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 35
  tail call void @__init_waitqueue_head(ptr noundef %bucket_wait, ptr noundef nonnull @.str.71, ptr noundef nonnull @bch_cache_set_alloc.__key.70) #18
  %gc_wait = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 48
  tail call void @__init_waitqueue_head(ptr noundef %gc_wait, ptr noundef nonnull @.str.73, ptr noundef nonnull @bch_cache_set_alloc.__key.72) #18
  %uuid_write_mutex = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61
  %wait_list1.i284 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 2
  %48 = ptrtoint ptr %uuid_write_mutex to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %uuid_write_mutex, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i285 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 1
  %49 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i285 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i285, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i286 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 2
  %50 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i286 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i286, align 16
  %.compoundliteral.sroa.4.0..sroa_idx.i287 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 3
  %51 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i287 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i287, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i288 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 4
  %52 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i288, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i289 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i289 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.136, ptr %.compoundliteral.sroa.6.0..sroa_idx.i289, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i290 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i290 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i290, align 8
  %.compoundliteral.sroa.75.0..sroa_idx.i291 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i291 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i291, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i292 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 0, i32 4, i32 5
  %56 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i292, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i293 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 1
  %57 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i293 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i293, align 4
  %58 = ptrtoint ptr %wait_list1.i284 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %wait_list1.i284, ptr %wait_list1.i284, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i294 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 61, i32 2, i32 1
  %59 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i294 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %wait_list1.i284, ptr %.compoundliteral.sroa.10.0..sroa_idx.i294, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i288, ptr noundef nonnull @.str.137, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %btree_gc_time = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 71
  tail call void @__raw_spin_lock_init(ptr noundef %btree_gc_time, ptr noundef nonnull @.str.75, ptr noundef nonnull @bch_cache_set_alloc.__key.74, i16 noundef signext 3) #18
  %btree_split_time = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 72
  tail call void @__raw_spin_lock_init(ptr noundef %btree_split_time, ptr noundef nonnull @.str.77, ptr noundef nonnull @bch_cache_set_alloc.__key.76, i16 noundef signext 3) #18
  %btree_read_time = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 73
  tail call void @__raw_spin_lock_init(ptr noundef %btree_read_time, ptr noundef nonnull @.str.79, ptr noundef nonnull @bch_cache_set_alloc.__key.78, i16 noundef signext 3) #18
  tail call void @bch_moving_init_cache_set(ptr noundef nonnull %call1.i.i.i) #18
  %list = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list, ptr %prev.i, align 4
  %cached_devs = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 13
  %62 = ptrtoint ptr %cached_devs to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %cached_devs, ptr %cached_devs, align 4
  %prev.i295 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 13, i32 1
  %63 = ptrtoint ptr %prev.i295 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %cached_devs, ptr %prev.i295, align 8
  %btree_cache = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 27
  %64 = ptrtoint ptr %btree_cache to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %btree_cache, ptr %btree_cache, align 8
  %prev.i296 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 27, i32 1
  %65 = ptrtoint ptr %prev.i296 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %btree_cache, ptr %prev.i296, align 4
  %btree_cache_freeable = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 28
  %66 = ptrtoint ptr %btree_cache_freeable to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %btree_cache_freeable, ptr %btree_cache_freeable, align 16
  %prev.i297 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 28, i32 1
  %67 = ptrtoint ptr %prev.i297 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %btree_cache_freeable, ptr %prev.i297, align 4
  %btree_cache_freed = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 29
  %68 = ptrtoint ptr %btree_cache_freed to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %btree_cache_freed, ptr %btree_cache_freed, align 8
  %prev.i298 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 29, i32 1
  %69 = ptrtoint ptr %prev.i298 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %btree_cache_freed, ptr %prev.i298, align 4
  %data_buckets = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 64
  %70 = ptrtoint ptr %data_buckets to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %data_buckets, ptr %data_buckets, align 8
  %prev.i299 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 64, i32 1
  %71 = ptrtoint ptr %prev.i299 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %data_buckets, ptr %prev.i299, align 4
  %72 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bucket_size, align 8
  %div18.i301 = lshr i32 %73, 3
  %74 = tail call i32 @llvm.umin.i32(i32 %div18.i301, i32 2048) #18
  %75 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %block_size, align 8
  %.tr = trunc i32 %74 to i16
  %div85.lhs.trunc = shl nuw nsw i16 %.tr, 3
  %div85321 = udiv i16 %div85.lhs.trunc, %76
  %div85.zext = zext i16 %div85321 to i32
  %add = shl nuw nsw i32 %div85.zext, 3
  %mul86 = add nuw nsw i32 %add, 8
  %77 = ptrtoint ptr %nr_uuids to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_uuids, align 4
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #18
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !590

kcalloc.exit.thread:                              ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  %devices315 = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 10
  %81 = ptrtoint ptr %devices315 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %devices315, align 8
  br label %err

if.end7.i.i:                                      ; preds = %closure_init.exit
  %82 = extractvalue { i32, i1 } %79, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #27
  %devices = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 10
  %83 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call8.i.i, ptr %devices, align 8
  %tobool90.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool90.not, label %if.end7.i.i.err_crit_edge, label %if.end92

if.end7.i.i.err_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end92:                                         ; preds = %if.end7.i.i
  %search = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_search_cache to i32))
  %84 = load ptr, ptr @bch_search_cache, align 4
  %call.i = tail call i32 @mempool_init(ptr noundef %search, i32 noundef 32, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %84) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool94.not = icmp eq i32 %call.i, 0
  br i1 %tobool94.not, label %if.end96, label %if.end92.err_crit_edge

if.end92.err_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end96:                                         ; preds = %if.end92
  %bio_meta = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 20
  %85 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bucket_size, align 8
  %div18.i303 = lshr i32 %86, 3
  %87 = tail call i32 @llvm.umin.i32(i32 %div18.i303, i32 2048) #18
  %mul98 = mul nuw nsw i32 %87, 12
  %add99 = add nuw nsw i32 %mul98, 136
  %88 = inttoptr i32 %add99 to ptr
  %call.i304 = tail call i32 @mempool_init(ptr noundef %bio_meta, i32 noundef 2, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull %88) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool101.not = icmp eq i32 %call.i304, 0
  br i1 %tobool101.not, label %if.end103, label %if.end96.err_crit_edge

if.end96.err_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end103:                                        ; preds = %if.end96
  %fill_iter = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 62
  %89 = inttoptr i32 %mul86 to ptr
  %call.i305 = tail call i32 @mempool_init(ptr noundef %fill_iter, i32 noundef 1, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull %89) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %tobool105.not = icmp eq i32 %call.i305, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.err_crit_edge

if.end103.err_crit_edge:                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end107:                                        ; preds = %if.end103
  %bio_split = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 21
  %call108 = tail call i32 @bioset_init(ptr noundef %bio_split, i32 noundef 4, i32 noundef 32, i32 noundef 2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.err_crit_edge

if.end107.err_crit_edge:                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end111:                                        ; preds = %if.end107
  %90 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bucket_size, align 8
  %div18.i307 = lshr i32 %91, 3
  %92 = tail call i32 @llvm.umin.i32(i32 %div18.i307, i32 2048) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i308 = icmp eq i32 %92, 0
  %93 = tail call i32 @llvm.ctlz.i32(i32 %92, i1 true) #18, !range !613
  %sub.i.op.i309 = xor i32 %93, 31
  %sub.i310 = select i1 %tobool.not.i.i308, i32 -1, i32 %sub.i.op.i309
  %call114 = tail call i32 @__get_free_pages(i32 noundef 265664, i32 noundef %sub.i310) #18
  %94 = inttoptr i32 %call114 to ptr
  %uuids = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 58
  %95 = ptrtoint ptr %uuids to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %uuids, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool116.not = icmp eq i32 %call114, 0
  br i1 %tobool116.not, label %if.end111.err_crit_edge, label %if.end118

if.end111.err_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end118:                                        ; preds = %if.end111
  %call119 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.80, i32 noundef 8, i32 noundef 0) #18
  %moving_gc_wq = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 51
  %96 = ptrtoint ptr %moving_gc_wq to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call119, ptr %moving_gc_wq, align 8
  %tobool121.not = icmp eq ptr %call119, null
  br i1 %tobool121.not, label %if.end118.err_crit_edge, label %if.end123

if.end118.err_crit_edge:                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end123:                                        ; preds = %if.end118
  %call124 = tail call i32 @bch_journal_alloc(ptr noundef nonnull %call1.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.err_crit_edge

if.end123.err_crit_edge:                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end127:                                        ; preds = %if.end123
  %call128 = tail call i32 @bch_btree_cache_alloc(ptr noundef nonnull %call1.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.err_crit_edge

if.end127.err_crit_edge:                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end131:                                        ; preds = %if.end127
  %call132 = tail call i32 @bch_open_buckets_alloc(ptr noundef nonnull %call1.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end131.err_crit_edge

if.end131.err_crit_edge:                          ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end135:                                        ; preds = %if.end131
  %sort = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 63
  %97 = ptrtoint ptr %btree_pages to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %btree_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i311 = icmp eq i32 %98, 0
  %99 = tail call i32 @llvm.ctlz.i32(i32 %98, i1 true) #18, !range !613
  %sub.i.op.i312 = xor i32 %99, 31
  %sub.i313 = select i1 %tobool.not.i.i311, i32 -1, i32 %sub.i.op.i312
  %call154 = tail call i32 @bch_bset_sort_state_init(ptr noundef %sort, i32 noundef %sub.i313) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end135.err_crit_edge

if.end135.err_crit_edge:                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end157:                                        ; preds = %if.end135
  %congested_read_threshold_us = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 69
  %100 = ptrtoint ptr %congested_read_threshold_us to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2000, ptr %congested_read_threshold_us, align 8
  %congested_write_threshold_us = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 70
  %101 = ptrtoint ptr %congested_write_threshold_us to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 20000, ptr %congested_write_threshold_us, align 4
  %error_limit = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 81
  %102 = ptrtoint ptr %error_limit to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 8, ptr %error_limit, align 4
  %idle_max_writeback_rate_enabled = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 85
  %103 = ptrtoint ptr %idle_max_writeback_rate_enabled to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load = load i8, ptr %idle_max_writeback_rate_enabled, align 1
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %idle_max_writeback_rate_enabled, align 1
  %flags = getelementptr inbounds %struct.cache_set, ptr %call1.i.i.i, i32 0, i32 6
  %call158 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end157.cleanup_crit_edge, label %do.end171, !prof !600

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end171:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1967, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

err:                                              ; preds = %if.end135.err_crit_edge, %if.end131.err_crit_edge, %if.end127.err_crit_edge, %if.end123.err_crit_edge, %if.end118.err_crit_edge, %if.end111.err_crit_edge, %if.end107.err_crit_edge, %if.end103.err_crit_edge, %if.end96.err_crit_edge, %if.end92.err_crit_edge, %if.end7.i.i.err_crit_edge, %kcalloc.exit.thread
  tail call void @bch_cache_set_unregister(ptr noundef nonnull %call1.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end171, %if.end157.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ null, %entry.cleanup_crit_edge ], [ %call1.i.i.i, %do.end171 ], [ %call1.i.i.i, %if.end157.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_set_free(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 4
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug, align 8
  tail call void @debugfs_remove(ptr noundef %1) #18
  tail call void @bch_open_buckets_free(ptr noundef %cl) #18
  tail call void @bch_btree_cache_free(ptr noundef %cl) #18
  tail call void @bch_journal_free(ptr noundef %cl) #18
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %sort = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 63
  tail call void @bch_bset_sort_state_free(ptr noundef %sort) #18
  %uuids = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 58
  %2 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuids, align 8
  %4 = ptrtoint ptr %3 to i32
  %cache = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 9
  %5 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache, align 4
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %6, i32 0, i32 1, i32 11, i32 0, i32 4
  %7 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bucket_size.i, align 8
  %div18.i = lshr i32 %8, 3
  %9 = tail call i32 @llvm.umin.i32(i32 %div18.i, i32 2048) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #18, !range !613
  %sub.i.op.i = xor i32 %10, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  tail call void @free_pages(i32 noundef %4, i32 noundef %sub.i) #18
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cache, align 4
  %kobj = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 5
  tail call void @kobject_put(ptr noundef %kobj) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %moving_gc_wq = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 51
  %15 = ptrtoint ptr %moving_gc_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %moving_gc_wq, align 8
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %16) #18
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %bio_split = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 21
  tail call void @bioset_exit(ptr noundef %bio_split) #18
  %fill_iter = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 62
  tail call void @mempool_exit(ptr noundef %fill_iter) #18
  %bio_meta = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 20
  tail call void @mempool_exit(ptr noundef %bio_meta) #18
  %search = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 19
  tail call void @mempool_exit(ptr noundef %search) #18
  %devices = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 10
  %17 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devices, align 8
  tail call void @kfree(ptr noundef %18) #18
  %list = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del.exit_crit_edge

if.end7.list_del.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end7.list_del.exit_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 56
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef %set_uuid) #22
  tail call void @__wake_up(ptr noundef nonnull @unregister_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  tail call void @closure_debug_destroy(ptr noundef %cl) #18
  %kobj11 = getelementptr inbounds %struct.cache_set, ptr %cl, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %kobj11) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__cache_set_unregister(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %devices_max_used = getelementptr i8, ptr %cl, i32 -32
  %0 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devices_max_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %devices = getelementptr i8, ptr %cl, i32 -36
  %uuids = getelementptr i8, ptr %cl, i32 45804
  %flags = getelementptr i8, ptr %cl, i32 -52
  %set_uuid.i = getelementptr i8, ptr %cl, i32 45784
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devices, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uuids, align 8
  %flags.i = getelementptr %struct.uuid_entry, ptr %7, i32 %i.036, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %add.ptr8 = getelementptr i8, ptr %5, i32 -8
  tail call void @bch_cached_dev_detach(ptr noundef %add.ptr8)
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.then5.for.inc_crit_edge, label %if.then12

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then12:                                        ; preds = %if.then5
  %stop_when_cache_set_failed.i = getelementptr i8, ptr %5, i32 53368
  %16 = ptrtoint ptr %stop_when_cache_set_failed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stop_when_cache_set_failed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then12
  %disk.i = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk.i, align 4
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef %disk_name.i, ptr noundef %set_uuid.i) #22
  %flags.i.i = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 6
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end.i.for.inc_crit_edge

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then.i.i:                                      ; preds = %do.end.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %if.then.i.i
  tail call void @__init_work(ptr noundef nonnull %5, i32 noundef 0) #18
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %5, align 4
  %lockdep_map.i.i.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %entry3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry3.i.i.i, ptr %entry3.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry3.i.i.i, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %21, ptr noundef nonnull %5) #18
  br i1 %call.i.i.i.i, label %do.body2.i.i.i.for.inc_crit_edge, label %do.body12.i.i.i, !prof !600

do.body2.i.i.i.for.inc_crit_edge:                 ; preds = %do.body2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body12.i.i.i:                                  ; preds = %do.body2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %fn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fn.i.i.i, align 4
  tail call void %26(ptr noundef nonnull %5) #18
  br label %for.inc

if.else.i:                                        ; preds = %if.then12
  %has_dirty.i = getelementptr i8, ptr %5, i32 3488
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %has_dirty.i, i32 noundef 4) #18
  %27 = ptrtoint ptr %has_dirty.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %has_dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  %disk19.i = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %disk19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disk19.i, align 4
  %disk_name20.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 3
  br i1 %tobool.not.i, label %do.end17.i, label %do.end5.i

do.end5.i:                                        ; preds = %if.else.i
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, ptr noundef %disk_name20.i) #22
  %io_disable.i = getelementptr i8, ptr %5, i32 53296
  %31 = ptrtoint ptr %io_disable.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %io_disable.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %io_disable.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !615
  %flags.i30.i = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 6
  %call.i31.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i30.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.then.i34.i, label %do.end5.i.for.inc_crit_edge

do.end5.i.for.inc_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then.i34.i:                                    ; preds = %do.end5.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %tobool.not.i.i33.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i33.i, label %if.else.i.i42.i, label %do.body2.i.i39.i

do.body2.i.i39.i:                                 ; preds = %if.then.i34.i
  tail call void @__init_work(ptr noundef nonnull %5, i32 noundef 0) #18
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %5, align 4
  %lockdep_map.i.i35.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i35.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i36.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1
  %35 = ptrtoint ptr %entry3.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry3.i.i36.i, ptr %entry3.i.i36.i, align 4
  %prev.i.i.i37.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry3.i.i36.i, ptr %prev.i.i.i37.i, align 4
  %call.i.i.i38.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %33, ptr noundef nonnull %5) #18
  br i1 %call.i.i.i38.i, label %do.body2.i.i39.i.for.inc_crit_edge, label %do.body12.i.i40.i, !prof !600

do.body2.i.i39.i.for.inc_crit_edge:               ; preds = %do.body2.i.i39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body12.i.i40.i:                                ; preds = %do.body2.i.i39.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i42.i:                                  ; preds = %if.then.i34.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i41.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %fn.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fn.i.i41.i, align 4
  tail call void %38(ptr noundef nonnull %5) #18
  br label %for.inc

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.129, ptr noundef %disk_name20.i) #22
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %flags.i30 = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 6
  %call.i31 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i30) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.then.i, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then.i:                                        ; preds = %if.else
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %tobool.not.i.i33 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i33, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.then.i
  tail call void @__init_work(ptr noundef nonnull %5, i32 noundef 0) #18
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %5, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1
  %42 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i34 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %40, ptr noundef nonnull %5) #18
  br i1 %call.i.i.i34, label %do.body2.i.i.for.inc_crit_edge, label %do.body12.i.i, !prof !600

do.body2.i.i.for.inc_crit_edge:                   ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fn.i.i, align 4
  tail call void %45(ptr noundef nonnull %5) #18
  br label %for.inc

for.inc:                                          ; preds = %if.else.i.i, %do.body2.i.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %do.end17.i, %if.else.i.i42.i, %do.body2.i.i39.i.for.inc_crit_edge, %do.end5.i.for.inc_crit_edge, %if.else.i.i.i, %do.body2.i.i.i.for.inc_crit_edge, %do.end.i.for.inc_crit_edge, %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.036, 1
  %46 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devices_max_used, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #18
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %49 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cache_set_flush, ptr %fn1.i, align 4
  %50 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_accounting_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_moving_init_cache_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_journal_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_cache_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_open_buckets_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bset_sort_state_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cache_release(ptr noundef %kobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -2348
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

do.body:                                          ; preds = %entry
  %cache = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %cmp.not = icmp eq ptr %3, %add.ptr
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !600

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2208, 0\0A.popsection", ""() #18, !srcloc !616
  unreachable

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cache, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %entry.if.end13_crit_edge
  %disk_buckets = getelementptr i8, ptr %kobj, i32 216
  %5 = ptrtoint ptr %disk_buckets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk_buckets, align 4
  %7 = ptrtoint ptr %6 to i32
  %bucket_size.i = getelementptr i8, ptr %kobj, i32 -2188
  %8 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bucket_size.i, align 8
  %div18.i = lshr i32 %9, 3
  %10 = tail call i32 @llvm.umin.i32(i32 %div18.i, i32 2048) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #18, !range !613
  %sub.i.op.i = xor i32 %11, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  tail call void @free_pages(i32 noundef %7, i32 noundef %sub.i) #18
  %prio_buckets = getelementptr i8, ptr %kobj, i32 220
  %12 = ptrtoint ptr %prio_buckets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prio_buckets, align 8
  tail call void @kfree(ptr noundef %13) #18
  %buckets = getelementptr i8, ptr %kobj, i32 332
  %14 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buckets, align 8
  tail call void @vfree(ptr noundef %15) #18
  %data = getelementptr i8, ptr %kobj, i32 344
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  tail call void @kvfree(ptr noundef %17) #18
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  %data21 = getelementptr i8, ptr %kobj, i32 324
  %19 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data21, align 8
  tail call void @kvfree(ptr noundef %20) #18
  %21 = ptrtoint ptr %data21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data21, align 8
  %data28 = getelementptr i8, ptr %kobj, i32 244
  %22 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data28, align 4
  tail call void @kvfree(ptr noundef %23) #18
  %24 = ptrtoint ptr %data28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data28, align 4
  %data28.1 = getelementptr i8, ptr %kobj, i32 264
  %25 = ptrtoint ptr %data28.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data28.1, align 4
  tail call void @kvfree(ptr noundef %26) #18
  %27 = ptrtoint ptr %data28.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %data28.1, align 4
  %data28.2 = getelementptr i8, ptr %kobj, i32 284
  %28 = ptrtoint ptr %data28.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data28.2, align 4
  tail call void @kvfree(ptr noundef %29) #18
  %30 = ptrtoint ptr %data28.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %data28.2, align 4
  %data28.3 = getelementptr i8, ptr %kobj, i32 304
  %31 = ptrtoint ptr %data28.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data28.3, align 4
  tail call void @kvfree(ptr noundef %32) #18
  %33 = ptrtoint ptr %data28.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %data28.3, align 4
  %sb_disk = getelementptr i8, ptr %kobj, i32 -124
  %34 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sb_disk, align 8
  %tobool34.not = icmp eq ptr %35, null
  br i1 %tobool34.not, label %if.end13.if.end39_crit_edge, label %if.then35

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.then35:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %35 to i32
  %sub = add i32 %37, 1073741824
  %shr = lshr i32 %sub, 12
  %38 = getelementptr %struct.page, ptr %36, i32 %shr, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i66, label %if.end.i.i, label %if.then.i.i, !prof !600

if.then.i.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %40, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr38 = getelementptr %struct.page, ptr %36, i32 %shr
  %41 = ptrtoint ptr %add.ptr38 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %41, %if.end.i.i ]
  %42 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %43 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !590

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.138) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !617
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !597
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@bch_cache_release, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !593

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %42, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end39_crit_edge

folio_put_testzero.exit.i.i.if.end39_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %42) #18
  br label %if.end39

if.end39:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end39_crit_edge, %if.end13.if.end39_crit_edge
  %bdev = getelementptr i8, ptr %kobj, i32 136
  %46 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev, align 4
  %tobool.not.i = icmp eq ptr %47, null
  %cmp.i = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @blkdev_put(ptr noundef nonnull %47, i32 noundef 131) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #18
  tail call void @module_put(ptr noundef null) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcache_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bch_debug_exit() #18
  tail call void @bch_request_exit() #18
  %0 = load ptr, ptr @bcache_kobj, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kobject_put(ptr noundef nonnull %0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @bcache_wq, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load ptr, ptr @bch_journal_wq, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %2) #18
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %3 = load ptr, ptr @bch_flush_wq, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #18
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  tail call void @bch_btree_exit() #18
  %4 = load i32, ptr @bcache_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @unregister_blkdev(i32 noundef %4, ptr noundef nonnull @.str) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @reboot) #18
  tail call void @mutex_destroy(ptr noundef nonnull @bch_register_lock) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcache_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bch_cutoff_writeback_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %entry.if.end3.sink.split.i_crit_edge, label %if.else.i

entry.if.end3.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.sink.split.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %0)
  %cmp1.i = icmp ugt i32 %0, 90
  br i1 %cmp1.i, label %do.end.i, label %if.else.i.if.end3.i_crit_edge

if.else.i.if.end3.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.268, i32 noundef %0, i32 noundef 90) #22
  br label %if.end3.sink.split.i

if.end3.sink.split.i:                             ; preds = %do.end.i, %entry.if.end3.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 90, %do.end.i ], [ 70, %entry.if.end3.sink.split.i_crit_edge ]
  store i32 %.sink.i, ptr @bch_cutoff_writeback_sync, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end3.sink.split.i, %if.else.i.if.end3.i_crit_edge
  %1 = load i32, ptr @bch_cutoff_writeback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.i = icmp eq i32 %1, 0
  br i1 %cmp4.i, label %if.end3.i.if.end14.sink.split.i_crit_edge, label %if.else6.i

if.end3.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.sink.split.i

if.else6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %1)
  %cmp7.i = icmp ugt i32 %1, 70
  br i1 %cmp7.i, label %do.end10.i, label %if.else6.i.if.end14.i_crit_edge

if.else6.i.if.end14.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i

do.end10.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #20
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.268, i32 noundef %1, i32 noundef 70) #22
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %do.end10.i, %if.end3.i.if.end14.sink.split.i_crit_edge
  %.sink25.i = phi i32 [ 70, %do.end10.i ], [ 40, %if.end3.i.if.end14.sink.split.i_crit_edge ]
  store i32 %.sink25.i, ptr @bch_cutoff_writeback, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.sink.split.i, %if.else6.i.if.end14.i_crit_edge
  %2 = load i32, ptr @bch_cutoff_writeback, align 4
  %3 = load i32, ptr @bch_cutoff_writeback_sync, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp15.i = icmp ugt i32 %2, %3
  br i1 %cmp15.i, label %do.end18.i, label %if.end14.i.check_module_parameters.exit_crit_edge

if.end14.i.check_module_parameters.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_module_parameters.exit

do.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.268, i32 noundef %2, i32 noundef %3) #22
  %4 = load i32, ptr @bch_cutoff_writeback_sync, align 4
  store i32 %4, ptr @bch_cutoff_writeback, align 4
  br label %check_module_parameters.exit

check_module_parameters.exit:                     ; preds = %do.end18.i, %if.end14.i.check_module_parameters.exit_crit_edge
  tail call void @__mutex_init(ptr noundef nonnull @bch_register_lock, ptr noundef nonnull @.str.147, ptr noundef nonnull @bcache_init.__key) #18
  tail call void @__init_waitqueue_head(ptr noundef nonnull @unregister_wait, ptr noundef nonnull @.str.149, ptr noundef nonnull @bcache_init.__key.148) #18
  %call = tail call i32 @register_reboot_notifier(ptr noundef nonnull @reboot) #18
  %call3 = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #18
  store i32 %call3, ptr @bcache_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %check_module_parameters.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @reboot) #18
  tail call void @mutex_destroy(ptr noundef nonnull @bch_register_lock) #18
  %5 = load i32, ptr @bcache_major, align 4
  br label %return

if.end:                                           ; preds = %check_module_parameters.exit
  %call5 = tail call i32 @bch_btree_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0) #18
  store ptr %call8, ptr @bcache_wq, align 4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.err_crit_edge, label %if.end11

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.150, i32 noundef 0, i32 noundef 0) #18
  store ptr %call12, ptr @bch_flush_wq, align 4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.err_crit_edge, label %if.end15

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.151, i32 noundef 8, i32 noundef 0) #18
  store ptr %call16, ptr @bch_journal_wq, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.err_crit_edge, label %if.end19

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end19:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %6 = load ptr, ptr @fs_kobj, align 4
  %call20 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %6) #18
  store ptr %call20, ptr @bcache_kobj, align 4
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.err_crit_edge, label %if.end23

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @bch_request_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end23.err_crit_edge

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

lor.lhs.false:                                    ; preds = %if.end23
  %7 = load ptr, ptr @bcache_kobj, align 4
  %call26 = tail call i32 @sysfs_create_files(ptr noundef %7, ptr noundef nonnull @bcache_init.files) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bch_debug_init() #18
  tail call void @closure_debug_init() #18
  store i8 0, ptr @bcache_is_reboot, align 1
  br label %return

err:                                              ; preds = %lor.lhs.false.err_crit_edge, %if.end23.err_crit_edge, %if.end19.err_crit_edge, %if.end15.err_crit_edge, %if.end11.err_crit_edge, %if.end7.err_crit_edge, %if.end.err_crit_edge
  tail call void @bcache_exit()
  br label %return

return:                                           ; preds = %err, %if.end29, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -12, %err ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @closure_set_ip(ptr nocapture noundef writeonly %cl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ip = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr blockaddress(@closure_set_ip, %__here) to i32), ptr %ip, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_count_backing_io_errors(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_count_io_errors(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bucket_alloc_set(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uuid_io(ptr noundef %c, i32 noundef %op, ptr noundef %k, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %uuid_write = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 60
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #18
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.body4, label %if.then.i, !prof !590

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #18, !srcloc !618
  unreachable

if.then.i:                                        ; preds = %entry
  %uuid_write_mutex = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 61
  tail call void @down(ptr noundef %uuid_write_mutex) #18
  %1 = call ptr @memset(ptr %uuid_write, i32 0, i32 72)
  %parent1.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 60, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %parent1.i, align 4
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %parent, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_init.exit, !prof !590

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

closure_init.exit:                                ; preds = %if.then.i
  %remaining.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 60, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %uuid_write) #18
  tail call fastcc void @closure_set_ip(ptr noundef %uuid_write) #18
  %5 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %k, align 8
  %7 = and i64 %6, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp10.not = icmp eq i64 %7, 0
  br i1 %cmp10.not, label %closure_init.exit.for.end_crit_edge, label %for.body.lr.ph

closure_init.exit.for.end_crit_edge:              ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %closure_init.exit
  %or.i = or i32 %op, 6144
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp19.not = icmp eq i32 %op, 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.011, 1
  %conv = zext i32 %inc to i64
  %8 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %9, 60
  %and.i = and i64 %shr.i, 7
  %cmp = icmp ugt i64 %and.i, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call11 = tail call ptr @bch_bbio_alloc(ptr noundef %c) #18
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call11, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6144, ptr %bi_opf, align 8
  %11 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %k, align 8
  %sh.diff = lshr i64 %12, 11
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %conv15 = and i32 %tr.sh.diff, 33553920
  %bi_size = getelementptr inbounds %struct.bio, ptr %call11, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv15, ptr %bi_size, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call11, i32 0, i32 10
  %14 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @uuid_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call11, i32 0, i32 11
  %15 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %uuid_write, ptr %bi_private, align 4
  store i32 %or.i, ptr %bi_opf, align 8
  %16 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uuids, align 8
  tail call void @bch_bio_map(ptr noundef %call11, ptr noundef %17) #18
  tail call void @bch_submit_bbio(ptr noundef %call11, ptr noundef %c, ptr noundef %k, i32 noundef %i.011) #18
  br i1 %cmp19.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %closure_init.exit.for.end_crit_edge
  call void @bch_extent_to_text(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef %k) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uuid_io.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uuid_io, %if.then32)) #18
          to label %do.end38 [label %if.then32], !srcloc !593

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp33 = icmp eq i32 %op, 1
  %cond = select i1 %cmp33, ptr @.str.88, ptr @.str.89
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uuid_io.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef nonnull %cond, ptr noundef nonnull %buf) #18
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %for.end
  %uuids39 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %18 = ptrtoint ptr %uuids39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uuids39, align 8
  %nr_uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 57
  %20 = ptrtoint ptr %nr_uuids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_uuids, align 4
  %add.ptr12 = getelementptr %struct.uuid_entry, ptr %19, i32 %21
  %cmp4213 = icmp ult ptr %19, %add.ptr12
  br i1 %cmp4213, label %do.end38.for.body44_crit_edge, label %do.end38.do.body71_crit_edge

do.end38.do.body71_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body71

do.end38.for.body44_crit_edge:                    ; preds = %do.end38
  br label %for.body44

for.body44:                                       ; preds = %for.inc69.for.body44_crit_edge, %do.end38.for.body44_crit_edge
  %u.014 = phi ptr [ %incdec.ptr, %for.inc69.for.body44_crit_edge ], [ %19, %do.end38.for.body44_crit_edge ]
  %call46 = call zeroext i1 @bch_is_zero(ptr noundef %u.014, i32 noundef 16) #18
  br i1 %call46, label %for.body44.for.inc69_crit_edge, label %do.body48

for.body44.for.inc69_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc69

do.body48:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uuid_io.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uuid_io, %if.then60)) #18
          to label %for.inc69 [label %if.then60], !srcloc !593

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %uuids39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uuids39, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %u.014 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 7
  %label = getelementptr inbounds %struct.anon.95, ptr %u.014, i32 0, i32 1
  %first_reg = getelementptr inbounds %struct.anon.95, ptr %u.014, i32 0, i32 2
  %24 = ptrtoint ptr %first_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %first_reg, align 8
  %last_reg = getelementptr inbounds %struct.anon.95, ptr %u.014, i32 0, i32 3
  %26 = ptrtoint ptr %last_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_reg, align 4
  %invalidated = getelementptr inbounds %struct.anon.95, ptr %u.014, i32 0, i32 4
  %28 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %invalidated, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uuid_io.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.85, i32 noundef %sub.ptr.div, ptr noundef %u.014, ptr noundef %label, i32 noundef %25, i32 noundef %27, i32 noundef %29) #18
  br label %for.inc69

for.inc69:                                        ; preds = %if.then60, %do.body48, %for.body44.for.inc69_crit_edge
  %incdec.ptr = getelementptr %struct.uuid_entry, ptr %u.014, i32 1
  %30 = ptrtoint ptr %uuids39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uuids39, align 8
  %32 = ptrtoint ptr %nr_uuids to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_uuids, align 4
  %add.ptr = getelementptr %struct.uuid_entry, ptr %31, i32 %33
  %cmp42 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp42, label %for.inc69.for.body44_crit_edge, label %for.inc69.do.body71_crit_edge

for.inc69.do.body71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body71

for.inc69.for.body44_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body44

do.body71:                                        ; preds = %for.inc69.do.body71_crit_edge, %do.end38.do.body71_crit_edge
  call fastcc void @closure_set_ip(ptr noundef %uuid_write) #18
  %fn1.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 60, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @uuid_io_unlock, ptr %fn1.i, align 4
  %35 = ptrtoint ptr %uuid_write to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %uuid_write, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  call void @closure_sub(ptr noundef %uuid_write, i32 noundef 1006632961) #18
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bkey_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_bbio_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uuid_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -47104
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.92)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @bch_bbio_free(ptr noundef %bio, ptr noundef %add.ptr) #18
  tail call void @closure_put(ptr noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bio_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_submit_bbio(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_extent_to_text(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uuid_io_unlock(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %uuid_write_mutex = getelementptr i8, ptr %cl, i32 72
  tail call void @up(ptr noundef %uuid_write_mutex) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bbio_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @crc64_be(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call = tail call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %5, ptr noundef nonnull @.str.93)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @bch_bbio_free(ptr noundef %bio, ptr noundef %7) #18
  %prio = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 8
  tail call void @closure_put(ptr noundef %prio) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__closure_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_kthread_stop() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call64 = tail call zeroext i1 @kthread_should_stop() #18
  br i1 %call64, label %entry.while.end_crit_edge, label %entry.__here_crit_edge

entry.__here_crit_edge:                           ; preds = %entry
  br label %__here

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

__here:                                           ; preds = %__here.__here_crit_edge, %entry.__here_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !577) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@wait_for_kthread_stop, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !619
  tail call void @schedule() #18
  %call = tail call zeroext i1 @kthread_should_stop() #18
  br i1 %call, label %__here.while.end_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_dev_flush(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  tail call fastcc void @bcache_device_unlink(ptr noundef %cl)
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %kobj = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 1
  tail call void @kobject_del(ptr noundef %kobj) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #18
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %1 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @flash_dev_free, ptr %fn1.i, align 4
  %2 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcache_device_init(ptr noundef %d, i32 noundef %block_size, i64 noundef %sectors, ptr noundef readonly %cached_bdev, ptr noundef %ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_size = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %stripe_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stripe_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %stripe_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2147483648, ptr %stripe_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = phi i32 [ -2147483648, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %conv = zext i32 %3 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %sectors
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp174 = icmp ult i64 %sub, 4294967296
  br i1 %cmp174, label %if.then178, label %if.else184, !prof !600

if.then178:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv179 = trunc i64 %sub to i32
  %div182 = udiv i32 %conv179, %3
  %conv183 = zext i32 %div182 to i64
  br label %if.end188

if.else184:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #28, !srcloc !620
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then178
  %_tmp.0 = phi i64 [ %conv183, %if.then178 ], [ %asmresult1.i, %if.else184 ]
  %5 = add i64 %_tmp.0, -1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1073741823, i64 %5)
  %6 = icmp ult i64 %5, -1073741823
  br i1 %6, label %do.end, label %if.end197

do.end:                                           ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #20
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i64 noundef %_tmp.0) #22
  br label %cleanup

if.end197:                                        ; preds = %if.end188
  %conv198 = trunc i64 %_tmp.0 to i32
  %nr_stripes = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 7
  %7 = ptrtoint ptr %nr_stripes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv198, ptr %nr_stripes, align 4
  %mul200 = shl nuw i32 %conv198, 2
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul200, i32 noundef 3520, i32 noundef -1) #27
  %stripe_sectors_dirty = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 9
  %8 = ptrtoint ptr %stripe_sectors_dirty to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %stripe_sectors_dirty, align 4
  %tobool205.not = icmp eq ptr %call.i.i, null
  br i1 %tobool205.not, label %if.end197.cleanup_crit_edge, label %if.end207

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end207:                                        ; preds = %if.end197
  %9 = ptrtoint ptr %nr_stripes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_stripes, align 4
  %sub210 = add i32 %10, 31
  %11 = lshr i32 %sub210, 3
  %mul212 = and i32 %11, 536870908
  %call.i.i425 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul212, i32 noundef 3520, i32 noundef -1) #27
  %full_dirty_stripes = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 10
  %12 = ptrtoint ptr %full_dirty_stripes to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i425, ptr %full_dirty_stripes, align 4
  %tobool217.not = icmp eq ptr %call.i.i425, null
  br i1 %tobool217.not, label %if.end207.out_free_stripe_sectors_dirty_crit_edge, label %if.end219

if.end207.out_free_stripe_sectors_dirty_crit_edge: ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_stripe_sectors_dirty

if.end219:                                        ; preds = %if.end207
  %call220 = tail call i32 @ida_alloc_range(ptr noundef nonnull @bcache_device_idx, i32 noundef 0, i32 noundef 8191, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.end219.out_free_full_dirty_stripes_crit_edge, label %if.end224

if.end219.out_free_full_dirty_stripes_crit_edge:  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_full_dirty_stripes

if.end224:                                        ; preds = %if.end219
  %bio_split = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 11
  %call225 = tail call i32 @bioset_init(ptr noundef %bio_split, i32 noundef 4, i32 noundef 32, i32 noundef 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.end224.out_ida_remove_crit_edge

if.end224.out_ida_remove_crit_edge:               ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_ida_remove

if.end228:                                        ; preds = %if.end224
  %call230 = tail call ptr @__blk_alloc_disk(i32 noundef -1, ptr noundef nonnull @bcache_device_init.__key) #18
  %disk = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 5
  %13 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call230, ptr %disk, align 4
  %tobool232.not = icmp eq ptr %call230, null
  br i1 %tobool232.not, label %out_bioset_exit, label %if.end234

if.end234:                                        ; preds = %if.end228
  tail call void @set_capacity(ptr noundef nonnull %call230, i64 noundef %sectors) #18
  %14 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 3
  %call237 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 32, ptr noundef nonnull @.str.122, i32 noundef %call220)
  %16 = load i32, ptr @bcache_major, align 4
  %17 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disk, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %18, align 8
  %mul.i = shl i32 %call220, 7
  %20 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %first_minor, align 4
  %22 = load ptr, ptr %disk, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %minors, align 8
  %24 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ops, ptr %fops, align 8
  %26 = load ptr, ptr %disk, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %d, ptr %private_data, align 8
  %28 = load ptr, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 4
  %max_hw_sectors = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 3
  %31 = ptrtoint ptr %max_hw_sectors to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %max_hw_sectors, align 4
  %max_sectors = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 6
  %32 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %max_sectors, align 4
  %max_segment_size = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 7
  %33 = ptrtoint ptr %max_segment_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %max_segment_size, align 4
  %max_segments = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 21
  %34 = ptrtoint ptr %max_segments to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 256, ptr %max_segments, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %30, i32 noundef -1) #18
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 18
  %35 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 512, ptr %discard_granularity, align 4
  %io_min = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 11
  %36 = ptrtoint ptr %io_min to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %block_size, ptr %io_min, align 4
  %logical_block_size = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 9
  %37 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %block_size, ptr %logical_block_size, align 4
  %physical_block_size = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 8
  %38 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %block_size, ptr %physical_block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %block_size)
  %cmp254 = icmp ult i32 %block_size, 4097
  %tobool257.not = icmp eq ptr %cached_bdev, null
  %or.cond421 = or i1 %cmp254, %tobool257.not
  br i1 %or.cond421, label %if.end234.if.end271_crit_edge, label %do.end261

if.end234.if.end271_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end271

do.end261:                                        ; preds = %if.end234
  %39 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disk, align 4
  %disk_name264 = getelementptr inbounds %struct.gendisk, ptr %40, i32 0, i32 3
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %cached_bdev, i32 0, i32 18
  %41 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i426 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i426, label %do.end261.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

do.end261.bdev_logical_block_size.exit_crit_edge: ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #20
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 37, i32 9
  %43 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not.i.i = icmp eq i32 %44, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %44
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %do.end261.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %do.end261.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %call269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.121, ptr noundef %disk_name264, i32 noundef %block_size, i32 noundef 4096, i32 noundef %retval1.0.i.i) #22
  %45 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i428 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i428, label %bdev_logical_block_size.exit.bdev_logical_block_size.exit434_crit_edge, label %land.lhs.true.i.i432

bdev_logical_block_size.exit.bdev_logical_block_size.exit434_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bdev_logical_block_size.exit434

land.lhs.true.i.i432:                             ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i429 = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 37, i32 9
  %47 = ptrtoint ptr %logical_block_size.i.i429 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logical_block_size.i.i429, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool2.not.i.i430 = icmp eq i32 %48, 0
  %spec.select.i.i431 = select i1 %tobool2.not.i.i430, i32 512, i32 %48
  br label %bdev_logical_block_size.exit434

bdev_logical_block_size.exit434:                  ; preds = %land.lhs.true.i.i432, %bdev_logical_block_size.exit.bdev_logical_block_size.exit434_crit_edge
  %retval1.0.i.i433 = phi i32 [ 512, %bdev_logical_block_size.exit.bdev_logical_block_size.exit434_crit_edge ], [ %spec.select.i.i431, %land.lhs.true.i.i432 ]
  tail call void @blk_queue_logical_block_size(ptr noundef %30, i32 noundef %retval1.0.i.i433) #18
  br label %if.end271

if.end271:                                        ; preds = %bdev_logical_block_size.exit434, %if.end234.if.end271_crit_edge
  %49 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %disk, align 4
  %queue273 = getelementptr inbounds %struct.gendisk, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %queue273 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %queue273, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %52) #18
  %53 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %disk, align 4
  %queue275 = getelementptr inbounds %struct.gendisk, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %queue275 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %queue275, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %56) #18
  %57 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disk, align 4
  %queue277 = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %queue277 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue277, align 4
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %60) #18
  tail call void @blk_queue_write_cache(ptr noundef %30, i1 noundef zeroext true, i1 noundef zeroext true) #18
  br label %cleanup

out_bioset_exit:                                  ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bioset_exit(ptr noundef %bio_split) #18
  br label %out_ida_remove

out_ida_remove:                                   ; preds = %out_bioset_exit, %if.end224.out_ida_remove_crit_edge
  tail call void @ida_free(ptr noundef nonnull @bcache_device_idx, i32 noundef %call220) #18
  br label %out_free_full_dirty_stripes

out_free_full_dirty_stripes:                      ; preds = %out_ida_remove, %if.end219.out_free_full_dirty_stripes_crit_edge
  %61 = ptrtoint ptr %full_dirty_stripes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %full_dirty_stripes, align 4
  tail call void @kvfree(ptr noundef %62) #18
  br label %out_free_stripe_sectors_dirty

out_free_stripe_sectors_dirty:                    ; preds = %out_free_full_dirty_stripes, %if.end207.out_free_stripe_sectors_dirty_crit_edge
  %63 = ptrtoint ptr %stripe_sectors_dirty to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stripe_sectors_dirty, align 4
  tail call void @kvfree(ptr noundef %64) #18
  br label %cleanup

cleanup:                                          ; preds = %out_free_stripe_sectors_dirty, %if.end271, %if.end197.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %out_free_stripe_sectors_dirty ], [ 0, %if.end271 ], [ -12, %if.end197.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_flash_dev_request_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcache_device_unlink(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @bch_register_lock, i32 0, i32 5), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !590

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 794, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %c = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end.if.end31_crit_edge, label %land.lhs.true

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 6
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %cache = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache, align 4
  %kobj = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 2
  %name = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 4
  tail call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef %name) #18
  %kobj30 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %kobj30, ptr noundef nonnull @.str.104) #18
  %bdev = getelementptr inbounds %struct.cache, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev, align 4
  %disk = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 5
  %9 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk, align 4
  tail call void @bd_unlink_disk_holder(ptr noundef %8, ptr noundef %10) #18
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_dev_free(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %nr_stripes.i = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 7
  %0 = ptrtoint ptr %nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_stripes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i = icmp eq i32 %1, 0
  br i1 %cmp8.not.i, label %entry.bcache_dev_sectors_dirty.exit_crit_edge, label %for.body.lr.ph.i

entry.bcache_dev_sectors_dirty.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcache_dev_sectors_dirty.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %stripe_sectors_dirty.i = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.010.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.09.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %stripe_sectors_dirty.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stripe_sectors_dirty.i, align 4
  %idx.ext.i = trunc i64 %i.09.i to i32
  %add.ptr.i = getelementptr %struct.atomic_t, ptr %3, i32 %idx.ext.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #18
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr.i, align 4
  %conv2.i5 = zext i32 %5 to i64
  %add.i = add i64 %ret.010.i, %conv2.i5
  %inc.i = add nuw i64 %i.09.i, 1
  %6 = ptrtoint ptr %nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_stripes.i, align 4
  %conv.i = sext i32 %7 to i64
  %cmp.i = icmp ult i64 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %bcache_dev_sectors_dirty.exit.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bcache_dev_sectors_dirty.exit.loopexit:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %extract.t.le = trunc i64 %add.i to i32
  br label %bcache_dev_sectors_dirty.exit

bcache_dev_sectors_dirty.exit:                    ; preds = %bcache_dev_sectors_dirty.exit.loopexit, %entry.bcache_dev_sectors_dirty.exit_crit_edge
  %ret.0.lcssa.i.off0 = phi i32 [ 0, %entry.bcache_dev_sectors_dirty.exit_crit_edge ], [ %extract.t.le, %bcache_dev_sectors_dirty.exit.loopexit ]
  %c = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 2
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c, align 4
  %flash_dev_dirty_sectors = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flash_dev_dirty_sectors, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %flash_dev_dirty_sectors, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flash_dev_dirty_sectors, ptr %flash_dev_dirty_sectors, i32 %ret.0.lcssa.i.off0, ptr elementtype(i32) %flash_dev_dirty_sectors) #18, !srcloc !612
  %disk = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 5
  %11 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %12) #18
  tail call fastcc void @bcache_device_free(ptr noundef %cl)
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %kobj = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 1
  tail call void @kobject_put(ptr noundef %kobj) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bd_unlink_disk_holder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcache_device_free(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %disk1 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @bch_register_lock, i32 0, i32 5), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !590

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 877, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end34, label %do.end29

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef %disk_name) #22
  br label %if.end37

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115) #22
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %do.end29
  %c = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %tobool38.not = icmp eq ptr %4, null
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @bcache_device_detach(ptr noundef %d)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  br i1 %tobool25.not, label %if.end40.if.end44_crit_edge, label %if.then42

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_minor, align 4
  %div.i = sdiv i32 %6, 128
  tail call void @ida_free(ptr noundef nonnull @bcache_device_idx, i32 noundef %div.i) #18
  tail call void @blk_cleanup_disk(ptr noundef nonnull %1) #18
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40.if.end44_crit_edge
  %bio_split = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 11
  tail call void @bioset_exit(ptr noundef %bio_split) #18
  %full_dirty_stripes = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 10
  %7 = ptrtoint ptr %full_dirty_stripes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_dirty_stripes, align 4
  tail call void @kvfree(ptr noundef %8) #18
  %stripe_sectors_dirty = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 9
  %9 = ptrtoint ptr %stripe_sectors_dirty to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stripe_sectors_dirty, align 4
  tail call void @kvfree(ptr noundef %10) #18
  tail call void @closure_debug_destroy(ptr noundef %d) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcache_device_detach(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @bch_register_lock, i32 0, i32 5), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !590

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 830, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %c = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %attached_dev_nr = getelementptr inbounds %struct.cache_set, ptr %2, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attached_dev_nr, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %attached_dev_nr, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %attached_dev_nr, ptr %attached_dev_nr, i32 1, ptr elementtype(i32) %attached_dev_nr) #18, !srcloc !612
  %flags = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool25.not = icmp eq i32 %6, 0
  br i1 %tobool25.not, label %if.end.if.end31_crit_edge, label %if.then26

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then26:                                        ; preds = %if.end
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c, align 4
  %uuids = getelementptr inbounds %struct.cache_set, ptr %8, i32 0, i32 58
  %9 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uuids, align 8
  %id = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 3
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %add.ptr = getelementptr %struct.uuid_entry, ptr %10, i32 %12
  %flags.i = getelementptr inbounds %struct.anon.95, ptr %add.ptr, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %15 = and i32 %14, -2
  store i32 %15, ptr %flags.i, align 4
  %16 = call ptr @memcpy(ptr %add.ptr, ptr @invalid_uuid, i32 16)
  %call28 = tail call i64 @ktime_get_real_seconds() #18
  %conv = trunc i64 %call28 to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %invalidated = getelementptr inbounds %struct.anon.95, ptr %add.ptr, i32 0, i32 4
  %18 = ptrtoint ptr %invalidated to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %invalidated, align 8
  %19 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c, align 4
  %call.i48 = tail call fastcc i32 @__uuid_write(ptr noundef %20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bch_journal_meta(ptr noundef %20, ptr noundef null) #18
  br label %if.end31

if.end31:                                         ; preds = %if.then.i, %if.then26.if.end31_crit_edge, %if.end.if.end31_crit_edge
  tail call fastcc void @bcache_device_unlink(ptr noundef %d)
  %21 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c, align 4
  %devices = getelementptr inbounds %struct.cache_set, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devices, align 8
  %id33 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 3
  %25 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id33, align 4
  %arrayidx = getelementptr ptr, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 4
  %28 = load ptr, ptr %c, align 4
  %caching = getelementptr inbounds %struct.cache_set, ptr %28, i32 0, i32 16
  tail call void @closure_put(ptr noundef %caching) #18
  %29 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %c, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @flash_dev_submit_bio(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_dev(ptr nocapture noundef readonly %b, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %b, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %flags = getelementptr inbounds %struct.bcache_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %remaining.i = getelementptr inbounds %struct.closure, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #18, !srcloc !588
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !589
  %and.i = and i32 %asmresult.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body2.i, label %if.end.cleanup_crit_edge, !prof !590

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !591
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_dev(ptr nocapture noundef readonly %b, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %b, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @closure_put(ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_dev(ptr nocapture noundef readonly %b, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %b, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %ioctl = getelementptr inbounds %struct.bcache_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioctl, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_open_buckets_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_btree_cache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_journal_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bset_sort_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_set_flush(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr i8, ptr %cl, i32 -40
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %accounting = getelementptr i8, ptr %cl, i32 -872
  tail call void @bch_cache_accounting_destroy(ptr noundef %accounting) #18
  %internal = getelementptr i8, ptr %cl, i32 -1012
  tail call void @kobject_put(ptr noundef %internal) #18
  %kobj = getelementptr i8, ptr %cl, i32 -1148
  tail call void @kobject_del(ptr noundef %kobj) #18
  %gc_thread = getelementptr i8, ptr %cl, i32 1420
  %2 = ptrtoint ptr %gc_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc_thread, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %root = getelementptr i8, ptr %cl, i32 45680
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %tobool.not.i64 = icmp eq ptr %5, null
  %cmp.i65 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i66 = or i1 %tobool.not.i64, %cmp.i65
  br i1 %spec.select.i66, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %list = getelementptr inbounds %struct.btree, ptr %5, i32 0, i32 13
  %btree_cache = getelementptr i8, ptr %cl, i32 1180
  %6 = ptrtoint ptr %btree_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btree_cache, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %btree_cache, ptr noundef %7) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btree, ptr %5, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %btree_cache, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %btree_cache to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %btree_cache, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.then4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %flags = getelementptr i8, ptr %cl, i32 -52
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then8, label %if.end6.if.end24_crit_edge

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then8:                                         ; preds = %if.end6
  %btree_cache10 = getelementptr i8, ptr %cl, i32 1180
  %15 = ptrtoint ptr %btree_cache10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn67 = load ptr, ptr %btree_cache10, align 8
  %cmp.not69 = icmp eq ptr %.pn67, %btree_cache10
  br i1 %cmp.not69, label %if.then8.if.end24_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.if.end24_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.then8.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %if.end17.for.body_crit_edge ], [ %.pn67, %if.then8.for.body_crit_edge ]
  %write_lock = getelementptr i8, ptr %.pn70, i32 -404
  tail call void @mutex_lock_nested(ptr noundef %write_lock, i32 noundef 0) #18
  %flags.i = getelementptr i8, ptr %.pn70, i32 -312
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %for.body.if.end17_crit_edge, label %if.then16

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %b.071 = getelementptr i8, ptr %.pn70, i32 -584
  tail call void @__bch_btree_node_write(ptr noundef %b.071, ptr noundef null) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.body.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %write_lock) #18
  %19 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn70, align 8
  %cmp.not = icmp eq ptr %.pn, %btree_cache10
  br i1 %cmp.not, label %if.end17.if.end24_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.end24:                                         ; preds = %if.end17.if.end24_crit_edge, %if.then8.if.end24_crit_edge, %if.end6.if.end24_crit_edge
  %alloc_thread = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %alloc_thread to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alloc_thread, align 8
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %call28 = tail call i32 @kthread_stop(ptr noundef nonnull %21) #18
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %cur = getelementptr i8, ptr %cl, i32 46796
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur, align 8
  %tobool30.not = icmp eq ptr %23, null
  br i1 %tobool30.not, label %if.end29.do.body_crit_edge, label %if.then31

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  %work = getelementptr i8, ptr %cl, i32 46560
  %call33 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #18
  %func = getelementptr i8, ptr %cl, i32 46572
  %24 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func, align 4
  tail call void %25(ptr noundef %work) #18
  br label %do.body

do.body:                                          ; preds = %if.then31, %if.end29.do.body_crit_edge
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #18
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %26 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fn1.i, align 4
  %27 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_accounting_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bch_btree_node_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_debug_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_request_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_btree_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcache_reboot(ptr nocapture noundef readnone %n, i32 noundef %code, ptr nocapture noundef readnone %x) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @bcache_is_reboot, align 1, !range !621
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %code.off)
  %switch91 = icmp ult i32 %code.off, 3
  %or.cond = and i1 %switch91, %tobool.not
  br i1 %or.cond, label %if.then4, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then4:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !577) #18
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @autoremove_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %15 = load i8, ptr @bcache_is_reboot, align 1, !range !621
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.end10, label %if.then4.out_crit_edge

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end10:                                         ; preds = %if.then4
  store i8 1, ptr @bcache_is_reboot, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !622
  %16 = load volatile ptr, ptr @bch_cache_sets, align 4
  %cmp.i.not = icmp eq ptr %16, @bch_cache_sets
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %17 = load volatile ptr, ptr @uncached_devices, align 4
  %cmp.i92.not = icmp eq ptr %17, @uncached_devices
  br i1 %cmp.i92.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140) #22
  %18 = load ptr, ptr @bch_cache_sets, align 4
  %cmp30.not115 = icmp eq ptr %18, @bch_cache_sets
  br i1 %cmp30.not115, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %bch_cache_set_stop.exit.for.body_crit_edge, %if.end19.for.body_crit_edge
  %.pn.in116 = phi ptr [ %.pn, %bch_cache_set_stop.exit.for.body_crit_edge ], [ %18, %if.end19.for.body_crit_edge ]
  %19 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn.in116, align 8
  %flags.i = getelementptr i8, ptr %.pn.in116, i32 1104
  %call.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.bch_cache_set_stop.exit_crit_edge

for.body.bch_cache_set_stop.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %bch_cache_set_stop.exit

if.then.i:                                        ; preds = %for.body
  %caching.i = getelementptr i8, ptr %.pn.in116, i32 1156
  %20 = ptrtoint ptr %caching.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caching.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__init_work(ptr noundef %caching.i, i32 noundef 0) #18
  %22 = ptrtoint ptr %caching.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %caching.i, align 4
  %lockdep_map.i.i = getelementptr i8, ptr %.pn.in116, i32 1172
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i = getelementptr i8, ptr %.pn.in116, i32 1160
  %23 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in116, i32 1164
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %21, ptr noundef %caching.i) #18
  br i1 %call.i.i.i, label %do.body2.i.i.bch_cache_set_stop.exit_crit_edge, label %do.body12.i.i, !prof !600

do.body2.i.i.bch_cache_set_stop.exit_crit_edge:   ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bch_cache_set_stop.exit

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i = getelementptr i8, ptr %.pn.in116, i32 1168
  %25 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fn.i.i, align 4
  call void %26(ptr noundef %caching.i) #18
  br label %bch_cache_set_stop.exit

bch_cache_set_stop.exit:                          ; preds = %if.else.i.i, %do.body2.i.i.bch_cache_set_stop.exit_crit_edge, %for.body.bch_cache_set_stop.exit_crit_edge
  %cmp30.not = icmp eq ptr %.pn, @bch_cache_sets
  br i1 %cmp30.not, label %bch_cache_set_stop.exit.for.end_crit_edge, label %bch_cache_set_stop.exit.for.body_crit_edge

bch_cache_set_stop.exit.for.body_crit_edge:       ; preds = %bch_cache_set_stop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

bch_cache_set_stop.exit.for.end_crit_edge:        ; preds = %bch_cache_set_stop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %bch_cache_set_stop.exit.for.end_crit_edge, %if.end19.for.end_crit_edge
  %27 = load ptr, ptr @uncached_devices, align 4
  %cmp46.not117 = icmp eq ptr %27, @uncached_devices
  br i1 %cmp46.not117, label %for.end.for.end55_crit_edge, label %for.end.for.body48_crit_edge

for.end.for.body48_crit_edge:                     ; preds = %for.end
  br label %for.body48

for.end.for.end55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.body48:                                       ; preds = %bcache_device_stop.exit.for.body48_crit_edge, %for.end.for.body48_crit_edge
  %dc.0118 = phi ptr [ %tdc.0, %bcache_device_stop.exit.for.body48_crit_edge ], [ %27, %for.end.for.body48_crit_edge ]
  %28 = ptrtoint ptr %dc.0118 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tdc.0 = load ptr, ptr %dc.0118, align 8
  %disk = getelementptr inbounds %struct.cached_dev, ptr %dc.0118, i32 0, i32 1
  %flags.i94 = getelementptr inbounds %struct.cached_dev, ptr %dc.0118, i32 0, i32 1, i32 6
  %call.i95 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i94) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.then.i98, label %for.body48.bcache_device_stop.exit_crit_edge

for.body48.bcache_device_stop.exit_crit_edge:     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcache_device_stop.exit

if.then.i98:                                      ; preds = %for.body48
  %29 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disk, align 4
  %tobool.not.i.i97 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i97, label %if.else.i.i106, label %do.body2.i.i103

do.body2.i.i103:                                  ; preds = %if.then.i98
  call void @__init_work(ptr noundef %disk, i32 noundef 0) #18
  %31 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %disk, align 4
  %lockdep_map.i.i99 = getelementptr inbounds %struct.cached_dev, ptr %dc.0118, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i99, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i100 = getelementptr inbounds %struct.cached_dev, ptr %dc.0118, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %entry3.i.i100 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry3.i.i100, ptr %entry3.i.i100, align 4
  %prev.i.i.i101 = getelementptr inbounds %struct.cached_dev, ptr %dc.0118, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry3.i.i100, ptr %prev.i.i.i101, align 4
  %call.i.i.i102 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %30, ptr noundef %disk) #18
  br i1 %call.i.i.i102, label %do.body2.i.i103.bcache_device_stop.exit_crit_edge, label %do.body12.i.i104, !prof !600

do.body2.i.i103.bcache_device_stop.exit_crit_edge: ; preds = %do.body2.i.i103
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcache_device_stop.exit

do.body12.i.i104:                                 ; preds = %do.body2.i.i103
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i106:                                   ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i105 = getelementptr inbounds %struct.cached_dev, ptr %dc.0118, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %fn.i.i105 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fn.i.i105, align 4
  call void %35(ptr noundef %disk) #18
  br label %bcache_device_stop.exit

bcache_device_stop.exit:                          ; preds = %if.else.i.i106, %do.body2.i.i103.bcache_device_stop.exit_crit_edge, %for.body48.bcache_device_stop.exit_crit_edge
  %cmp46.not = icmp eq ptr %tdc.0, @uncached_devices
  br i1 %cmp46.not, label %bcache_device_stop.exit.for.end55_crit_edge, label %bcache_device_stop.exit.for.body48_crit_edge

bcache_device_stop.exit.for.body48_crit_edge:     ; preds = %bcache_device_stop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body48

bcache_device_stop.exit.for.end55_crit_edge:      ; preds = %bcache_device_stop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end55

for.end55:                                        ; preds = %bcache_device_stop.exit.for.end55_crit_edge, %for.end.for.end55_crit_edge
  call void @schedule() #18
  %add = add i32 %14, 1000
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %for.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %36
  call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %37 = load volatile ptr, ptr @bch_cache_sets, align 4
  %cmp.i107.not = icmp eq ptr %37, @bch_cache_sets
  br i1 %cmp.i107.not, label %land.end, label %land.end.thread

land.end:                                         ; preds = %while.cond
  %38 = load volatile ptr, ptr @uncached_devices, align 4
  %cmp.i109 = icmp eq ptr %38, @uncached_devices
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp60 = icmp slt i32 %sub, 0
  %brmerge = select i1 %cmp60, i1 true, i1 %cmp.i109
  br i1 %brmerge, label %while.end, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.end.thread:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp60113 = icmp slt i32 %sub, 0
  br i1 %cmp60113, label %while.end.thread, label %land.end.thread.cleanup_crit_edge

land.end.thread.cleanup_crit_edge:                ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.end.thread:                                 ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  call void @finish_wait(ptr noundef nonnull @unregister_wait, ptr noundef nonnull %wait) #18
  br label %do.end75

cleanup:                                          ; preds = %land.end.thread.cleanup_crit_edge, %land.end.cleanup_crit_edge
  call void @prepare_to_wait(ptr noundef nonnull @unregister_wait, ptr noundef nonnull %wait, i32 noundef 2) #18
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %call65 = call i32 @schedule_timeout(i32 noundef %sub) #18
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @finish_wait(ptr noundef nonnull @unregister_wait, ptr noundef nonnull %wait) #18
  br i1 %cmp.i109, label %while.end.out.sink.split_crit_edge, label %while.end.do.end75_crit_edge

while.end.do.end75_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end75

while.end.out.sink.split_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

do.end75:                                         ; preds = %while.end.do.end75_crit_edge, %while.end.thread
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.end75, %while.end.out.sink.split_crit_edge
  %.str.142.sink = phi ptr [ @.str.145, %do.end75 ], [ @.str.142, %while.end.out.sink.split_crit_edge ]
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.142.sink, ptr noundef nonnull @.str.140) #22
  br label %out

out:                                              ; preds = %out.sink.split, %land.lhs.true.out_crit_edge, %if.then4.out_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  br label %return

return:                                           ; preds = %out, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_request_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_debug_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @register_bcache(ptr nocapture noundef readnone %k, ptr noundef readnone %attr, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  %sb_disk = alloca ptr, align 4
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sb_disk) #18
  %0 = ptrtoint ptr %sb_disk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sb_disk, align 4, !annotation !611
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #18
  br i1 %call, label %do.end, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !623
  %1 = load i8, ptr @bcache_is_reboot, align 1, !range !621
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end5, label %do.end.out_module_put_crit_edge

do.end.out_module_put_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_module_put

if.end5:                                          ; preds = %do.end
  %call6 = tail call ptr @kstrndup(ptr noundef %buffer, i32 noundef %size, i32 noundef 3264) #18
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_module_put_crit_edge, label %if.end9

if.end5.out_module_put_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_module_put

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2216) #25
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %if.end9.out_free_path_crit_edge, label %if.end13

if.end9.out_free_path_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_path

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @strim(ptr noundef nonnull %call6) #18
  %call15 = tail call ptr @blkdev_get_by_path(ptr noundef %call14, i32 noundef 131, ptr noundef nonnull %call7.i) #18
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end30

if.then17:                                        ; preds = %if.end13
  %cmp = icmp eq ptr %call15, inttoptr (i32 -16 to ptr)
  br i1 %cmp, label %if.then19, label %if.then17.out_free_sb_crit_edge

if.then17.out_free_sb_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_sb

if.then19:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #18
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dev, align 4, !annotation !611
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %call20 = tail call ptr @strim(ptr noundef nonnull %call6) #18
  %call21 = call i32 @lookup_bdev(ptr noundef %call20, ptr noundef nonnull %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %land.lhs.true
  %.pn.in.in.i.i = phi ptr [ @bch_cache_sets, %land.lhs.true ], [ %.pn.in.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.in.i.i = load ptr, ptr %.pn.in.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, @bch_cache_sets
  br i1 %cmp.not.i.i, label %lor.rhs.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cache.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 1116
  %7 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache.i.i, align 4
  %bdev.i.i = getelementptr inbounds %struct.cache, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i.i, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd_dev.i.i, align 4
  %cmp5.i.i = icmp eq i32 %12, %5
  br i1 %cmp5.i.i, label %for.body.i.i.if.end25_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i

for.body.i.i.if.end25_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

lor.rhs.i:                                        ; preds = %for.cond.i.i
  %13 = load ptr, ptr @bch_cache_sets, align 4
  %cmp.not77.i.i = icmp eq ptr %13, @bch_cache_sets
  br i1 %cmp.not77.i.i, label %lor.rhs.i.for.cond41.i.i.preheader_crit_edge, label %lor.rhs.i.for.body.i4.i_crit_edge

lor.rhs.i.for.body.i4.i_crit_edge:                ; preds = %lor.rhs.i
  br label %for.body.i4.i

lor.rhs.i.for.cond41.i.i.preheader_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond41.i.i.preheader

for.cond41.i.i.preheader:                         ; preds = %for.cond.loopexit.i.i.for.cond41.i.i.preheader_crit_edge, %lor.rhs.i.for.cond41.i.i.preheader_crit_edge
  br label %for.cond41.i.i

for.cond.loopexit.i.i:                            ; preds = %for.cond14.i.i
  %cmp.not.i3.i = icmp eq ptr %.pn79.i.i, @bch_cache_sets
  br i1 %cmp.not.i3.i, label %for.cond.loopexit.i.i.for.cond41.i.i.preheader_crit_edge, label %for.cond.loopexit.i.i.for.body.i4.i_crit_edge

for.cond.loopexit.i.i.for.body.i4.i_crit_edge:    ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i4.i

for.cond.loopexit.i.i.for.cond41.i.i.preheader_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond41.i.i.preheader

for.body.i4.i:                                    ; preds = %for.cond.loopexit.i.i.for.body.i4.i_crit_edge, %lor.rhs.i.for.body.i4.i_crit_edge
  %.pn.in78.i.i = phi ptr [ %.pn79.i.i, %for.cond.loopexit.i.i.for.body.i4.i_crit_edge ], [ %13, %lor.rhs.i.for.body.i4.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in78.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn79.i.i = load ptr, ptr %.pn.in78.i.i, align 8
  %cached_devs.i.i = getelementptr i8, ptr %.pn.in78.i.i, i32 1132
  br label %for.cond14.i.i

for.cond14.i.i:                                   ; preds = %for.body19.i.i.for.cond14.i.i_crit_edge, %for.body.i4.i
  %dc.0.in.i.i = phi ptr [ %cached_devs.i.i, %for.body.i4.i ], [ %dc.0.i.i, %for.body19.i.i.for.cond14.i.i_crit_edge ]
  %15 = ptrtoint ptr %dc.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %dc.0.i.i = load ptr, ptr %dc.0.in.i.i, align 4
  %cmp17.not.i.i = icmp eq ptr %dc.0.i.i, %cached_devs.i.i
  br i1 %cmp17.not.i.i, label %for.cond.loopexit.i.i, label %for.body19.i.i

for.body19.i.i:                                   ; preds = %for.cond14.i.i
  %bdev.i5.i = getelementptr inbounds %struct.cached_dev, ptr %dc.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %bdev.i5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i5.i, align 4
  %bd_dev.i6.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %bd_dev.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bd_dev.i6.i, align 4
  %cmp20.i.i = icmp eq i32 %19, %5
  br i1 %cmp20.i.i, label %for.body19.i.i.if.end25_crit_edge, label %for.body19.i.i.for.cond14.i.i_crit_edge

for.body19.i.i.for.cond14.i.i_crit_edge:          ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond14.i.i

for.body19.i.i.if.end25_crit_edge:                ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

for.cond41.i.i:                                   ; preds = %for.body45.i.i.for.cond41.i.i_crit_edge, %for.cond41.i.i.preheader
  %dc.1.in.i.i = phi ptr [ %dc.1.i.i, %for.body45.i.i.for.cond41.i.i_crit_edge ], [ @uncached_devices, %for.cond41.i.i.preheader ]
  %20 = ptrtoint ptr %dc.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %dc.1.i.i = load ptr, ptr %dc.1.in.i.i, align 4
  %cmp43.not.i.i = icmp eq ptr %dc.1.i.i, @uncached_devices
  br i1 %cmp43.not.i.i, label %for.cond41.i.i.if.end25_crit_edge, label %for.body45.i.i

for.cond41.i.i.if.end25_crit_edge:                ; preds = %for.cond41.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

for.body45.i.i:                                   ; preds = %for.cond41.i.i
  %bdev46.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc.1.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %bdev46.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev46.i.i, align 4
  %bd_dev47.i.i = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %bd_dev47.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bd_dev47.i.i, align 4
  %cmp48.i.i = icmp eq i32 %24, %5
  br i1 %cmp48.i.i, label %for.body45.i.i.if.end25_crit_edge, label %for.body45.i.i.for.cond41.i.i_crit_edge

for.body45.i.i.for.cond41.i.i_crit_edge:          ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond41.i.i

for.body45.i.i.if.end25_crit_edge:                ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.end25:                                         ; preds = %for.body45.i.i.if.end25_crit_edge, %for.cond41.i.i.if.end25_crit_edge, %for.body19.i.i.if.end25_crit_edge, %for.body.i.i.if.end25_crit_edge, %if.then19.if.end25_crit_edge
  %err.0 = phi ptr [ @.str.158, %if.then19.if.end25_crit_edge ], [ @.str.157, %for.body45.i.i.if.end25_crit_edge ], [ @.str.158, %for.cond41.i.i.if.end25_crit_edge ], [ @.str.157, %for.body19.i.i.if.end25_crit_edge ], [ @.str.157, %for.body.i.i.if.end25_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %cmp26 = icmp eq ptr %attr, @ksysfs_register_quiet
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #18
  br i1 %cmp26, label %done, label %if.end25.out_free_sb_crit_edge

if.end25.out_free_sb_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_sb

if.end30:                                         ; preds = %if.end13
  %call31 = tail call i32 @set_blocksize(ptr noundef %call15, i32 noundef 4096) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.out_blkdev_put_crit_edge

if.end30.out_blkdev_put_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_blkdev_put

if.end34:                                         ; preds = %if.end30
  %call35 = call fastcc ptr @read_super(ptr noundef nonnull %call7.i, ptr noundef %call15, ptr noundef nonnull %sb_disk)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then40, label %if.end34.out_blkdev_put_crit_edge

if.end34.out_blkdev_put_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_blkdev_put

if.then40:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 116) #25
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %out_put_sb_page, label %if.end44

if.end44:                                         ; preds = %if.then40
  %path45 = getelementptr inbounds %struct.async_reg_args, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %path45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call6, ptr %path45, align 4
  %sb46 = getelementptr inbounds %struct.async_reg_args, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %sb46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %sb46, align 8
  %28 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sb_disk, align 4
  %sb_disk47 = getelementptr inbounds %struct.async_reg_args, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %sb_disk47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %sb_disk47, align 4
  %bdev48 = getelementptr inbounds %struct.async_reg_args, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %bdev48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call15, ptr %bdev48, align 8
  %version.i.i = getelementptr inbounds %struct.cache_sb, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %version.i.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.276)
  switch i64 %33, label %do.body16.i [
    i64 1, label %if.end44.do.body1.i_crit_edge
    i64 4, label %if.end44.do.body1.i_crit_edge144
    i64 6, label %if.end44.do.body1.i_crit_edge145
  ]

if.end44.do.body1.i_crit_edge145:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i

if.end44.do.body1.i_crit_edge144:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i

if.end44.do.body1.i_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end44.do.body1.i_crit_edge, %if.end44.do.body1.i_crit_edge144, %if.end44.do.body1.i_crit_edge145
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #18
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.190, ptr noundef nonnull @register_device_async.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry8.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  br label %cleanup49.thread

do.body16.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #18
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map26.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map26.i, ptr noundef nonnull @.str.190, ptr noundef nonnull @register_device_async.__key.193, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry29.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %entry29.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry29.i, ptr %entry29.i, align 4
  br label %cleanup49.thread

cleanup49.thread:                                 ; preds = %do.body16.i, %do.body1.i
  %entry29.sink.i = phi ptr [ %entry29.i, %do.body16.i ], [ %entry8.i, %do.body1.i ]
  %register_cache_worker.sink.i = phi ptr [ @register_cache_worker, %do.body16.i ], [ @register_bdev_worker, %do.body1.i ]
  %register_device_async.__key.194.sink.i = phi ptr [ @register_device_async.__key.194, %do.body16.i ], [ @register_device_async.__key.191, %do.body1.i ]
  %prev.i54.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry29.sink.i, ptr %prev.i54.i, align 8
  %func32.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %func32.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %register_cache_worker.sink.i, ptr %func32.i, align 4
  %timer36.i = getelementptr inbounds %struct.delayed_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer36.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.192, ptr noundef nonnull %register_device_async.__key.194.sink.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef nonnull %call7.i.i, i32 noundef 10) #18
  br label %cleanup84

done:                                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i) #18
  call void @kfree(ptr noundef nonnull %call6) #18
  call void @module_put(ptr noundef null) #18
  br label %cleanup84

out_put_sb_page:                                  ; preds = %if.then40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sb_disk, align 4
  %44 = ptrtoint ptr %43 to i32
  %sub = add i32 %44, 1073741824
  %shr = lshr i32 %sub, 12
  %45 = getelementptr %struct.page, ptr %41, i32 %shr, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !600

if.then.i.i:                                      ; preds = %out_put_sb_page
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %47, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out_put_sb_page
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr %struct.page, ptr %41, i32 %shr
  %48 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %48, %if.end.i.i ]
  %49 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %50 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !590

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.138) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !617
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !597
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@register_bcache, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !593

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %49, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_blkdev_put_crit_edge

folio_put_testzero.exit.i.i.out_blkdev_put_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_blkdev_put

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %49) #18
  br label %out_blkdev_put

out_blkdev_put:                                   ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_blkdev_put_crit_edge, %if.end34.out_blkdev_put_crit_edge, %if.end30.out_blkdev_put_crit_edge
  %err.5 = phi ptr [ @.str.159, %if.end30.out_blkdev_put_crit_edge ], [ %call35, %if.end34.out_blkdev_put_crit_edge ], [ @.str.155, %folio_put_testzero.exit.i.i.out_blkdev_put_crit_edge ], [ @.str.155, %if.then.i4.i ]
  %ret.4 = phi i32 [ -22, %if.end30.out_blkdev_put_crit_edge ], [ -22, %if.end34.out_blkdev_put_crit_edge ], [ -12, %folio_put_testzero.exit.i.i.out_blkdev_put_crit_edge ], [ -12, %if.then.i4.i ]
  tail call void @blkdev_put(ptr noundef %call15, i32 noundef 131) #18
  br label %out_free_sb

out_free_sb:                                      ; preds = %out_blkdev_put, %if.end25.out_free_sb_crit_edge, %if.then17.out_free_sb_crit_edge
  %err.6 = phi ptr [ %err.0, %if.end25.out_free_sb_crit_edge ], [ @.str.156, %if.then17.out_free_sb_crit_edge ], [ %err.5, %out_blkdev_put ]
  %ret.5 = phi i32 [ -22, %if.end25.out_free_sb_crit_edge ], [ -22, %if.then17.out_free_sb_crit_edge ], [ %ret.4, %out_blkdev_put ]
  call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %out_free_path

out_free_path:                                    ; preds = %out_free_sb, %if.end9.out_free_path_crit_edge
  %err.7 = phi ptr [ %err.6, %out_free_sb ], [ @.str.155, %if.end9.out_free_path_crit_edge ]
  %ret.6 = phi i32 [ %ret.5, %out_free_sb ], [ -12, %if.end9.out_free_path_crit_edge ]
  call void @kfree(ptr noundef nonnull %call6) #18
  br label %out_module_put

out_module_put:                                   ; preds = %out_free_path, %if.end5.out_module_put_crit_edge, %do.end.out_module_put_crit_edge
  %err.8 = phi ptr [ @.str.154, %do.end.out_module_put_crit_edge ], [ %err.7, %out_free_path ], [ @.str.155, %if.end5.out_module_put_crit_edge ]
  %ret.7 = phi i32 [ -16, %do.end.out_module_put_crit_edge ], [ %ret.6, %out_free_path ], [ -12, %if.end5.out_module_put_crit_edge ]
  call void @module_put(ptr noundef null) #18
  br label %cond.end

cond.end:                                         ; preds = %out_module_put, %entry.cond.end_crit_edge
  %err.9 = phi ptr [ %err.8, %out_module_put ], [ @.str.153, %entry.cond.end_crit_edge ]
  %ret.8 = phi i32 [ %ret.7, %out_module_put ], [ -16, %entry.cond.end_crit_edge ]
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.8, ptr noundef %err.9) #22
  br label %cleanup84

cleanup84:                                        ; preds = %cond.end, %done, %cleanup49.thread
  %retval.0 = phi i32 [ %ret.8, %cond.end ], [ %size, %done ], [ %size, %cleanup49.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_disk) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_bdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @read_super(ptr noundef %sb, ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 7
  %0 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %call = tail call ptr @read_cache_page_gfp(ptr noundef %3, i32 noundef 1, i32 noundef 3264) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @page_address(ptr noundef %call) #18
  %offset = getelementptr %struct.cache_sb_disk, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %7 = ptrtoint ptr %sb to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sb, align 8
  %version = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 2
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %version, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %version4 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 1
  %11 = ptrtoint ptr %version4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %version4, align 8
  %magic = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 2
  %magic5 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %magic, ptr %magic5, i32 16)
  %uuid = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 3
  %uuid8 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %uuid, ptr %uuid8, i32 16)
  %14 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 4
  %15 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %14, ptr %15, i32 16)
  %label = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 5
  %label13 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %label, ptr %label13, i32 32)
  %flags = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 7
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %flags15 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 6
  %21 = ptrtoint ptr %flags15 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %flags15, align 8
  %seq = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 8
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %seq, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %seq16 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 7
  %25 = ptrtoint ptr %seq16 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %seq16, align 8
  %last_mount = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 14
  %26 = ptrtoint ptr %last_mount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_mount, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %last_mount17 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 12
  %29 = ptrtoint ptr %last_mount17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_mount17, align 8
  %30 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 16
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %34 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 14
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %33, ptr %34, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0171 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cache_sb_disk, ptr %call2, i32 0, i32 17, i32 %i.0171
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx, align 8
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %arrayidx19 = getelementptr %struct.cache_sb, ptr %sb, i32 0, i32 15, i32 %i.0171
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx19, align 8
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_super.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_super, %if.then23)) #18
          to label %do.end [label %if.then23], !srcloc !593

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %version4 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %version4, align 8
  %42 = ptrtoint ptr %flags15 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %flags15, align 8
  %44 = ptrtoint ptr %seq16 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %seq16, align 8
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %34, align 2
  %conv = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_super.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.164, i64 noundef %41, i64 noundef %43, i64 noundef %45, i32 noundef %conv) #18
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %48 = ptrtoint ptr %sb to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sb, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %49)
  %cmp29.not = icmp eq i64 %49, 8
  br i1 %cmp29.not, label %if.end32, label %do.end.err97_crit_edge

do.end.err97_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end32:                                         ; preds = %do.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %magic, ptr noundef nonnull dereferenceable(16) @bcache_magic, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool36.not = icmp eq i32 %bcmp, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.err97_crit_edge

if.end32.err97_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end38:                                         ; preds = %if.end32
  %50 = ptrtoint ptr %call2 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %call2, align 8
  %d40 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 17
  %52 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %30, align 2
  %conv42 = zext i16 %53 to i32
  %add.ptr.i = getelementptr i64, ptr %d40, i32 %conv42
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %offset to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i = tail call i64 @crc64_be(i64 noundef -1, ptr noundef %offset, i32 noundef %sub.ptr.sub) #21
  %xor.i = xor i64 %call.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %xor.i)
  %cmp46.not = icmp eq i64 %51, %xor.i
  br i1 %cmp46.not, label %if.end49, label %if.end38.err97_crit_edge

if.end38.err97_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end49:                                         ; preds = %if.end38
  %call52 = tail call zeroext i1 @bch_is_zero(ptr noundef %uuid, i32 noundef 16) #18
  br i1 %call52, label %if.end49.err97_crit_edge, label %if.end54

if.end49.err97_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end54:                                         ; preds = %if.end49
  %54 = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 13
  %block_size = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 13, i32 0, i32 1
  %55 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %block_size, align 8
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %58 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11
  %block_size55 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 1
  %59 = ptrtoint ptr %block_size55 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %57, ptr %block_size55, align 8
  %conv57 = zext i16 %57 to i32
  %shl = shl nuw nsw i32 %conv57, 9
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %60 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.end54.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end54.bdev_logical_block_size.exit_crit_edge:  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %61, i32 0, i32 37, i32 9
  %62 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool2.not.i.i = icmp eq i32 %63, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %63
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end54.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end54.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %retval1.0.i.i)
  %cmp59 = icmp ult i32 %shl, %retval1.0.i.i
  br i1 %cmp59, label %bdev_logical_block_size.exit.err97_crit_edge, label %if.end62

bdev_logical_block_size.exit.err97_crit_edge:     ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end62:                                         ; preds = %bdev_logical_block_size.exit
  %64 = ptrtoint ptr %version4 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %version4, align 8
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.277)
  switch i64 %65, label %if.end62.err97_crit_edge [
    i64 1, label %sw.bb
    i64 4, label %if.end62.sw.bb64_crit_edge
    i64 6, label %if.end62.sw.bb64_crit_edge172
    i64 0, label %if.end62.sw.bb72_crit_edge
    i64 3, label %if.end62.sw.bb72_crit_edge173
    i64 5, label %sw.bb77
  ]

if.end62.sw.bb72_crit_edge173:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb72

if.end62.sw.bb72_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb72

if.end62.sw.bb64_crit_edge172:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb64

if.end62.sw.bb64_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb64

if.end62.err97_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

sw.bb:                                            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 16, ptr %58, align 8
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end62.sw.bb64_crit_edge, %if.end62.sw.bb64_crit_edge172
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %54, align 8
  %69 = tail call i64 @llvm.bswap.i64(i64 %68)
  %70 = ptrtoint ptr %58 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %58, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %69)
  %cmp68 = icmp ult i64 %69, 16
  br i1 %cmp68, label %sw.bb64.err97_crit_edge, label %sw.bb64.sw.epilog_crit_edge

sw.bb64.sw.epilog_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb64.err97_crit_edge:                          ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

sw.bb72:                                          ; preds = %if.end62.sw.bb72_crit_edge, %if.end62.sw.bb72_crit_edge173
  %call73 = tail call fastcc ptr @read_super_common(ptr noundef %sb, ptr noundef %bdev, ptr noundef %call2)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %sw.bb72.sw.epilog_crit_edge, label %sw.bb72.err97_crit_edge

sw.bb72.err97_crit_edge:                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end62
  %feature_compat = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 9
  %71 = ptrtoint ptr %feature_compat to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %feature_compat, align 8
  %73 = tail call i64 @llvm.bswap.i64(i64 %72)
  %feature_compat78 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 8
  %74 = ptrtoint ptr %feature_compat78 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %feature_compat78, align 8
  %feature_incompat = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 10
  %75 = ptrtoint ptr %feature_incompat to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %feature_incompat, align 8
  %77 = tail call i64 @llvm.bswap.i64(i64 %76)
  %feature_incompat79 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 9
  %78 = ptrtoint ptr %feature_incompat79 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %feature_incompat79, align 8
  %feature_ro_compat = getelementptr inbounds %struct.cache_sb_disk, ptr %call2, i32 0, i32 11
  %79 = ptrtoint ptr %feature_ro_compat to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %feature_ro_compat, align 8
  %81 = tail call i64 @llvm.bswap.i64(i64 %80)
  %feature_ro_compat80 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 10
  %82 = ptrtoint ptr %feature_ro_compat80 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %feature_ro_compat80, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %cmp.i166.not = icmp eq i64 %72, 0
  br i1 %cmp.i166.not, label %if.end83, label %sw.bb77.err97_crit_edge

sw.bb77.err97_crit_edge:                          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end83:                                         ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %cmp.i167.not = icmp eq i64 %80, 0
  br i1 %cmp.i167.not, label %if.end86, label %if.end83.err97_crit_edge

if.end83.err97_crit_edge:                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end86:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %77)
  %cmp.i168 = icmp ugt i64 %77, 3
  br i1 %cmp.i168, label %if.end86.err97_crit_edge, label %if.end89

if.end86.err97_crit_edge:                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end89:                                         ; preds = %if.end86
  %call90 = tail call fastcc ptr @read_super_common(ptr noundef %sb, ptr noundef %bdev, ptr noundef %call2)
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.sw.epilog_crit_edge, label %if.end89.err97_crit_edge

if.end89.err97_crit_edge:                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %err97

if.end89.sw.epilog_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end89.sw.epilog_crit_edge, %sw.bb72.sw.epilog_crit_edge, %sw.bb64.sw.epilog_crit_edge, %sw.bb
  %call94 = tail call i64 @ktime_get_real_seconds() #18
  %conv95 = trunc i64 %call94 to i32
  %83 = ptrtoint ptr %last_mount17 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv95, ptr %last_mount17, align 8
  %84 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call2, ptr %res, align 4
  br label %cleanup

err97:                                            ; preds = %if.end89.err97_crit_edge, %if.end86.err97_crit_edge, %if.end83.err97_crit_edge, %sw.bb77.err97_crit_edge, %sw.bb72.err97_crit_edge, %sw.bb64.err97_crit_edge, %if.end62.err97_crit_edge, %bdev_logical_block_size.exit.err97_crit_edge, %if.end49.err97_crit_edge, %if.end38.err97_crit_edge, %if.end32.err97_crit_edge, %do.end.err97_crit_edge
  %err.0 = phi ptr [ @.str.167, %do.end.err97_crit_edge ], [ @.str.168, %if.end32.err97_crit_edge ], [ @.str.169, %if.end38.err97_crit_edge ], [ @.str.170, %if.end49.err97_crit_edge ], [ @.str.171, %bdev_logical_block_size.exit.err97_crit_edge ], [ @.str.173, %sw.bb77.err97_crit_edge ], [ @.str.174, %if.end83.err97_crit_edge ], [ @.str.175, %if.end86.err97_crit_edge ], [ %call90, %if.end89.err97_crit_edge ], [ %call73, %sw.bb72.err97_crit_edge ], [ @.str.172, %sw.bb64.err97_crit_edge ], [ @.str.176, %if.end62.err97_crit_edge ]
  %85 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  %and.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i169 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i169, label %if.end.i.i, label %if.then.i.i, !prof !600

if.then.i.i:                                      ; preds = %err97
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %87, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %err97
  call void @__sanitizer_cov_trace_pc() #20
  %88 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %88, %if.end.i.i ]
  %89 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %90 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i.i.i.i = icmp eq i32 %91, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !590

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %89, ptr noundef nonnull @.str.138) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !617
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !597
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %92, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_super, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !593

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %89, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %89) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.epilog ], [ @.str.163, %entry.cleanup_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @read_super_common(ptr noundef %sb, ptr nocapture noundef readonly %bdev, ptr nocapture noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %first_bucket = getelementptr inbounds %struct.cache_sb_disk, ptr %s, i32 0, i32 15
  %0 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %first_bucket, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %first_bucket1 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 13
  %3 = ptrtoint ptr %first_bucket1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %first_bucket1, align 4
  %4 = getelementptr inbounds %struct.cache_sb_disk, ptr %s, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %8 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %7, ptr %8, align 8
  %bucket_size1.i = getelementptr inbounds %struct.cache_sb_disk, ptr %s, i32 0, i32 13, i32 0, i32 2
  %10 = ptrtoint ptr %bucket_size1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bucket_size1.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #18
  %conv.i = zext i16 %12 to i32
  %version.i = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 1
  %13 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %14)
  %cmp.i = icmp ugt i64 %14, 4
  br i1 %cmp.i, label %bch_has_feature_large_bucket.exit.i, label %entry.get_bucket_size.exit_crit_edge

entry.get_bucket_size.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_bucket_size.exit

bch_has_feature_large_bucket.exit.i:              ; preds = %entry
  %feature_incompat.i.i = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 9
  %15 = ptrtoint ptr %feature_incompat.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %feature_incompat.i.i, align 8
  %17 = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i, label %bch_has_feature_obso_large_bucket.exit.i, label %if.then3.i

if.then3.i:                                       ; preds = %bch_has_feature_large_bucket.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %12)
  %cmp6.i = icmp ugt i16 %12, 31
  br i1 %cmp6.i, label %do.end.i, label %if.then3.i.if.end.i_crit_edge

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, i32 noundef %conv.i) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then3.i.if.end.i_crit_edge
  %shl.i = shl nuw i32 1, %conv.i
  br label %get_bucket_size.exit

bch_has_feature_obso_large_bucket.exit.i:         ; preds = %bch_has_feature_large_bucket.exit.i
  %18 = and i64 %16, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool11.not.i = icmp eq i64 %18, 0
  br i1 %tobool11.not.i, label %bch_has_feature_obso_large_bucket.exit.i.get_bucket_size.exit_crit_edge, label %if.then12.i

bch_has_feature_obso_large_bucket.exit.i.get_bucket_size.exit_crit_edge: ; preds = %bch_has_feature_obso_large_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_bucket_size.exit

if.then12.i:                                      ; preds = %bch_has_feature_obso_large_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %obso_bucket_size_hi.i = getelementptr inbounds %struct.cache_sb_disk, ptr %s, i32 0, i32 18
  %19 = ptrtoint ptr %obso_bucket_size_hi.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %obso_bucket_size_hi.i, align 8
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #18
  %conv13.i = zext i16 %21 to i32
  %shl14.i = shl nuw i32 %conv13.i, 16
  %add.i = or i32 %shl14.i, %conv.i
  br label %get_bucket_size.exit

get_bucket_size.exit:                             ; preds = %if.then12.i, %bch_has_feature_obso_large_bucket.exit.i.get_bucket_size.exit_crit_edge, %if.end.i, %entry.get_bucket_size.exit_crit_edge
  %bucket_size.0.i = phi i32 [ %shl.i, %if.end.i ], [ %add.i, %if.then12.i ], [ %conv.i, %bch_has_feature_obso_large_bucket.exit.i.get_bucket_size.exit_crit_edge ], [ %conv.i, %entry.get_bucket_size.exit_crit_edge ]
  %bucket_size = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 4
  %22 = ptrtoint ptr %bucket_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bucket_size.0.i, ptr %bucket_size, align 8
  %nr_in_set = getelementptr inbounds %struct.cache_sb_disk, ptr %s, i32 0, i32 13, i32 0, i32 3
  %23 = ptrtoint ptr %nr_in_set to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr_in_set, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %nr_in_set3 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 2
  %26 = ptrtoint ptr %nr_in_set3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %nr_in_set3, align 2
  %nr_this_dev = getelementptr inbounds %struct.cache_sb_disk, ptr %s, i32 0, i32 13, i32 0, i32 4
  %27 = ptrtoint ptr %nr_this_dev to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nr_this_dev, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %nr_this_dev4 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 3
  %30 = ptrtoint ptr %nr_this_dev4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %nr_this_dev4, align 4
  %31 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 14
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %33)
  %cmp = icmp ugt i16 %33, 256
  br i1 %cmp, label %get_bucket_size.exit.err88_crit_edge, label %if.end

get_bucket_size.exit.err88_crit_edge:             ; preds = %get_bucket_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end:                                           ; preds = %get_bucket_size.exit
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %35)
  %cmp7 = icmp ugt i64 %35, 2147483647
  br i1 %cmp7, label %if.end.err88_crit_edge, label %if.end10

if.end.err88_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %35)
  %cmp12 = icmp ult i64 %35, 128
  br i1 %cmp12, label %if.end10.err88_crit_edge, label %if.end15

if.end10.err88_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end15:                                         ; preds = %if.end10
  %block_size = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 11, i32 0, i32 1
  %36 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %block_size, align 8
  %38 = tail call i16 @llvm.ctpop.i16(i16 %37), !range !614
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %if.end19, label %if.end15.err88_crit_edge

if.end15.err88_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %37)
  %cmp22 = icmp ugt i16 %37, 8
  br i1 %cmp22, label %if.end19.err88_crit_edge, label %if.end25

if.end19.err88_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end25:                                         ; preds = %if.end19
  %40 = tail call i32 @llvm.ctpop.i32(i32 %bucket_size.0.i) #18, !range !613
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %if.end29, label %if.end25.err88_crit_edge

if.end25.err88_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bucket_size.0.i)
  %cmp31 = icmp ult i32 %bucket_size.0.i, 8
  br i1 %cmp31, label %if.end29.err88_crit_edge, label %if.end34

if.end29.err88_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end34:                                         ; preds = %if.end29
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %42 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %conv37 = zext i32 %bucket_size.0.i to i64
  %mul = mul nuw nsw i64 %35, %conv37
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %mul)
  %cmp39 = icmp ult i64 %47, %mul
  br i1 %cmp39, label %if.end34.err88_crit_edge, label %if.end42

if.end34.err88_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end42:                                         ; preds = %if.end34
  %48 = getelementptr inbounds %struct.cache_sb, ptr %sb, i32 0, i32 4
  %call43 = tail call zeroext i1 @bch_is_zero(ptr noundef %48, i32 noundef 16) #18
  br i1 %call43, label %if.end42.err88_crit_edge, label %if.end45

if.end42.err88_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end45:                                         ; preds = %if.end42
  %49 = ptrtoint ptr %nr_in_set3 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %nr_in_set3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not = icmp eq i16 %50, 0
  br i1 %tobool.not, label %if.end45.err88_crit_edge, label %lor.lhs.false

if.end45.err88_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

lor.lhs.false:                                    ; preds = %if.end45
  %51 = ptrtoint ptr %nr_this_dev4 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nr_this_dev4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %cmp51.not = icmp ule i16 %50, %52
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %50)
  %cmp56 = icmp ugt i16 %50, 8
  %or.cond = or i1 %cmp56, %cmp51.not
  br i1 %or.cond, label %lor.lhs.false.err88_crit_edge, label %for.cond.preheader

lor.lhs.false.err88_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

for.cond.preheader:                               ; preds = %lor.lhs.false
  %53 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %31, align 2
  %conv60 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp61131.not = icmp eq i16 %54, 0
  br i1 %cmp61131.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %55 = ptrtoint ptr %first_bucket1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %first_bucket1, align 4
  %conv64 = zext i16 %56 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %conv60
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cache_sb, ptr %sb, i32 0, i32 15, i32 %i.0132
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx, align 8
  %add = add nuw nsw i32 %i.0132, %conv64
  %conv65 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %conv65)
  %cmp66.not = icmp eq i64 %58, %conv65
  br i1 %cmp66.not, label %for.cond, label %for.body.err88_crit_edge

for.body.err88_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %59 = ptrtoint ptr %first_bucket1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %first_bucket1, align 4
  %conv71 = zext i16 %60 to i32
  %add73 = add nuw nsw i32 %conv71, %conv60
  %61 = zext i32 %add73 to i64
  %62 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %61)
  %cmp76 = icmp ult i64 %63, %61
  br i1 %cmp76, label %for.end.err88_crit_edge, label %if.end79

for.end.err88_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err88

if.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bucket_size, align 8
  %mul83 = mul i32 %65, %conv71
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul83)
  %cmp84 = icmp ult i32 %mul83, 16
  %spec.select = select i1 %cmp84, ptr @.str.187, ptr null
  br label %err88

err88:                                            ; preds = %if.end79, %for.end.err88_crit_edge, %for.body.err88_crit_edge, %lor.lhs.false.err88_crit_edge, %if.end45.err88_crit_edge, %if.end42.err88_crit_edge, %if.end34.err88_crit_edge, %if.end29.err88_crit_edge, %if.end25.err88_crit_edge, %if.end19.err88_crit_edge, %if.end15.err88_crit_edge, %if.end10.err88_crit_edge, %if.end.err88_crit_edge, %get_bucket_size.exit.err88_crit_edge
  %err.0 = phi ptr [ @.str.177, %get_bucket_size.exit.err88_crit_edge ], [ @.str.178, %if.end.err88_crit_edge ], [ @.str.179, %if.end10.err88_crit_edge ], [ @.str.181, %if.end19.err88_crit_edge ], [ @.str.183, %if.end29.err88_crit_edge ], [ @.str.184, %if.end34.err88_crit_edge ], [ @.str.170, %if.end42.err88_crit_edge ], [ @.str.185, %lor.lhs.false.err88_crit_edge ], [ @.str.177, %for.end.err88_crit_edge ], [ @.str.185, %if.end45.err88_crit_edge ], [ %spec.select, %if.end79 ], [ @.str.180, %if.end15.err88_crit_edge ], [ @.str.182, %if.end25.err88_crit_edge ], [ @.str.186, %for.body.err88_crit_edge ]
  ret ptr %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @register_bdev_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 53392, i32 noundef 3520, i32 noundef 4) #27
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sb_disk = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 3
  %1 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb_disk, align 4
  %3 = ptrtoint ptr %2 to i32
  %sub = add i32 %3, 1073741824
  %shr = lshr i32 %sub, 12
  %4 = getelementptr %struct.page, ptr %0, i32 %shr, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !600

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr2 = getelementptr %struct.page, ptr %0, i32 %shr
  %7 = ptrtoint ptr %add.ptr2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !590

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.138) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !617
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !597
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@register_bdev_worker, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !593

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out.thread_crit_edge

folio_put_testzero.exit.i.i.out.thread_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %8) #18
  br label %out.thread

out.thread:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out.thread_crit_edge
  %bdev = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 4
  %12 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev, align 4
  tail call void @blkdev_put(ptr noundef %13, i32 noundef 131) #18
  br label %do.end

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %sb = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 2
  %14 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sb, align 4
  %sb_disk3 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 3
  %16 = ptrtoint ptr %sb_disk3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb_disk3, align 4
  %bdev4 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 4
  %18 = ptrtoint ptr %bdev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev4, align 4
  %sb1.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %sb1.i, ptr %15, i32 2216)
  %bdev2.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %bdev2.i, align 4
  %bd_holder.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 11
  %22 = ptrtoint ptr %bd_holder.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i.i.i, ptr %bd_holder.i, align 8
  %sb_disk4.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %sb_disk4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %sb_disk4.i, align 8
  %block_size.i = getelementptr inbounds %struct.cache_sb, ptr %15, i32 0, i32 11, i32 0, i32 1
  %24 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %block_size.i, align 8
  %conv.i = zext i16 %25 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 9
  %26 = load ptr, ptr %bdev2.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bd_queue.i.i.i, align 4
  tail call void @__module_get(ptr noundef null) #18
  %29 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call1.i.i.i, ptr %call1.i.i.i, align 4096
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call1.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i.i.i, ptr %prev.i.i.i, align 4
  %disk.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1
  %remaining.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 2
  %31 = call ptr @memset(ptr %disk.i.i, i32 0, i32 72)
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i.i, i32 noundef 4) #18
  %32 = ptrtoint ptr %remaining.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1073741825, ptr %remaining.i.i.i, align 8
  tail call void @closure_debug_create(ptr noundef %disk.i.i) #18
  tail call fastcc void @closure_set_ip(ptr noundef %disk.i.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %fn1.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %fn1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cached_dev_flush, ptr %fn1.i.i.i, align 4
  %35 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %disk.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  %kobj.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  tail call void @kobject_init(ptr noundef %kobj.i.i, ptr noundef nonnull @bch_cached_dev_ktype) #18
  %detach.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %detach.i.i, i32 noundef 0) #18
  %36 = ptrtoint ptr %detach.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %detach.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.206, ptr noundef nonnull @cached_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry7.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %entry7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry7.i.i, ptr %entry7.i.i, align 4
  %prev.i89.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry7.i.i, ptr %prev.i89.i.i, align 32
  %func.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cached_dev_detach_finish, ptr %func.i.i, align 4
  %sb_write_mutex.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8
  %wait_list1.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %sb_write_mutex.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sb_write_mutex.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 1
  %41 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i, align 32
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 2
  %42 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 3
  %43 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 4
  %44 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.136, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 4, i32 5
  %48 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i.i, align 8
  %50 = ptrtoint ptr %wait_list1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %wait_list1.i.i.i, ptr %wait_list1.i.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 2, i32 1
  %51 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %wait_list1.i.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i.i, align 16
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull @.str.137, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %io_lru.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 26
  %52 = ptrtoint ptr %io_lru.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %io_lru.i.i, ptr %io_lru.i.i, align 4
  %prev.i90.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 1
  %53 = ptrtoint ptr %prev.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %io_lru.i.i, ptr %prev.i90.i.i, align 16
  %io_lock.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %io_lock.i.i, ptr noundef nonnull @.str.208, ptr noundef nonnull @cached_dev_init.__key.207, i16 noundef signext 3) #18
  %accounting.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 28
  tail call void @bch_cache_accounting_init(ptr noundef %accounting.i.i, ptr noundef %disk.i.i) #18
  %sequential_cutoff.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 29
  %54 = ptrtoint ptr %sequential_cutoff.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4194304, ptr %sequential_cutoff.i.i, align 4
  %io15.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 24
  %add.ptr.i.i = getelementptr %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 25
  %cmp93.i.i = icmp ult ptr %io15.i.i, %add.ptr.i.i
  br i1 %cmp93.i.i, label %for.body.lr.ph.i.i, label %if.end.for.end.i.i_crit_edge

if.end.for.end.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %add.ptr20.i.i = getelementptr %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 25, i32 128
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %hlist_add_head.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %io.094.i.i = phi ptr [ %io15.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %hlist_add_head.exit.i.i.for.body.i.i_crit_edge ]
  %lru.i.i = getelementptr inbounds %struct.io, ptr %io.094.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %io_lru.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_lru.i.i, align 4
  %call.i.i91.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru.i.i, ptr noundef %io_lru.i.i, ptr noundef %56) #18
  br i1 %call.i.i91.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add.exit.i.i_crit_edge

for.body.i.i.list_add.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %lru.i.i, ptr %prev1.i.i.i.i, align 4
  %58 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %lru.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.io, ptr %io.094.i.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %io_lru.i.i, ptr %prev3.i.i.i.i, align 4
  %60 = ptrtoint ptr %io_lru.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %lru.i.i, ptr %io_lru.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add.exit.i.i_crit_edge
  %61 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr20.i.i, align 8
  %63 = ptrtoint ptr %io.094.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %io.094.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i, label %list_add.exit.i.i.hlist_add_head.exit.i.i_crit_edge, label %do.body12.i.i.i

list_add.exit.i.i.hlist_add_head.exit.i.i_crit_edge: ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_add_head.exit.i.i

do.body12.i.i.i:                                  ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %io.094.i.i, ptr %pprev.i.i.i, align 4
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %do.body12.i.i.i, %list_add.exit.i.i.hlist_add_head.exit.i.i_crit_edge
  %65 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %io.094.i.i, ptr %add.ptr20.i.i, align 8
  %pprev34.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %io.094.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %add.ptr20.i.i, ptr %pprev34.i.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.io, ptr %io.094.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %hlist_add_head.exit.i.i.for.body.i.i_crit_edge, label %hlist_add_head.exit.i.i.for.end.i.i_crit_edge

hlist_add_head.exit.i.i.for.end.i.i_crit_edge:    ; preds = %hlist_add_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i.i

hlist_add_head.exit.i.i.for.body.i.i_crit_edge:   ; preds = %hlist_add_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %hlist_add_head.exit.i.i.for.end.i.i_crit_edge, %if.end.for.end.i.i_crit_edge
  %io_opt.i.i = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 37, i32 12
  %67 = ptrtoint ptr %io_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %io_opt.i.i, align 4
  %shr.i.i = lshr i32 %68, 9
  %stripe_size.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 8
  %69 = ptrtoint ptr %stripe_size.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr.i.i, ptr %stripe_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %68)
  %tobool.not.i.i24 = icmp ult i32 %68, 512
  br i1 %tobool.not.i.i24, label %for.end.i.i.if.end.i.i27_crit_edge, label %if.then.i.i25

for.end.i.i.if.end.i.i27_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i27

if.then.i.i25:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %raid_partial_stripes_expensive.i.i = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 37, i32 26
  %70 = ptrtoint ptr %raid_partial_stripes_expensive.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %raid_partial_stripes_expensive.i.i, align 4
  %partial_stripes_expensive.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 30
  %72 = ptrtoint ptr %partial_stripes_expensive.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i.i = load i8, ptr %partial_stripes_expensive.i.i, align 8
  %bf.value.i.i = shl i8 %71, 4
  %bf.shl.i.i = and i8 %bf.value.i.i, 16
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %partial_stripes_expensive.i.i, align 8
  br label %if.end.i.i27

if.end.i.i27:                                     ; preds = %if.then.i.i25, %for.end.i.i.if.end.i.i27_crit_edge
  %73 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bdev2.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %77 = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 3, i32 11
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %77, align 8
  %sub.i.i26 = sub i64 %76, %79
  %call29.i.i = tail call fastcc i32 @bcache_device_init(ptr noundef %disk.i.i, i32 noundef %shl.i, i64 noundef %sub.i.i26, ptr noundef %74, ptr noundef nonnull @bcache_cached_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end.i, label %if.end.i.i27.do.end43.i_crit_edge

if.end.i.i27.do.end43.i_crit_edge:                ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end43.i

if.end.i:                                         ; preds = %if.end.i.i27
  %disk34.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 5
  %80 = ptrtoint ptr %disk34.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %disk34.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.gendisk, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %queue.i.i, align 4
  %io_opt.i.i.i = getelementptr inbounds %struct.request_queue, ptr %83, i32 0, i32 37, i32 12
  %84 = ptrtoint ptr %io_opt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %io_opt.i.i.i, align 4
  %86 = ptrtoint ptr %io_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %io_opt.i.i, align 4
  %88 = tail call i32 @llvm.umax.i32(i32 %85, i32 %87) #18
  tail call void @blk_queue_io_opt(ptr noundef %83, i32 noundef %88) #18
  %io_errors.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 46
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errors.i.i, i32 noundef 4) #18
  %89 = ptrtoint ptr %io_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %io_errors.i.i, align 4
  %io_disable.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 30
  %90 = ptrtoint ptr %io_disable.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load42.i.i = load i8, ptr %io_disable.i.i, align 8
  %bf.clear43.i.i = and i8 %bf.load42.i.i, 127
  store i8 %bf.clear43.i.i, ptr %io_disable.i.i, align 8
  %error_limit.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 47
  %91 = ptrtoint ptr %error_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 64, ptr %error_limit.i.i, align 8
  %stop_when_cache_set_failed.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 45
  %92 = ptrtoint ptr %stop_when_cache_set_failed.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %stop_when_cache_set_failed.i.i, align 128
  tail call void @bch_cached_dev_request_init(ptr noundef %call1.i.i.i) #18
  tail call void @bch_cached_dev_writeback_init(ptr noundef %call1.i.i.i) #18
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %call6.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i.i, ptr noundef %bd_device.i, ptr noundef nonnull @.str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.do.end43.i_crit_edge

if.end.i.do.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end43.i

if.end9.i:                                        ; preds = %if.end.i
  %call12.i = tail call i32 @bch_cache_accounting_add_kobjs(ptr noundef %accounting.i.i, ptr noundef %kobj.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i, label %if.end9.i.do.end43.i_crit_edge

if.end9.i.do.end43.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end43.i

do.end.i:                                         ; preds = %if.end9.i
  %93 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bdev2.i, align 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, ptr noundef %94) #22
  %95 = load ptr, ptr @uncached_devices, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call1.i.i.i, ptr noundef nonnull @uncached_devices, ptr noundef %95) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add.exit.i_crit_edge

do.end.i.list_add.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call1.i.i.i, ptr %prev1.i.i.i, align 4
  %97 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %95, ptr %call1.i.i.i, align 4096
  %98 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @uncached_devices, ptr %prev.i.i.i, align 4
  store volatile ptr %call1.i.i.i, ptr @uncached_devices, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.list_add.exit.i_crit_edge
  %.pn82.i = load ptr, ptr @bch_cache_sets, align 4
  %cmp.not83.i = icmp eq ptr %.pn82.i, @bch_cache_sets
  br i1 %cmp.not83.i, label %list_add.exit.i.for.end.i_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  br label %for.body.i

list_add.exit.i.for.end.i_crit_edge:              ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_add.exit.i.for.body.i_crit_edge
  %.pn84.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn82.i, %list_add.exit.i.for.body.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn84.i, i32 -72
  %call21.i = tail call i32 @bch_cached_dev_attach(ptr noundef %call1.i.i.i, ptr noundef %c.0.i, ptr noundef null) #18
  %99 = ptrtoint ptr %.pn84.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i = load ptr, ptr %.pn84.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @bch_cache_sets
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %list_add.exit.i.for.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 3, i32 6
  %100 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %flags.i.i, align 16
  %shr.i71.i = lshr i64 %101, 61
  %trunc.i = trunc i64 %shr.i71.i to i2
  %102 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.278)
  switch i2 %trunc.i, label %for.end.i.out.thread32_crit_edge [
    i2 0, label %for.end.i.if.then34.i_crit_edge
    i2 -1, label %for.end.i.if.then34.i_crit_edge34
  ]

for.end.i.if.then34.i_crit_edge34:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34.i

for.end.i.if.then34.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34.i

for.end.i.out.thread32_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread32

if.then34.i:                                      ; preds = %for.end.i.if.then34.i_crit_edge, %for.end.i.if.then34.i_crit_edge34
  %call35.i = tail call i32 @bch_cached_dev_run(ptr noundef %call1.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then34.i.out.thread32_crit_edge, label %if.then34.i.do.end43.i_crit_edge

if.then34.i.do.end43.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end43.i

if.then34.i.out.thread32_crit_edge:               ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread32

do.end43.i:                                       ; preds = %if.then34.i.do.end43.i_crit_edge, %if.end9.i.do.end43.i_crit_edge, %if.end.i.do.end43.i_crit_edge, %if.end.i.i27.do.end43.i_crit_edge
  %ret.0.i = phi i32 [ -12, %if.end.i.do.end43.i_crit_edge ], [ -12, %if.end9.i.do.end43.i_crit_edge ], [ %call35.i, %if.then34.i.do.end43.i_crit_edge ], [ -12, %if.end.i.i27.do.end43.i_crit_edge ]
  %err.0.i = phi ptr [ @.str.199, %if.end.i.do.end43.i_crit_edge ], [ @.str.199, %if.end9.i.do.end43.i_crit_edge ], [ @.str.202, %if.then34.i.do.end43.i_crit_edge ], [ @.str.155, %if.end.i.i27.do.end43.i_crit_edge ]
  %103 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bdev2.i, align 4
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.201, ptr noundef %104, ptr noundef nonnull %err.0.i) #22
  %flags.i75.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 6
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i75.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i76.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i76.i, label %if.then.i78.i, label %do.end43.i.register_bdev.exit_crit_edge

do.end43.i.register_bdev.exit_crit_edge:          ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %register_bdev.exit

if.then.i78.i:                                    ; preds = %do.end43.i
  %105 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %disk.i.i, align 8
  %tobool.not.i.i77.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i77.i, label %if.else.i.i.i, label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %if.then.i78.i
  tail call void @__init_work(ptr noundef %disk.i.i, i32 noundef 0) #18
  %107 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -64, ptr %disk.i.i, align 8
  %lockdep_map.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %entry3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %entry3.i.i.i, ptr %entry3.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %entry3.i.i.i, ptr %prev.i.i.i.i, align 16
  %call.i.i.i79.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %106, ptr noundef %disk.i.i) #18
  br i1 %call.i.i.i79.i, label %do.body2.i.i.i.register_bdev.exit_crit_edge, label %do.body12.i.i80.i, !prof !600

do.body2.i.i.i.register_bdev.exit_crit_edge:      ; preds = %do.body2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %register_bdev.exit

do.body12.i.i80.i:                                ; preds = %do.body2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i.i:                                    ; preds = %if.then.i78.i
  call void @__sanitizer_cov_trace_pc() #20
  %110 = ptrtoint ptr %fn1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fn1.i.i.i, align 4
  tail call void %111(ptr noundef %disk.i.i) #18
  br label %register_bdev.exit

register_bdev.exit:                               ; preds = %if.else.i.i.i, %do.body2.i.i.i.register_bdev.exit_crit_edge, %do.end43.i.register_bdev.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %out, label %register_bdev.exit.out.thread32_crit_edge

register_bdev.exit.out.thread32_crit_edge:        ; preds = %register_bdev.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread32

out.thread32:                                     ; preds = %register_bdev.exit.out.thread32_crit_edge, %if.then34.i.out.thread32_crit_edge, %for.end.i.out.thread32_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  br label %if.end12

out:                                              ; preds = %register_bdev.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  br label %do.end

do.end:                                           ; preds = %out, %out.thread
  %path = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 1
  %112 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %path, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, ptr noundef %113) #22
  br label %if.end12

if.end12:                                         ; preds = %do.end, %out.thread32
  %sb13 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 2
  %114 = ptrtoint ptr %sb13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sb13, align 4
  tail call void @kfree(ptr noundef %115) #18
  %path14 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 1
  %116 = ptrtoint ptr %path14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %path14, align 4
  tail call void @kfree(ptr noundef %117) #18
  tail call void @kfree(ptr noundef %work) #18
  tail call void @module_put(ptr noundef null) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @register_cache_worker(ptr noundef %work) #0 align 64 {
entry:
  %buf.i.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5160) #25
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sb_disk = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb_disk, align 4
  %4 = ptrtoint ptr %3 to i32
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  %5 = getelementptr %struct.page, ptr %1, i32 %shr, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !600

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr2 = getelementptr %struct.page, ptr %1, i32 %shr
  %8 = ptrtoint ptr %add.ptr2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %10 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !590

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.138) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !617
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !597
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@register_cache_worker, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !593

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %9, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %9) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %bdev = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 4
  %13 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev, align 4
  tail call void @blkdev_put(ptr noundef %14, i32 noundef 131) #18
  br label %do.end

if.end:                                           ; preds = %entry
  %sb = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 2
  %15 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sb, align 4
  %sb_disk3 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 3
  %17 = ptrtoint ptr %sb_disk3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sb_disk3, align 4
  %bdev4 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 4
  %19 = ptrtoint ptr %bdev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev4, align 4
  %sb1.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %sb1.i, ptr %16, i32 2216)
  %bdev2.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %bdev2.i, align 4
  %bd_holder.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %bd_holder.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %bd_holder.i, align 8
  %sb_disk4.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %sb_disk4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %sb_disk4.i, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 18
  %25 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %queue_flags.i, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %flags.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %flags.i.i, align 8
  %discard.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 18
  %32 = trunc i64 %31 to i8
  %33 = lshr i8 %32, 1
  %34 = and i8 %33, 1
  %35 = ptrtoint ptr %discard.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %discard.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  tail call void @__module_get(ptr noundef null) #18
  %kobj.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 5
  tail call void @kobject_init(ptr noundef %kobj.i.i, ptr noundef nonnull @bch_cache_ktype) #18
  %bio.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 19, i32 8
  %bi_inline_vecs.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 19, i32 9
  tail call void @bio_init(ptr noundef %bio.i.i, ptr noundef %bi_inline_vecs.i.i, i16 noundef zeroext 8) #18
  %36 = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 14
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i.i24 = icmp eq i16 %38, 0
  %narrow.i.i = select i1 %tobool.not.i.i24, i16 8, i16 %38
  %conv..i.i = zext i16 %narrow.i.i to i32
  %39 = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  %conv37.i.i = trunc i64 %41 to i32
  %sub.i1133.i.i = add i32 %conv37.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1133.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i1133.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.if.then10.i_crit_edge, label %cond.end39.i.i

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10.i

cond.end39.i.i:                                   ; preds = %if.end.i
  %42 = tail call i32 @llvm.ctlz.i32(i32 %sub.i1133.i.i, i1 true) #18, !range !613
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %42
  %cond40.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shr.i62.i = lshr i32 %cond40.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i1133.i.i)
  %tobool41.not.i.i = icmp ult i32 %sub.i1133.i.i, 512
  br i1 %tobool41.not.i.i, label %cond.end39.i.i.if.then10.i_crit_edge, label %if.end.i.i27

cond.end39.i.i.if.then10.i_crit_edge:             ; preds = %cond.end39.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10.i

if.end.i.i27:                                     ; preds = %cond.end39.i.i
  %free42.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 12
  %size.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 2
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv..i.i, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %narrow.i.i)
  %cmp46.i.i = icmp ugt i16 %narrow.i.i, 4
  br i1 %cmp46.i.i, label %if.end105.i.i, label %if.end.i.i27.cond.end178.i.i_crit_edge

if.end.i.i27.cond.end178.i.i_crit_edge:           ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end178.i.i

if.end105.i.i:                                    ; preds = %if.end.i.i27
  %sub63.i.i = add nsw i32 %conv..i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub63.i.i)
  %tobool.not.i.i.i1137.i.i = icmp eq i32 %sub63.i.i, 0
  %44 = tail call i32 @llvm.ctlz.i32(i32 %sub63.i.i, i1 true) #18, !range !613
  %sub.i.i.i1138.i.i = sub nuw nsw i32 32, %44
  %notmask39 = shl nsw i32 -1, %sub.i.i.i1138.i.i
  %sub.i.i.op.i1139.i.i.op = xor i32 %notmask39, -1
  %sub101.i.i = select i1 %tobool.not.i.i.i1137.i.i, i32 0, i32 %sub.i.i.op.i1139.i.i.op
  %45 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub101.i.i, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub101.i.i)
  %tobool109.not.i.i = icmp eq i32 %sub101.i.i, 0
  br i1 %tobool109.not.i.i, label %do.body114.i.i, label %if.end105.i.i.cond.end178.i.i_crit_edge, !prof !590

if.end105.i.i.cond.end178.i.i_crit_edge:          ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end178.i.i

do.body114.i.i:                                   ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2263, 0\0A.popsection", ""() #18, !srcloc !624
  unreachable

cond.end178.i.i:                                  ; preds = %if.end105.i.i.cond.end178.i.i_crit_edge, %if.end.i.i27.cond.end178.i.i_crit_edge
  %46 = phi i32 [ %sub101.i.i, %if.end105.i.i.cond.end178.i.i_crit_edge ], [ %conv..i.i, %if.end.i.i27.cond.end178.i.i_crit_edge ]
  %47 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 true) #18, !range !613
  %sub.i.i.i1145.i.i = sub nuw nsw i32 32, %47
  %cond179.i.i = shl nuw i32 1, %sub.i.i.i1145.i.i
  %mul.i.i = shl i32 %cond179.i.i, 2
  %sub180.i.i = add i32 %cond179.i.i, -1
  %mask.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 3
  %48 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub180.i.i, ptr %mask.i.i, align 4
  %back.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1
  %49 = ptrtoint ptr %back.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %back.i.i, align 4
  %50 = ptrtoint ptr %free42.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %free42.i.i, align 8
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i.i, i32 noundef 3264, i32 noundef -1) #27
  %data.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i.i, ptr %data.i.i, align 8
  %tobool194.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool194.not.i.i, label %cond.end178.i.i.if.then10.i_crit_edge, label %if.end196.i.i

cond.end178.i.i.if.then10.i_crit_edge:            ; preds = %cond.end178.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10.i

if.end196.i.i:                                    ; preds = %cond.end178.i.i
  %52 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %39, align 8
  %conv199.i.i = trunc i64 %53 to i32
  %bucket_size.i.i.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 0, i32 4
  %54 = ptrtoint ptr %bucket_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bucket_size.i.i.i.i, align 8
  %div18.i.i.i.i = lshr i32 %55, 3
  %56 = tail call i32 @llvm.umin.i32(i32 %div18.i.i.i.i, i32 2048) #18
  %shl.i1148.i.i = shl nuw nsw i32 %56, 12
  %sub202.i.i = add nsw i32 %shl.i1148.i.i, -40
  %div.i.i = udiv i32 %sub202.i.i, 3
  %add203.i.i = add i32 %conv199.i.i, -1
  %sub204.i.i = add i32 %add203.i.i, %div.i.i
  %div209.i.i = udiv i32 %sub204.i.i, %div.i.i
  %size212.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 2
  %57 = ptrtoint ptr %size212.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div209.i.i, ptr %size212.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %sub204.i.i)
  %tobool220.not.i.i = icmp ugt i32 %div.i.i, %sub204.i.i
  br i1 %tobool220.not.i.i, label %do.body230.i.i, label %cond.end296.i.i, !prof !590

do.body230.i.i:                                   ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2269, 0\0A.popsection", ""() #18, !srcloc !625
  unreachable

cond.end296.i.i:                                  ; preds = %if.end196.i.i
  %arrayidx211.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 1
  %58 = tail call i32 @llvm.ctlz.i32(i32 %div209.i.i, i1 true) #18, !range !613
  %sub.i.i.i1156.i.i = sub nuw nsw i32 32, %58
  %cond297.i.i = shl nuw i32 1, %sub.i.i.i1156.i.i
  %mul298.i.i = shl i32 %cond297.i.i, 2
  %sub299.i.i = add i32 %cond297.i.i, -1
  %mask302.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 3
  %59 = ptrtoint ptr %mask302.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub299.i.i, ptr %mask302.i.i, align 8
  %back305.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 1
  %60 = ptrtoint ptr %back305.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %back305.i.i, align 8
  %61 = ptrtoint ptr %arrayidx211.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx211.i.i, align 4
  %call.i1159.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul298.i.i, i32 noundef 3264, i32 noundef -1) #27
  %data312.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 4
  %62 = ptrtoint ptr %data312.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i1159.i.i, ptr %data312.i.i, align 4
  %tobool317.not.i.i = icmp eq ptr %call.i1159.i.i, null
  br i1 %tobool317.not.i.i, label %cond.end296.i.i.err_free.i.i_crit_edge, label %if.end319.i.i

cond.end296.i.i.err_free.i.i_crit_edge:           ; preds = %cond.end296.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free.i.i

if.end319.i.i:                                    ; preds = %cond.end296.i.i
  %arrayidx321.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 2
  %size322.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i1133.i.i)
  %cmp326.i.i = icmp ugt i32 %sub.i1133.i.i, 4095
  br i1 %cmp326.i.i, label %cond.end379.i.i, label %if.end319.i.i.if.end385.i.i_crit_edge

if.end319.i.i.if.end385.i.i_crit_edge:            ; preds = %if.end319.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end385.i.i

cond.end379.i.i:                                  ; preds = %if.end319.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub343.i.i = add nsw i32 %shr.i62.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub343.i.i)
  %tobool.not.i.i.i1164.i.i = icmp eq i32 %sub343.i.i, 0
  %63 = tail call i32 @llvm.ctlz.i32(i32 %sub343.i.i, i1 true) #18, !range !613
  %sub.i.i.i1165.i.i = sub nuw nsw i32 32, %63
  %notmask38 = shl nsw i32 -1, %sub.i.i.i1165.i.i
  %sub.i.i.op.i1166.i.i.op = xor i32 %notmask38, -1
  %sub381.i.i = select i1 %tobool.not.i.i.i1164.i.i, i32 0, i32 %sub.i.i.op.i1166.i.i.op
  br label %if.end385.i.i

if.end385.i.i:                                    ; preds = %cond.end379.i.i, %if.end319.i.i.if.end385.i.i_crit_edge
  %64 = phi i32 [ %sub381.i.i, %cond.end379.i.i ], [ %shr.i62.i, %if.end319.i.i.if.end385.i.i_crit_edge ]
  %65 = ptrtoint ptr %size322.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %size322.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool393.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool393.not.i.i, label %do.body403.i.i, label %cond.end469.i.i, !prof !590

do.body403.i.i:                                   ; preds = %if.end385.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2274, 0\0A.popsection", ""() #18, !srcloc !626
  unreachable

cond.end469.i.i:                                  ; preds = %if.end385.i.i
  %66 = tail call i32 @llvm.ctlz.i32(i32 %64, i1 true) #18, !range !613
  %sub.i.i.i1172.i.i = sub nuw nsw i32 32, %66
  %cond470.i.i = shl nuw i32 1, %sub.i.i.i1172.i.i
  %mul471.i.i = shl i32 %cond470.i.i, 2
  %sub472.i.i = add i32 %cond470.i.i, -1
  %mask475.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 3
  %67 = ptrtoint ptr %mask475.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub472.i.i, ptr %mask475.i.i, align 4
  %back478.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 1
  %68 = ptrtoint ptr %back478.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %back478.i.i, align 4
  %69 = ptrtoint ptr %arrayidx321.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx321.i.i, align 8
  %call.i1175.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul471.i.i, i32 noundef 3264, i32 noundef -1) #27
  %data485.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 4
  %70 = ptrtoint ptr %data485.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i1175.i.i, ptr %data485.i.i, align 8
  %tobool490.not.i.i = icmp eq ptr %call.i1175.i.i, null
  br i1 %tobool490.not.i.i, label %cond.end469.i.i.do.body928.i.i_crit_edge, label %if.end492.i.i

cond.end469.i.i.do.body928.i.i_crit_edge:         ; preds = %cond.end469.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body928.i.i

if.end492.i.i:                                    ; preds = %cond.end469.i.i
  %arrayidx494.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 3
  %size495.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 3, i32 2
  br i1 %cmp326.i.i, label %cond.end552.i.i, label %if.end492.i.i.if.end558.i.i_crit_edge

if.end492.i.i.if.end558.i.i_crit_edge:            ; preds = %if.end492.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end558.i.i

cond.end552.i.i:                                  ; preds = %if.end492.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub516.i.i = add nsw i32 %shr.i62.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub516.i.i)
  %tobool.not.i.i.i1180.i.i = icmp eq i32 %sub516.i.i, 0
  %71 = tail call i32 @llvm.ctlz.i32(i32 %sub516.i.i, i1 true) #18, !range !613
  %sub.i.i.i1181.i.i = sub nuw nsw i32 32, %71
  %notmask = shl nsw i32 -1, %sub.i.i.i1181.i.i
  %sub.i.i.op.i1182.i.i.op = xor i32 %notmask, -1
  %sub554.i.i = select i1 %tobool.not.i.i.i1180.i.i, i32 0, i32 %sub.i.i.op.i1182.i.i.op
  br label %if.end558.i.i

if.end558.i.i:                                    ; preds = %cond.end552.i.i, %if.end492.i.i.if.end558.i.i_crit_edge
  %72 = phi i32 [ %sub554.i.i, %cond.end552.i.i ], [ %shr.i62.i, %if.end492.i.i.if.end558.i.i_crit_edge ]
  %73 = ptrtoint ptr %size495.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %size495.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool566.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool566.not.i.i, label %do.body576.i.i, label %cond.end642.i.i, !prof !590

do.body576.i.i:                                   ; preds = %if.end558.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2279, 0\0A.popsection", ""() #18, !srcloc !627
  unreachable

cond.end642.i.i:                                  ; preds = %if.end558.i.i
  %74 = tail call i32 @llvm.ctlz.i32(i32 %72, i1 true) #18, !range !613
  %sub.i.i.i1188.i.i = sub nuw nsw i32 32, %74
  %cond643.i.i = shl nuw i32 1, %sub.i.i.i1188.i.i
  %mul644.i.i = shl i32 %cond643.i.i, 2
  %sub645.i.i = add i32 %cond643.i.i, -1
  %mask648.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 3, i32 3
  %75 = ptrtoint ptr %mask648.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub645.i.i, ptr %mask648.i.i, align 8
  %back651.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 3, i32 1
  %76 = ptrtoint ptr %back651.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %back651.i.i, align 8
  %77 = ptrtoint ptr %arrayidx494.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx494.i.i, align 4
  %call.i1191.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul644.i.i, i32 noundef 3264, i32 noundef -1) #27
  %data658.i.i = getelementptr %struct.cache, ptr %call7.i.i, i32 0, i32 12, i32 3, i32 4
  %78 = ptrtoint ptr %data658.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i1191.i.i, ptr %data658.i.i, align 4
  %tobool663.not.i.i = icmp eq ptr %call.i1191.i.i, null
  br i1 %tobool663.not.i.i, label %cond.end642.i.i.do.body919.i.i_crit_edge, label %if.end665.i.i

cond.end642.i.i.do.body919.i.i_crit_edge:         ; preds = %cond.end642.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body919.i.i

if.end665.i.i:                                    ; preds = %cond.end642.i.i
  %shl666.i.i = shl nuw nsw i32 %shr.i62.i, 2
  %free_inc.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 13
  %size667.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 13, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i1133.i.i)
  %cmp670.i.i = icmp ugt i32 %sub.i1133.i.i, 1023
  br i1 %cmp670.i.i, label %if.then672.i.i, label %if.end665.i.i.if.end721.i.i_crit_edge

if.end665.i.i.if.end721.i.i_crit_edge:            ; preds = %if.end665.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end721.i.i

if.then672.i.i:                                   ; preds = %if.end665.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub684.i.i = add nsw i32 %shl666.i.i, -1
  %79 = tail call i32 @llvm.ctlz.i32(i32 %sub684.i.i, i1 true) #18, !range !613
  %sub.i.i.i1194.pn.i.i = sub nuw nsw i32 32, %79
  %notmask.i.i = shl nsw i32 -1, %sub.i.i.i1194.pn.i.i
  %sub718.i.i = xor i32 %notmask.i.i, -1
  br label %if.end721.i.i

if.end721.i.i:                                    ; preds = %if.then672.i.i, %if.end665.i.i.if.end721.i.i_crit_edge
  %80 = phi i32 [ %sub718.i.i, %if.then672.i.i ], [ %shl666.i.i, %if.end665.i.i.if.end721.i.i_crit_edge ]
  %81 = ptrtoint ptr %size667.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %size667.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool728.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool728.not.i.i, label %do.body738.i.i, label %cond.end797.i.i, !prof !590

do.body738.i.i:                                   ; preds = %if.end721.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2284, 0\0A.popsection", ""() #18, !srcloc !628
  unreachable

cond.end797.i.i:                                  ; preds = %if.end721.i.i
  %82 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 true) #18, !range !613
  %sub.i.i.i1200.i.i = sub nuw nsw i32 32, %82
  %cond798.i.i = shl nuw i32 1, %sub.i.i.i1200.i.i
  %mul799.i.i = shl i32 %cond798.i.i, 2
  %sub800.i.i = add i32 %cond798.i.i, -1
  %mask802.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 13, i32 3
  %83 = ptrtoint ptr %mask802.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub800.i.i, ptr %mask802.i.i, align 4
  %back804.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 13, i32 1
  %84 = ptrtoint ptr %back804.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %back804.i.i, align 4
  %85 = ptrtoint ptr %free_inc.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %free_inc.i.i, align 8
  %call.i1203.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul799.i.i, i32 noundef 3264, i32 noundef -1) #27
  %data809.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 13, i32 4
  %86 = ptrtoint ptr %data809.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i1203.i.i, ptr %data809.i.i, align 8
  %tobool813.not.i.i = icmp eq ptr %call.i1203.i.i, null
  br i1 %tobool813.not.i.i, label %cond.end797.i.i.do.body910.i.i_crit_edge, label %if.end815.i.i

cond.end797.i.i.do.body910.i.i_crit_edge:         ; preds = %cond.end797.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body910.i.i

if.end815.i.i:                                    ; preds = %cond.end797.i.i
  %heap.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 16
  %used.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 16, i32 1
  %87 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %used.i.i, align 8
  %shl817.i.i = shl nuw nsw i32 %shr.i62.i, 3
  %88 = ptrtoint ptr %heap.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl817.i.i, ptr %heap.i.i, align 4
  %mul822.i.i = shl nuw nsw i32 %shr.i62.i, 5
  %call.i1204.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul822.i.i, i32 noundef 3264, i32 noundef -1) #27
  %data825.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 16, i32 2
  %89 = ptrtoint ptr %data825.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i1204.i.i, ptr %data825.i.i, align 4
  %tobool829.not.i.i = icmp eq ptr %call.i1204.i.i, null
  br i1 %tobool829.not.i.i, label %if.end815.i.i.do.body903.i.i_crit_edge, label %if.end831.i.i

if.end815.i.i.do.body903.i.i_crit_edge:           ; preds = %if.end815.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body903.i.i

if.end831.i.i:                                    ; preds = %if.end815.i.i
  %90 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %39, align 8
  %conv834.i.i = trunc i64 %91 to i32
  %92 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv834.i.i, i32 12) #18
  %93 = extractvalue { i32, i1 } %92, 1
  %94 = extractvalue { i32, i1 } %92, 0
  %retval.0.i.i.i = select i1 %93, i32 -1, i32 %94
  %call836.i.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i.i) #27
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 15
  %95 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call836.i.i, ptr %buckets.i.i, align 8
  %tobool838.not.i.i = icmp eq ptr %call836.i.i, null
  br i1 %tobool838.not.i.i, label %if.end831.i.i.do.body896.i.i_crit_edge, label %if.end840.i.i

if.end831.i.i.do.body896.i.i_crit_edge:           ; preds = %if.end831.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body896.i.i

if.end840.i.i:                                    ; preds = %if.end831.i.i
  %96 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %39, align 8
  %conv843.i.i = trunc i64 %97 to i32
  %98 = ptrtoint ptr %bucket_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bucket_size.i.i.i.i, align 8
  %div18.i.i1206.i.i = lshr i32 %99, 3
  %100 = tail call i32 @llvm.umin.i32(i32 %div18.i.i1206.i.i, i32 2048) #18
  %shl.i1207.i.i = shl nuw nsw i32 %100, 12
  %sub846.i.i = add nsw i32 %shl.i1207.i.i, -40
  %div847.i.i = udiv i32 %sub846.i.i, 3
  %add848.i.i = add i32 %conv843.i.i, -1
  %sub849.i.i = add i32 %add848.i.i, %div847.i.i
  %div854.i.i = udiv i32 %sub849.i.i, %div847.i.i
  %101 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div854.i.i, i32 8) #18
  %102 = extractvalue { i32, i1 } %101, 1
  br i1 %102, label %if.end840.i.i.if.end8.i.i.i.i_crit_edge, label %if.end.i.i.i

if.end840.i.i.if.end8.i.i.i.i_crit_edge:          ; preds = %if.end840.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i.i.i.i

if.end.i.i.i:                                     ; preds = %if.end840.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %103 = extractvalue { i32, i1 } %101, 0
  %104 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %103, i32 2) #18
  %105 = extractvalue { i32, i1 } %104, 1
  %106 = extractvalue { i32, i1 } %104, 0
  %spec.select.i.i.i = select i1 %105, i32 -1, i32 %106
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i.i, %if.end840.i.i.if.end8.i.i.i.i_crit_edge
  %retval.0.i1211.i.i = phi i32 [ -1, %if.end840.i.i.if.end8.i.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end.i.i.i ]
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i1211.i.i, i32 noundef 3520) #27
  %prio_buckets.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 10
  %107 = ptrtoint ptr %prio_buckets.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call9.i.i.i.i, ptr %prio_buckets.i.i, align 8
  %tobool858.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool858.not.i.i, label %if.end8.i.i.i.i.err_prio_buckets_alloc.i.i_crit_edge, label %if.end860.i.i

if.end8.i.i.i.i.err_prio_buckets_alloc.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_prio_buckets_alloc.i.i

if.end860.i.i:                                    ; preds = %if.end8.i.i.i.i
  %108 = ptrtoint ptr %bucket_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bucket_size.i.i.i.i, align 8
  %div18.i.i.i = lshr i32 %109, 3
  %110 = tail call i32 @llvm.umin.i32(i32 %div18.i.i.i, i32 2048) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i.i1215.i.i = icmp eq i32 %110, 0
  %111 = tail call i32 @llvm.ctlz.i32(i32 %110, i1 true) #18, !range !613
  %sub.i.op.i1216.i.i = xor i32 %111, 31
  %sub.i1217.i.i = select i1 %tobool.not.i.i1215.i.i, i32 -1, i32 %sub.i.op.i1216.i.i
  %call864.i.i = tail call i32 @__get_free_pages(i32 noundef 265664, i32 noundef %sub.i1217.i.i) #18
  %112 = inttoptr i32 %call864.i.i to ptr
  %disk_buckets.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 9
  %113 = ptrtoint ptr %disk_buckets.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %disk_buckets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call864.i.i)
  %tobool866.not.i.i = icmp eq i32 %call864.i.i, 0
  %114 = ptrtoint ptr %prio_buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prio_buckets.i.i, align 8
  br i1 %tobool866.not.i.i, label %if.then867.i.i, label %if.end868.i.i

if.then867.i.i:                                   ; preds = %if.end860.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef %115) #18
  br label %err_prio_buckets_alloc.i.i

if.end868.i.i:                                    ; preds = %if.end860.i.i
  %116 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %39, align 8
  %conv872.i.i = trunc i64 %117 to i32
  %118 = ptrtoint ptr %bucket_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bucket_size.i.i.i.i, align 8
  %div18.i.i1219.i.i = lshr i32 %119, 3
  %120 = tail call i32 @llvm.umin.i32(i32 %div18.i.i1219.i.i, i32 2048) #18
  %shl.i1220.i.i = shl nuw nsw i32 %120, 12
  %sub875.i.i = add nsw i32 %shl.i1220.i.i, -40
  %div876.i.i = udiv i32 %sub875.i.i, 3
  %add877.i.i = add i32 %conv872.i.i, -1
  %sub878.i.i = add i32 %add877.i.i, %div876.i.i
  %div883.i.i = udiv i32 %sub878.i.i, %div876.i.i
  %add.ptr.i.i = getelementptr i64, ptr %115, i32 %div883.i.i
  %prio_last_buckets.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 11
  %121 = ptrtoint ptr %prio_last_buckets.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr.i.i, ptr %prio_last_buckets.i.i, align 4
  %122 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %buckets.i.i, align 8
  %first_bucket.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 13
  %124 = ptrtoint ptr %first_bucket.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %first_bucket.i.i, align 4
  %conv886.i.i = zext i16 %125 to i32
  %add.ptr887.i.i = getelementptr %struct.bucket, ptr %123, i32 %conv886.i.i
  %add.ptr8911238.i.i = getelementptr %struct.bucket, ptr %123, i32 %conv872.i.i
  %cmp8921239.i.i = icmp ult ptr %add.ptr887.i.i, %add.ptr8911238.i.i
  br i1 %cmp8921239.i.i, label %if.end868.i.i.for.body.i.i_crit_edge, label %if.end868.i.i.if.end18.i_crit_edge

if.end868.i.i.if.end18.i_crit_edge:               ; preds = %if.end868.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.end868.i.i.for.body.i.i_crit_edge:             ; preds = %if.end868.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end868.i.i.for.body.i.i_crit_edge
  %b.01240.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr887.i.i, %if.end868.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b.01240.i.i, i32 noundef 4) #18
  %126 = ptrtoint ptr %b.01240.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 0, ptr %b.01240.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.bucket, ptr %b.01240.i.i, i32 1
  %127 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %buckets.i.i, align 8
  %129 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %39, align 8
  %idx.ext.i.i = trunc i64 %130 to i32
  %add.ptr891.i.i = getelementptr %struct.bucket, ptr %128, i32 %idx.ext.i.i
  %cmp892.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr891.i.i
  br i1 %cmp892.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end18.i_crit_edge

for.body.i.i.if.end18.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

err_prio_buckets_alloc.i.i:                       ; preds = %if.then867.i.i, %if.end8.i.i.i.i.err_prio_buckets_alloc.i.i_crit_edge
  %err.0.i.i = phi ptr [ @.str.228, %if.then867.i.i ], [ @.str.227, %if.end8.i.i.i.i.err_prio_buckets_alloc.i.i_crit_edge ]
  %131 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buckets.i.i, align 8
  tail call void @vfree(ptr noundef %132) #18
  br label %do.body896.i.i

do.body896.i.i:                                   ; preds = %err_prio_buckets_alloc.i.i, %if.end831.i.i.do.body896.i.i_crit_edge
  %err.1.i.i = phi ptr [ %err.0.i.i, %err_prio_buckets_alloc.i.i ], [ @.str.226, %if.end831.i.i.do.body896.i.i_crit_edge ]
  %133 = ptrtoint ptr %data825.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data825.i.i, align 4
  tail call void @kvfree(ptr noundef %134) #18
  %135 = ptrtoint ptr %data825.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %data825.i.i, align 4
  br label %do.body903.i.i

do.body903.i.i:                                   ; preds = %do.body896.i.i, %if.end815.i.i.do.body903.i.i_crit_edge
  %err.2.i.i = phi ptr [ %err.1.i.i, %do.body896.i.i ], [ @.str.225, %if.end815.i.i.do.body903.i.i_crit_edge ]
  %136 = ptrtoint ptr %data809.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data809.i.i, align 8
  tail call void @kvfree(ptr noundef %137) #18
  %138 = ptrtoint ptr %data809.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %data809.i.i, align 8
  br label %do.body910.i.i

do.body910.i.i:                                   ; preds = %do.body903.i.i, %cond.end797.i.i.do.body910.i.i_crit_edge
  %err.3.i.i = phi ptr [ %err.2.i.i, %do.body903.i.i ], [ @.str.224, %cond.end797.i.i.do.body910.i.i_crit_edge ]
  %139 = ptrtoint ptr %data658.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data658.i.i, align 4
  tail call void @kvfree(ptr noundef %140) #18
  %141 = ptrtoint ptr %data658.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %data658.i.i, align 4
  br label %do.body919.i.i

do.body919.i.i:                                   ; preds = %do.body910.i.i, %cond.end642.i.i.do.body919.i.i_crit_edge
  %err.4.i.i = phi ptr [ %err.3.i.i, %do.body910.i.i ], [ @.str.223, %cond.end642.i.i.do.body919.i.i_crit_edge ]
  %142 = ptrtoint ptr %data485.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data485.i.i, align 8
  tail call void @kvfree(ptr noundef %143) #18
  %144 = ptrtoint ptr %data485.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %data485.i.i, align 8
  br label %do.body928.i.i

do.body928.i.i:                                   ; preds = %do.body919.i.i, %cond.end469.i.i.do.body928.i.i_crit_edge
  %err.5.i.i = phi ptr [ %err.4.i.i, %do.body919.i.i ], [ @.str.222, %cond.end469.i.i.do.body928.i.i_crit_edge ]
  %145 = ptrtoint ptr %data312.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data312.i.i, align 4
  tail call void @kvfree(ptr noundef %146) #18
  %147 = ptrtoint ptr %data312.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %data312.i.i, align 4
  br label %err_free.i.i

err_free.i.i:                                     ; preds = %do.body928.i.i, %cond.end296.i.i.err_free.i.i_crit_edge
  %err.6.i.i = phi ptr [ %err.5.i.i, %do.body928.i.i ], [ @.str.221, %cond.end296.i.i.err_free.i.i_crit_edge ]
  %148 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i.i, align 8
  tail call void @kvfree(ptr noundef %149) #18
  %150 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %data.i.i, align 8
  tail call void @module_put(ptr noundef null) #18
  %tobool946.not.i.i = icmp eq ptr %err.6.i.i, null
  br i1 %tobool946.not.i.i, label %if.then10.thread.i, label %if.then10.thread75.i

if.then10.thread75.i:                             ; preds = %err_free.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %151 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bdev2.i, align 4
  %call952.i78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.229, ptr noundef %152, ptr noundef nonnull %err.6.i.i) #22
  tail call void @blkdev_put(ptr noundef %20, i32 noundef 131) #18
  br label %register_cache.exit

if.then10.thread.i:                               ; preds = %err_free.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @blkdev_put(ptr noundef %20, i32 noundef 131) #18
  br label %register_cache.exit

if.then10.i:                                      ; preds = %cond.end178.i.i.if.then10.i_crit_edge, %cond.end39.i.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  %err.7.ph.i.i = phi ptr [ @.str.220, %cond.end178.i.i.if.then10.i_crit_edge ], [ @.str.219, %cond.end39.i.i.if.then10.i_crit_edge ], [ @.str.219, %if.end.i.if.then10.i_crit_edge ]
  %switch.selectcmp32 = phi ptr [ @.str.211, %cond.end178.i.i.if.then10.i_crit_edge ], [ @.str.212, %cond.end39.i.i.if.then10.i_crit_edge ], [ @.str.212, %if.end.i.if.then10.i_crit_edge ]
  tail call void @module_put(ptr noundef null) #18
  %153 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bdev2.i, align 4
  %call952.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.229, ptr noundef %154, ptr noundef nonnull %err.7.ph.i.i) #22
  tail call void @blkdev_put(ptr noundef %20, i32 noundef 131) #18
  br label %register_cache.exit

if.end18.i:                                       ; preds = %for.body.i.i.if.end18.i_crit_edge, %if.end868.i.i.if.end18.i_crit_edge
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 10
  %call20.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i.i, ptr noundef %bd_device.i, ptr noundef nonnull @.str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end18.i.err31.thread88.i_crit_edge

if.end18.i.err31.thread88.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err31.thread88.i

if.end23.i:                                       ; preds = %if.end18.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i.i) #18
  %155 = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 4
  %156 = call ptr @memset(ptr %buf.i.i, i32 255, i32 12)
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i64.i.for.cond.i.i_crit_edge, %if.end23.i
  %.pn.in.i.i = phi ptr [ @bch_cache_sets, %if.end23.i ], [ %.pn.i.i, %for.body.i64.i.for.cond.i.i_crit_edge ]
  %157 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @bch_cache_sets
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i64.i

for.body.i64.i:                                   ; preds = %for.cond.i.i
  %set_uuid.i.i = getelementptr i8, ptr %.pn.i.i, i32 46940
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %set_uuid.i.i, ptr noundef dereferenceable(16) %155, i32 16) #24
  %tobool.not.i63.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i63.i, label %if.then.i.i29, label %for.body.i64.i.for.cond.i.i_crit_edge

for.body.i64.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i

if.then.i.i29:                                    ; preds = %for.body.i64.i
  %c.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -72
  %cache.i.i = getelementptr i8, ptr %.pn.i.i, i32 1116
  %158 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cache.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %159, null
  br i1 %tobool2.not.i.i, label %if.then.i.i29.found.i.i_crit_edge, label %if.then.i.i29.register_cache_set.exit.thread.i_crit_edge

if.then.i.i29.register_cache_set.exit.thread.i_crit_edge: ; preds = %if.then.i.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %register_cache_set.exit.thread.i

if.then.i.i29.found.i.i_crit_edge:                ; preds = %if.then.i.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %found.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %call10.i.i = tail call ptr @bch_cache_set_alloc(ptr noundef %sb1.i) #18
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %for.end.i.i.register_cache_set.exit.thread.i_crit_edge, label %if.end13.i.i

for.end.i.i.register_cache_set.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %register_cache_set.exit.thread.i

if.end13.i.i:                                     ; preds = %for.end.i.i
  %kobj.i65.i = getelementptr inbounds %struct.cache_set, ptr %call10.i.i, i32 0, i32 2
  %160 = load ptr, ptr @bcache_kobj, align 4
  %set_uuid14.i.i = getelementptr inbounds %struct.cache_set, ptr %call10.i.i, i32 0, i32 56
  %call16.i.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i65.i, ptr noundef %160, ptr noundef nonnull @.str.231, ptr noundef %set_uuid14.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false.i.i, label %if.end13.i.i.err53.i.i_crit_edge

if.end13.i.i.err53.i.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err53.i.i

lor.lhs.false.i.i:                                ; preds = %if.end13.i.i
  %internal.i.i = getelementptr inbounds %struct.cache_set, ptr %call10.i.i, i32 0, i32 3
  %call19.i.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %internal.i.i, ptr noundef %kobj.i65.i, ptr noundef nonnull @.str.232) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %lor.lhs.false.i.i.err53.i.i_crit_edge

lor.lhs.false.i.i.err53.i.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err53.i.i

if.end22.i.i:                                     ; preds = %lor.lhs.false.i.i
  %accounting.i.i = getelementptr inbounds %struct.cache_set, ptr %call10.i.i, i32 0, i32 5
  %call24.i.i = tail call i32 @bch_cache_accounting_add_kobjs(ptr noundef %accounting.i.i, ptr noundef %kobj.i65.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end22.i.i.err53.i.i_crit_edge

if.end22.i.i.err53.i.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err53.i.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  tail call void @bch_debug_init_cache_set(ptr noundef nonnull %call10.i.i) #18
  %list28.i.i = getelementptr inbounds %struct.cache_set, ptr %call10.i.i, i32 0, i32 1
  %161 = load ptr, ptr @bch_cache_sets, align 4
  %call.i.i.i66.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list28.i.i, ptr noundef nonnull @bch_cache_sets, ptr noundef %161) #18
  br i1 %call.i.i.i66.i, label %if.end.i.i.i67.i, label %if.end27.i.i.found.i.i_crit_edge

if.end27.i.i.found.i.i_crit_edge:                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %found.i.i

if.end.i.i.i67.i:                                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %list28.i.i, ptr %prev1.i.i.i.i, align 4
  %163 = ptrtoint ptr %list28.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %161, ptr %list28.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %call10.i.i, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @bch_cache_sets, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %list28.i.i, ptr @bch_cache_sets, align 4
  br label %found.i.i

found.i.i:                                        ; preds = %if.end.i.i.i67.i, %if.end27.i.i.found.i.i_crit_edge, %if.then.i.i29.found.i.i_crit_edge
  %c.1.i.i = phi ptr [ %c.0.le.i.i, %if.then.i.i29.found.i.i_crit_edge ], [ %call10.i.i, %if.end27.i.i.found.i.i_crit_edge ], [ %call10.i.i, %if.end.i.i.i67.i ]
  %err.0.i68.i = phi ptr [ @.str.155, %if.then.i.i29.found.i.i_crit_edge ], [ @.str.199, %if.end27.i.i.found.i.i_crit_edge ], [ @.str.199, %if.end.i.i.i67.i ]
  %nr_this_dev.i.i = getelementptr inbounds %struct.cache, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 0, i32 3
  %165 = ptrtoint ptr %nr_this_dev.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %nr_this_dev.i.i, align 4
  %conv.i.i = zext i16 %166 to i32
  %call31.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i.i, ptr noundef nonnull @.str.233, i32 noundef %conv.i.i) #18
  %kobj33.i.i = getelementptr inbounds %struct.cache_set, ptr %c.1.i.i, i32 0, i32 2
  %call34.i.i = tail call i32 @sysfs_create_link(ptr noundef %kobj.i.i, ptr noundef %kobj33.i.i, ptr noundef nonnull @.str.234) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %lor.lhs.false36.i.i, label %found.i.i.err53.i.i_crit_edge

found.i.i.err53.i.i_crit_edge:                    ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err53.i.i

lor.lhs.false36.i.i:                              ; preds = %found.i.i
  %call40.i.i = call i32 @sysfs_create_link(ptr noundef %kobj33.i.i, ptr noundef %kobj.i.i, ptr noundef nonnull %buf.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i69.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i69.i, label %if.end43.i.i, label %lor.lhs.false36.i.i.err53.i.i_crit_edge

lor.lhs.false36.i.i.err53.i.i_crit_edge:          ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err53.i.i

if.end43.i.i:                                     ; preds = %lor.lhs.false36.i.i
  %call45.i.i = call ptr @kobject_get(ptr noundef %kobj.i.i) #18
  %167 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %c.1.i.i, ptr %call7.i.i, align 8
  %cache47.i.i = getelementptr inbounds %struct.cache_set, ptr %c.1.i.i, i32 0, i32 9
  %168 = ptrtoint ptr %cache47.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call7.i.i, ptr %cache47.i.i, align 4
  %call48.i.i = call fastcc i32 @run_cache_set(ptr noundef %c.1.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp49.i.i = icmp slt i32 %call48.i.i, 0
  br i1 %cmp49.i.i, label %if.end43.i.i.err53.i.i_crit_edge, label %register_cache.exit.thread

if.end43.i.i.err53.i.i_crit_edge:                 ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err53.i.i

err53.i.i:                                        ; preds = %if.end43.i.i.err53.i.i_crit_edge, %lor.lhs.false36.i.i.err53.i.i_crit_edge, %found.i.i.err53.i.i_crit_edge, %if.end22.i.i.err53.i.i_crit_edge, %lor.lhs.false.i.i.err53.i.i_crit_edge, %if.end13.i.i.err53.i.i_crit_edge
  %c.2.i.i = phi ptr [ %c.1.i.i, %found.i.i.err53.i.i_crit_edge ], [ %c.1.i.i, %lor.lhs.false36.i.i.err53.i.i_crit_edge ], [ %c.1.i.i, %if.end43.i.i.err53.i.i_crit_edge ], [ %call10.i.i, %if.end13.i.i.err53.i.i_crit_edge ], [ %call10.i.i, %lor.lhs.false.i.i.err53.i.i_crit_edge ], [ %call10.i.i, %if.end22.i.i.err53.i.i_crit_edge ]
  %err.1.i70.i = phi ptr [ %err.0.i68.i, %found.i.i.err53.i.i_crit_edge ], [ %err.0.i68.i, %lor.lhs.false36.i.i.err53.i.i_crit_edge ], [ @.str.235, %if.end43.i.i.err53.i.i_crit_edge ], [ @.str.199, %if.end13.i.i.err53.i.i_crit_edge ], [ @.str.199, %lor.lhs.false.i.i.err53.i.i_crit_edge ], [ @.str.199, %if.end22.i.i.err53.i.i_crit_edge ]
  call void @bch_cache_set_unregister(ptr noundef %c.2.i.i) #18
  br label %register_cache_set.exit.thread.i

register_cache_set.exit.thread.i:                 ; preds = %err53.i.i, %for.end.i.i.register_cache_set.exit.thread.i_crit_edge, %if.then.i.i29.register_cache_set.exit.thread.i_crit_edge
  %retval.0.i71.ph.i = phi ptr [ @.str.155, %for.end.i.i.register_cache_set.exit.thread.i_crit_edge ], [ @.str.230, %if.then.i.i29.register_cache_set.exit.thread.i_crit_edge ], [ %err.1.i70.i, %err53.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i) #18
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  br label %err31.thread88.i

err31.thread88.i:                                 ; preds = %register_cache_set.exit.thread.i, %if.end18.i.err31.thread88.i_crit_edge
  %err.0.ph.i = phi ptr [ %retval.0.i71.ph.i, %register_cache_set.exit.thread.i ], [ @.str.214, %if.end18.i.err31.thread88.i_crit_edge ]
  call void @kobject_put(ptr noundef %kobj.i.i) #18
  br label %register_cache.exit

register_cache.exit.thread:                       ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i) #18
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %169 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bdev2.i, align 4
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, ptr noundef %170) #22
  call void @kobject_put(ptr noundef %kobj.i.i) #18
  br label %if.end12

register_cache.exit:                              ; preds = %err31.thread88.i, %if.then10.i, %if.then10.thread.i, %if.then10.thread75.i
  %err.186.i = phi ptr [ %err.0.ph.i, %err31.thread88.i ], [ @.str.211, %if.then10.thread75.i ], [ @.str.211, %if.then10.thread.i ], [ %switch.selectcmp32, %if.then10.i ]
  %171 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bdev2.i, align 4
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.216, ptr noundef %172, ptr noundef nonnull %err.186.i) #22
  br label %do.end

do.end:                                           ; preds = %register_cache.exit, %put_page.exit
  %path = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 1
  %173 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %path, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198, ptr noundef %174) #22
  br label %if.end12

if.end12:                                         ; preds = %do.end, %register_cache.exit.thread
  %sb13 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 2
  %175 = ptrtoint ptr %sb13 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sb13, align 4
  call void @kfree(ptr noundef %176) #18
  %path14 = getelementptr inbounds %struct.async_reg_args, ptr %work, i32 0, i32 1
  %177 = ptrtoint ptr %path14 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %path14, align 4
  call void @kfree(ptr noundef %178) #18
  call void @kfree(ptr noundef %work) #18
  call void @module_put(ptr noundef null) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_cache_accounting_add_kobjs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_flush(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  tail call fastcc void @bcache_device_unlink(ptr noundef %cl)
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %accounting = getelementptr i8, ptr %cl, i32 52472
  tail call void @bch_cache_accounting_destroy(ptr noundef %accounting) #18
  %kobj = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 1
  tail call void @kobject_del(ptr noundef %kobj) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #18
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %1 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cached_dev_free, ptr %fn1.i, align 4
  %2 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !592
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_detach_finish(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -3352
  %c1 = getelementptr i8, ptr %w, i32 -3136
  %0 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c1, align 8
  %flags = getelementptr i8, ptr %w, i32 -3112
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body6, label %do.body12, !prof !590

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1144, 0\0A.popsection", ""() #18, !srcloc !629
  unreachable

do.body12:                                        ; preds = %entry
  %count = getelementptr i8, ptr %w, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #18
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %do.end30, label %do.body22, !prof !600

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1145, 0\0A.popsection", ""() #18, !srcloc !630
  unreachable

do.end30:                                         ; preds = %do.body12
  %call33 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end30.if.end36_crit_edge, label %do.end30.do.body.i_crit_edge

do.end30.do.body.i_crit_edge:                     ; preds = %do.end30
  br label %do.body.i

do.end30.if.end36_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.end30.do.body.i_crit_edge
  %time_out.0.i = phi i32 [ %dec.i, %if.end.i.do.body.i_crit_edge ], [ 6000, %do.end30.do.body.i_crit_edge ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.body.i.cancel_writeback_rate_update_dwork.exit_crit_edge, label %if.end.i

do.body.i.cancel_writeback_rate_update_dwork.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cancel_writeback_rate_update_dwork.exit

if.end.i:                                         ; preds = %do.body.i
  %dec.i = add nsw i32 %time_out.0.i, -1
  %call1.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #18
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.end6.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #22
  br label %cancel_writeback_rate_update_dwork.exit

cancel_writeback_rate_update_dwork.exit:          ; preds = %do.end6.i, %do.body.i.cancel_writeback_rate_update_dwork.exit_crit_edge
  %writeback_rate_update.i = getelementptr i8, ptr %w, i32 168
  %call9.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %writeback_rate_update.i) #18
  br label %if.end36

if.end36:                                         ; preds = %cancel_writeback_rate_update_dwork.exit, %do.end30.if.end36_crit_edge
  %writeback_thread = getelementptr i8, ptr %w, i32 324
  %10 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %writeback_thread, align 4
  %tobool.not.i67 = icmp eq ptr %11, null
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i67, %cmp.i
  br i1 %spec.select.i, label %if.end36.if.end42_crit_edge, label %if.then38

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  %call40 = tail call i32 @kthread_stop(ptr noundef nonnull %11) #18
  %12 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %writeback_thread, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end36.if.end42_crit_edge
  %disk = getelementptr i8, ptr %w, i32 -3344
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  tail call fastcc void @bcache_device_detach(ptr noundef %disk)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.__list_del_entry.exit.i_crit_edge

if.end42.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %w, i32 -3348
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end42.__list_del_entry.exit.i_crit_edge
  %19 = load ptr, ptr @uncached_devices, align 4
  %call.i.i.i68 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef nonnull @uncached_devices, ptr noundef %19) #18
  br i1 %call.i.i.i68, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %prev1.i.i2.i, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %add.ptr, align 4
  %prev3.i.i.i = getelementptr i8, ptr %w, i32 -3348
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @uncached_devices, ptr %prev3.i.i.i, align 4
  store volatile ptr %add.ptr, ptr @uncached_devices, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cached_devs.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %cached_devs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %dc.012.i = load ptr, ptr %cached_devs.i, align 4
  %cmp.not13.i = icmp eq ptr %dc.012.i, %cached_devs.i
  br i1 %cmp.not13.i, label %list_move.exit.calc_cached_dev_sectors.exit_crit_edge, label %list_move.exit.for.body.i_crit_edge

list_move.exit.for.body.i_crit_edge:              ; preds = %list_move.exit
  br label %for.body.i

list_move.exit.calc_cached_dev_sectors.exit_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %calc_cached_dev_sectors.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_move.exit.for.body.i_crit_edge
  %dc.015.i = phi ptr [ %dc.0.i, %for.body.i.for.body.i_crit_edge ], [ %dc.012.i, %list_move.exit.for.body.i_crit_edge ]
  %sectors.014.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_move.exit.for.body.i_crit_edge ]
  %bdev.i = getelementptr inbounds %struct.cached_dev, ptr %dc.015.i, i32 0, i32 2
  %24 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %add.i = add i64 %27, %sectors.014.i
  %28 = ptrtoint ptr %dc.015.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %dc.0.i = load ptr, ptr %dc.015.i, align 4
  %cmp.not.i69 = icmp eq ptr %dc.0.i, %cached_devs.i
  br i1 %cmp.not.i69, label %for.body.i.calc_cached_dev_sectors.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.calc_cached_dev_sectors.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %calc_cached_dev_sectors.exit

calc_cached_dev_sectors.exit:                     ; preds = %for.body.i.calc_cached_dev_sectors.exit_crit_edge, %list_move.exit.calc_cached_dev_sectors.exit_crit_edge
  %sectors.0.lcssa.i = phi i64 [ 0, %list_move.exit.calc_cached_dev_sectors.exit_crit_edge ], [ %add.i, %for.body.i.calc_cached_dev_sectors.exit_crit_edge ]
  %cached_dev_sectors.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %cached_dev_sectors.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sectors.0.lcssa.i, ptr %cached_dev_sectors.i, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #18
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %bdev = getelementptr i8, ptr %w, i32 -2476
  %30 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef %31) #22
  tail call void @closure_put(ptr noundef %disk) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cached_dev_request_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cached_dev_writeback_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_free(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cl, i32 -8
  %flags = getelementptr %struct.bcache_device, ptr %cl, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %time_out.0.i = phi i32 [ %dec.i, %if.end.i.do.body.i_crit_edge ], [ 6000, %entry.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body.i.cancel_writeback_rate_update_dwork.exit_crit_edge, label %if.end.i

do.body.i.cancel_writeback_rate_update_dwork.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cancel_writeback_rate_update_dwork.exit

if.end.i:                                         ; preds = %do.body.i
  %dec.i = add nsw i32 %time_out.0.i, -1
  %call1.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #18
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.end6.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #22
  br label %cancel_writeback_rate_update_dwork.exit

cancel_writeback_rate_update_dwork.exit:          ; preds = %do.end6.i, %do.body.i.cancel_writeback_rate_update_dwork.exit_crit_edge
  %writeback_rate_update.i = getelementptr i8, ptr %cl, i32 3512
  %call9.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %writeback_rate_update.i) #18
  br label %if.end

if.end:                                           ; preds = %cancel_writeback_rate_update_dwork.exit, %entry.if.end_crit_edge
  %writeback_thread = getelementptr i8, ptr %cl, i32 3668
  %3 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %writeback_thread, align 4
  %tobool.not.i48 = icmp eq ptr %4, null
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i48, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 @kthread_stop(ptr noundef nonnull %4) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %status_update_thread = getelementptr i8, ptr %cl, i32 47792
  %5 = ptrtoint ptr %status_update_thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %status_update_thread, align 8
  %tobool.not.i49 = icmp eq ptr %6, null
  %cmp.i50 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i51 = or i1 %tobool.not.i49, %cmp.i50
  br i1 %spec.select.i51, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 @kthread_stop(ptr noundef nonnull %6) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %running = getelementptr i8, ptr %cl, i32 3388
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running, i32 noundef 4) #18
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.then13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %bdev = getelementptr i8, ptr %cl, i32 868
  %9 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev, align 4
  %disk15 = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 5
  %11 = ptrtoint ptr %disk15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disk15, align 4
  tail call void @bd_unlink_disk_holder(ptr noundef %10, ptr noundef %12) #18
  %13 = ptrtoint ptr %disk15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk15, align 4
  tail call void @del_gendisk(ptr noundef %14) #18
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10.if.end18_crit_edge
  tail call fastcc void @bcache_device_free(ptr noundef %cl)
  %call.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #18
  br i1 %call.i.i52, label %if.end.i.i, label %if.end18.list_del.exit_crit_edge

if.end18.list_del.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %cl, i32 -4
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end18.list_del.exit_crit_edge
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %cl, i32 -4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %sb_disk = getelementptr i8, ptr %cl, i32 3088
  %23 = ptrtoint ptr %sb_disk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sb_disk, align 8
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %list_del.exit.if.end25_crit_edge, label %if.then21

list_del.exit.if.end25_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then21:                                        ; preds = %list_del.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %24 to i32
  %sub = add i32 %26, 1073741824
  %shr = lshr i32 %sub, 12
  %27 = getelementptr %struct.page, ptr %25, i32 %shr, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i53, label %if.then.i.i, !prof !600

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i53:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr24 = getelementptr %struct.page, ptr %25, i32 %shr
  %30 = ptrtoint ptr %add.ptr24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i53, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i53 ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !590

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.138) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !617
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !596
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !597
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cached_dev_free, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !593

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end25_crit_edge

folio_put_testzero.exit.i.i.if.end25_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %31) #18
  br label %if.end25

if.end25:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end25_crit_edge, %list_del.exit.if.end25_crit_edge
  %bdev26 = getelementptr i8, ptr %cl, i32 868
  %35 = ptrtoint ptr %bdev26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev26, align 4
  %tobool.not.i54 = icmp eq ptr %36, null
  %cmp.i55 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %spec.select.i56 = or i1 %tobool.not.i54, %cmp.i55
  br i1 %spec.select.i56, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @blkdev_put(ptr noundef nonnull %36, i32 noundef 131) #18
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @unregister_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  %kobj = getelementptr inbounds %struct.bcache_device, ptr %cl, i32 0, i32 1
  tail call void @kobject_put(ptr noundef %kobj) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cached_dev_submit_bio(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_debug_init_cache_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_cache_set(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %cl = alloca %struct.closure, align 4
  %journal = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %journal) #18
  %2 = getelementptr inbounds %struct.list_head, ptr %journal, i32 0, i32 1
  %3 = ptrtoint ptr %journal to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %journal, ptr %journal, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %journal, ptr %2, align 4
  %5 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #18
  %6 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  %7 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %conv = trunc i64 %9 to i32
  %nbuckets1 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 41
  %10 = ptrtoint ptr %nbuckets1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %nbuckets1, align 8
  %sectors_to_gc.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 47
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 1, i32 11, i32 0, i32 4
  %13 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bucket_size.i, align 8
  %mul.i = mul i32 %14, %conv
  %div3.i = lshr i32 %mul.i, 4
  %call.i.i.i270 = call zeroext i1 @__kasan_check_write(ptr noundef %sectors_to_gc.i, i32 noundef 4) #18
  %15 = ptrtoint ptr %sectors_to_gc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %div3.i, ptr %sectors_to_gc.i, align 4
  %16 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache, align 4
  %flags.i = getelementptr inbounds %struct.cache, ptr %17, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %for.body.lr.ph, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i32 @bch_journal_read(ptr noundef %c, ptr noundef nonnull %journal) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body, label %if.then.err177_crit_edge

if.then.err177_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_cache_set.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_cache_set, %if.then11)) #18
          to label %do.end [label %if.then11], !srcloc !593

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_cache_set.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.237) #18
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %20 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %journal, align 4
  %cmp.i.not = icmp eq ptr %21, %journal
  br i1 %cmp.i.not, label %do.end.err177_crit_edge, label %if.end16

do.end.err177_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end16:                                         ; preds = %do.end
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %j19 = getelementptr inbounds %struct.journal_replay, ptr %23, i32 0, i32 2
  %disk_buckets.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %disk_buckets.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk_buckets.i, align 4
  %data.i = getelementptr inbounds %struct.prio_set, ptr %25, i32 0, i32 6
  %bucket_size.i.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11, i32 0, i32 4
  %26 = ptrtoint ptr %bucket_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bucket_size.i.i.i, align 8
  %div18.i.i.i = lshr i32 %27, 3
  %28 = call i32 @llvm.umin.i32(i32 %div18.i.i.i, i32 2048) #18
  %shl.i.i = shl nuw nsw i32 %28, 12
  %sub.i = add nsw i32 %shl.i.i, -40
  %div.i = udiv i32 %sub.i, 3
  %add.ptr.i = getelementptr %struct.bucket_disk, ptr %data.i, i32 %div.i
  %buckets.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buckets.i, align 8
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %7, align 8
  %idx.ext60.i = trunc i64 %32 to i32
  %add.ptr361.i = getelementptr %struct.bucket, ptr %30, i32 %idx.ext60.i
  %cmp62.i = icmp ult ptr %30, %add.ptr361.i
  br i1 %cmp62.i, label %for.body.lr.ph.i, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

for.body.lr.ph.i:                                 ; preds = %if.end16
  %nr_this_dev = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11, i32 0, i32 3
  %33 = ptrtoint ptr %nr_this_dev to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nr_this_dev, align 4
  %idxprom = zext i16 %34 to i32
  %arrayidx = getelementptr %struct.journal_replay, ptr %23, i32 0, i32 2, i32 10, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx, align 8
  %prio_buckets.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 10
  %prio_last_buckets.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 11
  %magic.i = getelementptr inbounds %struct.prio_set, ptr %25, i32 0, i32 1
  %37 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 4
  %next_bucket.i = getelementptr inbounds %struct.prio_set, ptr %25, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bucket.addr.066.i = phi i64 [ %36, %for.body.lr.ph.i ], [ %bucket.addr.1.i, %if.end26.i.for.body.i_crit_edge ]
  %bucket_nr.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bucket_nr.1.i, %if.end26.i.for.body.i_crit_edge ]
  %b.064.i = phi ptr [ %30, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end26.i.for.body.i_crit_edge ]
  %d.063.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr29.i, %if.end26.i.for.body.i_crit_edge ]
  %cmp4.i = icmp eq ptr %d.063.i, %add.ptr.i
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.if.end26.i_crit_edge

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i

if.then.i:                                        ; preds = %for.body.i
  %38 = ptrtoint ptr %prio_buckets.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prio_buckets.i, align 8
  %arrayidx.i = getelementptr i64, ptr %39, i32 %bucket_nr.065.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %bucket.addr.066.i, ptr %arrayidx.i, align 8
  %41 = ptrtoint ptr %prio_last_buckets.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prio_last_buckets.i, align 4
  %arrayidx5.i = getelementptr i64, ptr %42, i32 %bucket_nr.065.i
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %bucket.addr.066.i, ptr %arrayidx5.i, align 8
  %inc.i = add i32 %bucket_nr.065.i, 1
  call fastcc void @prio_io(ptr noundef %1, i64 noundef %bucket.addr.066.i, i32 noundef 0) #18
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %25, align 8
  %46 = ptrtoint ptr %bucket_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bucket_size.i.i.i, align 8
  %div18.i.i57.i = lshr i32 %47, 3
  %48 = call i32 @llvm.umin.i32(i32 %div18.i.i57.i, i32 2048) #18
  %shl.i58.i = shl nuw nsw i32 %48, 12
  %sub8.i = add nsw i32 %shl.i58.i, -8
  %call.i.i = call i64 @crc64_be(i64 noundef -1, ptr noundef %magic.i, i32 noundef %sub8.i) #21
  %xor.i.i = xor i64 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %xor.i.i)
  %cmp10.not.i = icmp eq i64 %45, %xor.i.i
  br i1 %cmp10.not.i, label %if.end.i, label %if.then.i.prio_read.exit_crit_edge

if.then.i.prio_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %prio_read.exit

if.end.i:                                         ; preds = %if.then.i
  %49 = ptrtoint ptr %magic.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %magic.i, align 8
  %51 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %37, align 8
  %xor.i59.i = xor i64 %52, 7444697984449871761
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %xor.i59.i)
  %cmp16.not.i = icmp eq i64 %50, %xor.i59.i
  br i1 %cmp16.not.i, label %if.end23.i, label %if.end.i.prio_read.exit_crit_edge

if.end.i.prio_read.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %prio_read.exit

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %next_bucket.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %next_bucket.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end23.i, %for.body.i.if.end26.i_crit_edge
  %d.1.i = phi ptr [ %data.i, %if.end23.i ], [ %d.063.i, %for.body.i.if.end26.i_crit_edge ]
  %bucket_nr.1.i = phi i32 [ %inc.i, %if.end23.i ], [ %bucket_nr.065.i, %for.body.i.if.end26.i_crit_edge ]
  %bucket.addr.1.i = phi i64 [ %54, %if.end23.i ], [ %bucket.addr.066.i, %for.body.i.if.end26.i_crit_edge ]
  %55 = ptrtoint ptr %d.1.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %d.1.i, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56) #18
  %prio27.i = getelementptr inbounds %struct.bucket, ptr %b.064.i, i32 0, i32 1
  %58 = ptrtoint ptr %prio27.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %prio27.i, align 4
  %gen.i = getelementptr inbounds %struct.bucket_disk, ptr %d.1.i, i32 0, i32 1
  %59 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %gen.i, align 1
  %last_gc.i = getelementptr inbounds %struct.bucket, ptr %b.064.i, i32 0, i32 3
  %61 = ptrtoint ptr %last_gc.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %last_gc.i, align 1
  %gen28.i = getelementptr inbounds %struct.bucket, ptr %b.064.i, i32 0, i32 2
  %62 = ptrtoint ptr %gen28.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %60, ptr %gen28.i, align 2
  %incdec.ptr.i = getelementptr %struct.bucket, ptr %b.064.i, i32 1
  %incdec.ptr29.i = getelementptr %struct.bucket_disk, ptr %d.1.i, i32 1
  %63 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buckets.i, align 8
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %7, align 8
  %idx.ext.i = trunc i64 %66 to i32
  %add.ptr3.i = getelementptr %struct.bucket, ptr %64, i32 %idx.ext.i
  %cmp.i271 = icmp ult ptr %incdec.ptr.i, %add.ptr3.i
  br i1 %cmp.i271, label %if.end26.i.for.body.i_crit_edge, label %if.end26.i.if.end24_crit_edge

if.end26.i.if.end24_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

prio_read.exit:                                   ; preds = %if.end.i.prio_read.exit_crit_edge, %if.then.i.prio_read.exit_crit_edge
  %.str.260.sink.i = phi ptr [ @.str.257, %if.then.i.prio_read.exit_crit_edge ], [ @.str.260, %if.end.i.prio_read.exit_crit_edge ]
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.260.sink.i, ptr noundef nonnull @.str.258) #22
  br label %err177

if.end24:                                         ; preds = %if.end26.i.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %67 = getelementptr inbounds %struct.journal_replay, ptr %23, i32 0, i32 2, i32 7
  %call25 = call zeroext i1 @__bch_btree_ptr_invalid(ptr noundef %c, ptr noundef %67) #18
  br i1 %call25, label %if.end24.err177_crit_edge, label %if.end27

if.end24.err177_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end27:                                         ; preds = %if.end24
  %btree_level = getelementptr inbounds %struct.journal_replay, ptr %23, i32 0, i32 2, i32 8
  %68 = ptrtoint ptr %btree_level to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %btree_level, align 8
  %conv28 = zext i16 %69 to i32
  %call29 = call ptr @bch_btree_node_get(ptr noundef %c, ptr noundef null, ptr noundef %67, i32 noundef %conv28, i1 noundef zeroext true, ptr noundef null) #18
  %root = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 52
  %70 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call29, ptr %root, align 4
  %tobool.not.i = icmp eq ptr %call29, null
  %cmp.i272 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i272
  br i1 %spec.select.i, label %if.end27.err177_crit_edge, label %if.end33

if.end27.err177_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end33:                                         ; preds = %if.end27
  %list = getelementptr inbounds %struct.btree, ptr %call29, i32 0, i32 13
  %call.i.i273 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #18
  br i1 %call.i.i273, label %if.end.i.i, label %if.end33.list_del_init.exit_crit_edge

if.end33.list_del_init.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.btree, ptr %call29, i32 0, i32 13, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end33.list_del_init.exit_crit_edge
  %77 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btree, ptr %call29, i32 0, i32 13, i32 1
  %78 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %list, ptr %prev.i3.i, align 4
  %79 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %root, align 4
  %seq.i = getelementptr inbounds %struct.btree, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %seq.i, align 8
  %inc.i274 = add i32 %82, 1
  store i32 %inc.i274, ptr %seq.i, align 8
  %lock.i = getelementptr inbounds %struct.btree, ptr %80, i32 0, i32 3
  call void @up_write(ptr noundef %lock.i) #18
  %call36 = call fastcc ptr @uuid_read(ptr noundef %c, ptr noundef %j19, ptr noundef nonnull %cl)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end39, label %list_del_init.exit.err177_crit_edge

list_del_init.exit.err177_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end39:                                         ; preds = %list_del_init.exit
  %call40 = call i32 @bch_btree_check(ptr noundef %c) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.err177_crit_edge

if.end39.err177_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end43:                                         ; preds = %if.end39
  call void @bch_journal_mark(ptr noundef %c, ptr noundef nonnull %journal) #18
  call void @bch_initial_gc_finish(ptr noundef %c) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_cache_set.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_cache_set, %if.then56)) #18
          to label %do.end59 [label %if.then56], !srcloc !593

if.then56:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_cache_set.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.237) #18
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %if.end43
  %journal60 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66
  call void @bch_journal_next(ptr noundef %journal60) #18
  %call61 = call i32 @bch_cache_allocator_start(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %do.end59.err177_crit_edge

do.end59.err177_crit_edge:                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end64:                                         ; preds = %do.end59
  %version = getelementptr inbounds %struct.journal_replay, ptr %23, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp = icmp eq i32 %84, 0
  br i1 %cmp, label %if.then66, label %if.end64.if.end68_crit_edge

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  %call67 = call fastcc i32 @__uuid_write(ptr noundef %c)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end64.if.end68_crit_edge
  %call69 = call i32 @bch_journal_replay(ptr noundef %c, ptr noundef nonnull %journal) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.if.end133_crit_edge, label %if.end68.err177_crit_edge

if.end68.err177_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end68.if.end133_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

for.body.lr.ph:                                   ; preds = %entry
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.237) #22
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %7, align 8
  %shr = lshr i64 %86, 7
  %conv82 = trunc i64 %shr to i32
  %87 = call i32 @llvm.smax.i32(i32 %conv82, i32 2)
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 256)
  %conv93 = trunc i32 %88 to i16
  %89 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 14
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv93, ptr %89, align 2
  %first_bucket = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %j74.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %91 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %first_bucket, align 4
  %conv100 = zext i16 %92 to i32
  %add = add nuw i32 %j74.0323, %conv100
  %conv101 = zext i32 %add to i64
  %arrayidx103 = getelementptr %struct.cache, ptr %1, i32 0, i32 1, i32 15, i32 %j74.0323
  %93 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv101, ptr %arrayidx103, align 8
  %inc = add nuw nsw i32 %j74.0323, 1
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %89, align 2
  %conv96 = zext i16 %95 to i32
  %cmp97 = icmp ult i32 %inc, %conv96
  br i1 %cmp97, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @bch_initial_gc_finish(ptr noundef %c) #18
  %call104 = call i32 @bch_cache_allocator_start(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %for.end.err177_crit_edge

for.end.err177_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end107:                                        ; preds = %for.end
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock, i32 noundef 0) #18
  %call108 = call i32 @bch_prio_write(ptr noundef %1, i1 noundef zeroext true)
  call void @mutex_unlock(ptr noundef %bucket_lock) #18
  %call110 = call fastcc i32 @__uuid_write(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end107.err177_crit_edge

if.end107.err177_crit_edge:                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end113:                                        ; preds = %if.end107
  %call114 = call ptr @__bch_btree_node_alloc(ptr noundef %c, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, ptr noundef null) #18
  %root115 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 52
  %96 = ptrtoint ptr %root115 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call114, ptr %root115, align 4
  %tobool.not.i275 = icmp eq ptr %call114, null
  %cmp.i276 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  %spec.select.i277 = or i1 %tobool.not.i275, %cmp.i276
  br i1 %spec.select.i277, label %if.end113.err177_crit_edge, label %cleanup130

if.end113.err177_crit_edge:                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

cleanup130:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  %write_lock = getelementptr inbounds %struct.btree, ptr %call114, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %write_lock, i32 noundef 0) #18
  %97 = ptrtoint ptr %root115 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %root115, align 4
  %99 = getelementptr inbounds %struct.btree, ptr %98, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %99, align 8
  %or.i.i = or i64 %101, 1048575
  store i64 %or.i.i, ptr %99, align 8
  %low.i5.i = getelementptr inbounds %struct.btree, ptr %98, i32 0, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %low.i5.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 9223372036854775807, ptr %low.i5.i, align 8
  %103 = load ptr, ptr %root115, align 4
  call void @bch_btree_node_write(ptr noundef %103, ptr noundef nonnull %cl) #18
  %104 = ptrtoint ptr %root115 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %root115, align 4
  %write_lock124 = getelementptr inbounds %struct.btree, ptr %105, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %write_lock124) #18
  %106 = ptrtoint ptr %root115 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %root115, align 4
  call void @bch_btree_set_root(ptr noundef %107) #18
  %108 = ptrtoint ptr %root115 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %root115, align 4
  %seq.i278 = getelementptr inbounds %struct.btree, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %seq.i278 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %seq.i278, align 8
  %inc.i279 = add i32 %111, 1
  store i32 %inc.i279, ptr %seq.i278, align 8
  %lock.i280 = getelementptr inbounds %struct.btree, ptr %109, i32 0, i32 3
  call void @up_write(ptr noundef %lock.i280) #18
  %112 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cache, align 4
  %flags.i281 = getelementptr inbounds %struct.cache, ptr %113, i32 0, i32 1, i32 6
  %114 = ptrtoint ptr %flags.i281 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %flags.i281, align 8
  %or.i = or i64 %115, 1
  store i64 %or.i, ptr %flags.i281, align 8
  %journal129 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66
  call void @bch_journal_next(ptr noundef %journal129) #18
  call void @bch_journal_meta(ptr noundef %c, ptr noundef nonnull %cl) #18
  br label %if.end133

if.end133:                                        ; preds = %cleanup130, %if.end68.if.end133_crit_edge
  %call134 = call i32 @bch_gc_thread_start(ptr noundef %c) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.err177_crit_edge

if.end133.err177_crit_edge:                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %err177

if.end137:                                        ; preds = %if.end133
  %call.i.i.i283 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %116 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %remaining.i, align 4
  %and.i284 = and i32 %117, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i284)
  %cmp.not.i = icmp eq i32 %and.i284, 1
  br i1 %cmp.not.i, label %if.end137.closure_sync.exit_crit_edge, label %if.then.i285

if.end137.closure_sync.exit_crit_edge:            ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit

if.then.i285:                                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #20
  call void @__closure_sync(ptr noundef nonnull %cl) #18
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i285, %if.end137.closure_sync.exit_crit_edge
  %call138 = call i64 @ktime_get_real_seconds() #18
  %conv139 = trunc i64 %call138 to i32
  %118 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cache, align 4
  %last_mount = getelementptr inbounds %struct.cache, ptr %119, i32 0, i32 1, i32 12
  %120 = ptrtoint ptr %last_mount to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv139, ptr %last_mount, align 8
  call void @bcache_write_super(ptr noundef %c)
  %121 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cache, align 4
  %version.i = getelementptr inbounds %struct.cache, ptr %122, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %124)
  %cmp.i287 = icmp ult i64 %124, 5
  br i1 %cmp.i287, label %closure_sync.exit.if.end152_crit_edge, label %bch_has_feature_obso_large_bucket.exit

closure_sync.exit.if.end152_crit_edge:            ; preds = %closure_sync.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end152

bch_has_feature_obso_large_bucket.exit:           ; preds = %closure_sync.exit
  %feature_incompat.i = getelementptr inbounds %struct.cache, ptr %122, i32 0, i32 1, i32 9
  %125 = ptrtoint ptr %feature_incompat.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %feature_incompat.i, align 8
  %127 = and i64 %126, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %127)
  %tobool145.not = icmp eq i64 %127, 0
  br i1 %tobool145.not, label %bch_has_feature_obso_large_bucket.exit.if.end152_crit_edge, label %do.end149

bch_has_feature_obso_large_bucket.exit.if.end152_crit_edge: ; preds = %bch_has_feature_obso_large_bucket.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end152

do.end149:                                        ; preds = %bch_has_feature_obso_large_bucket.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.237) #22
  br label %if.end152

if.end152:                                        ; preds = %do.end149, %bch_has_feature_obso_large_bucket.exit.if.end152_crit_edge, %closure_sync.exit.if.end152_crit_edge
  %128 = load ptr, ptr @uncached_devices, align 4
  %cmp163.not324 = icmp eq ptr %128, @uncached_devices
  br i1 %cmp163.not324, label %if.end152.for.end175_crit_edge, label %if.end152.for.body167_crit_edge

if.end152.for.body167_crit_edge:                  ; preds = %if.end152
  br label %for.body167

if.end152.for.end175_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end175

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %if.end152.for.body167_crit_edge
  %dc.0325 = phi ptr [ %t.0, %for.body167.for.body167_crit_edge ], [ %128, %if.end152.for.body167_crit_edge ]
  %129 = ptrtoint ptr %dc.0325 to i32
  call void @__asan_load4_noabort(i32 %129)
  %t.0 = load ptr, ptr %dc.0325, align 8
  %call168 = call i32 @bch_cached_dev_attach(ptr noundef %dc.0325, ptr noundef %c, ptr noundef null)
  %cmp163.not = icmp eq ptr %t.0, @uncached_devices
  br i1 %cmp163.not, label %for.body167.for.end175_crit_edge, label %for.body167.for.body167_crit_edge

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body167

for.body167.for.end175_crit_edge:                 ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end175

for.end175:                                       ; preds = %for.body167.for.end175_crit_edge, %if.end152.for.end175_crit_edge
  %uuids.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %130 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %uuids.i, align 8
  %nr_uuids.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 57
  %132 = ptrtoint ptr %nr_uuids.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nr_uuids.i, align 4
  %add.ptr1.i = getelementptr %struct.uuid_entry, ptr %131, i32 %133
  %cmp2.i = icmp ult ptr %131, %add.ptr1.i
  br i1 %cmp2.i, label %for.end175.for.body.i290_crit_edge, label %for.end175.flash_devs_run.exit_crit_edge

for.end175.flash_devs_run.exit_crit_edge:         ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #20
  br label %flash_devs_run.exit

for.end175.for.body.i290_crit_edge:               ; preds = %for.end175
  br label %for.body.i290

for.body.i290:                                    ; preds = %for.inc.i.for.body.i290_crit_edge, %for.end175.for.body.i290_crit_edge
  %u.03.i = phi ptr [ %incdec.ptr.i292, %for.inc.i.for.body.i290_crit_edge ], [ %131, %for.end175.for.body.i290_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.anon.95, ptr %u.03.i, i32 0, i32 5
  %134 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags.i.i, align 4
  %136 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool2.not.i = icmp eq i32 %136, 0
  br i1 %tobool2.not.i, label %for.body.i290.for.inc.i_crit_edge, label %if.then.i291

for.body.i290.for.inc.i_crit_edge:                ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i291:                                     ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #20
  %call3.i = call fastcc i32 @flash_dev_run(ptr noundef %c, ptr noundef %u.03.i) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i291, %for.body.i290.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %call3.i, %if.then.i291 ], [ 0, %for.body.i290.for.inc.i_crit_edge ]
  %incdec.ptr.i292 = getelementptr %struct.uuid_entry, ptr %u.03.i, i32 1
  %137 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %uuids.i, align 8
  %139 = ptrtoint ptr %nr_uuids.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nr_uuids.i, align 4
  %add.ptr.i293 = getelementptr %struct.uuid_entry, ptr %138, i32 %140
  %cmp.i294 = icmp ult ptr %incdec.ptr.i292, %add.ptr.i293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool.not.i295 = icmp eq i32 %ret.1.i, 0
  %or.cond.i = select i1 %cmp.i294, i1 %tobool.not.i295, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i290_crit_edge, label %for.inc.i.flash_devs_run.exit_crit_edge

for.inc.i.flash_devs_run.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %flash_devs_run.exit

for.inc.i.for.body.i290_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i290

flash_devs_run.exit:                              ; preds = %for.inc.i.flash_devs_run.exit_crit_edge, %for.end175.flash_devs_run.exit_crit_edge
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #18
  br label %cleanup188

err177:                                           ; preds = %if.end133.err177_crit_edge, %if.end113.err177_crit_edge, %if.end107.err177_crit_edge, %for.end.err177_crit_edge, %if.end68.err177_crit_edge, %do.end59.err177_crit_edge, %if.end39.err177_crit_edge, %list_del_init.exit.err177_crit_edge, %if.end27.err177_crit_edge, %if.end24.err177_crit_edge, %prio_read.exit, %do.end.err177_crit_edge, %if.then.err177_crit_edge
  %err.2 = phi ptr [ @.str.252, %if.end133.err177_crit_edge ], [ @.str.248, %if.end68.err177_crit_edge ], [ @.str.247, %do.end59.err177_crit_edge ], [ @.str.244, %if.end39.err177_crit_edge ], [ %call36, %list_del_init.exit.err177_crit_edge ], [ @.str.243, %if.end27.err177_crit_edge ], [ @.str.242, %if.end24.err177_crit_edge ], [ @.str.241, %prio_read.exit ], [ @.str.240, %do.end.err177_crit_edge ], [ @.str.236, %if.then.err177_crit_edge ], [ @.str.251, %if.end113.err177_crit_edge ], [ @.str.250, %if.end107.err177_crit_edge ], [ @.str.247, %for.end.err177_crit_edge ]
  %141 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %journal, align 4
  %cmp.i296.not326 = icmp eq ptr %142, %journal
  br i1 %cmp.i296.not326, label %err177.while.end_crit_edge, label %err177.while.body_crit_edge

err177.while.body_crit_edge:                      ; preds = %err177
  br label %while.body

err177.while.end_crit_edge:                       ; preds = %err177
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %err177.while.body_crit_edge
  %143 = phi ptr [ %153, %list_del.exit.while.body_crit_edge ], [ %142, %err177.while.body_crit_edge ]
  %call.i.i298 = call zeroext i1 @__list_del_entry_valid(ptr noundef %143) #18
  br i1 %call.i.i298, label %if.end.i.i301, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i301:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i299 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i299 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i299, align 4
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %143, align 4
  %prev1.i.i.i300 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i300 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i300, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i301, %while.body.list_del.exit_crit_edge
  %150 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %143) #18
  %152 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %journal, align 4
  %cmp.i296.not = icmp eq ptr %153, %journal
  br i1 %cmp.i296.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %err177.while.end_crit_edge
  %call.i.i.i303 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %154 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %remaining.i, align 4
  %and.i304 = and i32 %155, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i304)
  %cmp.not.i305 = icmp eq i32 %and.i304, 1
  br i1 %cmp.not.i305, label %while.end.closure_sync.exit308_crit_edge, label %if.then.i306

while.end.closure_sync.exit308_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit308

if.then.i306:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__closure_sync(ptr noundef nonnull %cl) #18
  br label %closure_sync.exit308

closure_sync.exit308:                             ; preds = %if.then.i306, %while.end.closure_sync.exit308_crit_edge
  %call187 = call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %c, ptr noundef nonnull @.str.256, ptr noundef %err.2)
  br label %cleanup188

cleanup188:                                       ; preds = %closure_sync.exit308, %flash_devs_run.exit
  %retval.0 = phi i32 [ -5, %closure_sync.exit308 ], [ 0, %flash_devs_run.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %journal) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_journal_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bch_btree_ptr_invalid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_node_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @uuid_read(ptr noundef %c, ptr noundef %j, ptr noundef %cl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.jset, ptr %j, i32 0, i32 6
  %call = tail call zeroext i1 @__bch_btree_ptr_invalid(ptr noundef %c, ptr noundef %0) #18
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 59
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %0, align 8
  %sh.diff.i = lshr i64 %3, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %4 = call ptr @memcpy(ptr %1, ptr %0, i32 %mul.i)
  tail call fastcc void @uuid_io(ptr noundef %c, i32 noundef 0, ptr noundef %0, ptr noundef %cl)
  %version = getelementptr inbounds %struct.jset, ptr %j, i32 0, i32 3
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %7 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uuids, align 8
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #18
  %9 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %remaining.i, align 4
  %and.i = and i32 %10, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %if.then2.closure_sync.exit_crit_edge, label %if.then.i

if.then2.closure_sync.exit_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %closure_sync.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__closure_sync(ptr noundef %cl) #18
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i, %if.then2.closure_sync.exit_crit_edge
  %nr_uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 57
  %11 = ptrtoint ptr %nr_uuids to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_uuids, align 4
  %i.058 = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.058)
  %cmp459 = icmp sgt i32 %i.058, -1
  br i1 %cmp459, label %closure_sync.exit.for.body_crit_edge, label %closure_sync.exit.cleanup_crit_edge

closure_sync.exit.cleanup_crit_edge:              ; preds = %closure_sync.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

closure_sync.exit.for.body_crit_edge:             ; preds = %closure_sync.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %closure_sync.exit.for.body_crit_edge
  %i.060 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.058, %closure_sync.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uuid_entry, ptr %8, i32 %i.060
  %arrayidx5 = getelementptr %struct.uuid_entry_v0, ptr %8, i32 %i.060
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx5, i32 16)
  %label = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 1
  %label11 = getelementptr %struct.uuid_entry_v0, ptr %8, i32 %i.060, i32 1
  %14 = call ptr @memcpy(ptr %label, ptr %label11, i32 32)
  %first_reg = getelementptr %struct.uuid_entry_v0, ptr %8, i32 %i.060, i32 2
  %15 = ptrtoint ptr %first_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %first_reg, align 4
  %first_reg15 = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %first_reg15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %first_reg15, align 8
  %last_reg = getelementptr %struct.uuid_entry_v0, ptr %8, i32 %i.060, i32 3
  %18 = ptrtoint ptr %last_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_reg, align 4
  %last_reg18 = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %last_reg18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_reg18, align 4
  %invalidated = getelementptr %struct.uuid_entry_v0, ptr %8, i32 %i.060, i32 4
  %21 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %invalidated, align 4
  %invalidated21 = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 4
  %23 = ptrtoint ptr %invalidated21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %invalidated21, align 8
  %flags = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 5
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags, align 4
  %sectors = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 6
  %25 = ptrtoint ptr %sectors to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %sectors, align 8
  %i.0 = add nsw i32 %i.060, -1
  %cmp4 = icmp sgt i32 %i.060, 0
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %closure_sync.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str.262, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %closure_sync.exit.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_journal_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_initial_gc_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_journal_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_cache_allocator_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_journal_replay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bch_btree_node_alloc(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_btree_node_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_btree_set_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_gc_thread_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_pending_bdevs_cleanup(ptr nocapture noundef readnone %k, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buffer, i32 noundef returned %size) #0 align 64 {
entry:
  %pending_devs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending_devs) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %pending_devs, i32 0, i32 1
  %1 = ptrtoint ptr %pending_devs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pending_devs, ptr %pending_devs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pending_devs, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #18
  %3 = load ptr, ptr @uncached_devices, align 4
  %cmp.not129 = icmp eq ptr %3, @uncached_devices
  br i1 %cmp.not129, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dc.0130 = phi ptr [ %tdc.0131, %list_add.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %dc.0130 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tdc.0131 = load ptr, ptr %dc.0130, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 12) #25
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end:                                           ; preds = %for.body
  %dc6 = getelementptr inbounds %struct.pdev, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %dc6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dc.0130, ptr %dc6, align 8
  %7 = ptrtoint ptr %pending_devs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending_devs, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull %pending_devs, ptr noundef %8) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pending_devs, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %pending_devs to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %pending_devs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %cmp.not = icmp eq ptr %tdc.0131, @uncached_devices
  br i1 %cmp.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %13 = ptrtoint ptr %pending_devs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pending_devs, align 4
  %cmp24.not133 = icmp eq ptr %14, %pending_devs
  br i1 %cmp24.not133, label %for.end.for.end61_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end61

for.body26:                                       ; preds = %for.end54.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %pdev.0134 = phi ptr [ %tpdev.0136, %for.end54.for.body26_crit_edge ], [ %14, %for.end.for.body26_crit_edge ]
  %15 = ptrtoint ptr %pdev.0134 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tpdev.0136 = load ptr, ptr %pdev.0134, align 4
  %dc27 = getelementptr inbounds %struct.pdev, ptr %pdev.0134, i32 0, i32 1
  %16 = ptrtoint ptr %dc27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dc27, align 4
  %18 = getelementptr inbounds %struct.cached_dev, ptr %17, i32 0, i32 3, i32 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.body40.for.cond36_crit_edge, %for.body26
  %.pn.in.in = phi ptr [ @bch_cache_sets, %for.body26 ], [ %.pn.in, %for.body40.for.cond36_crit_edge ]
  %19 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp38.not = icmp eq ptr %.pn.in, @bch_cache_sets
  br i1 %cmp38.not, label %for.cond36.for.end54_crit_edge, label %for.body40

for.cond36.for.end54_crit_edge:                   ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end54

for.body40:                                       ; preds = %for.cond36
  %set_uuid41 = getelementptr i8, ptr %.pn.in, i32 46940
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %18, ptr noundef dereferenceable(16) %set_uuid41, i32 16) #23
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %if.then45, label %for.body40.for.cond36_crit_edge

for.body40.for.cond36_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond36

if.then45:                                        ; preds = %for.body40
  %call.i.i118 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pdev.0134) #18
  br i1 %call.i.i118, label %if.end.i.i119, label %if.then45.cleanup.thread_crit_edge

if.then45.cleanup.thread_crit_edge:               ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end.i.i119:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pdev.0134, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %pdev.0134 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.0134, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i.i119, %if.then45.cleanup.thread_crit_edge
  %26 = ptrtoint ptr %pdev.0134 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %pdev.0134, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pdev.0134, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %pdev.0134) #18
  br label %for.end54

for.end54:                                        ; preds = %cleanup.thread, %for.cond36.for.end54_crit_edge
  %cmp24.not = icmp eq ptr %tpdev.0136, %pending_devs
  br i1 %cmp24.not, label %for.end54.for.end61_crit_edge, label %for.end54.for.body26_crit_edge

for.end54.for.body26_crit_edge:                   ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body26

for.end54.for.end61_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end61

for.end61:                                        ; preds = %for.end54.for.end61_crit_edge, %for.end.for.end61_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #18
  %28 = ptrtoint ptr %pending_devs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pending_devs, align 4
  %cmp73.not137 = icmp eq ptr %29, %pending_devs
  br i1 %cmp73.not137, label %for.end61.for.end86_crit_edge, label %for.end61.do.end_crit_edge

for.end61.do.end_crit_edge:                       ; preds = %for.end61
  br label %do.end

for.end61.for.end86_crit_edge:                    ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end86

do.end:                                           ; preds = %bcache_device_stop.exit.do.end_crit_edge, %for.end61.do.end_crit_edge
  %pdev.1138 = phi ptr [ %tpdev.1, %bcache_device_stop.exit.do.end_crit_edge ], [ %29, %for.end61.do.end_crit_edge ]
  %30 = ptrtoint ptr %pdev.1138 to i32
  call void @__asan_load4_noabort(i32 %30)
  %tpdev.1 = load ptr, ptr %pdev.1138, align 4
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.266, ptr noundef %pdev.1138) #22
  %call.i.i120 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pdev.1138) #18
  br i1 %call.i.i120, label %if.end.i.i123, label %do.end.list_del.exit125_crit_edge

do.end.list_del.exit125_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit125

if.end.i.i123:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i121 = getelementptr inbounds %struct.list_head, ptr %pdev.1138, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i121, align 4
  %33 = ptrtoint ptr %pdev.1138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.1138, align 4
  %prev1.i.i.i122 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i122, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit125

list_del.exit125:                                 ; preds = %if.end.i.i123, %do.end.list_del.exit125_crit_edge
  %37 = ptrtoint ptr %pdev.1138 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %pdev.1138, align 4
  %prev.i124 = getelementptr inbounds %struct.list_head, ptr %pdev.1138, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i124, align 4
  %dc79 = getelementptr inbounds %struct.pdev, ptr %pdev.1138, i32 0, i32 1
  %39 = ptrtoint ptr %dc79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc79, align 4
  %disk = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 1, i32 6
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_del.exit125.bcache_device_stop.exit_crit_edge

list_del.exit125.bcache_device_stop.exit_crit_edge: ; preds = %list_del.exit125
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcache_device_stop.exit

if.then.i:                                        ; preds = %list_del.exit125
  %41 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %disk, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__init_work(ptr noundef %disk, i32 noundef 0) #18
  %43 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %disk, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry3.i.i = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %42, ptr noundef %disk) #18
  br i1 %call.i.i.i, label %do.body2.i.i.bcache_device_stop.exit_crit_edge, label %do.body12.i.i, !prof !600

do.body2.i.i.bcache_device_stop.exit_crit_edge:   ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcache_device_stop.exit

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #18, !srcloc !601
  unreachable

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %fn.i.i = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fn.i.i, align 4
  call void %47(ptr noundef %disk) #18
  br label %bcache_device_stop.exit

bcache_device_stop.exit:                          ; preds = %if.else.i.i, %do.body2.i.i.bcache_device_stop.exit_crit_edge, %list_del.exit125.bcache_device_stop.exit_crit_edge
  call void @kfree(ptr noundef %pdev.1138) #18
  %cmp73.not = icmp eq ptr %tpdev.1, %pending_devs
  br i1 %cmp73.not, label %bcache_device_stop.exit.for.end86_crit_edge, label %bcache_device_stop.exit.do.end_crit_edge

bcache_device_stop.exit.do.end_crit_edge:         ; preds = %bcache_device_stop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

bcache_device_stop.exit.for.end86_crit_edge:      ; preds = %bcache_device_stop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end86

for.end86:                                        ; preds = %bcache_device_stop.exit.for.end86_crit_edge, %for.end61.for.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending_devs) #18
  ret i32 %size
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctpop.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 299)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 299)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin }
attributes #24 = { nobuiltin nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !138, !139, !141, !143, !144, !146, !148, !150, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !172, !174, !176, !177, !178, !179, !180, !181, !183, !184, !185, !187, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !208, !210, !211, !212, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !230, !231, !232, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !251, !252, !254, !256, !258, !259, !260, !262, !264, !266, !267, !268, !269, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !313, !315, !316, !318, !319, !321, !323, !325, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !345, !346, !347, !349, !351, !352, !353, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !401, !402, !403, !405, !406, !407, !408, !410, !411, !413, !414, !415, !416, !418, !419, !420, !421, !423, !425, !426, !427, !428, !430, !432, !433, !434, !436, !437, !439, !440, !442, !443, !444, !445, !447, !449, !451, !453, !455, !457, !458, !459, !460, !462, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !486, !487, !489, !491, !493, !495, !497, !499, !501, !503, !504, !505, !506, !508, !510, !512, !514, !516, !518, !519, !520, !522, !524, !526, !527, !528, !530, !532, !534, !536, !537, !538, !540, !542, !543, !544, !545, !547, !548, !549, !551, !553, !554, !556, !557, !559, !560, !561, !562, !564, !565, !566, !567, !569, !570, !571, !573, !574, !575, !576}
!llvm.named.register.sp = !{!577}
!llvm.module.flags = !{!578, !579, !580, !581, !582, !583, !584, !585}
!llvm.ident = !{!586}

!0 = !{ptr @bch_cache_sets, !1, !"bch_cache_sets", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/super.c", i32 46, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/bcache/super.c", i32 620, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bch_prio_write.__UNIQUE_ID_ddebug277, !3, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/md/bcache/super.c", i32 1054, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/bcache/super.c", i32 1055, i32 25}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/md/bcache/super.c", i32 1056, i32 25}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/bcache/super.c", i32 1056, i32 52}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/bcache/super.c", i32 1061, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bch_cached_dev_run._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bch_cached_dev_run._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/super.c", i32 1067, i32 3}
!24 = !{ptr @bch_cached_dev_run._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bch_cached_dev_run._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/super.c", i32 1093, i32 63}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/super.c", i32 1096, i32 3}
!30 = !{ptr @bch_cached_dev_run._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bch_cached_dev_run._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/bcache/super.c", i32 1101, i32 29}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/bcache/super.c", i32 1104, i32 3}
!36 = !{ptr @bch_cached_dev_run._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bch_cached_dev_run._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/bcache/super.c", i32 1207, i32 3}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bch_cached_dev_attach._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @bch_cached_dev_attach._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/bcache/super.c", i32 1212, i32 3}
!45 = !{ptr @bch_cached_dev_attach._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bch_cached_dev_attach._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/bcache/super.c", i32 1218, i32 3}
!49 = !{ptr @bch_cached_dev_attach._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bch_cached_dev_attach._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/bcache/super.c", i32 1226, i32 4}
!53 = !{ptr @bch_cached_dev_attach._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bch_cached_dev_attach._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/bcache/super.c", i32 1245, i32 4}
!57 = !{ptr @bch_cached_dev_attach._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bch_cached_dev_attach._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/bcache/super.c", i32 1251, i32 4}
!61 = !{ptr @bch_cached_dev_attach._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bch_cached_dev_attach._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/bcache/super.c", i32 1296, i32 3}
!65 = !{ptr @bch_cached_dev_attach._entry.39, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bch_cached_dev_attach._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/bcache/super.c", i32 1319, i32 3}
!69 = !{ptr @bch_cached_dev_attach._entry.42, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bch_cached_dev_attach._entry_ptr.44, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/bcache/super.c", i32 1323, i32 35}
!73 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/bcache/super.c", i32 1327, i32 3}
!75 = !{ptr @bch_cached_dev_attach._entry.46, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bch_cached_dev_attach._entry_ptr.48, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/bcache/super.c", i32 1328, i32 3}
!79 = !{ptr @bch_cached_dev_attach._entry.49, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @bch_cached_dev_attach._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/bcache/super.c", i32 1335, i32 2}
!83 = !{ptr @bch_cached_dev_attach._entry.52, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bch_cached_dev_attach._entry_ptr.54, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/bcache/super.c", i32 1599, i32 3}
!87 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bch_flash_dev_create._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @bch_flash_dev_create._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/bcache/super.c", i32 1624, i32 2}
!92 = !{ptr @.str.58, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @bch_cached_dev_error._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @bch_cached_dev_error._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/md/bcache/super.c", i32 1644, i32 3}
!97 = !{ptr @.str.60, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @bch_cache_set_error._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @bch_cache_set_error._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.62, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/md/bcache/super.c", i32 1656, i32 2}
!102 = !{ptr @bch_cache_set_error._entry.61, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @bch_cache_set_error._entry_ptr.63, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/bcache/super.c", i32 1662, i32 9}
!106 = !{ptr @bch_cache_set_alloc.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/md/bcache/super.c", i32 1901, i32 2}
!108 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @bch_cache_set_alloc.__key.66, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/md/bcache/super.c", i32 1902, i32 2}
!111 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bch_cache_set_alloc.__key.68, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/md/bcache/super.c", i32 1903, i32 2}
!114 = !{ptr @.str.69, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @bch_cache_set_alloc.__key.70, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/md/bcache/super.c", i32 1904, i32 2}
!117 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @bch_cache_set_alloc.__key.72, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/md/bcache/super.c", i32 1905, i32 2}
!120 = !{ptr @.str.73, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @bch_cache_set_alloc.__key.74, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/md/bcache/super.c", i32 1908, i32 2}
!123 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @bch_cache_set_alloc.__key.76, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/md/bcache/super.c", i32 1909, i32 2}
!126 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @bch_cache_set_alloc.__key.78, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/md/bcache/super.c", i32 1910, i32 2}
!129 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.80, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/md/bcache/super.c", i32 1947, i32 36}
!132 = !{ptr @__exitcall_bcache_exit, !133, !"__exitcall_bcache_exit", i1 false, i1 false}
!133 = !{!"../drivers/md/bcache/super.c", i32 2932, i32 1}
!134 = !{ptr @__initcall__kmod_bcache__290_2933_bcache_init6, !135, !"__initcall__kmod_bcache__290_2933_bcache_init6", i1 false, i1 false}
!135 = !{!"../drivers/md/bcache/super.c", i32 2933, i32 1}
!136 = !{ptr @__param_bch_cutoff_writeback, !137, !"__param_bch_cutoff_writeback", i1 false, i1 false}
!137 = !{!"../drivers/md/bcache/super.c", i32 2935, i32 1}
!138 = !{ptr @__UNIQUE_ID_bch_cutoff_writebacktype291, !137, !"__UNIQUE_ID_bch_cutoff_writebacktype291", i1 false, i1 false}
!139 = !{ptr @__UNIQUE_ID_bch_cutoff_writeback292, !140, !"__UNIQUE_ID_bch_cutoff_writeback292", i1 false, i1 false}
!140 = !{!"../drivers/md/bcache/super.c", i32 2936, i32 1}
!141 = !{ptr @__param_bch_cutoff_writeback_sync, !142, !"__param_bch_cutoff_writeback_sync", i1 false, i1 false}
!142 = !{!"../drivers/md/bcache/super.c", i32 2938, i32 1}
!143 = !{ptr @__UNIQUE_ID_bch_cutoff_writeback_synctype293, !142, !"__UNIQUE_ID_bch_cutoff_writeback_synctype293", i1 false, i1 false}
!144 = !{ptr @__UNIQUE_ID_bch_cutoff_writeback_sync294, !145, !"__UNIQUE_ID_bch_cutoff_writeback_sync294", i1 false, i1 false}
!145 = !{!"../drivers/md/bcache/super.c", i32 2939, i32 1}
!146 = !{ptr @__UNIQUE_ID_description295, !147, !"__UNIQUE_ID_description295", i1 false, i1 false}
!147 = !{!"../drivers/md/bcache/super.c", i32 2941, i32 1}
!148 = !{ptr @__UNIQUE_ID_author296, !149, !"__UNIQUE_ID_author296", i1 false, i1 false}
!149 = !{!"../drivers/md/bcache/super.c", i32 2942, i32 1}
!150 = !{ptr @__UNIQUE_ID_file297, !151, !"__UNIQUE_ID_file297", i1 false, i1 false}
!151 = !{!"../drivers/md/bcache/super.c", i32 2943, i32 1}
!152 = !{ptr @__UNIQUE_ID_license298, !151, !"__UNIQUE_ID_license298", i1 false, i1 false}
!153 = !{ptr @bch_cutoff_writeback, !154, !"bch_cutoff_writeback", i1 false, i1 false}
!154 = !{!"../drivers/md/bcache/super.c", i32 30, i32 14}
!155 = !{ptr @bch_cutoff_writeback_sync, !156, !"bch_cutoff_writeback_sync", i1 false, i1 false}
!156 = !{!"../drivers/md/bcache/super.c", i32 31, i32 14}
!157 = !{ptr @bch_register_lock, !158, !"bch_register_lock", i1 false, i1 false}
!158 = !{!"../drivers/md/bcache/super.c", i32 44, i32 14}
!159 = !{ptr @bcache_is_reboot, !160, !"bcache_is_reboot", i1 false, i1 false}
!160 = !{!"../drivers/md/bcache/super.c", i32 45, i32 6}
!161 = !{ptr @bcache_wq, !162, !"bcache_wq", i1 false, i1 false}
!162 = !{!"../drivers/md/bcache/super.c", i32 52, i32 26}
!163 = !{ptr @bch_flush_wq, !164, !"bch_flush_wq", i1 false, i1 false}
!164 = !{!"../drivers/md/bcache/super.c", i32 53, i32 26}
!165 = !{ptr @bch_journal_wq, !166, !"bch_journal_wq", i1 false, i1 false}
!166 = !{!"../drivers/md/bcache/super.c", i32 54, i32 26}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/md/bcache/super.c", i32 325, i32 2}
!169 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__write_super.__UNIQUE_ID_ddebug274, !168, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!171 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/md/bcache/super.c", i32 364, i32 8}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/bcache/super.c", i32 450, i32 2}
!176 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @uuid_io.__UNIQUE_ID_ddebug275, !175, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!178 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/md/bcache/super.c", i32 454, i32 4}
!183 = !{ptr @uuid_io.__UNIQUE_ID_ddebug276, !182, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!184 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/md/bcache/super.c", i32 408, i32 2}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/md/bcache/super.c", i32 588, i32 2}
!189 = !{ptr @closure_queue.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/md/bcache/closure.h", i32 247, i32 3}
!191 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/md/bcache/super.c", i32 1029, i32 4}
!194 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @cached_dev_status_update._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @cached_dev_status_update._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/bcache/super.c", i32 1032, i32 4}
!199 = !{ptr @cached_dev_status_update._entry.97, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @cached_dev_status_update._entry_ptr.99, !198, !"_entry_ptr", i1 false, i1 false}
!201 = distinct !{null, !202, !"__already_done", i1 false, i1 false}
!202 = !{!"../drivers/md/bcache/bcache.h", i32 948, i32 3}
!203 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @invalid_uuid, !205, !"invalid_uuid", i1 false, i1 false}
!205 = !{!"../drivers/md/bcache/super.c", i32 38, i32 19}
!206 = !{ptr @uuid_find_empty.zero_uuid, !207, !"zero_uuid", i1 false, i1 false}
!207 = !{!"../drivers/md/bcache/super.c", i32 552, i32 20}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/md/bcache/super.c", i32 1134, i32 3}
!210 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @cancel_writeback_rate_update_dwork._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @cancel_writeback_rate_update_dwork._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/md/bcache/super.c", i32 815, i32 4}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/md/bcache/super.c", i32 817, i32 46}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/bcache/super.c", i32 819, i32 3}
!219 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @bcache_device_link._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @bcache_device_link._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/md/bcache/super.c", i32 823, i32 3}
!224 = !{ptr @bcache_device_link._entry.107, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @bcache_device_link._entry_ptr.109, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/md/bcache/super.c", i32 1558, i32 27}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/md/bcache/super.c", i32 1561, i32 3}
!230 = !{ptr @flash_dev_run._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @flash_dev_run._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @flash_dev_run._entry.112, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/md/bcache/super.c", i32 1562, i32 3}
!234 = !{ptr @flash_dev_run._entry_ptr.113, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/md/bcache/super.c", i32 880, i32 3}
!237 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @bcache_device_free._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @bcache_device_free._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/md/bcache/super.c", i32 882, i32 3}
!242 = !{ptr @bcache_device_free._entry.116, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @bcache_device_free._entry_ptr.118, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/md/bcache/super.c", i32 50, i32 8}
!246 = !{ptr @bcache_device_idx, !245, !"bcache_device_idx", i1 false, i1 false}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/md/bcache/super.c", i32 915, i32 3}
!249 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @bcache_device_init._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @bcache_device_init._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @bcache_device_init.__key, !253, !"__key", i1 false, i1 false}
!253 = !{!"../drivers/md/bcache/super.c", i32 940, i32 12}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/md/bcache/super.c", i32 945, i32 46}
!256 = !{ptr @.str.124, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/md/bcache/super.c", i32 969, i32 3}
!258 = !{ptr @bcache_device_init._entry.123, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @bcache_device_init._entry_ptr.125, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @bcache_major, !261, !"bcache_major", i1 false, i1 false}
!261 = !{!"../drivers/md/bcache/super.c", i32 49, i32 12}
!262 = !{ptr @bcache_flash_ops, !263, !"bcache_flash_ops", i1 false, i1 false}
!263 = !{!"../drivers/md/bcache/super.c", i32 773, i32 45}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/md/bcache/super.c", i32 1711, i32 2}
!266 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @cache_set_free._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @cache_set_free._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @unregister_wait, !270, !"unregister_wait", i1 false, i1 false}
!270 = !{!"../drivers/md/bcache/super.c", i32 51, i32 26}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/md/bcache/super.c", i32 1780, i32 3}
!273 = !{ptr @.str.129, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @conditional_stop_bcache_device._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @conditional_stop_bcache_device._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/md/bcache/super.c", i32 1788, i32 3}
!278 = !{ptr @conditional_stop_bcache_device._entry.130, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @conditional_stop_bcache_device._entry_ptr.132, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/md/bcache/super.c", i32 1810, i32 3}
!282 = !{ptr @conditional_stop_bcache_device._entry.133, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @conditional_stop_bcache_device._entry_ptr.135, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @sema_init.__key, !285, !"__key", i1 false, i1 false}
!285 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../include/linux/mm.h", i32 717, i32 2}
!292 = !{ptr @bcache_kobj, !293, !"bcache_kobj", i1 false, i1 false}
!293 = !{!"../drivers/md/bcache/super.c", i32 43, i32 24}
!294 = !{ptr @reboot, !295, !"reboot", i1 false, i1 false}
!295 = !{!"../drivers/md/bcache/super.c", i32 2813, i32 30}
!296 = !{ptr @.str.139, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/md/bcache/super.c", i32 2753, i32 3}
!298 = !{ptr @.str.140, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @bcache_reboot._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @bcache_reboot._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/md/bcache/super.c", i32 2803, i32 4}
!303 = !{ptr @bcache_reboot._entry.141, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @bcache_reboot._entry_ptr.143, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.145, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/md/bcache/super.c", i32 2805, i32 4}
!307 = !{ptr @bcache_reboot._entry.144, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @bcache_reboot._entry_ptr.146, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @uncached_devices, !310, !"uncached_devices", i1 false, i1 false}
!310 = !{!"../drivers/md/bcache/super.c", i32 47, i32 8}
!311 = !{ptr @bcache_init.files, !312, !"files", i1 false, i1 false}
!312 = !{!"../drivers/md/bcache/super.c", i32 2866, i32 33}
!313 = !{ptr @bcache_init.__key, !314, !"__key", i1 false, i1 false}
!314 = !{!"../drivers/md/bcache/super.c", i32 2875, i32 2}
!315 = !{ptr @.str.147, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @bcache_init.__key.148, !317, !"__key", i1 false, i1 false}
!317 = !{!"../drivers/md/bcache/super.c", i32 2876, i32 2}
!318 = !{ptr @.str.149, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.150, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/md/bcache/super.c", i32 2902, i32 33}
!321 = !{ptr @.str.151, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/md/bcache/super.c", i32 2906, i32 35}
!323 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/md/bcache/super.c", i32 2412, i32 1}
!325 = !{ptr @ksysfs_register, !324, !"ksysfs_register", i1 false, i1 false}
!326 = !{ptr @.str.153, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/md/bcache/super.c", i32 2544, i32 8}
!328 = !{ptr @.str.154, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/md/bcache/super.c", i32 2550, i32 8}
!330 = !{ptr @.str.155, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/md/bcache/super.c", i32 2555, i32 8}
!332 = !{ptr @.str.156, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/md/bcache/super.c", i32 2565, i32 8}
!334 = !{ptr @.str.157, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/md/bcache/super.c", i32 2576, i32 11}
!336 = !{ptr @.str.158, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/md/bcache/super.c", i32 2578, i32 11}
!338 = !{ptr @.str.159, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/md/bcache/super.c", i32 2586, i32 8}
!340 = distinct !{null, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/md/bcache/super.c", i32 2594, i32 8}
!342 = !{ptr @.str.161, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/md/bcache/super.c", i32 2665, i32 2}
!344 = !{ptr @.str.162, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @register_bcache._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @register_bcache._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.163, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/md/bcache/super.c", i32 178, i32 10}
!349 = !{ptr @.str.164, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/md/bcache/super.c", i32 197, i32 2}
!351 = !{ptr @.str.165, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @read_super.__UNIQUE_ID_ddebug273, !350, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!353 = !{ptr @.str.166, !350, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.167, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/md/bcache/super.c", i32 200, i32 8}
!356 = !{ptr @.str.168, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/md/bcache/super.c", i32 204, i32 8}
!358 = !{ptr @.str.169, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/md/bcache/super.c", i32 208, i32 8}
!360 = !{ptr @.str.170, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/md/bcache/super.c", i32 212, i32 8}
!362 = !{ptr @.str.171, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/md/bcache/super.c", i32 218, i32 8}
!364 = !{ptr @.str.172, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/md/bcache/super.c", i32 230, i32 9}
!366 = !{ptr @.str.173, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/md/bcache/super.c", i32 251, i32 9}
!368 = !{ptr @.str.174, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/md/bcache/super.c", i32 255, i32 9}
!370 = !{ptr @.str.175, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/md/bcache/super.c", i32 259, i32 9}
!372 = !{ptr @.str.176, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/md/bcache/super.c", i32 268, i32 9}
!374 = !{ptr @bcache_magic, !375, !"bcache_magic", i1 false, i1 false}
!375 = !{!"../drivers/md/bcache/super.c", i32 33, i32 19}
!376 = !{ptr @.str.177, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/md/bcache/super.c", i32 105, i32 8}
!378 = !{ptr @.str.178, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/md/bcache/super.c", i32 109, i32 8}
!380 = !{ptr @.str.179, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/md/bcache/super.c", i32 113, i32 8}
!382 = !{ptr @.str.180, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/md/bcache/super.c", i32 117, i32 8}
!384 = !{ptr @.str.181, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/md/bcache/super.c", i32 121, i32 8}
!386 = !{ptr @.str.182, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/md/bcache/super.c", i32 125, i32 8}
!388 = !{ptr @.str.183, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/md/bcache/super.c", i32 129, i32 8}
!390 = !{ptr @.str.184, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/md/bcache/super.c", i32 133, i32 8}
!392 = !{ptr @.str.185, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/md/bcache/super.c", i32 142, i32 8}
!394 = !{ptr @.str.186, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/md/bcache/super.c", i32 148, i32 8}
!396 = !{ptr @.str.187, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/md/bcache/super.c", i32 157, i32 8}
!398 = !{ptr @.str.188, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/md/bcache/super.c", i32 80, i32 5}
!400 = !{ptr @.str.189, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @get_bucket_size._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @get_bucket_size._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @register_device_async.__key, !404, !"__key", i1 false, i1 false}
!404 = !{!"../drivers/md/bcache/super.c", i32 2520, i32 3}
!405 = !{ptr @.str.190, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @register_device_async.__key.191, !404, !"__key", i1 false, i1 false}
!407 = !{ptr @.str.192, !404, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @register_device_async.__key.193, !409, !"__key", i1 false, i1 false}
!409 = !{!"../drivers/md/bcache/super.c", i32 2522, i32 3}
!410 = !{ptr @register_device_async.__key.194, !409, !"__key", i1 false, i1 false}
!411 = !{ptr @.str.195, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/md/bcache/super.c", i32 2480, i32 3}
!413 = !{ptr @.str.196, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @register_bdev_worker._entry, !412, !"_entry", i1 false, i1 false}
!415 = !{ptr @register_bdev_worker._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.197, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/md/bcache/super.c", i32 2509, i32 3}
!418 = !{ptr @.str.198, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @register_cache_worker._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @register_cache_worker._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.199, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/md/bcache/super.c", i32 1468, i32 8}
!423 = !{ptr @.str.200, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/md/bcache/super.c", i32 1474, i32 2}
!425 = !{ptr @.str.201, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @register_bdev._entry, !424, !"_entry", i1 false, i1 false}
!427 = !{ptr @register_bdev._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.202, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/md/bcache/super.c", i32 1483, i32 9}
!430 = !{ptr @.str.204, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/md/bcache/super.c", i32 1491, i32 2}
!432 = !{ptr @register_bdev._entry.203, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @register_bdev._entry_ptr.205, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @cached_dev_init.__key, !435, !"__key", i1 false, i1 false}
!435 = !{!"../drivers/md/bcache/super.c", i32 1411, i32 2}
!436 = !{ptr @.str.206, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @cached_dev_init.__key.207, !438, !"__key", i1 false, i1 false}
!438 = !{!"../drivers/md/bcache/super.c", i32 1414, i32 2}
!439 = !{ptr @.str.208, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.209, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/md/bcache/super.c", i32 1167, i32 2}
!442 = !{ptr @.str.210, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @cached_dev_detach_finish._entry, !441, !"_entry", i1 false, i1 false}
!444 = !{ptr @cached_dev_detach_finish._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @bcache_cached_ops, !446, !"bcache_cached_ops", i1 false, i1 false}
!446 = !{!"../drivers/md/bcache/super.c", i32 765, i32 45}
!447 = !{ptr @.str.211, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/md/bcache/super.c", i32 2369, i32 10}
!449 = !{ptr @.str.212, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/md/bcache/super.c", i32 2371, i32 10}
!451 = distinct !{null, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/md/bcache/super.c", i32 2373, i32 10}
!453 = !{ptr @.str.214, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/md/bcache/super.c", i32 2378, i32 9}
!455 = !{ptr @.str.215, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/md/bcache/super.c", i32 2392, i32 2}
!457 = !{ptr @.str.216, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @register_cache._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @register_cache._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @register_cache._entry.217, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../drivers/md/bcache/super.c", i32 2399, i32 3}
!462 = !{ptr @register_cache._entry_ptr.218, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.219, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/md/bcache/super.c", i32 2258, i32 9}
!465 = !{ptr @.str.220, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/md/bcache/super.c", i32 2264, i32 9}
!467 = !{ptr @.str.221, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/md/bcache/super.c", i32 2270, i32 9}
!469 = !{ptr @.str.222, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/md/bcache/super.c", i32 2275, i32 9}
!471 = !{ptr @.str.223, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/md/bcache/super.c", i32 2280, i32 9}
!473 = !{ptr @.str.224, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/md/bcache/super.c", i32 2285, i32 9}
!475 = !{ptr @.str.225, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/md/bcache/super.c", i32 2290, i32 9}
!477 = !{ptr @.str.226, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/md/bcache/super.c", i32 2297, i32 9}
!479 = !{ptr @.str.227, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/md/bcache/super.c", i32 2305, i32 9}
!481 = !{ptr @.str.228, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/md/bcache/super.c", i32 2311, i32 9}
!483 = !{ptr @.str.229, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/md/bcache/super.c", i32 2341, i32 3}
!485 = !{ptr @cache_alloc._entry, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @cache_alloc._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.230, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/md/bcache/super.c", i32 2159, i32 12}
!489 = !{ptr @.str.231, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/md/bcache/super.c", i32 2169, i32 41}
!491 = !{ptr @.str.232, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/md/bcache/super.c", i32 2170, i32 42}
!493 = !{ptr @.str.233, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/md/bcache/super.c", i32 2180, i32 15}
!495 = !{ptr @.str.234, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/md/bcache/super.c", i32 2181, i32 45}
!497 = !{ptr @.str.235, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/md/bcache/super.c", i32 2189, i32 8}
!499 = !{ptr @.str.236, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/md/bcache/super.c", i32 1993, i32 9}
!501 = !{ptr @.str.237, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/md/bcache/super.c", i32 1997, i32 3}
!503 = !{ptr @.str.238, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @run_cache_set.__UNIQUE_ID_ddebug284, !502, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!505 = !{ptr @.str.239, !502, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @.str.240, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/md/bcache/super.c", i32 1999, i32 9}
!508 = !{ptr @.str.241, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/md/bcache/super.c", i32 2005, i32 9}
!510 = !{ptr @.str.242, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/md/bcache/super.c", i32 2017, i32 9}
!512 = !{ptr @.str.243, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/md/bcache/super.c", i32 2021, i32 9}
!514 = !{ptr @.str.244, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/md/bcache/super.c", i32 2035, i32 9}
!516 = !{ptr @.str.245, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/md/bcache/super.c", i32 2041, i32 3}
!518 = !{ptr @run_cache_set.__UNIQUE_ID_ddebug285, !517, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!519 = !{ptr @.str.246, !517, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.247, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/md/bcache/super.c", i32 2050, i32 9}
!522 = !{ptr @.str.248, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/md/bcache/super.c", i32 2067, i32 9}
!524 = !{ptr @.str.249, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/md/bcache/super.c", i32 2073, i32 3}
!526 = !{ptr @run_cache_set._entry, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @run_cache_set._entry_ptr, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.250, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/md/bcache/super.c", i32 2090, i32 9}
!530 = !{ptr @.str.251, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/md/bcache/super.c", i32 2094, i32 9}
!532 = !{ptr @.str.252, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/md/bcache/super.c", i32 2118, i32 8}
!534 = !{ptr @.str.254, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/md/bcache/super.c", i32 2127, i32 3}
!536 = !{ptr @run_cache_set._entry.253, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @run_cache_set._entry_ptr.255, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.256, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/md/bcache/super.c", i32 2145, i32 25}
!540 = !{ptr @.str.257, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/md/bcache/super.c", i32 715, i32 5}
!542 = !{ptr @.str.258, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @prio_read._entry, !541, !"_entry", i1 false, i1 false}
!544 = !{ptr @prio_read._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.260, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/md/bcache/super.c", i32 720, i32 5}
!547 = !{ptr @prio_read._entry.259, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @prio_read._entry_ptr.261, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.262, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/md/bcache/super.c", i32 466, i32 10}
!551 = !{ptr @.str.263, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/md/bcache/super.c", i32 2413, i32 1}
!553 = !{ptr @ksysfs_register_quiet, !552, !"ksysfs_register_quiet", i1 false, i1 false}
!554 = !{ptr @.str.264, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/md/bcache/super.c", i32 2414, i32 1}
!556 = !{ptr @ksysfs_pendings_cleanup, !555, !"ksysfs_pendings_cleanup", i1 false, i1 false}
!557 = !{ptr @.str.265, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/md/bcache/super.c", i32 2710, i32 3}
!559 = !{ptr @.str.266, !558, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @bch_pending_bdevs_cleanup._entry, !558, !"_entry", i1 false, i1 false}
!561 = !{ptr @bch_pending_bdevs_cleanup._entry_ptr, !558, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.267, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/md/bcache/super.c", i32 2844, i32 3}
!564 = !{ptr @.str.268, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @check_module_parameters._entry, !563, !"_entry", i1 false, i1 false}
!566 = !{ptr @check_module_parameters._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.270, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/md/bcache/super.c", i32 2852, i32 3}
!569 = !{ptr @check_module_parameters._entry.269, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @check_module_parameters._entry_ptr.271, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.273, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/md/bcache/super.c", i32 2858, i32 3}
!573 = !{ptr @check_module_parameters._entry.272, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @check_module_parameters._entry_ptr.274, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @__param_str_bch_cutoff_writeback, !137, !"__param_str_bch_cutoff_writeback", i1 false, i1 false}
!576 = !{ptr @__param_str_bch_cutoff_writeback_sync, !142, !"__param_str_bch_cutoff_writeback_sync", i1 false, i1 false}
!577 = !{!"sp"}
!578 = !{i32 1, !"wchar_size", i32 2}
!579 = !{i32 1, !"min_enum_size", i32 4}
!580 = !{i32 8, !"branch-target-enforcement", i32 0}
!581 = !{i32 8, !"sign-return-address", i32 0}
!582 = !{i32 8, !"sign-return-address-all", i32 0}
!583 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!584 = !{i32 7, !"uwtable", i32 1}
!585 = !{i32 7, !"frame-pointer", i32 2}
!586 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!587 = !{i64 2148733996}
!588 = !{i64 2148649281, i64 2148649313, i64 2148649342, i64 2148649376, i64 2148649407, i64 2148649430}
!589 = !{i64 2148734225}
!590 = !{!"branch_weights", i32 1, i32 2000}
!591 = !{i64 2154453863, i64 2154454355, i64 2154453900, i64 2154453956, i64 2154453990, i64 2154454014, i64 2154454055, i64 2154454076, i64 2154454104, i64 2154454138}
!592 = !{i64 2154444718}
!593 = !{i64 2148473159, i64 2148473164, i64 2148473177, i64 2148473221, i64 2148473255, i64 2148473276}
!594 = !{i64 2148648561, i64 2148648587, i64 2148648616, i64 2148648650, i64 2148648681, i64 2148648704}
!595 = !{i64 2154714305, i64 2154714795, i64 2154714342, i64 2154714398, i64 2154714432, i64 2154714456, i64 2154714497, i64 2154714518, i64 2154714546, i64 2154714580}
!596 = !{i64 2148737037}
!597 = !{i64 2148651746, i64 2148651778, i64 2148651807, i64 2148651841, i64 2148651872, i64 2148651895}
!598 = !{i64 2148737266}
!599 = !{i64 2154716084, i64 2154716574, i64 2154716121, i64 2154716177, i64 2154716211, i64 2154716235, i64 2154716276, i64 2154716297, i64 2154716325, i64 2154716359}
!600 = !{!"branch_weights", i32 2000, i32 1}
!601 = !{i64 2154451953, i64 2154452445, i64 2154451990, i64 2154452046, i64 2154452080, i64 2154452104, i64 2154452145, i64 2154452166, i64 2154452194, i64 2154452228}
!602 = !{i64 2148908461}
!603 = !{i64 1155329, i64 1155346, i64 1155370, i64 1155396, i64 1155414}
!604 = !{i64 2148908831}
!605 = !{i64 2154752660}
!606 = !{i64 2148738116}
!607 = !{i64 2148652556, i64 2148652588, i64 2148652617, i64 2148652651, i64 2148652682, i64 2148652705}
!608 = !{i64 2150526289}
!609 = !{i64 2154791337}
!610 = !{i64 2154825284}
!611 = !{!"auto-init"}
!612 = !{i64 2148651026, i64 2148651052, i64 2148651081, i64 2148651115, i64 2148651146, i64 2148651169}
!613 = !{i32 0, i32 33}
!614 = !{i16 0, i16 17}
!615 = !{i64 2154844971}
!616 = !{i64 2154895150, i64 2154895641, i64 2154895187, i64 2154895243, i64 2154895277, i64 2154895301, i64 2154895342, i64 2154895363, i64 2154895391, i64 2154895425}
!617 = !{i64 2153291075, i64 2153291558, i64 2153291112, i64 2153291168, i64 2153291202, i64 2153291226, i64 2153291267, i64 2153291288, i64 2153291316, i64 2153291350}
!618 = !{i64 2154700302, i64 2154700792, i64 2154700339, i64 2154700395, i64 2154700429, i64 2154700453, i64 2154700494, i64 2154700515, i64 2154700543, i64 2154700577}
!619 = !{i64 2154490754}
!620 = !{i64 2148498346, i64 2148498626, i64 2148498960, i64 2148499294}
!621 = !{i8 0, i8 2}
!622 = !{i64 2154991515}
!623 = !{i64 2154966618}
!624 = !{i64 2154900591, i64 2154901082, i64 2154900628, i64 2154900684, i64 2154900718, i64 2154900742, i64 2154900783, i64 2154900804, i64 2154900832, i64 2154900866}
!625 = !{i64 2154904911, i64 2154905402, i64 2154904948, i64 2154905004, i64 2154905038, i64 2154905062, i64 2154905103, i64 2154905124, i64 2154905152, i64 2154905186}
!626 = !{i64 2154909503, i64 2154909994, i64 2154909540, i64 2154909596, i64 2154909630, i64 2154909654, i64 2154909695, i64 2154909716, i64 2154909744, i64 2154909778}
!627 = !{i64 2154914035, i64 2154914526, i64 2154914072, i64 2154914128, i64 2154914162, i64 2154914186, i64 2154914227, i64 2154914248, i64 2154914276, i64 2154914310}
!628 = !{i64 2154918282, i64 2154918773, i64 2154918319, i64 2154918375, i64 2154918409, i64 2154918433, i64 2154918474, i64 2154918495, i64 2154918523, i64 2154918557}
!629 = !{i64 2154764948, i64 2154765439, i64 2154764985, i64 2154765041, i64 2154765075, i64 2154765099, i64 2154765140, i64 2154765161, i64 2154765189, i64 2154765223}
!630 = !{i64 2154770636, i64 2154771127, i64 2154770673, i64 2154770729, i64 2154770763, i64 2154770787, i64 2154770828, i64 2154770849, i64 2154770877, i64 2154770911}
