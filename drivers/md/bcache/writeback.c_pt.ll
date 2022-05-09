; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/writeback.c_pt.bc'
source_filename = "../drivers/md/bcache/writeback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.86 }
%union.anon.86 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.92 }
%struct.rb_root = type { ptr }
%struct.anon.92 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.93, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.93 = type { [8 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.96 = type { [8 x i64] }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.97, %union.anon.98, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.97 = type { i32, i32, i32, i32, ptr }
%union.anon.98 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.uuid_entry = type { %union.anon.94 }
%union.anon.94 = type { %struct.anon.95, [56 x i8] }
%struct.anon.95 = type { [16 x i8], [32 x i8], i32, i32, i32, i32, i64 }
%struct.btree_iter = type { i32, i32, ptr, [4 x %struct.btree_iter_set] }
%struct.btree_iter_set = type { ptr, ptr }
%struct.sectors_dirty_init = type { %struct.btree_op, i32, i32, %struct.bkey }
%struct.btree_op = type { %struct.wait_queue_entry, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.btree = type { %struct.hlist_node, %union.anon.90, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%union.anon.90 = type { [8 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.btree_write = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bch_dirty_init_state = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, [64 x %struct.dirty_init_thrd_info] }
%struct.dirty_init_thrd_info = type { ptr, ptr }
%struct.btree_keys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.cached_dev = type { %struct.list_head, %struct.bcache_device, ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.closure, %struct.semaphore, %struct.refcount_struct, %struct.work_struct, %struct.atomic_t, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.bch_ratelimit, %struct.delayed_work, %struct.semaphore, ptr, ptr, %struct.keybuf, ptr, %struct.closure_waitlist, %struct.atomic_t, [128 x %struct.io], [129 x %struct.hlist_head], %struct.list_head, %struct.spinlock, %struct.cache_accounting, i32, i8, i8, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32 }
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
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.io = type { %struct.hlist_node, %struct.list_head, i32, i32, i64 }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.87], %struct.anon.88, i32, ptr, %struct.anon.89, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.anon.87 = type { i32, i32, i32, i32, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.dirty_io = type { %struct.closure, ptr, i16, %struct.bio }
%struct.anon = type { ptr, ptr, %struct.llist_node, ptr }
%struct.keylist = type { %union.anon.102, %union.anon.103, [16 x i64] }
%union.anon.102 = type { ptr }
%union.anon.103 = type { ptr }

@bch_sectors_dirty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014bcache: %s() sectors dirty init failed: cannot allocate memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bch_sectors_dirty_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/md/bcache/writeback.c\00", [34 x i8] zeroinitializer }, align 32
@bch_sectors_dirty_init._entry_ptr = internal global ptr @bch_sectors_dirty_init._entry, section ".printk_index", align 4
@bch_sectors_dirty_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->idx_lock\00", [47 x i8] zeroinitializer }, align 32
@bch_sectors_dirty_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->wait\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bch_dirty_init[%d]\00", [45 x i8] zeroinitializer }, align 32
@bch_sectors_dirty_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bcache: %s() fails to run thread bch_dirty_init[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@bch_sectors_dirty_init._entry_ptr.9 = internal global ptr @bch_sectors_dirty_init._entry.7, section ".printk_index", align 4
@bch_cached_dev_writeback_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dc->writeback_lock\00", [44 x i8] zeroinitializer }, align 32
@bch_cached_dev_writeback_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&dc->writeback_rate_update)->work)\00", [41 x i8] zeroinitializer }, align 32
@bch_cached_dev_writeback_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&dc->writeback_rate_update)->timer\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcache_writeback_wq\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcache_writeback\00", [47 x i8] zeroinitializer }, align 32
@offset_to_stripe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013bcache: %s() Invalid stripe %llu (>= nr_stripes %d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"offset_to_stripe\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/md/bcache/writeback.h\00", [34 x i8] zeroinitializer }, align 32
@offset_to_stripe._entry_ptr = internal global ptr @offset_to_stripe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@bch_root_node_dirty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014bcache: %s() sectors dirty init failed, ret=%d!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bch_root_node_dirty_init\00", [39 x i8] zeroinitializer }, align 32
@bch_root_node_dirty_init._entry_ptr = internal global ptr @bch_root_node_dirty_init._entry, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reading dirty data from cache\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_writeback = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/bcache.h\00", [34 x i8] zeroinitializer }, align 32
@trace_bcache_writeback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@closure_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cl->work)\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_writeback_collision = external dso_local global %struct.tracepoint, align 4
@trace_bcache_writeback_collision.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 966, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 974, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 977, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 987, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 994, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1012, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1031, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1036, i32 43 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1042, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant [33 x i8] c"../drivers/md/bcache/writeback.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 66, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 860, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 33, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 34, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 35, i32 39 }
@___asan_gen_.120 = private constant [33 x i8] c"../drivers/md/bcache/writeback.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 421, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bcache.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 492, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 108, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"../drivers/md/bcache/closure.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 247, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @bch_root_node_dirty_init._entry, ptr @bch_root_node_dirty_init._entry_ptr, ptr @bch_sectors_dirty_init._entry, ptr @bch_sectors_dirty_init._entry.7, ptr @bch_sectors_dirty_init._entry_ptr, ptr @bch_sectors_dirty_init._entry_ptr.9, ptr @offset_to_stripe._entry, ptr @offset_to_stripe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bch_sectors_dirty_init.__key, ptr @.str.3, ptr @bch_sectors_dirty_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @bch_cached_dev_writeback_init.__key, ptr @.str.10, ptr @bch_cached_dev_writeback_init.__key.11, ptr @.str.12, ptr @bch_cached_dev_writeback_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @sema_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @closure_queue.__key, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_sectors_dirty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_sectors_dirty_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_sectors_dirty_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_sectors_dirty_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_writeback_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_writeback_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_writeback_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_to_stripe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_root_node_dirty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @closure_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcache_dev_sectors_dirty_add(ptr noundef %c, i32 noundef %inode, i64 noundef %offset, i32 noundef %nr_sectors) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 10
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devices, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %inode
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end:                                           ; preds = %entry
  %stripe_size.i = getelementptr inbounds %struct.bcache_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %stripe_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stripe_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offset)
  %cmp164.i = icmp ult i64 %offset, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !82

if.then168.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i = trunc i64 %offset to i32
  %div172.i = udiv i32 %conv169.i, %5
  %conv173.i = zext i32 %div172.i to i64
  br label %if.end178.i

if.else174.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %offset) #15, !srcloc !83
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.else174.i, %if.then168.i
  %offset.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %nr_stripes.i = getelementptr inbounds %struct.bcache_device, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_stripes.i, align 4
  %conv180.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0.i, i64 %conv180.i)
  %cmp181.not.i = icmp ult i64 %offset.addr.0.i, %conv180.i
  br i1 %cmp181.not.i, label %offset_to_stripe.exit, label %offset_to_stripe.exit.thread, !prof !82

offset_to_stripe.exit.thread:                     ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #14
  %call192.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %offset.addr.0.i, i32 noundef %8) #16
  br label %cleanup39

offset_to_stripe.exit:                            ; preds = %if.end178.i
  %conv194.i = trunc i64 %offset.addr.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv194.i)
  %cmp = icmp slt i32 %conv194.i, 0
  br i1 %cmp, label %offset_to_stripe.exit.cleanup39_crit_edge, label %if.end2

offset_to_stripe.exit.cleanup39_crit_edge:        ; preds = %offset_to_stripe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end2:                                          ; preds = %offset_to_stripe.exit
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %9 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uuids, align 8
  %flags.i = getelementptr %struct.uuid_entry, ptr %10, i32 %inode, i32 0, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end2.if.end7_crit_edge, label %if.then6

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %flash_dev_dirty_sectors = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flash_dev_dirty_sectors, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %flash_dev_dirty_sectors, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flash_dev_dirty_sectors, ptr %flash_dev_dirty_sectors, i32 %nr_sectors, ptr elementtype(i32) %flash_dev_dirty_sectors) #12, !srcloc !84
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end2.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sectors)
  %tobool9.not79 = icmp eq i32 %nr_sectors, 0
  br i1 %tobool9.not79, label %if.end7.cleanup39_crit_edge, label %while.body.lr.ph

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

while.body.lr.ph:                                 ; preds = %if.end7
  %15 = ptrtoint ptr %stripe_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stripe_size.i, align 4
  %sub = add i32 %16, -1
  %17 = trunc i64 %offset to i32
  %conv8 = and i32 %sub, %17
  %stripe_sectors_dirty = getelementptr inbounds %struct.bcache_device, ptr %3, i32 0, i32 9
  %full_dirty_stripes36 = getelementptr inbounds %struct.bcache_device, ptr %3, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %nr_sectors.addr.083 = phi i32 [ %nr_sectors, %while.body.lr.ph ], [ %sub38, %cleanup.while.body_crit_edge ]
  %stripe.081 = phi i32 [ %conv194.i, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %stripe_offset.080 = phi i32 [ %conv8, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sectors.addr.083)
  %cmp10 = icmp slt i32 %nr_sectors.addr.083, 0
  %18 = tail call i32 @llvm.abs.i32(i32 %nr_sectors.addr.083, i1 false)
  %19 = ptrtoint ptr %stripe_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stripe_size.i, align 4
  %sub14 = sub i32 %20, %stripe_offset.080
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %sub14)
  %sub25 = sub i32 0, %21
  %s.0 = select i1 %cmp10, i32 %sub25, i32 %21
  %22 = ptrtoint ptr %nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_stripes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.081, i32 %23)
  %cmp27.not = icmp slt i32 %stripe.081, %23
  br i1 %cmp27.not, label %if.end30, label %while.body.cleanup39_crit_edge

while.body.cleanup39_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end30:                                         ; preds = %while.body
  %24 = ptrtoint ptr %stripe_sectors_dirty to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stripe_sectors_dirty, align 4
  %add.ptr = getelementptr %struct.atomic_t, ptr %25, i32 %stripe.081
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 %s.0, ptr elementtype(i32) %add.ptr) #12, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %27 = ptrtoint ptr %stripe_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stripe_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %28)
  %cmp33 = icmp eq i32 %asmresult.i.i.i, %28
  %29 = ptrtoint ptr %full_dirty_stripes36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %full_dirty_stripes36, align 4
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef %stripe.081, ptr noundef %30) #12
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef %stripe.081, ptr noundef %30) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35
  %sub38 = sub i32 %nr_sectors.addr.083, %s.0
  %inc = add nsw i32 %stripe.081, 1
  %tobool9.not = icmp eq i32 %sub38, 0
  br i1 %tobool9.not, label %cleanup.cleanup39_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.cleanup39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup.cleanup39_crit_edge, %while.body.cleanup39_crit_edge, %if.end7.cleanup39_crit_edge, %offset_to_stripe.exit.cleanup39_crit_edge, %offset_to_stripe.exit.thread, %entry.cleanup39_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_sectors_dirty_init(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.btree_iter, align 4
  %op = alloca %struct.sectors_dirty_init, align 8
  %name = alloca [32 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #12
  %c1 = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %root = getelementptr inbounds %struct.cache_set, ptr %2, i32 0, i32 52
  %3 = call ptr @memset(ptr %name, i32 255, i32 32)
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %level = getelementptr inbounds %struct.btree, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %level, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = getelementptr inbounds i8, ptr %op, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %8, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %private.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op, i32 0, i32 1
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %private.i, align 4
  %func.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @autoremove_wake_function, ptr %func.i, align 8
  %entry3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op, i32 0, i32 3
  %16 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry3.i, ptr %prev.i.i, align 8
  %18 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %op, align 8
  %lock.i = getelementptr inbounds %struct.btree_op, ptr %op, i32 0, i32 1
  %19 = ptrtoint ptr %lock.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %lock.i, align 4
  %id = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 3
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %inode = getelementptr inbounds %struct.sectors_dirty_init, ptr %op, i32 0, i32 1
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %inode, align 8
  %count = getelementptr inbounds %struct.sectors_dirty_init, ptr %op, i32 0, i32 2
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %count, align 4
  %start = getelementptr inbounds %struct.sectors_dirty_init, ptr %op, i32 0, i32 3
  %conv5 = zext i32 %21 to i64
  %or = or i64 %conv5, -9223372036854775808
  %24 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or, ptr %start, align 8
  %.compoundliteral.sroa.2.0.start.sroa_idx = getelementptr inbounds %struct.sectors_dirty_init, ptr %op, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %.compoundliteral.sroa.2.0.start.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %.compoundliteral.sroa.2.0.start.sroa_idx, align 8
  %keys = getelementptr inbounds %struct.btree, ptr %5, i32 0, i32 10
  %call = call ptr @bch_btree_iter_init(ptr noundef %keys, ptr noundef nonnull %iter, ptr noundef null) #12
  %26 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root, align 4
  %keys8195 = getelementptr inbounds %struct.btree, ptr %27, i32 0, i32 10
  %call9196 = call ptr @bch_btree_iter_next_filter(ptr noundef nonnull %iter, ptr noundef %keys8195, ptr noundef nonnull @bch_ptr_invalid) #12
  %tobool.not197 = icmp eq ptr %call9196, null
  br i1 %tobool.not197, label %if.then.cleanup116_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup116_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

for.body:                                         ; preds = %sectors_dirty_init_fn.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %call9198 = phi ptr [ %call9, %sectors_dirty_init_fn.exit.for.body_crit_edge ], [ %call9196, %if.then.for.body_crit_edge ]
  %28 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root, align 4
  %30 = ptrtoint ptr %call9198 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %call9198, align 8
  %and.i.i176 = and i64 %31, 1048575
  %32 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inode, align 8
  %conv.i = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i176, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i.i176, %conv.i
  br i1 %cmp.i, label %for.body.sectors_dirty_init_fn.exit_crit_edge, label %if.end.i

for.body.sectors_dirty_init_fn.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sectors_dirty_init_fn.exit

if.end.i:                                         ; preds = %for.body
  %34 = and i64 %31, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.i = icmp eq i64 %34, 0
  br i1 %tobool.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %c.i = getelementptr inbounds %struct.btree, ptr %29, i32 0, i32 4
  %35 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c.i, align 4
  %conv5.i = trunc i64 %and.i.i176 to i32
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %call9198, i32 0, i32 1
  %37 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %low.i.i, align 8
  %shr.i30.i = lshr i64 %31, 20
  %and.i31.i = and i64 %shr.i30.i, 65535
  %sub.i = sub i64 %38, %and.i31.i
  %conv9.i = trunc i64 %and.i31.i to i32
  call void @bcache_dev_sectors_dirty_add(ptr noundef %36, i32 noundef %conv5.i, i64 noundef %sub.i, i32 noundef %conv9.i) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i, %if.end.i.if.end10.i_crit_edge
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %count, align 4
  %c11.i = getelementptr inbounds %struct.btree, ptr %29, i32 0, i32 4
  %41 = ptrtoint ptr %c11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c11.i, align 4
  %search_inflight.i = getelementptr inbounds %struct.cache_set, ptr %42, i32 0, i32 37
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %search_inflight.i, i32 noundef 4) #12
  %43 = ptrtoint ptr %search_inflight.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %search_inflight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool13.not.i = icmp eq i32 %44, 0
  br i1 %tobool13.not.i, label %if.end10.i.sectors_dirty_init_fn.exit_crit_edge, label %land.lhs.true.i

if.end10.i.sectors_dirty_init_fn.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sectors_dirty_init_fn.exit

land.lhs.true.i:                                  ; preds = %if.end10.i
  %45 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count, align 4
  %rem.i = urem i32 %46, 500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool15.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true.i.sectors_dirty_init_fn.exit_crit_edge

land.lhs.true.i.sectors_dirty_init_fn.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sectors_dirty_init_fn.exit

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call9198 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %call9198, align 8
  %and.i.i.i = and i64 %48, 1048575
  %49 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %start, align 8
  %and.i4.i.i = and i64 %50, -1048576
  %or.i.i.i = or i64 %and.i4.i.i, %and.i.i.i
  store i64 %or.i.i.i, ptr %start, align 8
  %low.i.i.i = getelementptr inbounds %struct.bkey, ptr %call9198, i32 0, i32 1
  %51 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %low.i.i.i, align 8
  %53 = ptrtoint ptr %.compoundliteral.sroa.2.0.start.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %.compoundliteral.sroa.2.0.start.sroa_idx, align 8
  br label %sectors_dirty_init_fn.exit

sectors_dirty_init_fn.exit:                       ; preds = %if.then16.i, %land.lhs.true.i.sectors_dirty_init_fn.exit_crit_edge, %if.end10.i.sectors_dirty_init_fn.exit_crit_edge, %for.body.sectors_dirty_init_fn.exit_crit_edge
  %54 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %root, align 4
  %keys8 = getelementptr inbounds %struct.btree, ptr %55, i32 0, i32 10
  %call9 = call ptr @bch_btree_iter_next_filter(ptr noundef nonnull %iter, ptr noundef %keys8, ptr noundef nonnull @bch_ptr_invalid) #12
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %sectors_dirty_init_fn.exit.cleanup116_crit_edge, label %sectors_dirty_init_fn.exit.for.body_crit_edge

sectors_dirty_init_fn.exit.for.body_crit_edge:    ; preds = %sectors_dirty_init_fn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sectors_dirty_init_fn.exit.cleanup116_crit_edge:  ; preds = %sectors_dirty_init_fn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 632) #17
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16
  br label %cleanup116

if.end17:                                         ; preds = %if.end
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %2, ptr %call7.i.i, align 8
  %d19 = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %d19 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %d, ptr %d19, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %59 = load volatile i32, ptr @__num_online_cpus, align 4
  %div6.i = lshr i32 %59, 1
  %60 = tail call i32 @llvm.umin.i32(i32 %div6.i, i32 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.inv.i = icmp ugt i32 %59, 1
  %n.0.i = select i1 %cmp.inv.i, i32 %60, i32 1
  %total_threads = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %total_threads to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %n.0.i, ptr %total_threads, align 8
  %key_idx = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %key_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %key_idx, align 4
  %idx_lock = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %idx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @bch_sectors_dirty_init.__key, i16 noundef signext 3) #12
  %started = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %started, i32 noundef 4) #12
  %63 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %started, align 4
  %enough = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 6
  %call.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %enough, i32 noundef 4) #12
  %64 = ptrtoint ptr %enough to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %enough, align 8
  %wait = getelementptr inbounds %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @bch_sectors_dirty_init.__key.4) #12
  %65 = ptrtoint ptr %total_threads to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %total_threads, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp30186 = icmp sgt i32 %66, 0
  br i1 %cmp30186, label %if.end17.do.end36_crit_edge, label %if.end17.for.end80_crit_edge

if.end17.for.end80_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

if.end17.do.end36_crit_edge:                      ; preds = %if.end17
  br label %do.end36

do.end36:                                         ; preds = %for.inc79.do.end36_crit_edge, %if.end17.do.end36_crit_edge
  %i.0187 = phi i32 [ %inc, %for.inc79.do.end36_crit_edge ], [ 0, %if.end17.do.end36_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  %call.i.i170 = call zeroext i1 @__kasan_check_read(ptr noundef %enough, i32 noundef 4) #12
  %67 = ptrtoint ptr %enough to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %enough, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool41.not = icmp eq i32 %68, 0
  br i1 %tobool41.not, label %if.end43, label %do.end36.for.end80_crit_edge

do.end36.for.end80_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

if.end43:                                         ; preds = %do.end36
  %arrayidx = getelementptr %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 8, i32 %i.0187
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %arrayidx, align 8
  %call.i.i171 = call zeroext i1 @__kasan_check_write(ptr noundef %started, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %started, i32 1, i32 3, i32 1) #12
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %started, ptr %started, i32 1, ptr elementtype(i32) %started) #12, !srcloc !84
  %call46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %i.0187)
  %call50 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bch_dirty_init_thread, ptr noundef %arrayidx, i32 noundef -1, ptr noundef nonnull %name) #12
  %cmp.i177 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %do.end65, label %for.inc79

do.end65:                                         ; preds = %if.end43
  %thread179 = getelementptr %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 8, i32 %i.0187, i32 1
  %71 = ptrtoint ptr %thread179 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call50, ptr %thread179, align 4
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %i.0187) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0187)
  %cmp69193.not = icmp eq i32 %i.0187, 0
  br i1 %cmp69193.not, label %do.end65.out_crit_edge, label %do.end65.for.body71_crit_edge

do.end65.for.body71_crit_edge:                    ; preds = %do.end65
  br label %for.body71

do.end65.out_crit_edge:                           ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %do.end65.for.body71_crit_edge
  %i.1194.in = phi i32 [ %i.1194, %for.body71.for.body71_crit_edge ], [ %i.0187, %do.end65.for.body71_crit_edge ]
  %i.1194 = add nsw i32 %i.1194.in, -1
  %thread74 = getelementptr %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 8, i32 %i.1194, i32 1
  %72 = ptrtoint ptr %thread74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %thread74, align 4
  %call75 = call i32 @kthread_stop(ptr noundef %73) #12
  %cmp69 = icmp sgt i32 %i.1194.in, 1
  br i1 %cmp69, label %for.body71.for.body71_crit_edge, label %for.body71.out_crit_edge

for.body71.out_crit_edge:                         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.inc79:                                        ; preds = %if.end43
  %call53 = call i32 @wake_up_process(ptr noundef %call50) #12
  %thread = getelementptr %struct.bch_dirty_init_state, ptr %call7.i.i, i32 0, i32 8, i32 %i.0187, i32 1
  %74 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call50, ptr %thread, align 4
  %inc = add nuw nsw i32 %i.0187, 1
  %75 = ptrtoint ptr %total_threads to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %total_threads, align 8
  %cmp30 = icmp slt i32 %inc, %76
  br i1 %cmp30, label %for.inc79.do.end36_crit_edge, label %for.inc79.for.end80_crit_edge

for.inc79.for.end80_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.inc79.do.end36_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

for.end80:                                        ; preds = %for.inc79.for.end80_crit_edge, %do.end36.for.end80_crit_edge, %if.end17.for.end80_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1003) #12
  %call.i.i172 = call zeroext i1 @__kasan_check_read(ptr noundef %started, i32 noundef 4) #12
  %77 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp89 = icmp eq i32 %78, 0
  br i1 %cmp89, label %for.end80.out_crit_edge, label %lor.lhs.false

for.end80.out_crit_edge:                          ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %for.end80
  %flags = getelementptr inbounds %struct.cache_set, ptr %2, i32 0, i32 6
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags, align 4
  %81 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool92.not = icmp eq i32 %81, 0
  br i1 %tobool92.not, label %if.then93, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then93:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %82 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call97188 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i173189 = call zeroext i1 @__kasan_check_read(ptr noundef %started, i32 noundef 4) #12
  %83 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp100190 = icmp eq i32 %84, 0
  br i1 %cmp100190, label %if.then93.for.end111_crit_edge, label %if.then93.lor.lhs.false102_crit_edge

if.then93.lor.lhs.false102_crit_edge:             ; preds = %if.then93
  br label %lor.lhs.false102

if.then93.for.end111_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end111

lor.lhs.false102:                                 ; preds = %cleanup.lor.lhs.false102_crit_edge, %if.then93.lor.lhs.false102_crit_edge
  %call97191 = phi i32 [ %call97, %cleanup.lor.lhs.false102_crit_edge ], [ %call97188, %if.then93.lor.lhs.false102_crit_edge ]
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %flags, align 4
  %87 = and i32 %86, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool105.not = icmp eq i32 %87, 0
  br i1 %tobool105.not, label %if.end107, label %lor.lhs.false102.for.end111_crit_edge

lor.lhs.false102.for.end111_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end111

if.end107:                                        ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97191)
  %tobool108.not = icmp eq i32 %call97191, 0
  br i1 %tobool108.not, label %cleanup, label %if.end107.__out_crit_edge

if.end107.__out_crit_edge:                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end107
  call void @schedule() #12
  %call97 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i173 = call zeroext i1 @__kasan_check_read(ptr noundef %started, i32 noundef 4) #12
  %88 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %started, align 4
  %cmp100 = icmp eq i32 %89, 0
  br i1 %cmp100, label %cleanup.for.end111_crit_edge, label %cleanup.lor.lhs.false102_crit_edge

cleanup.lor.lhs.false102_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false102

cleanup.for.end111_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end111

for.end111:                                       ; preds = %cleanup.for.end111_crit_edge, %lor.lhs.false102.for.end111_crit_edge, %if.then93.for.end111_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end111, %if.end107.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %out

out:                                              ; preds = %__out, %lor.lhs.false.out_crit_edge, %for.end80.out_crit_edge, %for.body71.out_crit_edge, %do.end65.out_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup116

cleanup116:                                       ; preds = %out, %do.end, %sectors_dirty_init_fn.exit.cleanup116_crit_edge, %if.then.cleanup116_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_iter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_iter_next_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_ptr_invalid(ptr noundef %b, ptr noundef %k) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %key_invalid = getelementptr inbounds %struct.btree_keys_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %key_invalid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_invalid, align 4
  %call = tail call zeroext i1 %3(ptr noundef %b, ptr noundef %k) #12
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sectors_dirty_init_fn(ptr nocapture noundef %_op, ptr nocapture noundef readonly %b, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %and.i = and i64 %1, 1048575
  %inode = getelementptr inbounds %struct.sectors_dirty_init, ptr %_op, i32 0, i32 1
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inode, align 8
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv)
  %cmp = icmp ugt i64 %and.i, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i64 %1, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 4
  %conv5 = trunc i64 %and.i to i32
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %7 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %low.i, align 8
  %shr.i30 = lshr i64 %1, 20
  %and.i31 = and i64 %shr.i30, 65535
  %sub = sub i64 %8, %and.i31
  %conv9 = trunc i64 %and.i31 to i32
  tail call void @bcache_dev_sectors_dirty_add(ptr noundef %6, i32 noundef %conv5, i64 noundef %sub, i32 noundef %conv9)
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %count = getelementptr inbounds %struct.sectors_dirty_init, ptr %_op, i32 0, i32 2
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  %c11 = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %11 = ptrtoint ptr %c11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c11, align 4
  %search_inflight = getelementptr inbounds %struct.cache_set, ptr %12, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %search_inflight, i32 noundef 4) #12
  %13 = ptrtoint ptr %search_inflight to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %search_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %land.lhs.true

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end10
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %rem = urem i32 %16, 500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool15.not = icmp eq i32 %rem, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %start = getelementptr inbounds %struct.sectors_dirty_init, ptr %_op, i32 0, i32 3
  %17 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %k, align 8
  %and.i.i = and i64 %18, 1048575
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start, align 8
  %and.i4.i = and i64 %20, -1048576
  %or.i.i = or i64 %and.i4.i, %and.i.i
  store i64 %or.i.i, ptr %start, align 8
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %21 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %low.i.i, align 8
  %low.i5.i = getelementptr inbounds %struct.sectors_dirty_init, ptr %_op, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %low.i5.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %low.i5.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then16 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_dirty_init_thread(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %op.i = alloca %struct.sectors_dirty_init, align 8
  %iter = alloca %struct.btree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #12
  %4 = call ptr @memset(ptr %iter, i32 255, i32 44)
  %root = getelementptr inbounds %struct.cache_set, ptr %3, i32 0, i32 52
  %5 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root, align 4
  %keys = getelementptr inbounds %struct.btree, ptr %6, i32 0, i32 10
  %call = call ptr @bch_btree_iter_init(ptr noundef %keys, ptr noundef nonnull %iter, ptr noundef null) #12
  %7 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root, align 4
  %keys4 = getelementptr inbounds %struct.btree, ptr %8, i32 0, i32 10
  %call5 = call ptr @bch_btree_iter_next_filter(ptr noundef nonnull %iter, ptr noundef %keys4, ptr noundef nonnull @bch_ptr_bad) #12
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.body9, label %while.cond.preheader, !prof !89

while.cond.preheader:                             ; preds = %entry
  %idx_lock = getelementptr inbounds %struct.bch_dirty_init_state, ptr %1, i32 0, i32 4
  %key_idx = getelementptr inbounds %struct.bch_dirty_init_state, ptr %1, i32 0, i32 3
  %d = getelementptr inbounds %struct.bch_dirty_init_state, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %op.i, i32 16
  %private.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 1
  %func.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 2
  %entry3.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.btree_op, ptr %op.i, i32 0, i32 1
  %inode.i = getelementptr inbounds %struct.sectors_dirty_init, ptr %op.i, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.sectors_dirty_init, ptr %op.i, i32 0, i32 2
  %start.i = getelementptr inbounds %struct.sectors_dirty_init, ptr %op.i, i32 0, i32 3
  %.compoundliteral.sroa.2.0.start.sroa_idx.i = getelementptr inbounds %struct.sectors_dirty_init, ptr %op.i, i32 0, i32 3, i32 1
  br label %while.cond

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 882, 0\0A.popsection", ""() #12, !srcloc !90
  unreachable

while.cond:                                       ; preds = %if.end39, %while.cond.preheader
  %p.0 = phi ptr [ null, %if.end39 ], [ %call5, %while.cond.preheader ]
  %prev_idx.0 = phi i32 [ %11, %if.end39 ], [ 0, %while.cond.preheader ]
  call void @_raw_spin_lock(ptr noundef %idx_lock) #12
  %10 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_idx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %key_idx, align 4
  call void @_raw_spin_unlock(ptr noundef %idx_lock) #12
  %sub = sub i32 %11, %prev_idx.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool19.not75 = icmp eq i32 %sub, 0
  br i1 %tobool19.not75, label %while.end, label %while.cond.while.body20_crit_edge

while.cond.while.body20_crit_edge:                ; preds = %while.cond
  br label %while.body20

while.body20:                                     ; preds = %if.then25.while.body20_crit_edge, %while.cond.while.body20_crit_edge
  %skip_nr.076 = phi i32 [ %dec, %if.then25.while.body20_crit_edge ], [ %sub, %while.cond.while.body20_crit_edge ]
  %12 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root, align 4
  %keys22 = getelementptr inbounds %struct.btree, ptr %13, i32 0, i32 10
  %call23 = call ptr @bch_btree_iter_next_filter(ptr noundef nonnull %iter, ptr noundef %keys22, ptr noundef nonnull @bch_ptr_bad) #12
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %while.body20
  %dec = add i32 %skip_nr.076, -1
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 907, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %if.then25.if.then35_crit_edge, label %if.then25.while.body20_crit_edge

if.then25.while.body20_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body20

if.then25.if.then35_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.else:                                          ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #14
  %enough = getelementptr inbounds %struct.bch_dirty_init_state, ptr %1, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %enough, i32 noundef 4) #12
  %14 = ptrtoint ptr %enough to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %enough, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !91
  br label %do.end46

while.end:                                        ; preds = %while.cond
  %tobool34.not = icmp eq ptr %p.0, null
  br i1 %tobool34.not, label %while.end.if.end39_crit_edge, label %while.end.if.then35_crit_edge

while.end.if.then35_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

while.end.if.end39_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then35:                                        ; preds = %while.end.if.then35_crit_edge, %if.then25.if.then35_crit_edge
  %p.1.lcssa80 = phi ptr [ %p.0, %while.end.if.then35_crit_edge ], [ %call23, %if.then25.if.then35_crit_edge ]
  %15 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #12
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %9, align 8
  %18 = call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %22 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %private.i.i, align 4
  %23 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @autoremove_wake_function, ptr %func.i.i, align 8
  %24 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry3.i.i, ptr %9, align 8
  %26 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %op.i, align 8
  %27 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %lock.i.i, align 4
  %id.i = getelementptr inbounds %struct.bcache_device, ptr %16, i32 0, i32 3
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %30 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %inode.i, align 8
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %count.i, align 4
  %conv.i = zext i32 %29 to i64
  %or.i = or i64 %conv.i, -9223372036854775808
  %32 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or.i, ptr %start.i, align 8
  %33 = ptrtoint ptr %.compoundliteral.sroa.2.0.start.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %.compoundliteral.sroa.2.0.start.sroa_idx.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then19.i, %if.then35
  %34 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %root, align 4
  %level.i = getelementptr inbounds %struct.btree, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %level.i, align 2
  %conv3.i = zext i8 %37 to i32
  %sub.i = add nsw i32 %conv3.i, -1
  %38 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %lock.i.i, align 4
  %conv5.i = sext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv5.i)
  %cmp.i = icmp sle i32 %sub.i, %conv5.i
  %c8.i = getelementptr inbounds %struct.btree, ptr %35, i32 0, i32 4
  %40 = ptrtoint ptr %c8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c8.i, align 4
  %call.i71 = call ptr @bch_btree_node_get(ptr noundef %41, ptr noundef nonnull %op.i, ptr noundef nonnull %p.1.lcssa80, i32 noundef %sub.i, i1 noundef zeroext %cmp.i, ptr noundef %35) #12
  %cmp.i.i72 = icmp ugt ptr %call.i71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i72, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %call14.i = call i32 @bch_btree_map_keys_recurse(ptr noundef %call.i71, ptr noundef nonnull %op.i, ptr noundef %start.i, ptr noundef nonnull @sectors_dirty_init_fn, i32 noundef 0) #12
  br i1 %cmp.i, label %if.then.i.i, label %if.then.i.rw_unlock.exit.i_crit_edge

if.then.i.rw_unlock.exit.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_unlock.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %seq.i.i = getelementptr inbounds %struct.btree, ptr %call.i71, i32 0, i32 2
  %42 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seq.i.i, align 8
  %inc.i.i = add i32 %43, 1
  store i32 %inc.i.i, ptr %seq.i.i, align 8
  br label %rw_unlock.exit.i

rw_unlock.exit.i:                                 ; preds = %if.then.i.i, %if.then.i.rw_unlock.exit.i_crit_edge
  %cond.i.i = phi ptr [ @up_write, %if.then.i.i ], [ @up_read, %if.then.i.rw_unlock.exit.i_crit_edge ]
  %lock.i46.i = getelementptr inbounds %struct.btree, ptr %call.i71, i32 0, i32 3
  call void %cond.i.i(ptr noundef %lock.i46.i) #12, !callees !92
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %call.i71 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %rw_unlock.exit.i
  %_r.0.i = phi i32 [ %44, %if.else.i ], [ %call14.i, %rw_unlock.exit.i ]
  %cmp17.i = icmp eq i32 %_r.0.i, -11
  br i1 %cmp17.i, label %if.then19.i, label %if.else22.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i = call i32 @schedule_timeout_interruptible(i32 noundef 10) #12
  br label %do.body.i

if.else22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_r.0.i)
  %cmp23.i = icmp slt i32 %_r.0.i, 0
  br i1 %cmp23.i, label %bch_root_node_dirty_init.exit.thread, label %bch_root_node_dirty_init.exit

bch_root_node_dirty_init.exit.thread:             ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %_r.0.i) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #12
  br label %do.end46

bch_root_node_dirty_init.exit:                    ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #12
  br label %if.end39

if.end39:                                         ; preds = %bch_root_node_dirty_init.exit, %while.end.if.end39_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 917, i32 noundef 0) #12
  %call.i73 = call i32 @__cond_resched() #12
  br label %while.cond

do.end46:                                         ; preds = %bch_root_node_dirty_init.exit.thread, %if.else
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %started = getelementptr inbounds %struct.bch_dirty_init_state, ptr %1, i32 0, i32 5
  %call.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef %started, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  call void @llvm.prefetch.p0(ptr %started, i32 1, i32 3, i32 1) #12
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %started, ptr %started, i32 1, ptr elementtype(i32) %started) #12, !srcloc !95
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then50, label %do.end46.if.end51_crit_edge

do.end46.if.end51_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  %wait = getelementptr inbounds %struct.bch_dirty_init_state, ptr %1, i32 0, i32 7
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.end46.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cached_dev_writeback_init(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_flight = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17
  %wait_list1.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %in_flight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %in_flight, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 3
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 4
  %4 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.22, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 0, i32 4, i32 5
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %10 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %writeback_lock = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 12
  tail call void @__init_rwsem(ptr noundef %writeback_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @bch_cached_dev_writeback_init.__key) #12
  %writeback_keys = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 20
  tail call void @bch_keybuf_init(ptr noundef %writeback_keys) #12
  %writeback_metadata = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 30
  %12 = ptrtoint ptr %writeback_metadata to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %writeback_metadata, align 8
  %bf.set = and i8 %bf.load, -15
  %bf.set6 = or i8 %bf.set, 10
  store i8 %bf.set6, ptr %writeback_metadata, align 8
  %writeback_percent = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 31
  %13 = ptrtoint ptr %writeback_percent to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %writeback_percent, align 1
  %writeback_delay = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 32
  %14 = ptrtoint ptr %writeback_delay to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 30, ptr %writeback_delay, align 4
  %rate = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 15, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rate, i32 noundef 4) #12
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1024, ptr %rate, align 4
  %writeback_rate_minimum = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 44
  %16 = ptrtoint ptr %writeback_rate_minimum to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %writeback_rate_minimum, align 4
  %writeback_rate_update_seconds = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 38
  %17 = ptrtoint ptr %writeback_rate_update_seconds to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %writeback_rate_update_seconds, align 4
  %writeback_rate_p_term_inverse = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 40
  %18 = ptrtoint ptr %writeback_rate_p_term_inverse to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40, ptr %writeback_rate_p_term_inverse, align 4
  %writeback_rate_fp_term_low = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 41
  %19 = ptrtoint ptr %writeback_rate_fp_term_low to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %writeback_rate_fp_term_low, align 8
  %writeback_rate_fp_term_mid = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 42
  %20 = ptrtoint ptr %writeback_rate_fp_term_mid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %writeback_rate_fp_term_mid, align 4
  %writeback_rate_fp_term_high = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 43
  %21 = ptrtoint ptr %writeback_rate_fp_term_high to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1000, ptr %writeback_rate_fp_term_high, align 8
  %writeback_rate_i_term_inverse = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 39
  %22 = ptrtoint ptr %writeback_rate_i_term_inverse to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10000, ptr %writeback_rate_i_term_inverse, align 8
  %flags = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end16, !prof !82

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1030, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end16, %entry.if.end_crit_edge
  %writeback_rate_update = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16
  tail call void @__init_work(ptr noundef %writeback_rate_update, i32 noundef 0) #12
  %23 = ptrtoint ptr %writeback_rate_update to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %writeback_rate_update, align 8
  %lockdep_map = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @bch_cached_dev_writeback_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry36 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16, i32 0, i32 1
  %24 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16, i32 0, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @update_writeback_rate, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @bch_cached_dev_writeback_init.__key.13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_keybuf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_writeback_rate(ptr noundef %work) #0 align 64 {
entry:
  %remainder.i146.i = alloca i32, align 4
  %remainder.i143.i = alloca i32, align 4
  %remainder.i141.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c1 = getelementptr i8, ptr %work, i32 -3304
  %0 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c1, align 8
  %flags = getelementptr i8, ptr %work, i32 -3280
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags9 = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags9, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !98
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %has_dirty = getelementptr i8, ptr %work, i32 -24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %has_dirty, i32 noundef 4) #12
  %8 = ptrtoint ptr %has_dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %has_dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool21.not = icmp eq i32 %9, 0
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %land.lhs.true

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %writeback_percent = getelementptr i8, ptr %work, i32 49785
  %10 = ptrtoint ptr %writeback_percent to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %writeback_percent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end28_crit_edge, label %if.then23

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true
  %idle_max_writeback_rate_enabled.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 85
  %12 = ptrtoint ptr %idle_max_writeback_rate_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %idle_max_writeback_rate_enabled.i, align 1
  %13 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then23.if.then25_crit_edge, label %if.end.i

if.then23.if.then25_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end.i:                                         ; preds = %if.then23
  %gc_mark_valid.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %gc_mark_valid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gc_mark_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %if.end.i.if.then25_crit_edge, label %if.end3.i

if.end.i.if.then25_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end3.i:                                        ; preds = %if.end.i
  %idle_counter.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %idle_counter.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %idle_counter.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %idle_counter.i, ptr %idle_counter.i, i32 1, ptr elementtype(i32) %idle_counter.i) #12, !srcloc !86
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %attached_dev_nr.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 12
  %call.i.i34.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %attached_dev_nr.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %attached_dev_nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %attached_dev_nr.i, align 4
  %mul.i = mul i32 %18, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %mul.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, %mul.i
  br i1 %cmp.i, label %if.end3.i.if.then25_crit_edge, label %if.end6.i

if.end3.i.if.then25_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end6.i:                                        ; preds = %if.end3.i
  %at_max_writeback_rate.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 8
  %call.i.i35.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %at_max_writeback_rate.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %at_max_writeback_rate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %at_max_writeback_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp8.not.i = icmp eq i32 %20, 1
  br i1 %cmp8.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then9.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i36.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %at_max_writeback_rate.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %at_max_writeback_rate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %at_max_writeback_rate.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end11.i_crit_edge
  %rate.i = getelementptr i8, ptr %work, i32 -8
  %call.i.i37.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rate.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 2147483647, ptr %rate.i, align 4
  %writeback_rate_proportional.i = getelementptr i8, ptr %work, i32 49800
  %23 = ptrtoint ptr %writeback_rate_proportional.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %writeback_rate_proportional.i, align 8
  %writeback_rate_integral_scaled.i = getelementptr i8, ptr %work, i32 49816
  %24 = ptrtoint ptr %writeback_rate_integral_scaled.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %writeback_rate_integral_scaled.i, align 8
  %writeback_rate_change.i = getelementptr i8, ptr %work, i32 49824
  %25 = ptrtoint ptr %writeback_rate_change.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %writeback_rate_change.i, align 8
  %call.i.i38.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %idle_counter.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %idle_counter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %idle_counter.i, align 4
  %call.i.i39.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %attached_dev_nr.i, i32 noundef 4) #12
  %28 = ptrtoint ptr %attached_dev_nr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %attached_dev_nr.i, align 4
  %mul16.i = mul i32 %29, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul16.i)
  %cmp17.i = icmp slt i32 %27, %mul16.i
  br i1 %cmp17.i, label %if.end11.i.if.then25_crit_edge, label %set_at_max_writeback_rate.exit

if.end11.i.if.then25_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

set_at_max_writeback_rate.exit:                   ; preds = %if.end11.i
  %call.i.i40.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %at_max_writeback_rate.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %at_max_writeback_rate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %at_max_writeback_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not.i.not = icmp eq i32 %31, 0
  br i1 %tobool20.not.i.not, label %set_at_max_writeback_rate.exit.if.then25_crit_edge, label %set_at_max_writeback_rate.exit.if.end28_crit_edge

set_at_max_writeback_rate.exit.if.end28_crit_edge: ; preds = %set_at_max_writeback_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

set_at_max_writeback_rate.exit.if.then25_crit_edge: ; preds = %set_at_max_writeback_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then25:                                        ; preds = %set_at_max_writeback_rate.exit.if.then25_crit_edge, %if.end11.i.if.then25_crit_edge, %if.end3.i.if.then25_crit_edge, %if.end.i.if.then25_crit_edge, %if.then23.if.then25_crit_edge
  %writeback_lock = getelementptr i8, ptr %work, i32 -120
  tail call void @down_read(ptr noundef %writeback_lock) #12
  %32 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %c1, align 8
  %nbuckets.i.i = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 41
  %34 = ptrtoint ptr %nbuckets.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nbuckets.i.i, align 8
  %cache.i.i = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 9
  %36 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cache.i.i, align 4
  %bucket_size.i.i = getelementptr inbounds %struct.cache, ptr %37, i32 0, i32 1, i32 11, i32 0, i32 4
  %38 = ptrtoint ptr %bucket_size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bucket_size.i.i, align 8
  %mul.i.i = mul i32 %39, %35
  %flash_dev_dirty_sectors.i.i = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %flash_dev_dirty_sectors.i.i, i32 noundef 4) #12
  %40 = ptrtoint ptr %flash_dev_dirty_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flash_dev_dirty_sectors.i.i, align 4
  %sub.i.i = sub i32 %mul.i.i, %41
  %conv.i.i = zext i32 %sub.i.i to i64
  %bdev.i.i = getelementptr i8, ptr %work, i32 -2644
  %42 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %shl.i.i = shl i64 %45, 14
  %cached_dev_sectors.i.i = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 14
  %46 = ptrtoint ptr %cached_dev_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %cached_dev_sectors.i.i, align 8
  %call3.i.i = tail call i64 @div64_u64(i64 noundef %shl.i.i, i64 noundef %47) #12
  %conv4.i.i = trunc i64 %call3.i.i to i32
  %48 = ptrtoint ptr %writeback_percent to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %writeback_percent, align 1
  %conv5.i.i = zext i8 %49 to i64
  %mul6.i.i = mul nuw nsw i64 %conv5.i.i, %conv.i.i
  %50 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul6.i.i, i32 0) #15, !srcloc !99
  %asmresult.i.i.i.i.i71 = extractvalue { i64, i32 } %50, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %50, 1
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul6.i.i, i64 %asmresult.i.i.i.i.i71, i32 %asmresult4.i.i.i.i.i) #15, !srcloc !100
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %51, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i.i)
  %cmp.i.i = icmp eq i32 %conv4.i.i, 0
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 1, i32 %conv4.i.i
  %conv9.i.i = zext i32 %spec.store.select.i.i to i64
  %mul10.i.i = mul i64 %div1581.i.i.i.i, %conv9.i.i
  %shr.i.i = lshr i64 %mul10.i.i, 14
  %nr_stripes.i.i = getelementptr i8, ptr %work, i32 -3276
  %52 = ptrtoint ptr %nr_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp8.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp8.not.i.i, label %if.then25.bcache_dev_sectors_dirty.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then25.bcache_dev_sectors_dirty.exit.i_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcache_dev_sectors_dirty.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then25
  %stripe_sectors_dirty.i.i = getelementptr i8, ptr %work, i32 -3268
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ret.010.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.09.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %stripe_sectors_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stripe_sectors_dirty.i.i, align 4
  %idx.ext.i.i = trunc i64 %i.09.i.i to i32
  %add.ptr.i.i = getelementptr %struct.atomic_t, ptr %55, i32 %idx.ext.i.i
  %call.i.i.i138.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i, i32 noundef 4) #12
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %add.ptr.i.i, align 4
  %conv2.i.i = sext i32 %57 to i64
  %add.i.i = add i64 %ret.010.i.i, %conv2.i.i
  %inc.i.i = add nuw i64 %i.09.i.i, 1
  %58 = ptrtoint ptr %nr_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_stripes.i.i, align 4
  %conv.i139.i = sext i32 %59 to i64
  %cmp.i140.i = icmp ult i64 %inc.i.i, %conv.i139.i
  br i1 %cmp.i140.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.bcache_dev_sectors_dirty.exit.i_crit_edge

for.body.i.i.bcache_dev_sectors_dirty.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcache_dev_sectors_dirty.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

bcache_dev_sectors_dirty.exit.i:                  ; preds = %for.body.i.i.bcache_dev_sectors_dirty.exit.i_crit_edge, %if.then25.bcache_dev_sectors_dirty.exit.i_crit_edge
  %ret.0.lcssa.i.i = phi i64 [ 0, %if.then25.bcache_dev_sectors_dirty.exit.i_crit_edge ], [ %add.i.i, %for.body.i.i.bcache_dev_sectors_dirty.exit.i_crit_edge ]
  %sub.i = sub i64 %ret.0.lcssa.i.i, %shr.i.i
  %writeback_rate_p_term_inverse.i = getelementptr i8, ptr %work, i32 49836
  %60 = ptrtoint ptr %writeback_rate_p_term_inverse.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %writeback_rate_p_term_inverse.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #12
  %62 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !101
  %call.i.i72 = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %61, ptr noundef nonnull %remainder.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #12
  %63 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %c1, align 8
  %nbuckets.i = getelementptr inbounds %struct.cache_set, ptr %64, i32 0, i32 41
  %65 = ptrtoint ptr %nbuckets.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nbuckets.i, align 8
  %avail_nbuckets.i = getelementptr inbounds %struct.cache_set, ptr %64, i32 0, i32 42
  %67 = ptrtoint ptr %avail_nbuckets.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %avail_nbuckets.i, align 4
  %sub5.i = sub i32 %66, %68
  %conv.i = zext i32 %sub5.i to i64
  %writeback_consider_fragment.i = getelementptr i8, ptr %work, i32 49784
  %69 = ptrtoint ptr %writeback_consider_fragment.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i73 = load i8, ptr %writeback_consider_fragment.i, align 8
  %70 = and i8 %bf.load.i73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i74 = icmp eq i8 %70, 0
  br i1 %tobool.not.i74, label %bcache_dev_sectors_dirty.exit.i.if.end53.i_crit_edge, label %land.lhs.true.i

bcache_dev_sectors_dirty.exit.i.if.end53.i_crit_edge: ; preds = %bcache_dev_sectors_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

land.lhs.true.i:                                  ; preds = %bcache_dev_sectors_dirty.exit.i
  %in_use.i = getelementptr inbounds %struct.cache_set, ptr %64, i32 0, i32 40, i32 5
  %71 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %in_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %72)
  %cmp.i75 = icmp ugt i32 %72, 50
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ret.0.lcssa.i.i)
  %cmp8.i = icmp sgt i64 %ret.0.lcssa.i.i, 0
  %or.cond.i = select i1 %cmp.i75, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.if.end53.i_crit_edge

land.lhs.true.i.if.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %64, i32 0, i32 9
  %73 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cache.i, align 4
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %74, i32 0, i32 1, i32 11, i32 0, i32 4
  %75 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bucket_size.i, align 8
  %conv10.i = zext i32 %76 to i64
  %mul.i76 = mul nuw i64 %conv10.i, %conv.i
  %conv11.i = trunc i64 %ret.0.lcssa.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i141.i) #12
  %77 = ptrtoint ptr %remainder.i141.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %remainder.i141.i, align 4, !annotation !101
  %call.i142.i = call i64 @div_s64_rem(i64 noundef %mul.i76, i32 noundef %conv11.i, ptr noundef nonnull %remainder.i141.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i141.i) #12
  %78 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %in_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %79)
  %cmp15.i = icmp ult i32 %79, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %79)
  %cmp26.i = icmp ult i32 %79, 65
  %. = select i1 %cmp26.i, i32 49844, i32 49848
  %.88 = select i1 %cmp26.i, i32 -57, i32 -64
  %.sink = select i1 %cmp15.i, i32 49840, i32 %.
  %.sink.i = select i1 %cmp15.i, i32 -50, i32 %.88
  %writeback_rate_fp_term_high.i = getelementptr i8, ptr %work, i32 %.sink
  %80 = ptrtoint ptr %writeback_rate_fp_term_high.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.sink149.i = load i32, ptr %writeback_rate_fp_term_high.i, align 4
  %conv29.i = zext i32 %.sink149.i to i64
  %sub32.i = add i32 %.sink.i, %79
  %conv33.i = zext i32 %sub32.i to i64
  %mul34.i = mul nuw i64 %conv29.i, %conv33.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i143.i) #12
  %81 = ptrtoint ptr %remainder.i143.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %remainder.i143.i, align 4, !annotation !101
  %call.i144.i = call i64 @div_s64_rem(i64 noundef %ret.0.lcssa.i.i, i32 noundef %sub5.i, ptr noundef nonnull %remainder.i143.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i143.i) #12
  %mul45.i = mul i64 %mul34.i, %call.i144.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %call.i142.i)
  %cmp46.i = icmp sgt i64 %call.i142.i, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul45.i, i64 %call.i.i72)
  %cmp49.i = icmp sgt i64 %mul45.i, %call.i.i72
  %or.cond136.i = select i1 %cmp46.i, i1 %cmp49.i, i1 false
  %proportional_scaled.0.i = select i1 %or.cond136.i, i64 %mul45.i, i64 %call.i.i72
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end53.i_crit_edge, %bcache_dev_sectors_dirty.exit.i.if.end53.i_crit_edge
  %proportional_scaled.1.i = phi i64 [ %proportional_scaled.0.i, %if.then.i ], [ %call.i.i72, %land.lhs.true.i.if.end53.i_crit_edge ], [ %call.i.i72, %bcache_dev_sectors_dirty.exit.i.if.end53.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp54.i = icmp slt i64 %sub.i, 0
  br i1 %cmp54.i, label %land.lhs.true56.i, label %lor.lhs.false.i77

land.lhs.true56.i:                                ; preds = %if.end53.i
  %writeback_rate_integral.i = getelementptr i8, ptr %work, i32 49808
  %82 = ptrtoint ptr %writeback_rate_integral.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %writeback_rate_integral.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %cmp57.i = icmp sgt i64 %83, 0
  br i1 %cmp57.i, label %land.lhs.true56.i.if.then66.i_crit_edge, label %land.lhs.true56.i.__update_writeback_rate.exit_crit_edge

land.lhs.true56.i.__update_writeback_rate.exit_crit_edge: ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__update_writeback_rate.exit

land.lhs.true56.i.if.then66.i_crit_edge:          ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66.i

lor.lhs.false.i77:                                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_cmp8(i64 %ret.0.lcssa.i.i, i64 %shr.i.i)
  %cmp59.not.i = icmp eq i64 %ret.0.lcssa.i.i, %shr.i.i
  br i1 %cmp59.not.i, label %lor.lhs.false.i77.__update_writeback_rate.exit_crit_edge, label %land.lhs.true61.i

lor.lhs.false.i77.__update_writeback_rate.exit_crit_edge: ; preds = %lor.lhs.false.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %__update_writeback_rate.exit

land.lhs.true61.i:                                ; preds = %lor.lhs.false.i77
  %call.i145.i = call i64 @sched_clock() #12
  %writeback_rate.i = getelementptr i8, ptr %work, i32 -16
  %84 = ptrtoint ptr %writeback_rate.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %writeback_rate.i, align 8
  %add.neg.i = add i64 %call.i145.i, -1000000
  %sub63.i = sub i64 %add.neg.i, %85
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub63.i)
  %cmp64.i = icmp slt i64 %sub63.i, 0
  br i1 %cmp64.i, label %land.lhs.true61.i.if.then66.i_crit_edge, label %land.lhs.true61.i.__update_writeback_rate.exit_crit_edge

land.lhs.true61.i.__update_writeback_rate.exit_crit_edge: ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__update_writeback_rate.exit

land.lhs.true61.i.if.then66.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66.i

if.then66.i:                                      ; preds = %land.lhs.true61.i.if.then66.i_crit_edge, %land.lhs.true56.i.if.then66.i_crit_edge
  %writeback_rate_update_seconds.i = getelementptr i8, ptr %work, i32 49828
  %86 = ptrtoint ptr %writeback_rate_update_seconds.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %writeback_rate_update_seconds.i, align 4
  %conv67.i = zext i32 %87 to i64
  %mul68.i = mul i64 %sub.i, %conv67.i
  %writeback_rate_integral69.i = getelementptr i8, ptr %work, i32 49808
  %88 = ptrtoint ptr %writeback_rate_integral69.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %writeback_rate_integral69.i, align 8
  %add70.i = add i64 %mul68.i, %89
  store i64 %add70.i, ptr %writeback_rate_integral69.i, align 8
  br label %__update_writeback_rate.exit

__update_writeback_rate.exit:                     ; preds = %if.then66.i, %land.lhs.true61.i.__update_writeback_rate.exit_crit_edge, %lor.lhs.false.i77.__update_writeback_rate.exit_crit_edge, %land.lhs.true56.i.__update_writeback_rate.exit_crit_edge
  %writeback_rate_integral72.i = getelementptr i8, ptr %work, i32 49808
  %90 = ptrtoint ptr %writeback_rate_integral72.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %writeback_rate_integral72.i, align 8
  %writeback_rate_i_term_inverse.i = getelementptr i8, ptr %work, i32 49832
  %92 = ptrtoint ptr %writeback_rate_i_term_inverse.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %writeback_rate_i_term_inverse.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i146.i) #12
  %94 = ptrtoint ptr %remainder.i146.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %remainder.i146.i, align 4, !annotation !101
  %call.i147.i = call i64 @div_s64_rem(i64 noundef %91, i32 noundef %93, ptr noundef nonnull %remainder.i146.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i146.i) #12
  %add74.i = add i64 %call.i147.i, %proportional_scaled.1.i
  %conv75.i = trunc i64 %add74.i to i32
  %writeback_rate_minimum.i = getelementptr i8, ptr %work, i32 49852
  %95 = ptrtoint ptr %writeback_rate_minimum.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %writeback_rate_minimum.i, align 4
  %97 = call i32 @llvm.smax.i32(i32 %96, i32 %conv75.i) #12
  %98 = call i32 @llvm.smin.i32(i32 %97, i32 1000000000) #12
  %writeback_rate_proportional.i78 = getelementptr i8, ptr %work, i32 49800
  %99 = ptrtoint ptr %writeback_rate_proportional.i78 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %proportional_scaled.1.i, ptr %writeback_rate_proportional.i78, align 8
  %writeback_rate_integral_scaled.i79 = getelementptr i8, ptr %work, i32 49816
  %100 = ptrtoint ptr %writeback_rate_integral_scaled.i79 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %call.i147.i, ptr %writeback_rate_integral_scaled.i79, align 8
  %rate.i80 = getelementptr i8, ptr %work, i32 -8
  %call.i.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef %rate.i80, i32 noundef 4) #12
  %101 = ptrtoint ptr %rate.i80 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %rate.i80, align 4
  %sub87.i = sub i32 %98, %102
  %writeback_rate_change.i82 = getelementptr i8, ptr %work, i32 49824
  %103 = ptrtoint ptr %writeback_rate_change.i82 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub87.i, ptr %writeback_rate_change.i82, align 8
  %call.i.i137.i = call zeroext i1 @__kasan_check_write(ptr noundef %rate.i80, i32 noundef 4) #12
  %104 = ptrtoint ptr %rate.i80 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %98, ptr %rate.i80, align 4
  %writeback_rate_target.i = getelementptr i8, ptr %work, i32 49792
  %105 = ptrtoint ptr %writeback_rate_target.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %shr.i.i, ptr %writeback_rate_target.i, align 8
  %gc_after_writeback.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 45
  %106 = ptrtoint ptr %gc_after_writeback.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %gc_after_writeback.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp.not.i = icmp eq i8 %107, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i84, label %__update_writeback_rate.exit.update_gc_after_writeback.exit_crit_edge

__update_writeback_rate.exit.update_gc_after_writeback.exit_crit_edge: ; preds = %__update_writeback_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_gc_after_writeback.exit

lor.lhs.false.i84:                                ; preds = %__update_writeback_rate.exit
  %in_use.i83 = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 40, i32 5
  %108 = ptrtoint ptr %in_use.i83 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %in_use.i83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %109)
  %cmp2.i = icmp ult i32 %109, 50
  br i1 %cmp2.i, label %lor.lhs.false.i84.update_gc_after_writeback.exit_crit_edge, label %if.end.i85

lor.lhs.false.i84.update_gc_after_writeback.exit_crit_edge: ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_gc_after_writeback.exit

if.end.i85:                                       ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %gc_after_writeback.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %gc_after_writeback.i, align 8
  br label %update_gc_after_writeback.exit

update_gc_after_writeback.exit:                   ; preds = %if.end.i85, %lor.lhs.false.i84.update_gc_after_writeback.exit_crit_edge, %__update_writeback_rate.exit.update_gc_after_writeback.exit_crit_edge
  call void @up_read(ptr noundef %writeback_lock) #12
  br label %if.end28

if.end28:                                         ; preds = %update_gc_after_writeback.exit, %set_at_max_writeback_rate.exit.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %flags, align 4
  %113 = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool32.not = icmp eq i32 %113, 0
  br i1 %tobool32.not, label %if.end28.if.end39_crit_edge, label %land.lhs.true33

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true33:                                  ; preds = %if.end28
  %114 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags9, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool36.not = icmp eq i32 %116, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true33.if.end39_crit_edge

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_update_seconds = getelementptr i8, ptr %work, i32 49828
  %117 = ptrtoint ptr %writeback_rate_update_seconds to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %writeback_rate_update_seconds, align 4
  %mul = mul i32 %118, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %119 = load ptr, ptr @system_wq, align 4
  %call.i.i86 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %119, ptr noundef %work, i32 noundef %mul) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true33.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_cached_dev_writeback_start(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 8, i32 noundef 0) #12
  %writeback_write_wq = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 19
  %0 = ptrtoint ptr %writeback_write_wq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %writeback_write_wq, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %count.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #12
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %3 = phi i32 [ %2, %if.end ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %6, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #12, !srcloc !103
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !82

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !82

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #12
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not.i = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.cached_dev_get.exit_crit_edge, label %do.end.i

refcount_inc_not_zero.exit.i.cached_dev_get.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cached_dev_get.exit

do.end.i:                                         ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  br label %cached_dev_get.exit

cached_dev_get.exit:                              ; preds = %do.end.i, %refcount_inc_not_zero.exit.i.cached_dev_get.exit_crit_edge
  %call3 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bch_writeback_thread, ptr noundef %dc, i32 noundef -1, ptr noundef nonnull @.str.16) #12
  %writeback_thread = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 18
  %13 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %writeback_thread, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %cached_dev_get.exit
  %call.i.i.i.i.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !106
  %asmresult.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i51)
  %.not.i.i.i.i52 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i52, label %if.end5.i.i.i.i.cached_dev_put.exit_crit_edge, label %if.then10.i.i.i.i53, !prof !82

if.end5.i.i.i.i.cached_dev_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cached_dev_put.exit

if.then10.i.i.i.i53:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %cached_dev_put.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !107
  %detach.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %detach.i) #12
  br label %cached_dev_put.exit

cached_dev_put.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i53, %if.end5.i.i.i.i.cached_dev_put.exit_crit_edge
  %16 = ptrtoint ptr %writeback_write_wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %writeback_write_wq, align 8
  call void @destroy_workqueue(ptr noundef %17) #12
  %18 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %writeback_thread, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %return

if.end10:                                         ; preds = %cached_dev_get.exit
  %writeback_running = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 30
  %21 = ptrtoint ptr %writeback_running to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %writeback_running, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %writeback_running, align 8
  %flags = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  %call11 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end27_crit_edge, label %do.end, !prof !82

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1051, i32 noundef 9, ptr noundef null) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end10.if.end27_crit_edge
  %writeback_rate_update = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 16
  %writeback_rate_update_seconds = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 38
  %22 = ptrtoint ptr %writeback_rate_update_seconds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writeback_rate_update_seconds, align 4
  %mul = mul i32 %23, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %writeback_rate_update, i32 noundef %mul) #12
  %25 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %writeback_thread, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  %cmp.i.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end27.return_crit_edge, label %if.then.i54

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.i54:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = call i32 @wake_up_process(ptr noundef nonnull %26) #12
  br label %return

return:                                           ; preds = %if.then.i54, %if.end27.return_crit_edge, %cached_dev_put.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %20, %cached_dev_put.exit ], [ -12, %entry.return_crit_edge ], [ 0, %if.end27.return_crit_edge ], [ 0, %if.then.i54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_writeback_thread(ptr noundef %arg) #0 align 64 {
entry:
  %.compoundliteral20.i.i = alloca %struct.bkey, align 8
  %end.i = alloca %struct.bkey, align 8
  %start_pos.i = alloca %struct.bkey, align 8
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c1 = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c1, align 8
  %writeback_rate = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 15
  %call.i.i352 = tail call i64 @sched_clock() #12
  %2 = ptrtoint ptr %writeback_rate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i352, ptr %writeback_rate, align 8
  %call375 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call375, label %entry.while.end293_crit_edge, label %land.rhs.lr.ph

entry.while.end293_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end293

land.rhs.lr.ph:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 6
  %writeback_lock = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 12
  %flags68 = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 6
  %has_dirty = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 13
  %writeback_running = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 30
  %writeback_keys.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 20
  %id.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 3
  %3 = getelementptr inbounds %struct.bkey, ptr %end.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.bkey, ptr %start_pos.i, i32 0, i32 1
  %low.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 20, i32 0, i32 1
  %stripe_size.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 8
  %nr_stripes.i.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 7
  %full_dirty_stripes.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 1, i32 10
  %low26.i.i = getelementptr inbounds %struct.bkey, ptr %.compoundliteral20.i.i, i32 0, i32 1
  %freelist.i.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 20, i32 5
  %keys = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 20, i32 4
  %flags.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 3, i32 6
  %gc_after_writeback = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 45
  %sectors_to_gc.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 47
  %gc_wait.i.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 48
  %writeback_delay = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 32
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body, label %land.rhs.while.end293_crit_edge

land.rhs.while.end293_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end293

while.body:                                       ; preds = %land.rhs
  call void @down_write(ptr noundef %writeback_lock) #12
  br label %__here

__here:                                           ; preds = %while.body
  %8 = call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@bch_writeback_thread, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %15 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags68, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool70.not = icmp eq i32 %17, 0
  br i1 %tobool70.not, label %land.lhs.true, label %__here.__here214_crit_edge

__here.__here214_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here214

land.lhs.true:                                    ; preds = %__here
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %has_dirty, i32 noundef 4) #12
  %18 = ptrtoint ptr %has_dirty to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %has_dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool72.not = icmp eq i32 %19, 0
  br i1 %tobool72.not, label %land.lhs.true.if.then74_crit_edge, label %lor.lhs.false

land.lhs.true.if.then74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = ptrtoint ptr %writeback_running to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %writeback_running, align 8
  %21 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool73.not = icmp eq i8 %21, 0
  br i1 %tobool73.not, label %lor.lhs.false.if.then74_crit_edge, label %lor.lhs.false.__here214_crit_edge

lor.lhs.false.__here214_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here214

lor.lhs.false.if.then74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then74:                                        ; preds = %lor.lhs.false.if.then74_crit_edge, %land.lhs.true.if.then74_crit_edge
  call void @up_write(ptr noundef %writeback_lock) #12
  %call76 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call76, label %if.then74.__here132_crit_edge, label %lor.lhs.false77

if.then74.__here132_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here132

lor.lhs.false77:                                  ; preds = %if.then74
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool80.not = icmp eq i32 %24, 0
  br i1 %tobool80.not, label %if.end162, label %lor.lhs.false77.__here132_crit_edge

lor.lhs.false77.__here132_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here132

__here132:                                        ; preds = %lor.lhs.false77.__here132_crit_edge, %if.then74.__here132_crit_edge
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change136 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change136 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@bch_writeback_thread, %__here132) to i32), ptr %task_state_change136, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %28, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !109
  br label %while.end293

if.end162:                                        ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end292.critedge, %while.end, %if.end162
  %call = call zeroext i1 @kthread_should_stop() #12
  br i1 %call, label %while.cond.backedge.while.end293_crit_edge, label %while.cond.backedge.land.rhs_crit_edge

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.cond.backedge.while.end293_crit_edge:       ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end293

__here214:                                        ; preds = %lor.lhs.false.__here214_crit_edge, %__here.__here214_crit_edge
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change218 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change218 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@bch_writeback_thread, %__here214) to i32), ptr %task_state_change218, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %33, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i, align 4
  %conv.i = zext i32 %36 to i64
  %or.i = or i64 %conv.i, -9223372036854775808
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end.i) #12
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or.i, ptr %end.i, align 8
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 9223372036854775807, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start_pos.i) #12
  %39 = ptrtoint ptr %writeback_keys.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %writeback_keys.i, align 8
  %41 = xor i64 %40, %conv.i
  %42 = and i64 %41, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp.not.i.i = icmp eq i64 %42, 0
  br i1 %cmp.not.i.i, label %bkey_cmp.exit.i, label %__here214.if.then.i_crit_edge, !prof !82

__here214.if.then.i_crit_edge:                    ; preds = %__here214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

bkey_cmp.exit.i:                                  ; preds = %__here214
  %43 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %low.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %cmp.i = icmp slt i64 %44, 0
  br i1 %cmp.i, label %bkey_cmp.exit.i.if.then.i_crit_edge, label %bkey_cmp.exit.i.if.end.i_crit_edge

bkey_cmp.exit.i.if.end.i_crit_edge:               ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

bkey_cmp.exit.i.if.then.i_crit_edge:              ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %bkey_cmp.exit.i.if.then.i_crit_edge, %__here214.if.then.i_crit_edge
  %45 = ptrtoint ptr %writeback_keys.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %or.i, ptr %writeback_keys.i, align 8
  %46 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %low.i.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %bkey_cmp.exit.i.if.end.i_crit_edge
  %47 = ptrtoint ptr %writeback_running to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %writeback_running, align 8
  %48 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then13.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then13.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral20.i.i) #12
  %49 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %low.i.i.i, align 8
  %51 = ptrtoint ptr %stripe_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stripe_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %50)
  %cmp164.i.i.i = icmp ult i64 %50, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !82

if.then168.i.i.i:                                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %50 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %52
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %if.end178.i.i.i

if.else174.i.i.i:                                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %52, i64 %50) #15, !srcloc !83
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %53, 1
  br label %if.end178.i.i.i

if.end178.i.i.i:                                  ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %offset.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %54 = ptrtoint ptr %nr_stripes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_stripes.i.i.i, align 4
  %conv180.i.i.i = sext i32 %55 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0.i.i.i, i64 %conv180.i.i.i)
  %cmp181.not.i.i.i = icmp ult i64 %offset.addr.0.i.i.i, %conv180.i.i.i
  br i1 %cmp181.not.i.i.i, label %if.end193.i.i.i, label %do.end.i.i.i, !prof !82

do.end.i.i.i:                                     ; preds = %if.end178.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call192.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %offset.addr.0.i.i.i, i32 noundef %55) #16
  br label %offset_to_stripe.exit.i.i

if.end193.i.i.i:                                  ; preds = %if.end178.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv194.i.i.i = trunc i64 %offset.addr.0.i.i.i to i32
  br label %offset_to_stripe.exit.i.i

offset_to_stripe.exit.i.i:                        ; preds = %if.end193.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ -22, %do.end.i.i.i ], [ %conv194.i.i.i, %if.end193.i.i.i ]
  %56 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i, i32 0) #12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end40.i.i, %offset_to_stripe.exit.i.i
  %stripe.0.i.i = phi i32 [ %56, %offset_to_stripe.exit.i.i ], [ %spec.select.i.i, %if.end40.i.i ]
  %wrapped.0.off0.i.i = phi i1 [ false, %offset_to_stripe.exit.i.i ], [ %spec.select75.i.i, %if.end40.i.i ]
  %57 = ptrtoint ptr %full_dirty_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %full_dirty_stripes.i.i, align 8
  %59 = ptrtoint ptr %nr_stripes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_stripes.i.i.i, align 4
  %call4.i.i = call i32 @_find_next_bit_be(ptr noundef %58, i32 noundef %60, i32 noundef %stripe.0.i.i) #12
  %61 = ptrtoint ptr %nr_stripes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_stripes.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %62)
  %cmp7.i.i = icmp eq i32 %call4.i.i, %62
  br i1 %cmp7.i.i, label %while.cond.i.i.next.i.i_crit_edge, label %if.end9.i.i

while.cond.i.i.next.i.i_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next.i.i

if.end9.i.i:                                      ; preds = %while.cond.i.i
  %63 = ptrtoint ptr %full_dirty_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %full_dirty_stripes.i.i, align 8
  %call14.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %64, i32 noundef %62, i32 noundef %call4.i.i) #12
  %65 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id.i, align 4
  %conv.i.i = zext i32 %66 to i64
  %or.i.i = or i64 %conv.i.i, -9223372036854775808
  %67 = ptrtoint ptr %stripe_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stripe_size.i.i.i, align 8
  %mul.i.i = mul i32 %68, %call4.i.i
  %conv18.i.i = zext i32 %mul.i.i to i64
  %69 = ptrtoint ptr %writeback_keys.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %or.i.i, ptr %writeback_keys.i, align 8
  %70 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv18.i.i, ptr %low.i.i.i, align 8
  %71 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %c1, align 8
  %73 = ptrtoint ptr %.compoundliteral20.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %or.i.i, ptr %.compoundliteral20.i.i, align 8
  %mul29.i.i = mul i32 %68, %call14.i.i
  %conv30.i.i = zext i32 %mul29.i.i to i64
  %74 = ptrtoint ptr %low26.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv30.i.i, ptr %low26.i.i, align 8
  call void @bch_refill_keybuf(ptr noundef %72, ptr noundef %writeback_keys.i, ptr noundef nonnull %.compoundliteral20.i.i, ptr noundef nonnull @dirty_pred) #12
  %75 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %freelist.i.i, align 8
  %cmp32.i.i = icmp eq ptr %76, null
  br i1 %cmp32.i.i, label %refill_full_stripes.exit.thread.i, label %if.end9.i.i.next.i.i_crit_edge

if.end9.i.i.next.i.i_crit_edge:                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next.i.i

refill_full_stripes.exit.thread.i:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral20.i.i) #12
  br label %refill_dirty.exit.thread

next.i.i:                                         ; preds = %if.end9.i.i.next.i.i_crit_edge, %while.cond.i.i.next.i.i_crit_edge
  %stripe.1.i.i = phi i32 [ %call4.i.i, %while.cond.i.i.next.i.i_crit_edge ], [ %call14.i.i, %if.end9.i.i.next.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.1.i.i, i32 %56)
  %cmp37.i.i = icmp ugt i32 %stripe.1.i.i, %56
  %or.cond.i.i = select i1 %wrapped.0.off0.i.i, i1 %cmp37.i.i, i1 false
  br i1 %or.cond.i.i, label %refill_full_stripes.exit.i, label %if.end40.i.i

if.end40.i.i:                                     ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %nr_stripes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_stripes.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.1.i.i, i32 %78)
  %cmp43.i.i = icmp eq i32 %stripe.1.i.i, %78
  %spec.select.i.i = select i1 %cmp43.i.i, i32 0, i32 %stripe.1.i.i
  %spec.select75.i.i = select i1 %cmp43.i.i, i1 true, i1 %wrapped.0.off0.i.i
  br label %while.cond.i.i

refill_full_stripes.exit.i:                       ; preds = %next.i.i
  %79 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i = load ptr, ptr %freelist.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral20.i.i) #12
  %cmp15.i = icmp eq ptr %.pr.i, null
  br i1 %cmp15.i, label %refill_full_stripes.exit.i.refill_dirty.exit.thread_crit_edge, label %refill_full_stripes.exit.i.if.end19.i_crit_edge

refill_full_stripes.exit.i.if.end19.i_crit_edge:  ; preds = %refill_full_stripes.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

refill_full_stripes.exit.i.refill_dirty.exit.thread_crit_edge: ; preds = %refill_full_stripes.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refill_dirty.exit.thread

if.end19.i:                                       ; preds = %refill_full_stripes.exit.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %80 = call ptr @memcpy(ptr %start_pos.i, ptr %writeback_keys.i, i32 16)
  %81 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %c1, align 8
  call void @bch_refill_keybuf(ptr noundef %82, ptr noundef %writeback_keys.i, ptr noundef nonnull %end.i, ptr noundef nonnull @dirty_pred) #12
  %83 = ptrtoint ptr %writeback_keys.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %writeback_keys.i, align 8
  %and.i.i64.i = and i64 %84, 1048575
  %85 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %end.i, align 8
  %and.i12.i65.i = and i64 %86, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i64.i, i64 %and.i12.i65.i)
  %cmp.not.i66.i = icmp eq i64 %and.i.i64.i, %and.i12.i65.i
  br i1 %cmp.not.i66.i, label %cond.false.i72.i, label %cond.true.i68.i, !prof !82

cond.true.i68.i:                                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i67.i = sub nsw i64 %and.i.i64.i, %and.i12.i65.i
  br label %bkey_cmp.exit74.i

cond.false.i72.i:                                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %low.i.i.i, align 8
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %3, align 8
  %sub7.i71.i = sub i64 %88, %90
  br label %bkey_cmp.exit74.i

bkey_cmp.exit74.i:                                ; preds = %cond.false.i72.i, %cond.true.i68.i
  %cond.i73.i = phi i64 [ %sub.i67.i, %cond.true.i68.i ], [ %sub7.i71.i, %cond.false.i72.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i73.i)
  %cmp24.i = icmp slt i64 %cond.i73.i, 0
  br i1 %cmp24.i, label %bkey_cmp.exit74.i.refill_dirty.exit.thread_crit_edge, label %if.end27.i

bkey_cmp.exit74.i.refill_dirty.exit.thread_crit_edge: ; preds = %bkey_cmp.exit74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refill_dirty.exit.thread

if.end27.i:                                       ; preds = %bkey_cmp.exit74.i
  %91 = ptrtoint ptr %writeback_keys.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %or.i, ptr %writeback_keys.i, align 8
  %92 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 0, ptr %low.i.i.i, align 8
  %93 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %c1, align 8
  call void @bch_refill_keybuf(ptr noundef %94, ptr noundef %writeback_keys.i, ptr noundef nonnull %start_pos.i, ptr noundef nonnull @dirty_pred) #12
  %95 = ptrtoint ptr %writeback_keys.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %writeback_keys.i, align 8
  %and.i.i75.i = and i64 %96, 1048575
  %97 = ptrtoint ptr %start_pos.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %start_pos.i, align 8
  %and.i12.i76.i = and i64 %98, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i75.i, i64 %and.i12.i76.i)
  %cmp.not.i77.i = icmp eq i64 %and.i.i75.i, %and.i12.i76.i
  br i1 %cmp.not.i77.i, label %cond.false.i83.i, label %cond.true.i79.i, !prof !82

cond.true.i79.i:                                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i78.i = sub nsw i64 %and.i.i75.i, %and.i12.i76.i
  br label %refill_dirty.exit

cond.false.i83.i:                                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %low.i.i.i, align 8
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %4, align 8
  %sub7.i82.i = sub i64 %100, %102
  br label %refill_dirty.exit

refill_dirty.exit.thread:                         ; preds = %bkey_cmp.exit74.i.refill_dirty.exit.thread_crit_edge, %refill_full_stripes.exit.i.refill_dirty.exit.thread_crit_edge, %refill_full_stripes.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start_pos.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i) #12
  br label %if.end292.critedge

refill_dirty.exit:                                ; preds = %cond.false.i83.i, %cond.true.i79.i
  %cond.i84.i = phi i64 [ %sub.i78.i, %cond.true.i79.i ], [ %sub7.i82.i, %cond.false.i83.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %cond.i84.i)
  %cmp33.i = icmp sgt i64 %cond.i84.i, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start_pos.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i) #12
  br i1 %cmp33.i, label %do.end249, label %refill_dirty.exit.if.end292.critedge_crit_edge

refill_dirty.exit.if.end292.critedge_crit_edge:   ; preds = %refill_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end292.critedge

do.end249:                                        ; preds = %refill_dirty.exit
  %103 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %keys, align 8
  %cmp = icmp eq ptr %104, null
  br i1 %cmp, label %if.then251, label %do.end249.if.then272_crit_edge

do.end249.if.then272_crit_edge:                   ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then272

if.then251:                                       ; preds = %do.end249
  %call.i.i345 = call zeroext i1 @__kasan_check_write(ptr noundef %has_dirty, i32 noundef 4) #12
  %105 = ptrtoint ptr %has_dirty to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 0, ptr %has_dirty, align 4
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %flags.i, align 8
  %and.i353 = and i64 %107, -6917529027641081857
  %or.i354 = or i64 %and.i353, 2305843009213693952
  store i64 %or.i354, ptr %flags.i, align 8
  call void @bch_write_bdev_super(ptr noundef %arg, ptr noundef null) #12
  %108 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags68, align 4
  %110 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool256.not = icmp eq i32 %110, 0
  br i1 %tobool256.not, label %if.end261, label %if.then257

if.then257:                                       ; preds = %if.then251
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #12
  %111 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #12
  %112 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  %113 = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 3, i32 4
  %114 = call ptr @memset(ptr %113, i32 0, i32 16)
  %115 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %flags.i, align 8
  %and.i356 = and i64 %116, -6917529027641081857
  store i64 %and.i356, ptr %flags.i, align 8
  call void @bch_write_bdev_super(ptr noundef %arg, ptr noundef nonnull %cl) #12
  %call.i.i.i358 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #12
  %117 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %remaining.i, align 4
  %and.i359 = and i32 %118, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i359)
  %cmp.not.i = icmp eq i32 %and.i359, 1
  br i1 %cmp.not.i, label %if.then257.closure_sync.exit_crit_edge, label %if.then.i360

if.then257.closure_sync.exit_crit_edge:           ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #14
  br label %closure_sync.exit

if.then.i360:                                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #14
  call void @__closure_sync(ptr noundef nonnull %cl) #12
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i360, %if.then257.closure_sync.exit_crit_edge
  call void @up_write(ptr noundef %writeback_lock) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #12
  br label %while.end293

if.end261:                                        ; preds = %if.then251
  %119 = ptrtoint ptr %gc_after_writeback to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %gc_after_writeback, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %120)
  %cmp262 = icmp eq i8 %120, 3
  br i1 %cmp262, label %if.then264, label %if.end261.if.then272_crit_edge

if.end261.if.then272_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then272

if.then264:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %gc_after_writeback to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %gc_after_writeback, align 8
  %call.i.i.i362 = call zeroext i1 @__kasan_check_write(ptr noundef %sectors_to_gc.i, i32 noundef 4) #12
  %122 = ptrtoint ptr %sectors_to_gc.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 -1, ptr %sectors_to_gc.i, align 4
  call void @__wake_up(ptr noundef %gc_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.then272

if.then272:                                       ; preds = %if.then264, %if.end261.if.then272_crit_edge, %do.end249.if.then272_crit_edge
  call void @up_write(ptr noundef %writeback_lock) #12
  call fastcc void @read_dirty(ptr noundef %arg)
  %123 = ptrtoint ptr %writeback_delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %writeback_delay, align 4
  %mul = mul i32 %124, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool274.not373 = icmp eq i32 %mul, 0
  br i1 %tobool274.not373, label %if.then272.while.end_crit_edge, label %if.then272.land.lhs.true275_crit_edge

if.then272.land.lhs.true275_crit_edge:            ; preds = %if.then272
  br label %land.lhs.true275

if.then272.while.end_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true275:                                 ; preds = %while.body289.land.lhs.true275_crit_edge, %if.then272.land.lhs.true275_crit_edge
  %delay.0374 = phi i32 [ %call290, %while.body289.land.lhs.true275_crit_edge ], [ %mul, %if.then272.land.lhs.true275_crit_edge ]
  %call276 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call276, label %land.lhs.true275.while.end_crit_edge, label %land.lhs.true277

land.lhs.true275.while.end_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true277:                                 ; preds = %land.lhs.true275
  %125 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %flags, align 4
  %127 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool280.not = icmp eq i32 %127, 0
  br i1 %tobool280.not, label %land.rhs281, label %land.lhs.true277.while.end_crit_edge

land.lhs.true277.while.end_crit_edge:             ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs281:                                      ; preds = %land.lhs.true277
  %128 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %flags68, align 4
  %130 = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool285.not = icmp eq i32 %130, 0
  br i1 %tobool285.not, label %while.body289, label %land.rhs281.while.end_crit_edge

land.rhs281.while.end_crit_edge:                  ; preds = %land.rhs281
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body289:                                    ; preds = %land.rhs281
  %call290 = call i32 @schedule_timeout_interruptible(i32 noundef %delay.0374) #12
  %tobool274.not = icmp eq i32 %call290, 0
  br i1 %tobool274.not, label %while.body289.while.end_crit_edge, label %while.body289.land.lhs.true275_crit_edge

while.body289.land.lhs.true275_crit_edge:         ; preds = %while.body289
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true275

while.body289.while.end_crit_edge:                ; preds = %while.body289
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body289.while.end_crit_edge, %land.rhs281.while.end_crit_edge, %land.lhs.true277.while.end_crit_edge, %land.lhs.true275.while.end_crit_edge, %if.then272.while.end_crit_edge
  %call.i.i363 = call i64 @sched_clock() #12
  %131 = ptrtoint ptr %writeback_rate to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %call.i.i363, ptr %writeback_rate, align 8
  br label %while.cond.backedge

if.end292.critedge:                               ; preds = %refill_dirty.exit.if.end292.critedge_crit_edge, %refill_dirty.exit.thread
  call void @up_write(ptr noundef %writeback_lock) #12
  call fastcc void @read_dirty(ptr noundef %arg)
  br label %while.cond.backedge

while.end293:                                     ; preds = %closure_sync.exit, %while.cond.backedge.while.end293_crit_edge, %__here132, %land.rhs.while.end293_crit_edge, %entry.while.end293_crit_edge
  %writeback_write_wq = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 19
  %132 = ptrtoint ptr %writeback_write_wq to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %writeback_write_wq, align 8
  %tobool294.not = icmp eq ptr %133, null
  br i1 %tobool294.not, label %while.end293.if.end298_crit_edge, label %if.then295

while.end293.if.end298_crit_edge:                 ; preds = %while.end293
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end298

if.then295:                                       ; preds = %while.end293
  call void @__sanitizer_cov_trace_pc() #14
  call void @flush_workqueue(ptr noundef nonnull %133) #12
  %134 = ptrtoint ptr %writeback_write_wq to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %writeback_write_wq, align 8
  call void @destroy_workqueue(ptr noundef %135) #12
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %while.end293.if.end298_crit_edge
  %count.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 9
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %136 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !106
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i366, label %if.end5.i.i.i.i364

if.end5.i.i.i.i364:                               ; preds = %if.end298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i364.cached_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !82

if.end5.i.i.i.i364.cached_dev_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i364
  call void @__sanitizer_cov_trace_pc() #14
  br label %cached_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i364
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %cached_dev_put.exit

if.then.i366:                                     ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !107
  %detach.i = getelementptr inbounds %struct.cached_dev, ptr %arg, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %137 = load ptr, ptr @system_wq, align 4
  %call.i.i.i365 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %137, ptr noundef %detach.i) #12
  br label %cached_dev_put.exit

cached_dev_put.exit:                              ; preds = %if.then.i366, %if.then10.i.i.i.i, %if.end5.i.i.i.i364.cached_dev_put.exit_crit_edge
  call fastcc void @wait_for_kthread_stop()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_ptr_bad(ptr noundef %b, ptr noundef %k) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %key_bad = getelementptr inbounds %struct.btree_keys_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %key_bad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_bad, align 4
  %call = tail call zeroext i1 %3(ptr noundef %b, ptr noundef %k) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_node_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_map_keys_recurse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_write_bdev_super(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_dirty(ptr noundef %dc) unnamed_addr #0 align 64 {
entry:
  %keys = alloca [5 x ptr], align 4
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %keys) #12
  %0 = call ptr @memset(ptr %keys, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #12
  %writeback_ordering_wait = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 22
  %1 = ptrtoint ptr %writeback_ordering_wait to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %writeback_ordering_wait, align 4
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %do.end8, label %do.body3, !prof !82

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #12, !srcloc !111
  unreachable

do.end8:                                          ; preds = %entry
  %writeback_sequence_next = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_sequence_next, i32 noundef 4) #12
  %3 = ptrtoint ptr %writeback_sequence_next to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %writeback_sequence_next, align 4
  %4 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  %writeback_keys = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 20
  %call9 = call ptr @bch_keybuf_next(ptr noundef %writeback_keys) #12
  %call10216 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call10216, label %do.end8.if.end110_crit_edge, label %land.lhs.true.lr.ph

do.end8.if.end110_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true.lr.ph:                              ; preds = %do.end8
  %c = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 2
  %in_flight = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 17
  %flags.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  %writeback_percent.i178 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 31
  %writeback_rate.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %sequence.0218 = phi i16 [ 0, %land.lhs.true.lr.ph ], [ %sequence.1.lcssa, %while.end.land.lhs.true_crit_edge ]
  %next.0217 = phi ptr [ %call9, %land.lhs.true.lr.ph ], [ %next.2229, %while.end.land.lhs.true_crit_edge ]
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %flags = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp ne i32 %10, 0
  %tobool13.not = icmp eq ptr %next.0217, null
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %land.lhs.true.if.end110_crit_edge, label %land.lhs.true.do.body14_crit_edge

land.lhs.true.do.body14_crit_edge:                ; preds = %land.lhs.true
  br label %do.body14

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

do.body14:                                        ; preds = %if.end53.do.body14_crit_edge, %land.lhs.true.do.body14_crit_edge
  %next.1 = phi ptr [ %call60, %if.end53.do.body14_crit_edge ], [ %next.0217, %land.lhs.true.do.body14_crit_edge ]
  %size.0 = phi i32 [ %conv56, %if.end53.do.body14_crit_edge ], [ 0, %land.lhs.true.do.body14_crit_edge ]
  %nk.0 = phi i32 [ %inc, %if.end53.do.body14_crit_edge ], [ 0, %land.lhs.true.do.body14_crit_edge ]
  %11 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c, align 8
  %13 = getelementptr inbounds %struct.keybuf_key, ptr %next.1, i32 0, i32 1
  %cache.i.i = getelementptr inbounds %struct.cache_set, ptr %12, i32 0, i32 9
  %14 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache.i.i, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.keybuf_key, ptr %next.1, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %19, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %12, i32 0, i32 24
  %20 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %21 to i64
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gen.i = getelementptr %struct.bucket, ptr %17, i32 %conv1.i.i.i.i, i32 2
  %22 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %gen.i, align 2
  %conv.i = trunc i64 %19 to i8
  %sub.i.i = sub i8 %23, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i)
  %cmp.i.i = icmp ugt i8 %sub.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %conv.i)
  %tobool19.not200 = icmp eq i8 %23, %conv.i
  %tobool19.not = or i1 %tobool19.not200, %cmp.i.i
  br i1 %tobool19.not, label %do.end35, label %do.body27, !prof !82

do.body27:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #12, !srcloc !112
  unreachable

do.end35:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nk.0)
  %cmp = icmp ugt i32 %nk.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999, i32 %size.0)
  %cmp39 = icmp ugt i32 %size.0, 4999
  %or.cond157 = select i1 %cmp, i1 true, i1 %cmp39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nk.0)
  %cmp63211.not = icmp eq i32 %nk.0, 0
  br i1 %or.cond157, label %do.end62, label %if.end42

if.end42:                                         ; preds = %do.end35
  br i1 %cmp63211.not, label %if.end42.if.end53_crit_edge, label %land.lhs.true45

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true45:                                  ; preds = %if.end42
  %sub = add nsw i32 %nk.0, -1
  %arrayidx = getelementptr [5 x ptr], ptr %keys, i32 0, i32 %sub
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = getelementptr inbounds %struct.keybuf_key, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %13, align 8
  %and.i = and i64 %28, 1048575
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %26, align 8
  %and.i.i = and i64 %30, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !82

cond.true.i:                                      ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub nsw i64 %and.i.i, %and.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  %low.i = getelementptr inbounds %struct.keybuf_key, ptr %next.1, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %low.i, align 8
  %shr.i161 = lshr i64 %28, 20
  %and.i162 = and i64 %shr.i161, 65535
  %sub49.neg = sub i64 %and.i162, %32
  %low.i.i = getelementptr inbounds %struct.keybuf_key, ptr %25, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %low.i.i, align 8
  %sub7.i = add i64 %sub49.neg, %34
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool51.not = icmp eq i64 %cond.i, 0
  br i1 %tobool51.not, label %bkey_cmp.exit.if.end53_crit_edge, label %bkey_cmp.exit.for.body.preheader_crit_edge

bkey_cmp.exit.for.body.preheader_crit_edge:       ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

bkey_cmp.exit.if.end53_crit_edge:                 ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end53:                                         ; preds = %bkey_cmp.exit.if.end53_crit_edge, %if.end42.if.end53_crit_edge
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %13, align 8
  %shr.i163 = lshr i64 %36, 20
  %37 = trunc i64 %shr.i163 to i32
  %38 = and i32 %37, 65535
  %conv56 = add nuw nsw i32 %38, %size.0
  %inc = add nuw nsw i32 %nk.0, 1
  %arrayidx57 = getelementptr [5 x ptr], ptr %keys, i32 0, i32 %nk.0
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %next.1, ptr %arrayidx57, align 4
  %call60 = call ptr @bch_keybuf_next(ptr noundef %writeback_keys) #12
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.end53.for.body.preheader_crit_edge, label %if.end53.do.body14_crit_edge

if.end53.do.body14_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

if.end53.for.body.preheader_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

do.end62:                                         ; preds = %do.end35
  br i1 %cmp63211.not, label %do.end62.for.end_crit_edge, label %do.end62.for.body.preheader_crit_edge

do.end62.for.body.preheader_crit_edge:            ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

do.end62.for.end_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %do.end62.for.body.preheader_crit_edge, %if.end53.for.body.preheader_crit_edge, %bkey_cmp.exit.for.body.preheader_crit_edge
  %nk.1233 = phi i32 [ %nk.0, %do.end62.for.body.preheader_crit_edge ], [ %nk.0, %bkey_cmp.exit.for.body.preheader_crit_edge ], [ %inc, %if.end53.for.body.preheader_crit_edge ]
  %size.1232 = phi i32 [ %size.0, %do.end62.for.body.preheader_crit_edge ], [ %size.0, %bkey_cmp.exit.for.body.preheader_crit_edge ], [ %conv56, %if.end53.for.body.preheader_crit_edge ]
  %next.2230 = phi ptr [ %next.1, %do.end62.for.body.preheader_crit_edge ], [ %next.1, %bkey_cmp.exit.for.body.preheader_crit_edge ], [ null, %if.end53.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %closure_call.exit.for.body_crit_edge, %for.body.preheader
  %sequence.1213 = phi i16 [ %inc76, %closure_call.exit.for.body_crit_edge ], [ %sequence.0218, %for.body.preheader ]
  %i.0212 = phi i32 [ %inc90, %closure_call.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx65 = getelementptr [5 x ptr], ptr %keys, i32 0, i32 %i.0212
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx65, align 4
  %42 = getelementptr inbounds %struct.keybuf_key, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 8
  %shr.i165 = lshr i64 %44, 20
  %and.i166 = and i64 %shr.i165, 65535
  %sub68 = add nuw nsw i64 %and.i166, 7
  %div156 = lshr i64 %sub68, 3
  %conv69 = trunc i64 %div156 to i32
  %45 = mul nuw nsw i32 %conv69, 12
  %spec.select.i199 = add nuw nsw i32 %45, 184
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i199, i32 noundef 3520) #18
  %tobool72.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool72.not, label %for.body.err_crit_edge, label %if.end74

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end74:                                         ; preds = %for.body
  %private = getelementptr inbounds %struct.keybuf_key, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i, ptr %private, align 8
  %dc75 = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %dc75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dc, ptr %dc75, align 8
  %sequence77 = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %sequence77 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %sequence.1213, ptr %sequence77, align 4
  %49 = load ptr, ptr %private, align 8
  %bio1.i = getelementptr inbounds %struct.dirty_io, ptr %49, i32 0, i32 3
  %bi_inline_vecs.i = getelementptr inbounds %struct.dirty_io, ptr %49, i32 1
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %42, align 8
  %shr.i.i = lshr i64 %51, 20
  %and.i.i168 = and i64 %shr.i.i, 65535
  %sub.i169 = add nuw nsw i64 %and.i.i168, 7
  %div13.i = lshr i64 %sub.i169, 3
  %conv.i170 = trunc i64 %div13.i to i16
  call void @bio_init(ptr noundef %bio1.i, ptr noundef %bi_inline_vecs.i, i16 noundef zeroext %conv.i170) #12
  %dc.i = getelementptr inbounds %struct.dirty_io, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dc.i, align 8
  %writeback_percent.i = getelementptr inbounds %struct.cached_dev, ptr %53, i32 0, i32 31
  %54 = ptrtoint ptr %writeback_percent.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %writeback_percent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end74.dirty_init.exit_crit_edge

if.end74.dirty_init.exit_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %dirty_init.exit

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %bi_ioprio.i = getelementptr inbounds %struct.dirty_io, ptr %49, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 24576, ptr %bi_ioprio.i, align 2
  br label %dirty_init.exit

dirty_init.exit:                                  ; preds = %if.then.i, %if.end74.dirty_init.exit_crit_edge
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %42, align 8
  %sh.diff.i = lshr i64 %58, 11
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv3.i = and i32 %tr.sh.diff.i, 33553920
  %bi_size.i = getelementptr inbounds %struct.dirty_io, ptr %49, i32 0, i32 3, i32 8, i32 1
  %59 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv3.i, ptr %bi_size.i, align 8
  %bi_private.i = getelementptr inbounds %struct.dirty_io, ptr %49, i32 0, i32 3, i32 11
  %60 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %41, ptr %bi_private.i, align 4
  call void @bch_bio_map(ptr noundef %bio1.i, ptr noundef null) #12
  %bio = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 3
  %bi_opf.i = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %bi_opf.i, align 8
  %arrayidx.i = getelementptr %struct.keybuf_key, ptr %41, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.i, align 8
  %shr.i171 = lshr i64 %63, 8
  %and.i172 = and i64 %shr.i171, 8796093022207
  %bi_iter = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %and.i172, ptr %bi_iter, align 8
  %65 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %c, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cache, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 3, i32 3
  %71 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %72, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i173 = icmp eq ptr %74, %70
  br i1 %cmp.not.i173, label %dirty_init.exit.bio_set_dev.exit_crit_edge, label %if.then.i174

dirty_init.exit.bio_set_dev.exit_crit_edge:       ; preds = %dirty_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i174:                                     ; preds = %dirty_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %72, -2177
  %75 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i174, %dirty_init.exit.bio_set_dev.exit_crit_edge
  %76 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %bio) #12
  %bi_end_io = getelementptr inbounds %struct.dirty_io, ptr %call9.i.i, i32 0, i32 3, i32 10
  %77 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @read_dirty_endio, ptr %bi_end_io, align 128
  %call85 = call i32 @bch_bio_alloc_pages(ptr noundef %bio, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %err_free

if.end88:                                         ; preds = %bio_set_dev.exit
  %inc76 = add i16 %sequence.1213, 1
  call fastcc void @trace_bcache_writeback(ptr noundef %42)
  call void @down(ptr noundef %in_flight) #12
  %78 = call ptr @memset(ptr %call9.i.i, i32 0, i32 72)
  %parent1.i.i = getelementptr inbounds %struct.closure, ptr %call9.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %cl, ptr %parent1.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #12
  %80 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #12, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %80, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %and.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %closure_init.exit.i, !prof !89

do.body2.i.i.i:                                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

closure_init.exit.i:                              ; preds = %if.end88
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %call9.i.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #12
  %81 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 1073741825, ptr %remaining.i.i, align 16
  call void @closure_debug_create(ptr noundef nonnull %call9.i.i) #12
  call fastcc void @closure_set_ip(ptr noundef nonnull %call9.i.i) #12
  %fn1.i.i = getelementptr inbounds %struct.anon, ptr %call9.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @read_dirty_submit, ptr %fn1.i.i, align 4
  %83 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %call9.i.i, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %84 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call9.i.i, align 128
  %tobool.not.i1.i = icmp eq ptr %85, null
  br i1 %tobool.not.i1.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %closure_init.exit.i
  call void @__init_work(ptr noundef nonnull %call9.i.i, i32 noundef 0) #12
  %86 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -64, ptr %call9.i.i, align 128
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry3.i.i = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 8
  %call.i.i.i176 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %85, ptr noundef nonnull %call9.i.i) #12
  br i1 %call.i.i.i176, label %do.body2.i.i.closure_call.exit_crit_edge, label %do.body12.i.i, !prof !82

do.body2.i.i.closure_call.exit_crit_edge:         ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %closure_call.exit

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #12, !srcloc !115
  unreachable

if.else.i.i:                                      ; preds = %closure_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fn1.i.i, align 4
  call void %90(ptr noundef nonnull %call9.i.i) #12
  br label %closure_call.exit

closure_call.exit:                                ; preds = %if.else.i.i, %do.body2.i.i.closure_call.exit_crit_edge
  %inc90 = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc90, %nk.1233
  br i1 %exitcond.not, label %closure_call.exit.for.end_crit_edge, label %closure_call.exit.for.body_crit_edge

closure_call.exit.for.body_crit_edge:             ; preds = %closure_call.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

closure_call.exit.for.end_crit_edge:              ; preds = %closure_call.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %closure_call.exit.for.end_crit_edge, %do.end62.for.end_crit_edge
  %size.1231 = phi i32 [ %size.0, %do.end62.for.end_crit_edge ], [ %size.1232, %closure_call.exit.for.end_crit_edge ]
  %next.2229 = phi ptr [ %next.1, %do.end62.for.end_crit_edge ], [ %next.2230, %closure_call.exit.for.end_crit_edge ]
  %sequence.1.lcssa = phi i16 [ %sequence.0218, %do.end62.for.end_crit_edge ], [ %inc76, %closure_call.exit.for.end_crit_edge ]
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i177 = icmp eq i32 %93, 0
  br i1 %tobool.not.i177, label %lor.lhs.false.i, label %for.end.writeback_delay.exit_crit_edge

for.end.writeback_delay.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %writeback_delay.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %94 = ptrtoint ptr %writeback_percent.i178 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %writeback_percent.i178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool1.not.i = icmp eq i8 %95, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.writeback_delay.exit_crit_edge, label %if.end.i

lor.lhs.false.i.writeback_delay.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %writeback_delay.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i179 = zext i32 %size.1231 to i64
  %call2.i = call i64 @bch_next_delay(ptr noundef %writeback_rate.i, i64 noundef %conv.i179) #12
  %conv3.i180 = trunc i64 %call2.i to i32
  br label %writeback_delay.exit

writeback_delay.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.writeback_delay.exit_crit_edge, %for.end.writeback_delay.exit_crit_edge
  %retval.0.i181 = phi i32 [ %conv3.i180, %if.end.i ], [ 0, %lor.lhs.false.i.writeback_delay.exit_crit_edge ], [ 0, %for.end.writeback_delay.exit_crit_edge ]
  %call93214 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call93214, label %writeback_delay.exit.while.end_crit_edge, label %writeback_delay.exit.land.lhs.true94_crit_edge

writeback_delay.exit.land.lhs.true94_crit_edge:   ; preds = %writeback_delay.exit
  br label %land.lhs.true94

writeback_delay.exit.while.end_crit_edge:         ; preds = %writeback_delay.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true94:                                  ; preds = %writeback_delay.exit192.land.lhs.true94_crit_edge, %writeback_delay.exit.land.lhs.true94_crit_edge
  %delay.0215 = phi i32 [ %retval.0.i191, %writeback_delay.exit192.land.lhs.true94_crit_edge ], [ %retval.0.i181, %writeback_delay.exit.land.lhs.true94_crit_edge ]
  %96 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %c, align 8
  %flags97 = getelementptr inbounds %struct.cache_set, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags97, align 4
  %100 = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool99.not = icmp ne i32 %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay.0215)
  %tobool101.not = icmp eq i32 %delay.0215, 0
  %or.cond158 = select i1 %tobool99.not, i1 true, i1 %tobool101.not
  br i1 %or.cond158, label %land.lhs.true94.while.end_crit_edge, label %while.body103

land.lhs.true94.while.end_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body103:                                    ; preds = %land.lhs.true94
  %call104 = call i32 @schedule_timeout_interruptible(i32 noundef %delay.0215) #12
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags.i, align 4
  %103 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i183 = icmp eq i32 %103, 0
  br i1 %tobool.not.i183, label %lor.lhs.false.i186, label %while.body103.writeback_delay.exit192_crit_edge

while.body103.writeback_delay.exit192_crit_edge:  ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %writeback_delay.exit192

lor.lhs.false.i186:                               ; preds = %while.body103
  %104 = ptrtoint ptr %writeback_percent.i178 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %writeback_percent.i178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool1.not.i185 = icmp eq i8 %105, 0
  br i1 %tobool1.not.i185, label %lor.lhs.false.i186.writeback_delay.exit192_crit_edge, label %if.end.i190

lor.lhs.false.i186.writeback_delay.exit192_crit_edge: ; preds = %lor.lhs.false.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %writeback_delay.exit192

if.end.i190:                                      ; preds = %lor.lhs.false.i186
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i188 = call i64 @bch_next_delay(ptr noundef %writeback_rate.i, i64 noundef 0) #12
  %conv3.i189 = trunc i64 %call2.i188 to i32
  br label %writeback_delay.exit192

writeback_delay.exit192:                          ; preds = %if.end.i190, %lor.lhs.false.i186.writeback_delay.exit192_crit_edge, %while.body103.writeback_delay.exit192_crit_edge
  %retval.0.i191 = phi i32 [ %conv3.i189, %if.end.i190 ], [ 0, %lor.lhs.false.i186.writeback_delay.exit192_crit_edge ], [ 0, %while.body103.writeback_delay.exit192_crit_edge ]
  %call93 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call93, label %writeback_delay.exit192.while.end_crit_edge, label %writeback_delay.exit192.land.lhs.true94_crit_edge

writeback_delay.exit192.land.lhs.true94_crit_edge: ; preds = %writeback_delay.exit192
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true94

writeback_delay.exit192.while.end_crit_edge:      ; preds = %writeback_delay.exit192
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %writeback_delay.exit192.while.end_crit_edge, %land.lhs.true94.while.end_crit_edge, %writeback_delay.exit.while.end_crit_edge
  %call10 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call10, label %while.end.if.end110_crit_edge, label %while.end.land.lhs.true_crit_edge

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

while.end.if.end110_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

err_free:                                         ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %private.le = getelementptr inbounds %struct.keybuf_key, ptr %41, i32 0, i32 2
  %106 = ptrtoint ptr %private.le to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %private.le, align 8
  call void @kfree(ptr noundef %107) #12
  br label %err

err:                                              ; preds = %err_free, %for.body.err_crit_edge
  call void @bch_keybuf_del(ptr noundef %writeback_keys, ptr noundef %41) #12
  br label %if.end110

if.end110:                                        ; preds = %err, %while.end.if.end110_crit_edge, %land.lhs.true.if.end110_crit_edge, %do.end8.if.end110_crit_edge
  %call.i.i.i194 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #12
  %108 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %remaining.i, align 4
  %and.i195 = and i32 %109, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i195)
  %cmp.not.i196 = icmp eq i32 %and.i195, 1
  br i1 %cmp.not.i196, label %if.end110.closure_sync.exit_crit_edge, label %if.then.i197

if.end110.closure_sync.exit_crit_edge:            ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %closure_sync.exit

if.then.i197:                                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  call void @__closure_sync(ptr noundef nonnull %cl) #12
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i197, %if.end110.closure_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keys) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_kthread_stop() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call64 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call64, label %entry.while.end_crit_edge, label %entry.__here_crit_edge

entry.__here_crit_edge:                           ; preds = %entry
  br label %__here

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

__here:                                           ; preds = %__here.__here_crit_edge, %entry.__here_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #12
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  tail call void @schedule() #12
  %call = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call, label %__here.while.end_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_refill_keybuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dirty_pred(ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %and.i = and i64 %1, 1048575
  %id = getelementptr i8, ptr %buf, i32 -3468
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv)
  %cmp.not = icmp eq i64 %and.i, %conv
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !82

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 605, 0\0A.popsection", ""() #12, !srcloc !117
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = and i64 %1, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool10 = icmp ne i64 %4, 0
  ret i1 %tobool10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__closure_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_keybuf_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_dirty_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %private = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dc = getelementptr inbounds %struct.dirty_io, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc, align 8
  %c = getelementptr inbounds %struct.cached_dev, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %10 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bi_status, align 2
  tail call void @bch_count_io_errors(ptr noundef %9, i8 noundef zeroext %11, i32 noundef 1, ptr noundef nonnull @.str.26) #12
  %12 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_private, align 4
  %private.i = getelementptr inbounds %struct.keybuf_key, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 8
  %16 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %entry.dirty_endio.exit_crit_edge, label %if.then.i

entry.dirty_endio.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dirty_endio.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %18 = getelementptr inbounds %struct.keybuf_key, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %and.i.i = and i64 %20, -68719476737
  store i64 %and.i.i, ptr %18, align 8
  %dc.i = getelementptr inbounds %struct.dirty_io, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc.i, align 8
  tail call void @bch_count_backing_io_errors(ptr noundef %22, ptr noundef %bio) #12
  br label %dirty_endio.exit

dirty_endio.exit:                                 ; preds = %if.then.i, %entry.dirty_endio.exit_crit_edge
  tail call void @closure_put(ptr noundef %15) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bio_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_writeback(ptr noundef %k) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_writeback, i32 0, i32 1), ptr blockaddress(@trace_bcache_writeback, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !119
  %call42 = tail call i32 @__traceiter_bcache_writeback(ptr noundef null, ptr noundef %k) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_writeback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_writeback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_writeback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_bcache_writeback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 495, ptr noundef nonnull @.str.28) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_dirty_submit(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %c = getelementptr inbounds %struct.cached_dev, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 8
  %bio = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #12, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !89

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

closure_get.exit.i:                               ; preds = %entry
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !82

if.then.i:                                        ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %bi_status.i = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #12
  br label %closure_bio_submit.exit

if.end.i:                                         ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @submit_bio_noacct(ptr noundef %bio) #12
  br label %closure_bio_submit.exit

closure_bio_submit.exit:                          ; preds = %if.end.i, %if.then.i
  %9 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc, align 8
  %writeback_write_wq = getelementptr inbounds %struct.cached_dev, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %writeback_write_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %writeback_write_wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #12
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %13 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @write_dirty, ptr %fn1.i, align 4
  %14 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_keybuf_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bio_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_count_io_errors(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dirty_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %private = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %and.i = and i64 %8, -68719476737
  store i64 %and.i, ptr %6, align 8
  %dc = getelementptr inbounds %struct.dirty_io, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc, align 8
  tail call void @bch_count_backing_io_errors(ptr noundef %10, ptr noundef %bio) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @closure_put(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_count_backing_io_errors(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_writeback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @closure_set_ip(ptr nocapture noundef writeonly %cl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ip = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr blockaddress(@closure_set_ip, %__here) to i32), ptr %ip, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_dirty(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bio = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3
  %bi_private = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %dc1 = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 1
  %2 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc1, align 8
  %writeback_sequence_next = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %writeback_sequence_next, i32 noundef 4) #12
  %4 = ptrtoint ptr %writeback_sequence_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %writeback_sequence_next, align 4
  %sequence = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 2
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sequence, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %writeback_ordering_wait = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 22
  %call3 = tail call zeroext i1 @closure_wait(ptr noundef %writeback_ordering_wait, ptr noundef %cl) #12
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %writeback_sequence_next, i32 noundef 4) #12
  %8 = ptrtoint ptr %writeback_sequence_next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %writeback_sequence_next, align 4
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sequence, align 4
  %conv7 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp8 = icmp eq i32 %9, %conv7
  br i1 %cmp8, label %if.then10, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @__closure_wake_up(ptr noundef %writeback_ordering_wait) #12
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.then.do.body_crit_edge
  %12 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dc1, align 8
  %writeback_write_wq = getelementptr inbounds %struct.cached_dev, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %writeback_write_wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %writeback_write_wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #12
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %16 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @write_dirty, ptr %fn1.i, align 4
  %17 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  br label %cleanup

if.end13:                                         ; preds = %entry
  %add = add i16 %7, 1
  %18 = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %21 = and i64 %20, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not = icmp eq i64 %21, 0
  br i1 %tobool.not, label %if.end13.if.end28_crit_edge, label %if.then18

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then18:                                        ; preds = %if.end13
  %private.i = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 8
  %bio1.i = getelementptr inbounds %struct.dirty_io, ptr %23, i32 0, i32 3
  %bi_inline_vecs.i = getelementptr inbounds %struct.dirty_io, ptr %23, i32 1
  %shr.i.i = lshr i64 %20, 20
  %and.i.i = and i64 %shr.i.i, 65535
  %sub.i = add nuw nsw i64 %and.i.i, 7
  %div13.i = lshr i64 %sub.i, 3
  %conv.i = trunc i64 %div13.i to i16
  tail call void @bio_init(ptr noundef %bio1.i, ptr noundef %bi_inline_vecs.i, i16 noundef zeroext %conv.i) #12
  %dc.i = getelementptr inbounds %struct.dirty_io, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc.i, align 8
  %writeback_percent.i = getelementptr inbounds %struct.cached_dev, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %writeback_percent.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %writeback_percent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then18.dirty_init.exit_crit_edge

if.then18.dirty_init.exit_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %dirty_init.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %bi_ioprio.i = getelementptr inbounds %struct.dirty_io, ptr %23, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 24576, ptr %bi_ioprio.i, align 2
  br label %dirty_init.exit

dirty_init.exit:                                  ; preds = %if.then.i, %if.then18.dirty_init.exit_crit_edge
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %18, align 8
  %sh.diff.i = lshr i64 %30, 11
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv3.i = and i32 %tr.sh.diff.i, 33553920
  %bi_size.i = getelementptr inbounds %struct.dirty_io, ptr %23, i32 0, i32 3, i32 8, i32 1
  %31 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv3.i, ptr %bi_size.i, align 8
  %bi_private.i = getelementptr inbounds %struct.dirty_io, ptr %23, i32 0, i32 3, i32 11
  %32 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %bi_private.i, align 4
  tail call void @bch_bio_map(ptr noundef %bio1.i, ptr noundef null) #12
  %bi_opf.i = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %bi_opf.i, align 8
  %low.i = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %low.i, align 8
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %18, align 8
  %shr.i69 = lshr i64 %37, 20
  %and.i70 = and i64 %shr.i69, 65535
  %sub = sub i64 %35, %and.i70
  %bi_iter = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub, ptr %bi_iter, align 8
  %39 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc1, align 8
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %44, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %46, %42
  br i1 %cmp.not.i, label %dirty_init.exit.bio_set_dev.exit_crit_edge, label %if.then.i71

dirty_init.exit.bio_set_dev.exit_crit_edge:       ; preds = %dirty_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i71:                                      ; preds = %dirty_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %44, -2177
  %47 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i71, %dirty_init.exit.bio_set_dev.exit_crit_edge
  %48 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %42, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #12
  %bi_end_io = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 10
  %49 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dirty_endio, ptr %bi_end_io, align 8
  %50 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dc1, align 8
  %c = getelementptr inbounds %struct.cached_dev, ptr %51, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %c, align 8
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #12
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #12, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  %and.i.i72 = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72)
  %cmp.i.i = icmp eq i32 %and.i.i72, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !89

do.body2.i.i:                                     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

closure_get.exit.i:                               ; preds = %bio_set_dev.exit
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %53, i32 0, i32 6
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i, align 4
  %57 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i73 = icmp eq i32 %57, 0
  br i1 %tobool.not.i73, label %if.end.i, label %if.then.i74, !prof !82

if.then.i74:                                      ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %bi_status.i = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #12
  br label %if.end28

if.end.i:                                         ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @submit_bio_noacct(ptr noundef %bio) #12
  br label %if.end28

if.end28:                                         ; preds = %if.end.i, %if.then.i74, %if.end13.if.end28_crit_edge
  %conv30 = zext i16 %add to i32
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_sequence_next, i32 noundef 4) #12
  %59 = ptrtoint ptr %writeback_sequence_next to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %conv30, ptr %writeback_sequence_next, align 4
  %writeback_ordering_wait31 = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @__closure_wake_up(ptr noundef %writeback_ordering_wait31) #12
  %60 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dc1, align 8
  %writeback_write_wq34 = getelementptr inbounds %struct.cached_dev, ptr %61, i32 0, i32 19
  %62 = ptrtoint ptr %writeback_write_wq34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %writeback_write_wq34, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #12
  %fn1.i75 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %64 = ptrtoint ptr %fn1.i75 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @write_dirty_finish, ptr %fn1.i75, align 4
  %65 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.body
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_sub(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @closure_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_dirty_finish(ptr noundef %cl) #0 align 64 {
entry:
  %keys = alloca %struct.keylist, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bio = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3
  %bi_private = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 3, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %dc1 = getelementptr inbounds %struct.dirty_io, ptr %cl, i32 0, i32 1
  %2 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc1, align 8
  tail call void @bio_free_pages(ptr noundef %bio) #12
  %4 = getelementptr inbounds %struct.keybuf_key, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %keys) #12
  %8 = getelementptr inbounds i8, ptr %keys, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 128)
  %inline_keys.i = getelementptr inbounds %struct.keylist, ptr %keys, i32 0, i32 2
  %10 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %inline_keys.i, ptr %keys, align 8
  %11 = getelementptr inbounds %struct.keylist, ptr %keys, i32 0, i32 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %4, align 8
  %sh.diff.i = lshr i64 %13, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %14 = call ptr @memcpy(ptr %inline_keys.i, ptr %4, i32 %mul.i)
  %15 = ptrtoint ptr %inline_keys.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %inline_keys.i, align 8
  %and.i38 = and i64 %16, -68719476737
  store i64 %and.i38, ptr %inline_keys.i, align 8
  %shr.i.i.i.i = lshr i64 %16, 60
  %17 = trunc i64 %shr.i.i.i.i to i32
  %18 = and i32 %17, 7
  %conv.i.i.i = add nuw nsw i32 %18, 2
  %add.ptr.i.i = getelementptr i64, ptr %inline_keys.i, i32 %conv.i.i.i
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i.i, ptr %11, align 4
  %20 = load i64, ptr %4, align 8
  %21 = and i64 %20, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp43.not = icmp eq i64 %21, 0
  br i1 %cmp43.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %c = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c, align 8
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache.i, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buckets.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %4, i32 0, i32 2, i32 %i.044
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %29, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %23, i32 0, i32 24
  %30 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %31 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %add.ptr.i = getelementptr %struct.bucket, ptr %27, i32 %conv1.i.i.i
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #12
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #12, !srcloc !84
  %inc = add i32 %i.044, 1
  %conv = zext i32 %inc to i64
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %4, align 8
  %shr.i39 = lshr i64 %34, 60
  %and.i40 = and i64 %shr.i39, 7
  %cmp = icmp ugt i64 %and.i40, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %c8 = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %c8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c8, align 8
  %call9 = call i32 @bch_btree_insert(ptr noundef %36, ptr noundef nonnull %keys, ptr noundef null, ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cond.false, label %if.then11

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_bcache_writeback_collision(ptr noundef %4)
  %37 = ptrtoint ptr %c8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %c8, align 8
  %writeback_keys_failed = getelementptr inbounds %struct.cache_set, ptr %38, i32 0, i32 76
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %c8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %c8, align 8
  %writeback_keys_done = getelementptr inbounds %struct.cache_set, ptr %40, i32 0, i32 75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then11
  %cond = phi ptr [ %writeback_keys_failed, %if.then11 ], [ %writeback_keys_done, %cond.false ]
  %call.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef %cond, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %cond, i32 1, i32 3, i32 1) #12
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cond, ptr %cond, i32 1, ptr elementtype(i32) %cond) #12, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %keys) #12
  br label %if.end17

if.end17:                                         ; preds = %cond.end, %entry.if.end17_crit_edge
  %writeback_keys = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 20
  call void @bch_keybuf_del(ptr noundef %writeback_keys, ptr noundef %1) #12
  %in_flight = getelementptr inbounds %struct.cached_dev, ptr %3, i32 0, i32 17
  call void @up(ptr noundef %in_flight) #12
  call fastcc void @closure_set_ip(ptr noundef %cl) #12
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %42 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dirty_io_destructor, ptr %fn1.i, align 4
  %43 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %cl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  call void @closure_sub(ptr noundef %cl, i32 noundef 1006632961) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__closure_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_writeback_collision(ptr noundef %k) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_writeback_collision, i32 0, i32 1), ptr blockaddress(@trace_bcache_writeback_collision, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %call42 = tail call i32 @__traceiter_bcache_writeback_collision(ptr noundef null, ptr noundef %k) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_writeback_collision, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_writeback_collision, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_writeback_collision.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_bcache_writeback_collision.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 500, ptr noundef nonnull @.str.28) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dirty_io_destructor(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_writeback_collision(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bch_next_delay(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/writeback.c", i32 966, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bch_sectors_dirty_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bch_sectors_dirty_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @bch_sectors_dirty_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/writeback.c", i32 974, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @bch_sectors_dirty_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/md/bcache/writeback.c", i32 977, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/bcache/writeback.c", i32 987, i32 32}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/bcache/writeback.c", i32 994, i32 4}
!16 = !{ptr @bch_sectors_dirty_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bch_sectors_dirty_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @bch_cached_dev_writeback_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/md/bcache/writeback.c", i32 1012, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bch_cached_dev_writeback_init.__key.11, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/md/bcache/writeback.c", i32 1031, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bch_cached_dev_writeback_init.__key.13, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/writeback.c", i32 1036, i32 43}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/writeback.c", i32 1042, i32 25}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/bcache/writeback.h", i32 66, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @offset_to_stripe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @offset_to_stripe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/bcache/writeback.c", i32 860, i32 4}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bch_root_node_dirty_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bch_root_node_dirty_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @sema_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/md/bcache/writeback.c", i32 708, i32 3}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/md/bcache/writeback.c", i32 722, i32 5}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/md/bcache/writeback.c", i32 729, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/bcache/writeback.c", i32 421, i32 8}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/bcache.h", i32 492, i32 1}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @closure_queue.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/md/bcache/closure.h", i32 247, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/trace/events/bcache.h", i32 497, i32 1}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../drivers/md/bcache/bcache.h", i32 948, i32 3}
!71 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148453251, i64 2148453531, i64 2148453865, i64 2148454199}
!84 = !{i64 2148603466, i64 2148603492, i64 2148603521, i64 2148603555, i64 2148603586, i64 2148603609}
!85 = !{i64 2148688901}
!86 = !{i64 2148604186, i64 2148604218, i64 2148604247, i64 2148604281, i64 2148604312, i64 2148604335}
!87 = !{i64 2148689130}
!88 = !{i64 2155246062}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2155241161, i64 2155241655, i64 2155241198, i64 2155241254, i64 2155241288, i64 2155241312, i64 2155241353, i64 2155241374, i64 2155241402, i64 2155241436}
!91 = !{i64 2155242592}
!92 = !{ptr @up_read, ptr @up_write}
!93 = !{i64 2155243004}
!94 = !{i64 2148691942}
!95 = !{i64 2148606651, i64 2148606683, i64 2148606712, i64 2148606746, i64 2148606777, i64 2148606800}
!96 = !{i64 2148692171}
!97 = !{i64 2155175293}
!98 = !{i64 2155175604}
!99 = !{i64 967707, i64 967734, i64 967756, i64 967784}
!100 = !{i64 968115, i64 968142, i64 968175, i64 968196, i64 968223, i64 968249}
!101 = !{!"auto-init"}
!102 = !{i64 2155175929}
!103 = !{i64 1088979, i64 1089003, i64 1089024, i64 1089041, i64 1089058}
!104 = !{i64 2154440151}
!105 = !{i64 2148693021}
!106 = !{i64 2148607461, i64 2148607493, i64 2148607522, i64 2148607556, i64 2148607587, i64 2148607610}
!107 = !{i64 2150481194}
!108 = !{i64 2155223995}
!109 = !{i64 2155228761}
!110 = !{i64 2155233495}
!111 = !{i64 2155181989, i64 2155182483, i64 2155182026, i64 2155182082, i64 2155182116, i64 2155182140, i64 2155182181, i64 2155182202, i64 2155182230, i64 2155182264}
!112 = !{i64 2155183663, i64 2155184157, i64 2155183700, i64 2155183756, i64 2155183790, i64 2155183814, i64 2155183855, i64 2155183876, i64 2155183904, i64 2155183938}
!113 = !{i64 2154408768, i64 2154409260, i64 2154408805, i64 2154408861, i64 2154408895, i64 2154408919, i64 2154408960, i64 2154408981, i64 2154409009, i64 2154409043}
!114 = !{i64 2154399623}
!115 = !{i64 2154406858, i64 2154407350, i64 2154406895, i64 2154406951, i64 2154406985, i64 2154407009, i64 2154407050, i64 2154407071, i64 2154407099, i64 2154407133}
!116 = !{i64 2154445659}
!117 = !{i64 2155217101, i64 2155217595, i64 2155217138, i64 2155217194, i64 2155217228, i64 2155217252, i64 2155217293, i64 2155217314, i64 2155217342, i64 2155217376}
!118 = !{i64 2148428064, i64 2148428069, i64 2148428082, i64 2148428126, i64 2148428160, i64 2148428181}
!119 = !{i64 2155124565}
!120 = !{i64 2155124762}
!121 = !{i64 2149591555}
!122 = !{i64 2149592591}
!123 = !{i64 2154410719}
!124 = !{i64 2155140913}
!125 = !{i64 2155141130}
