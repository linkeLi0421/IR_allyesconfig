; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/request.c_pt.bc'
source_filename = "../drivers/md/bcache/request.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.data_insert_op = type { %struct.closure, ptr, ptr, ptr, i32, i16, i16, i8, [3 x i8], %union.anon.107, %struct.keylist, %union.anon.111 }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.107 = type { i16, [2 x i8] }
%struct.keylist = type { %union.anon.109, %union.anon.110, [16 x i64] }
%union.anon.109 = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { [8 x i64] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.42, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.42 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.101, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.97 }
%struct.rb_root = type { ptr }
%struct.anon.97 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.98, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.98 = type { [8 x i64] }
%union.anon.101 = type { [8 x i64] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.102, %union.anon.103, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.102 = type { i32, i32, i32, i32, ptr }
%union.anon.103 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.92], %struct.anon.93, i32, ptr, %struct.anon.94, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.76, [32 x i8], i64, i64, i64, i64, i64, %union.anon.77, i32, i16, %union.anon.80, [256 x i64] }
%union.anon.76 = type { i64, [8 x i8] }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, i16, i16, i16, i32 }
%union.anon.80 = type { i16 }
%struct.anon.92 = type { i32, i32, i32, i32, ptr }
%struct.anon.93 = type { i32, i32, i32, i32, ptr }
%struct.anon.94 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.anon = type { ptr, ptr, %struct.llist_node, ptr }
%struct.llist_node = type { ptr }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.page = type { i32, %union.anon.4, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.search = type { %struct.closure, %struct.bbio, ptr, ptr, ptr, i32, i8, ptr, i32, %struct.btree_op, %struct.data_insert_op }
%struct.bbio = type { i32, %union.anon.112, %struct.bio }
%union.anon.112 = type { [3 x i64] }
%struct.btree_op = type { %struct.wait_queue_entry, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.detached_dev_io_private = type { ptr, i32, ptr, ptr, ptr }
%struct.uuid_entry = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100, [56 x i8] }
%struct.anon.100 = type { [16 x i8], [32 x i8], i32, i32, i32, i32, i64 }
%struct.cached_dev = type { %struct.list_head, %struct.bcache_device, ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.closure, %struct.semaphore, %struct.refcount_struct, %struct.work_struct, %struct.atomic_t, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.bch_ratelimit, %struct.delayed_work, %struct.semaphore, ptr, ptr, %struct.keybuf, ptr, %struct.closure_waitlist, %struct.atomic_t, [128 x %struct.io], [129 x %struct.hlist_head], %struct.list_head, %struct.spinlock, %struct.cache_accounting, i32, i8, i8, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.io = type { %struct.hlist_node, %struct.list_head, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btree = type { %struct.hlist_node, %union.anon.95, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%union.anon.95 = type { [8 x i64] }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.btree_write = type { ptr, i32 }

@bcache_wq = external dso_local local_unnamed_addr global ptr, align 4
@bch_search_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"search\00", [25 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_write = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/bcache.h\00", [34 x i8] zeroinitializer }, align 32
@trace_bcache_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@bch_data_invalidate.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcache\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bch_data_invalidate\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/md/bcache/request.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalidating %i sectors from %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bcache: %s() invalidating %i sectors from %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"writing data to cache\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_bcache_cache_insert = external dso_local global %struct.tracepoint, align 4
@trace_bcache_cache_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bch_register_lock = external dso_local global %struct.mutex, align 4
@__tracepoint_bcache_request_start = external dso_local global %struct.tracepoint, align 4
@trace_bcache_request_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@backing_request_endio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bcache: %s() Can't flush %pg: returned bi_status %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"backing_request_endio\00", [42 x i8] zeroinitializer }, align 32
@backing_request_endio._entry_ptr = internal global ptr @backing_request_endio._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@closure_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cl->work)\00", [35 x i8] zeroinitializer }, align 32
@check_should_bypass.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.14, ptr @.str.6, ptr @.str.15, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_should_bypass\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"skipping unaligned io\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bcache: %s() skipping unaligned io\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_bcache_bypass_sequential = external dso_local global %struct.tracepoint, align 4
@trace_bcache_bypass_sequential.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_bcache_bypass_congested = external dso_local global %struct.tracepoint, align 4
@trace_bcache_bypass_congested.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bch_cutoff_writeback_sync = external dso_local local_unnamed_addr global i32, align 4
@bch_cutoff_writeback = external dso_local local_unnamed_addr global i32, align 4
@offset_to_stripe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013bcache: %s() Invalid stripe %llu (>= nr_stripes %d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"offset_to_stripe\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/md/bcache/writeback.h\00", [34 x i8] zeroinitializer }, align 32
@offset_to_stripe._entry_ptr = internal global ptr @offset_to_stripe._entry, section ".printk_index", align 4
@__tracepoint_bcache_read = external dso_local global %struct.tracepoint, align 4
@trace_bcache_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_bcache_read_retry = external dso_local global %struct.tracepoint, align 4
@trace_bcache_read_retry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_bcache_request_end = external dso_local global %struct.tracepoint, align 4
@trace_bcache_request_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reading from cache\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"bch_search_cache\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 26, i32 20 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1336, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bcache.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 151, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 108, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 113, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 184, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 44, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 654, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [31 x i8] c"../drivers/md/bcache/closure.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 247, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 399, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [33 x i8] c"../drivers/md/bcache/writeback.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 66, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [31 x i8] c"../drivers/md/bcache/request.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 506, i32 48 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @backing_request_endio._entry, ptr @backing_request_endio._entry_ptr, ptr @offset_to_stripe._entry, ptr @offset_to_stripe._entry_ptr, ptr @bch_search_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @closure_queue.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_search_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backing_request_endio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @closure_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_to_stripe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_data_insert(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %inode = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inode, align 4
  %conv = zext i32 %3 to i64
  %bio = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 2
  %4 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio, align 4
  %6 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %6, align 8
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4 = icmp slt i8 %bf.load, 0
  tail call fastcc void @trace_bcache_write(ptr noundef %1, i64 noundef %conv, ptr noundef %5, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool4)
  %insert_keys = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10
  %inline_keys.i = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %insert_keys to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %inline_keys.i, ptr %insert_keys, align 8
  %10 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %inline_keys.i, ptr %10, align 4
  %12 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bio, align 4
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bi_flags.i, align 4
  %16 = or i16 %15, 64
  store i16 %16, ptr %bi_flags.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  %__bi_cnt.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %__bi_cnt.i, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i, ptr %__bi_cnt.i, i32 1, ptr elementtype(i32) %__bi_cnt.i) #14, !srcloc !76
  tail call void @bch_data_insert_start(ptr noundef %cl)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_write(ptr noundef %c, i64 noundef %inode, ptr noundef %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_write, i32 0, i32 1), ptr blockaddress(@trace_bcache_write, %do.body)) #14
          to label %if.end51 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %cleanup.thread

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !79
  %call45 = tail call i32 @__traceiter_bcache_write(ptr noundef null, ptr noundef %c, i64 noundef %inode, ptr noundef %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i76 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i76 to ptr
  %preempt_count.i.i77 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i77, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77, align 4
  br label %if.end51

if.end51:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i79 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !78

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div3.i.i.i84 = lshr i32 %20, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i84
  %22 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i86
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i87.not = icmp eq i32 %25, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_write, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_bcache_write.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @.str.2) #14
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i89 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_data_insert_start(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bio1 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 2
  %0 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio1, align 4
  %2 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @bch_data_invalidate(ptr noundef %cl)
  br label %cleanup116

if.end:                                           ; preds = %entry
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %5, 9
  %c = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 1
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %sectors_to_gc = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sectors_to_gc, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %sectors_to_gc, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sectors_to_gc, ptr %sectors_to_gc, i32 %shr, ptr elementtype(i32) %sectors_to_gc) #14, !srcloc !84
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c, align 8
  %gc_wait.i = getelementptr inbounds %struct.cache_set, ptr %10, i32 0, i32 48
  tail call void @__wake_up(ptr noundef %gc_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_opf, align 8
  %13 = and i32 %12, -393217
  store i32 %13, ptr %bi_opf, align 8
  %insert_keys = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10
  %14 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10, i32 1
  %inode = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 4
  %write_point = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 5
  %write_prio = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.cond63.do.body_crit_edge, %if.end4
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c, align 8
  %bio_split = getelementptr inbounds %struct.cache_set, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load7 = load i8, ptr %2, align 8
  %18 = lshr i8 %bf.load7, 4
  %.lobit = and i8 %18, 1
  %narrow = add nuw nsw i8 %.lobit, 3
  %add = zext i8 %narrow to i32
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %21 = ptrtoint ptr %insert_keys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %insert_keys, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %22 to i32
  %add6.i = shl nuw nsw i32 %add, 3
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %23 = add i32 %sub.ptr.sub.i.i, %add6.i
  %mul.i = and i32 %23, -8
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %16, i32 0, i32 9
  %24 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache.i, align 4
  %block_size.i = getelementptr inbounds %struct.cache, ptr %25, i32 0, i32 1, i32 11, i32 0, i32 1
  %26 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %block_size.i, align 8
  %conv.i = zext i16 %27 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 9
  %sub.i = add nsw i32 %shl.i, -240
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp.i = icmp ugt i32 %mul.i, %sub.i
  br i1 %cmp.i, label %do.body.cleanup.thread_crit_edge, label %bch_keylist_realloc.exit

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

bch_keylist_realloc.exit:                         ; preds = %do.body
  %call2.i = tail call i32 @__bch_keylist_realloc(ptr noundef %insert_keys, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool13.not = icmp eq i32 %call2.i, 0
  br i1 %tobool13.not, label %if.end16, label %bch_keylist_realloc.exit.cleanup.thread_crit_edge

bch_keylist_realloc.exit.cleanup.thread_crit_edge: ; preds = %bch_keylist_realloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %bch_keylist_realloc.exit.cleanup.thread_crit_edge, %do.body.cleanup.thread_crit_edge
  %wq = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 3
  %28 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %30 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bch_data_insert_keys, ptr %fn1.i, align 4
  %31 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  br label %cleanup116

if.end16:                                         ; preds = %bch_keylist_realloc.exit
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %14, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -9223372036854775808, ptr %33, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %33, i32 8
  %35 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %36 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inode, align 4
  %38 = and i32 %37, 1048575
  %and1.i = zext i32 %38 to i64
  %or.i = or i64 %and1.i, -9223372036854775808
  store i64 %or.i, ptr %33, align 8
  %39 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bi_iter, align 8
  store i64 %40, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %41 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c, align 8
  %43 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bi_size, align 8
  %shr23 = lshr i32 %44, 9
  %45 = ptrtoint ptr %write_point to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %write_point, align 8
  %conv24 = zext i16 %46 to i32
  %47 = ptrtoint ptr %write_prio to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %write_prio, align 2
  %conv25 = zext i16 %48 to i32
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load26 = load i8, ptr %2, align 8
  %50 = and i8 %bf.load26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool30 = icmp ne i8 %50, 0
  %call31 = tail call zeroext i1 @bch_alloc_sectors(ptr noundef %42, ptr noundef %33, i32 noundef %shr23, i32 noundef %conv24, i32 noundef %conv25, i1 noundef zeroext %tobool30) #14
  br i1 %call31, label %if.end33, label %do.body73

if.end33:                                         ; preds = %if.end16
  %51 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %33, align 8
  %shr.i = lshr i64 %52, 20
  %53 = trunc i64 %shr.i to i32
  %conv35 = and i32 %53, 65535
  %54 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_size, align 8
  %shr.i185 = lshr i32 %55, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i185, i32 %conv35)
  %cmp.not.i = icmp ugt i32 %shr.i185, %conv35
  br i1 %cmp.not.i, label %if.end.i186, label %if.end33.bio_next_split.exit_crit_edge

if.end33.bio_next_split.exit_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_next_split.exit

if.end.i186:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @bio_split(ptr noundef %1, i32 noundef %conv35, i32 noundef 3072, ptr noundef %bio_split) #14
  br label %bio_next_split.exit

bio_next_split.exit:                              ; preds = %if.end.i186, %if.end33.bio_next_split.exit_crit_edge
  %retval.0.i187 = phi ptr [ %call.i, %if.end.i186 ], [ %1, %if.end33.bio_next_split.exit_crit_edge ]
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 10
  %56 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @bch_data_insert_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 11
  %57 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %cl, ptr %bi_private, align 4
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load37 = load i8, ptr %2, align 8
  %59 = and i8 %bf.load37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool41.not = icmp eq i8 %59, 0
  br i1 %tobool41.not, label %bio_next_split.exit.if.end49_crit_edge, label %if.then42

bio_next_split.exit.if.end49_crit_edge:           ; preds = %bio_next_split.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then42:                                        ; preds = %bio_next_split.exit
  %60 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %33, align 8
  %or.i188 = or i64 %61, 68719476736
  store i64 %or.i188, ptr %33, align 8
  %62 = and i64 %61, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp45220.not = icmp eq i64 %62, 0
  br i1 %cmp45220.not, label %if.then42.if.end49_crit_edge, label %if.then42.for.body_crit_edge

if.then42.for.body_crit_edge:                     ; preds = %if.then42
  br label %for.body

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then42.for.body_crit_edge
  %i.0221 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then42.for.body_crit_edge ]
  %63 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %c, align 8
  %cache.i191 = getelementptr inbounds %struct.cache_set, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %cache.i191 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cache.i191, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buckets.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %33, i32 0, i32 2, i32 %i.0221
  %69 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %70, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %64, i32 0, i32 24
  %71 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %72 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %gc_mark.i = getelementptr %struct.bucket, ptr %68, i32 %conv1.i.i.i, i32 4
  %73 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %gc_mark.i, align 4
  %75 = and i16 %74, -4
  %76 = or i16 %75, 2
  store i16 %76, ptr %gc_mark.i, align 4
  %inc = add i32 %i.0221, 1
  %conv43 = zext i32 %inc to i64
  %77 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %33, align 8
  %shr.i189 = lshr i64 %78, 60
  %and.i190 = and i64 %shr.i189, 7
  %cmp45 = icmp ugt i64 %and.i190, %conv43
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.body.if.end49_crit_edge

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end49:                                         ; preds = %for.body.if.end49_crit_edge, %if.then42.if.end49_crit_edge, %bio_next_split.exit.if.end49_crit_edge
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load50 = load i8, ptr %2, align 8
  %bf.lshr51 = lshr i8 %bf.load50, 4
  %bf.clear52 = and i8 %bf.lshr51, 1
  %conv54 = zext i8 %bf.clear52 to i64
  %80 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %33, align 8
  %and.i192 = and i64 %81, -216172782113783809
  %and1.i193 = shl nuw nsw i64 %conv54, 56
  %or.i195 = or i64 %and1.i193, %and.i192
  store i64 %or.i195, ptr %33, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear52)
  %tobool56.not = icmp eq i8 %bf.clear52, 0
  br i1 %tobool56.not, label %if.end49.do.cond63_crit_edge, label %if.then57

if.end49.do.cond63_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond63

if.then57:                                        ; preds = %if.end49
  %iter.sroa.6.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %iter.sroa.6.0.copyload.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not70.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not70.i, label %if.then57.bio_csum.exit_crit_edge, label %land.rhs.lr.ph.i

if.then57.bio_csum.exit_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_csum.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then57
  %iter.sroa.16.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 8, i32 3
  %83 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %iter.sroa.16.0.copyload.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 8, i32 2
  %84 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 20
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %csum.074.i = phi i64 [ 0, %land.rhs.lr.ph.i ], [ %call36.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.073.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.072.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.16.071.i = phi i32 [ %iter.sroa.16.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.16.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %85 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_io_vec.i, align 8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.072.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.072.i, i32 2
  %89 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bv_offset.i, align 4
  %add.i = add i32 %90, %iter.sroa.16.071.i
  %div55.i = lshr i32 %add.i, 12
  %add.ptr.i198 = getelementptr %struct.page, ptr %88, i32 %div55.i
  %bv_len9.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.072.i, i32 1
  %91 = ptrtoint ptr %bv_len9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bv_len9.i, align 4
  %sub.i199 = sub i32 %92, %iter.sroa.16.071.i
  %93 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.073.i, i32 %sub.i199) #14
  %rem.i = and i32 %add.i, 4095
  %sub17.i = sub nuw nsw i32 4096, %rem.i
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 %sub17.i) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 44) #14
  %95 = ptrtoint ptr %add.ptr.i198 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i198, align 4
  %shr.i.i.i200 = lshr i32 %96, 30
  %97 = zext i32 %shr.i.i.i200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i200, label %land.rhs.i.if.then.i.i_crit_edge [
    i32 2, label %land.rhs.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

land.rhs.i.if.else.i.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

land.rhs.i.if.then.i.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %98 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp2.i.not.i.i = icmp eq i32 %98, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %land.rhs.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %add.ptr.i198) #14
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %land.rhs.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %add.ptr.i198) #14
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  %add.ptr34.i = getelementptr i8, ptr %addr.0.i.i, i32 %rem.i
  %call36.i = tail call i64 @crc64_be(i64 noundef %csum.074.i, ptr noundef %add.ptr34.i, i32 noundef %94) #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 55) #14
  %99 = ptrtoint ptr %add.ptr.i198 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i198, align 4
  %shr.i.i56.i = lshr i32 %100, 30
  %101 = zext i32 %shr.i.i56.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr.i.i56.i, label %kmap.exit.i.kunmap.exit.i_crit_edge [
    i32 2, label %kmap.exit.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i58.i
  ]

kmap.exit.i.if.end.i.i_crit_edge:                 ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

kmap.exit.i.kunmap.exit.i_crit_edge:              ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.i

is_highmem_idx.exit.i58.i:                        ; preds = %kmap.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %102 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp2.i.not.i57.i = icmp eq i32 %102, 2
  br i1 %cmp2.i.not.i57.i, label %is_highmem_idx.exit.i58.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i58.i.kunmap.exit.i_crit_edge

is_highmem_idx.exit.i58.i.kunmap.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.i

is_highmem_idx.exit.i58.i.if.end.i.i_crit_edge:   ; preds = %is_highmem_idx.exit.i58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i58.i.if.end.i.i_crit_edge, %kmap.exit.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr.i198) #14
  br label %kunmap.exit.i

kunmap.exit.i:                                    ; preds = %if.end.i.i, %is_highmem_idx.exit.i58.i.kunmap.exit.i_crit_edge, %kmap.exit.i.kunmap.exit.i_crit_edge
  %103 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i201 = and i32 %104, 255
  %105 = add nsw i32 %and.i.i.i201, -3
  %switch.and.i.i.i = and i32 %105, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %kunmap.exit.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i59.i

kunmap.exit.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit.i

if.else.i59.i:                                    ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %106 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bi_io_vec.i, align 8
  %add.i.i.i = add i32 %94, %iter.sroa.16.071.i
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %107, i32 %iter.sroa.10.072.i, i32 1
  %108 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %109)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %109
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select69.i = add i32 %iter.sroa.10.072.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i59.i, %kunmap.exit.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.16.1.i = phi i32 [ %iter.sroa.16.071.i, %kunmap.exit.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i59.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.072.i, %kunmap.exit.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select69.i, %if.else.i59.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.073.i, %94
  %tobool.not.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %for.end.loopexit.i, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.end.loopexit.i:                               ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo.i = and i64 %call36.i, 9223372036854775807
  br label %bio_csum.exit

bio_csum.exit:                                    ; preds = %for.end.loopexit.i, %if.then57.bio_csum.exit_crit_edge
  %csum.0.lcssa.i = phi i64 [ 0, %if.then57.bio_csum.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %110 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %33, align 8
  %shr.i61.i = lshr i64 %111, 60
  %112 = trunc i64 %shr.i61.i to i32
  %idxprom.i = and i32 %112, 7
  %arrayidx40.i = getelementptr %struct.bkey, ptr %33, i32 0, i32 2, i32 %idxprom.i
  %113 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %csum.0.lcssa.i, ptr %arrayidx40.i, align 8
  br label %do.cond63

do.cond63:                                        ; preds = %bio_csum.exit, %if.end49.do.cond63_crit_edge
  tail call fastcc void @trace_bcache_cache_insert(ptr noundef %33)
  %114 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %14, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %115, align 8
  %shr.i.i.i.i = lshr i64 %117, 60
  %118 = trunc i64 %shr.i.i.i.i to i32
  %119 = and i32 %118, 7
  %conv.i.i.i = add nuw nsw i32 %119, 2
  %add.ptr.i.i = getelementptr i64, ptr %115, i32 %conv.i.i.i
  store ptr %add.ptr.i.i, ptr %14, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %retval.0.i187, i32 0, i32 2
  %120 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %bi_opf.i, align 8
  %121 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %c, align 8
  tail call void @bch_submit_bbio(ptr noundef %retval.0.i187, ptr noundef %122, ptr noundef %33, i32 noundef 0) #14
  %cmp64.not = icmp eq ptr %retval.0.i187, %1
  br i1 %cmp64.not, label %do.end66, label %do.cond63.do.body_crit_edge

do.cond63.do.body_crit_edge:                      ; preds = %do.cond63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end66:                                         ; preds = %do.cond63
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load67 = load i8, ptr %2, align 8
  %bf.set = or i8 %bf.load67, 2
  store i8 %bf.set, ptr %2, align 8
  %wq70 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 3
  %124 = ptrtoint ptr %wq70 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wq70, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i202 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %126 = ptrtoint ptr %fn1.i202 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @bch_data_insert_keys, ptr %fn1.i202, align 4
  %127 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %125, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  br label %cleanup116

do.body73:                                        ; preds = %if.end16
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load74 = load i8, ptr %2, align 8
  %129 = and i8 %bf.load74, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool78.not = icmp eq i8 %129, 0
  br i1 %tobool78.not, label %do.end90, label %do.body82, !prof !78

do.body82:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/request.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 256, 0\0A.popsection", ""() #14, !srcloc !87
  unreachable

do.end90:                                         ; preds = %do.body73
  %130 = and i8 %bf.load74, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool95.not = icmp eq i8 %130, 0
  br i1 %tobool95.not, label %if.then96, label %if.else

if.then96:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set99 = or i8 %bf.load74, -128
  %131 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %bf.set99, ptr %2, align 8
  tail call fastcc void @bch_data_invalidate(ptr noundef %cl)
  br label %cleanup116

if.else:                                          ; preds = %do.end90
  %bf.set102 = or i8 %bf.load74, 2
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %bf.set102, ptr %2, align 8
  tail call void @bio_put(ptr noundef %1) #14
  %133 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %14, align 4
  %135 = ptrtoint ptr %insert_keys to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %insert_keys, align 8
  %cmp.i203 = icmp eq ptr %134, %136
  br i1 %cmp.i203, label %do.body111, label %do.body106

do.body106:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %wq107 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 3
  %137 = ptrtoint ptr %wq107 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wq107, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i204 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %139 = ptrtoint ptr %fn1.i204 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @bch_data_insert_keys, ptr %fn1.i204, align 4
  %140 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %138, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  br label %cleanup116

do.body111:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i205 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %141 = ptrtoint ptr %fn1.i205 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %fn1.i205, align 4
  %142 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  br label %cleanup116

cleanup116:                                       ; preds = %do.body111, %do.body106, %if.then96, %do.end66, %cleanup.thread, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_get_congested(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %congested_read_threshold_us = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 69
  %0 = ptrtoint ptr %congested_read_threshold_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %congested_read_threshold_us, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %congested_write_threshold_us = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 70
  %2 = ptrtoint ptr %congested_write_threshold_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %congested_write_threshold_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i29 = tail call i64 @sched_clock() #14
  %shr.i = lshr i64 %call.i.i29, 10
  %conv.i = trunc i64 %shr.i to i32
  %congested_last_us = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 67
  %4 = ptrtoint ptr %congested_last_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %congested_last_us, align 8
  %sub = sub i32 %conv.i, %5
  %div28 = lshr i32 %sub, 10
  %congested = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %congested, i32 noundef 4) #14
  %6 = ptrtoint ptr %congested to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %congested, align 4
  %add = add i32 %div28, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp5 = icmp sgt i32 %add, -1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add8 = add nsw i32 %add, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %add)
  %cmp9 = icmp ugt i32 %add, -1024
  br i1 %cmp9, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %and.i = and i32 %add, 63
  %add.i = or i32 %and.i, 64
  %shr.i30 = lshr i32 %add8, 6
  %shl1.i = shl i32 %add.i, %shr.i30
  %shr2.i = lshr i32 %shl1.i, 6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %i.0 = phi i32 [ %shr2.i, %if.then10 ], [ %add8, %if.end7.if.end12_crit_edge ]
  %call13 = tail call i32 @get_random_u32() #14
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %call13) #14
  %sub15 = sub i32 %i.0, %call.i
  %8 = tail call i32 @llvm.smax.i32(i32 %sub15, i32 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end12 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cached_dev_submit_bio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  %start.i = alloca %struct.bkey, align 8
  %end.i = alloca %struct.bkey, align 8
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %c = getelementptr %struct.bcache_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %lor.rhs.thread, label %land.lhs.true.if.then_crit_edge, !prof !78

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %io_disable = getelementptr i8, ptr %5, i32 53296
  %13 = ptrtoint ptr %io_disable to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %io_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4 = icmp slt i8 %bf.load, 0
  br i1 %tobool4, label %lor.rhs.if.then_crit_edge, label %lor.rhs.if.end36_crit_edge, !prof !88

lor.rhs.if.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.rhs.thread:                                   ; preds = %land.lhs.true
  %io_disable129 = getelementptr i8, ptr %5, i32 53296
  %14 = ptrtoint ptr %io_disable129 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load130 = load i8, ptr %io_disable129, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load130)
  %tobool4131 = icmp slt i8 %bf.load130, 0
  br i1 %tobool4131, label %lor.rhs.thread.if.then_crit_edge, label %if.then15, !prof !88

lor.rhs.thread.if.then_crit_edge:                 ; preds = %lor.rhs.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.rhs.thread.if.then_crit_edge, %lor.rhs.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %15 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef %bio) #14
  br label %cleanup

if.then15:                                        ; preds = %lor.rhs.thread
  %idle_counter = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %idle_counter, i32 noundef 4) #14
  %16 = ptrtoint ptr %idle_counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %idle_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.then15.if.end22_crit_edge, label %if.then19

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c, align 4
  %idle_counter21 = getelementptr inbounds %struct.cache_set, ptr %19, i32 0, i32 7
  %call.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %idle_counter21, i32 noundef 4) #14
  %20 = ptrtoint ptr %idle_counter21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %idle_counter21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then15.if.end22_crit_edge
  %21 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c, align 4
  %at_max_writeback_rate = getelementptr inbounds %struct.cache_set, ptr %22, i32 0, i32 8
  %call.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef %at_max_writeback_rate, i32 noundef 4) #14
  %23 = ptrtoint ptr %at_max_writeback_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %at_max_writeback_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp = icmp eq i32 %24, 1
  br i1 %cmp, label %if.then31, label %if.end22.if.end36_crit_edge, !prof !88

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %c, align 4
  %at_max_writeback_rate33 = getelementptr inbounds %struct.cache_set, ptr %26, i32 0, i32 8
  %call.i.i99 = tail call zeroext i1 @__kasan_check_write(ptr noundef %at_max_writeback_rate33, i32 noundef 4) #14
  %27 = ptrtoint ptr %at_max_writeback_rate33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %at_max_writeback_rate33, align 4
  %28 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c, align 4
  tail call fastcc void @quit_max_writeback_rate(ptr noundef %29, ptr noundef %add.ptr)
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end22.if.end36_crit_edge, %lor.rhs.if.end36_crit_edge
  %call37 = tail call i32 @bio_start_io_acct(ptr noundef %bio) #14
  %bdev = getelementptr i8, ptr %5, i32 868
  %30 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %32 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %33, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %34 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_bdev, align 4
  %cmp.not.i = icmp eq ptr %35, %31
  br i1 %cmp.not.i, label %if.end36.bio_set_dev.exit_crit_edge, label %if.then.i

if.end36.bio_set_dev.exit_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %33, -2177
  %36 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end36.bio_set_dev.exit_crit_edge
  %37 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %31, ptr %bi_bdev, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #14
  %38 = getelementptr i8, ptr %5, i32 1008
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %41 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bi_iter, align 8
  %add = add i64 %42, %40
  store i64 %add, ptr %bi_iter, align 8
  %count.i = getelementptr i8, ptr %5, i32 3340
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #14
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %bio_set_dev.exit
  %45 = phi i32 [ %44, %bio_set_dev.exit ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %45, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %47 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %49 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %48, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #14, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %48
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !78

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %50 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %51, 1
  %52 = or i32 %add5.i.i.i.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %.not.i.i.i.i = icmp sgt i32 %52, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #14
  %53 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %54 = phi i32 [ %51, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool12.i.i.i.i.not = icmp eq i32 %54, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not, label %if.else53, label %if.then39

if.then39:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !90
  %call40 = call fastcc ptr @search_alloc(ptr noundef %bio, ptr noundef %5, ptr noundef %1, i32 noundef %call37)
  %d41 = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 4
  %55 = ptrtoint ptr %d41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d41, align 8
  call fastcc void @trace_bcache_request_start(ptr noundef %56, ptr noundef %bio)
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool43.not = icmp eq i32 %58, 0
  br i1 %tobool43.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcache_wq to i32))
  %59 = load ptr, ptr @bcache_wq, align 4
  call fastcc void @closure_set_ip(ptr noundef %call40) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %call40, i32 0, i32 3
  %60 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @cached_dev_nodata, ptr %fn1.i, align 4
  %61 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %call40, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %62 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call40, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %do.body
  call void @__init_work(ptr noundef %call40, i32 noundef 0) #14
  %64 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %call40, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call40, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %call40, i32 0, i32 1
  %65 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call40, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i100 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %63, ptr noundef %call40) #14
  br i1 %call.i.i100, label %do.body2.i.cleanup_crit_edge, label %do.body12.i, !prof !78

do.body2.i.cleanup_crit_edge:                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !91
  unreachable

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %fn1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fn1.i, align 4
  call void %68(ptr noundef %call40) #14
  br label %cleanup

if.else:                                          ; preds = %if.then39
  %call46 = call fastcc zeroext i1 @check_should_bypass(ptr noundef %add.ptr, ptr noundef %bio)
  %69 = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10, i32 9
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load47 = load i8, ptr %69, align 8
  %bf.shl = select i1 %call46, i8 -128, i8 0
  %bf.clear = and i8 %bf.load47, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %69, align 8
  br i1 %tobool.i.not, label %if.else50, label %if.then49

if.then49:                                        ; preds = %if.else
  %bio3.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start.i) #14
  %71 = getelementptr inbounds %struct.bkey, ptr %start.i, i32 0, i32 1
  %id.i = getelementptr i8, ptr %5, i32 212
  %72 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id.i, align 4
  %conv.i = zext i32 %73 to i64
  %or.i = or i64 %conv.i, -9223372036854775808
  %74 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %or.i, ptr %start.i, align 8
  %bi_iter.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 8
  %75 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %bi_iter.i, align 8
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %71, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end.i) #14
  %78 = getelementptr inbounds %struct.bkey, ptr %end.i, i32 0, i32 1
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %or.i, ptr %end.i, align 8
  %bi_size.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 8, i32 1
  %80 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bi_size.i, align 8
  %shr.i101 = lshr i32 %81, 9
  %conv13.i = zext i32 %shr.i101 to i64
  %add.i = add i64 %76, %conv13.i
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add.i, ptr %78, align 8
  %c.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %c.i, align 8
  %moving_gc_keys.i = getelementptr inbounds %struct.cache_set, ptr %84, i32 0, i32 49
  %call.i = call zeroext i1 @bch_keybuf_check_overlapping(ptr noundef %moving_gc_keys.i, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i) #14
  %writeback_lock.i = getelementptr i8, ptr %5, i32 3392
  call void @down_read_non_owner(ptr noundef %writeback_lock.i) #14
  %writeback_keys.i = getelementptr i8, ptr %5, i32 3680
  %call14.i = call zeroext i1 @bch_keybuf_check_overlapping(ptr noundef %writeback_keys.i, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i) #14
  br i1 %call14.i, label %if.then.i102, label %if.then49.if.end.i_crit_edge

if.then49.if.end.i_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i102:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i = load i8, ptr %69, align 8
  %bf.clear18.i = and i8 %bf.load.i, 63
  %bf.set19.i = or i8 %bf.clear18.i, 64
  store i8 %bf.set19.i, ptr %69, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i102, %if.then49.if.end.i_crit_edge
  %bi_opf.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 2
  %86 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bi_opf.i, align 8
  %and.i103 = and i32 %87, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i103)
  %cmp.i = icmp eq i32 %and.i103, 3
  %88 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load23.i = load i8, ptr %69, align 8
  br i1 %cmp.i, label %if.then21.i, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set25.i = or i8 %bf.load23.i, -128
  %89 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %bf.set25.i, ptr %69, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %bf.load29.i = phi i8 [ %bf.set25.i, %if.then21.i ], [ %bf.load23.i, %if.end.i.if.end26.i_crit_edge ]
  %orig_bio.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 2
  %90 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %orig_bio.i, align 8
  %flags.i.i.i = getelementptr i8, ptr %5, i32 968
  %92 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %flags.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load29.i)
  %tobool.i104 = icmp slt i8 %bf.load29.i, 0
  %94 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %c, align 8
  %in_use1.i.i = getelementptr inbounds %struct.cache_set, ptr %95, i32 0, i32 40, i32 5
  %96 = ptrtoint ptr %in_use1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %in_use1.i.i, align 8
  %conv.i201.i = and i64 %93, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %conv.i201.i)
  %cmp.not.i.i = icmp eq i64 %conv.i201.i, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end26.i.if.end40thread-pre-split.i_crit_edge

if.end26.i.if.end40thread-pre-split.i_crit_edge:  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

lor.lhs.false.i.i:                                ; preds = %if.end26.i
  %flags.i.i = getelementptr i8, ptr %5, i32 232
  %98 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags.i.i, align 4
  %100 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.end40thread-pre-split.i_crit_edge

lor.lhs.false.i.i.if.end40thread-pre-split.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_cutoff_writeback_sync to i32))
  %101 = load i32, ptr @bch_cutoff_writeback_sync, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %101)
  %cmp4.i.i = icmp ugt i32 %97, %101
  br i1 %cmp4.i.i, label %lor.lhs.false3.i.i.if.end40thread-pre-split.i_crit_edge, label %if.end.i.i

lor.lhs.false3.i.i.if.end40thread-pre-split.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

if.end.i.i:                                       ; preds = %lor.lhs.false3.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %91, i32 0, i32 2
  %102 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %103, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp5.i.i, label %if.end.i.i.if.end40thread-pre-split.i_crit_edge, label %if.end7.i.i

if.end.i.i.if.end40thread-pre-split.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %partial_stripes_expensive.i.i = getelementptr i8, ptr %5, i32 53296
  %104 = ptrtoint ptr %partial_stripes_expensive.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i.i = load i8, ptr %partial_stripes_expensive.i.i, align 8
  %105 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool8.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool8.not.i.i, label %if.end12.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %91, i32 0, i32 8
  %106 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %bi_iter.i.i, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %91, i32 0, i32 8, i32 1
  %108 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bi_size.i.i, align 8
  %shr.i154.i = lshr i32 %109, 9
  %stripe_size.i.i.i.i = getelementptr i8, ptr %5, i32 240
  %110 = ptrtoint ptr %stripe_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %stripe_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %107)
  %cmp164.i.i.i.i = icmp ult i64 %107, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !78

if.then168.i.i.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i = trunc i64 %107 to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %111
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %if.end178.i.i.i.i

if.else174.i.i.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %112 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %111, i64 %107) #18, !srcloc !92
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %112, 1
  br label %if.end178.i.i.i.i

if.end178.i.i.i.i:                                ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %offset.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  %nr_stripes.i.i.i.i = getelementptr i8, ptr %5, i32 236
  %113 = ptrtoint ptr %nr_stripes.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nr_stripes.i.i.i.i, align 4
  %conv180.i.i.i.i = sext i32 %114 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0.i.i.i.i, i64 %conv180.i.i.i.i)
  %cmp181.not.i.i.i.i = icmp ult i64 %offset.addr.0.i.i.i.i, %conv180.i.i.i.i
  br i1 %cmp181.not.i.i.i.i, label %offset_to_stripe.exit.i.i.i, label %offset_to_stripe.exit.thread.i.i.i, !prof !78

offset_to_stripe.exit.thread.i.i.i:               ; preds = %if.end178.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call192.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %offset.addr.0.i.i.i.i, i32 noundef %114) #19
  br label %bcache_dev_stripe_dirty.exit.i.i

offset_to_stripe.exit.i.i.i:                      ; preds = %if.end178.i.i.i.i
  %conv194.i.i.i.i = trunc i64 %offset.addr.0.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv194.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %conv194.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %offset_to_stripe.exit.i.i.i.bcache_dev_stripe_dirty.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i

offset_to_stripe.exit.i.i.i.bcache_dev_stripe_dirty.exit.i.i_crit_edge: ; preds = %offset_to_stripe.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bcache_dev_stripe_dirty.exit.i.i

while.cond.preheader.i.i.i:                       ; preds = %offset_to_stripe.exit.i.i.i
  %stripe_sectors_dirty.i.i.i = getelementptr i8, ptr %5, i32 244
  %115 = ptrtoint ptr %stripe_sectors_dirty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %stripe_sectors_dirty.i.i.i, align 4
  %add.ptr19.i.i.i = getelementptr %struct.atomic_t, ptr %116, i32 %conv194.i.i.i.i
  %call.i.i20.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr19.i.i.i, i32 noundef 4) #14
  %117 = ptrtoint ptr %add.ptr19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %add.ptr19.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not21.i.i.i = icmp eq i32 %118, 0
  br i1 %tobool.not21.i.i.i, label %while.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.if.then31.i_crit_edge

while.cond.preheader.i.i.i.if.then31.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.i

while.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end8.i.i.i.if.end4.i.i.i_crit_edge, %while.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge
  %stripe.023.i.i.i = phi i32 [ %inc.i.i.i, %if.end8.i.i.i.if.end4.i.i.i_crit_edge ], [ %conv194.i.i.i.i, %while.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge ]
  %nr_sectors.addr.022.i.i.i = phi i32 [ %sub.i.i.i, %if.end8.i.i.i.if.end4.i.i.i_crit_edge ], [ %shr.i154.i, %while.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge ]
  %119 = ptrtoint ptr %stripe_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %stripe_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_sectors.addr.022.i.i.i, i32 %120)
  %cmp6.not.i.i.i = icmp ugt i32 %nr_sectors.addr.022.i.i.i, %120
  br i1 %cmp6.not.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.bcache_dev_stripe_dirty.exit.i.i_crit_edge

if.end4.i.i.i.bcache_dev_stripe_dirty.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bcache_dev_stripe_dirty.exit.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %sub.i.i.i = sub i32 %nr_sectors.addr.022.i.i.i, %120
  %inc.i.i.i = add i32 %stripe.023.i.i.i, 1
  %121 = ptrtoint ptr %stripe_sectors_dirty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %stripe_sectors_dirty.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.atomic_t, ptr %122, i32 %inc.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i.i, i32 noundef 4) #14
  %123 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.i.if.end4.i.i.i_crit_edge, label %if.end8.i.i.i.if.then31.i_crit_edge

if.end8.i.i.i.if.then31.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.i

if.end8.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

bcache_dev_stripe_dirty.exit.i.i:                 ; preds = %if.end4.i.i.i.bcache_dev_stripe_dirty.exit.i.i_crit_edge, %offset_to_stripe.exit.i.i.i.bcache_dev_stripe_dirty.exit.i.i_crit_edge, %offset_to_stripe.exit.thread.i.i.i
  br i1 %tobool.i104, label %bcache_dev_stripe_dirty.exit.i.i.if.end40thread-pre-split.i_crit_edge, label %bcache_dev_stripe_dirty.exit.i.i.if.end15.i.i_crit_edge

bcache_dev_stripe_dirty.exit.i.i.if.end15.i.i_crit_edge: ; preds = %bcache_dev_stripe_dirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

bcache_dev_stripe_dirty.exit.i.i.if.end40thread-pre-split.i_crit_edge: ; preds = %bcache_dev_stripe_dirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  br i1 %tobool.i104, label %if.end12.i.i.if.end40thread-pre-split.i_crit_edge, label %if.end12.i.i.if.end15.i.i_crit_edge

if.end12.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

if.end12.i.i.if.end40thread-pre-split.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

if.end15.i.i:                                     ; preds = %if.end12.i.i.if.end15.i.i_crit_edge, %bcache_dev_stripe_dirty.exit.i.i.if.end15.i.i_crit_edge
  %125 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i.i = and i32 %126, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i32.i.i = icmp ne i32 %and.i.i.i, 0
  %127 = and i32 %126, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.i.i.i = icmp eq i32 %127, 0
  %.not.i.i = and i1 %cmp.i32.i.i, %tobool.i.i.i
  %128 = and i32 %126, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool21.not.i.i = icmp eq i32 %128, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 %tobool21.not.i.i, i1 false
  br i1 %or.cond.i.i, label %should_writeback.exit.i, label %if.end15.i.i.if.then31.i_crit_edge

if.end15.i.i.if.then31.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.i

should_writeback.exit.i:                          ; preds = %if.end15.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_cutoff_writeback to i32))
  %129 = load i32, ptr @bch_cutoff_writeback, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %129)
  %cmp22.i.not.i = icmp ugt i32 %97, %129
  br i1 %cmp22.i.not.i, label %should_writeback.exit.i.if.end40thread-pre-split.i_crit_edge, label %should_writeback.exit.i.if.then31.i_crit_edge

should_writeback.exit.i.if.then31.i_crit_edge:    ; preds = %should_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.i

should_writeback.exit.i.if.end40thread-pre-split.i_crit_edge: ; preds = %should_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40thread-pre-split.i

if.then31.i:                                      ; preds = %should_writeback.exit.i.if.then31.i_crit_edge, %if.end15.i.i.if.then31.i_crit_edge, %if.end8.i.i.i.if.then31.i_crit_edge, %while.cond.preheader.i.i.i.if.then31.i_crit_edge
  %130 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load33.i = load i8, ptr %69, align 8
  %bf.clear38.i = and i8 %bf.load33.i, 63
  %bf.set39.i = or i8 %bf.clear38.i, 64
  store i8 %bf.set39.i, ptr %69, align 8
  br label %if.end40.i

if.end40thread-pre-split.i:                       ; preds = %should_writeback.exit.i.if.end40thread-pre-split.i_crit_edge, %if.end12.i.i.if.end40thread-pre-split.i_crit_edge, %bcache_dev_stripe_dirty.exit.i.i.if.end40thread-pre-split.i_crit_edge, %if.end.i.i.if.end40thread-pre-split.i_crit_edge, %lor.lhs.false3.i.i.if.end40thread-pre-split.i_crit_edge, %lor.lhs.false.i.i.if.end40thread-pre-split.i_crit_edge, %if.end26.i.if.end40thread-pre-split.i_crit_edge
  %131 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load42.pr.i = load i8, ptr %69, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end40thread-pre-split.i, %if.then31.i
  %bf.load42.i = phi i8 [ %bf.load42.pr.i, %if.end40thread-pre-split.i ], [ %bf.set39.i, %if.then31.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42.i)
  %tobool45.not.i = icmp sgt i8 %bf.load42.i, -1
  br i1 %tobool45.not.i, label %if.else.i110, label %if.then46.i

if.then46.i:                                      ; preds = %if.end40.i
  %132 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %orig_bio.i, align 8
  %bio49.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10, i32 2
  %134 = ptrtoint ptr %bio49.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %bio49.i, align 4
  %bi_flags.i.i108 = getelementptr inbounds %struct.bio, ptr %133, i32 0, i32 3
  %135 = ptrtoint ptr %bi_flags.i.i108 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %bi_flags.i.i108, align 4
  %137 = or i16 %136, 64
  store i16 %137, ptr %bi_flags.i.i108, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  %__bi_cnt.i.i = getelementptr inbounds %struct.bio, ptr %133, i32 0, i32 19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %__bi_cnt.i.i, i32 1, i32 3, i32 1) #14
  %138 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i.i, ptr %__bi_cnt.i.i, i32 1, ptr elementtype(i32) %__bi_cnt.i.i) #14, !srcloc !76
  %139 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bi_opf.i, align 8
  %and53.i = and i32 %140, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and53.i)
  %cmp54.i = icmp eq i32 %and53.i, 3
  br i1 %cmp54.i, label %land.lhs.true.i, label %if.then46.i.if.end60.i_crit_edge

if.then46.i.if.end60.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.then46.i
  %141 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %142, i32 0, i32 18
  %143 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %queue_flags.i, align 4
  %147 = and i32 %146, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool58.not.i = icmp eq i32 %147, 0
  br i1 %tobool58.not.i, label %land.lhs.true.i.cached_dev_write.exit_crit_edge, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60.i

land.lhs.true.i.cached_dev_write.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cached_dev_write.exit

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.then46.i.if.end60.i_crit_edge
  %bi_end_io.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 10
  %148 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @backing_request_endio, ptr %bi_end_io.i, align 8
  %149 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %c.i, align 8
  %remaining.i.i.i = getelementptr inbounds %struct.closure, ptr %call40, i32 0, i32 2
  %call.i.i.i.i155.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  call void @llvm.prefetch.p0(ptr %remaining.i.i.i, i32 1, i32 3, i32 1) #14
  %151 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i.i, ptr %remaining.i.i.i, i32 1, ptr elementtype(i32) %remaining.i.i.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i.i109 = extractvalue { i32, i32 } %151, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i156.i = and i32 %asmresult.i.i.i.i.i.i.i109, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156.i)
  %cmp.i.i157.i = icmp eq i32 %and.i.i156.i, 0
  br i1 %cmp.i.i157.i, label %do.body2.i.i.i, label %closure_get.exit.i.i, !prof !88

do.body2.i.i.i:                                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i.i:                             ; preds = %if.end60.i
  %flags.i158.i = getelementptr inbounds %struct.cache_set, ptr %150, i32 0, i32 6
  %152 = ptrtoint ptr %flags.i158.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %flags.i158.i, align 4
  %154 = and i32 %153, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i159.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i159.i, label %if.end.i160.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %closure_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 6
  %155 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 10, ptr %bi_status.i.i, align 2
  call void @bio_endio(ptr noundef %bio3.i) #14
  br label %cached_dev_write.exit

if.end.i160.i:                                    ; preds = %closure_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @submit_bio_noacct(ptr noundef %bio3.i) #14
  br label %cached_dev_write.exit

if.else.i110:                                     ; preds = %if.end40.i
  %156 = and i8 %bf.load42.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool68.not.i = icmp eq i8 %156, 0
  br i1 %tobool68.not.i, label %if.else88.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.else.i110
  %has_dirty.i.i = getelementptr i8, ptr %5, i32 3488
  %call.i.i.i161.i = call zeroext i1 @__kasan_check_read(ptr noundef %has_dirty.i.i, i32 noundef 4) #14
  %157 = ptrtoint ptr %has_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %has_dirty.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i162.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i162.i, label %land.lhs.true.i163.i, label %if.then69.i.bch_writeback_add.exit.i_crit_edge

if.then69.i.bch_writeback_add.exit.i_crit_edge:   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_writeback_add.exit.i

land.lhs.true.i163.i:                             ; preds = %if.then69.i
  %call.i.i13.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %has_dirty.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !97
  call void @llvm.prefetch.p0(ptr %has_dirty.i.i, i32 1, i32 3, i32 1) #14
  %159 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %has_dirty.i.i) #14, !srcloc !98
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %159, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then.i166.i, label %land.lhs.true.i163.i.bch_writeback_add.exit.i_crit_edge

land.lhs.true.i163.i.bch_writeback_add.exit.i_crit_edge: ; preds = %land.lhs.true.i163.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_writeback_add.exit.i

if.then.i166.i:                                   ; preds = %land.lhs.true.i163.i
  %160 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %flags.i.i.i, align 8
  %162 = and i64 %161, 6917529027641081856
  call void @__sanitizer_cov_trace_const_cmp8(i64 4611686018427387904, i64 %162)
  %cmp.not.i165.i = icmp eq i64 %162, 4611686018427387904
  br i1 %cmp.not.i165.i, label %if.then.i166.i.if.end.i169.i_crit_edge, label %if.then5.i.i

if.then.i166.i.if.end.i169.i_crit_edge:           ; preds = %if.then.i166.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i169.i

if.then5.i.i:                                     ; preds = %if.then.i166.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i15.i.i = and i64 %161, -6917529027641081857
  %or.i.i.i = or i64 %and.i15.i.i, 4611686018427387904
  %163 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %or.i.i.i, ptr %flags.i.i.i, align 8
  call void @bch_write_bdev_super(ptr noundef %add.ptr, ptr noundef null) #14
  br label %if.end.i169.i

if.end.i169.i:                                    ; preds = %if.then5.i.i, %if.then.i166.i.if.end.i169.i_crit_edge
  %writeback_thread.i.i.i = getelementptr i8, ptr %5, i32 3668
  %164 = ptrtoint ptr %writeback_thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %writeback_thread.i.i.i, align 4
  %tobool.not.i.i.i167.i = icmp eq ptr %165, null
  %cmp.i.i.i168.i = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i167.i, %cmp.i.i.i168.i
  br i1 %spec.select.i.i.i.i, label %if.end.i169.i.bch_writeback_add.exit.i_crit_edge, label %if.then.i.i.i

if.end.i169.i.bch_writeback_add.exit.i_crit_edge: ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_writeback_add.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i169.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i.i = call i32 @wake_up_process(ptr noundef nonnull %165) #14
  br label %bch_writeback_add.exit.i

bch_writeback_add.exit.i:                         ; preds = %if.then.i.i.i, %if.end.i169.i.bch_writeback_add.exit.i_crit_edge, %land.lhs.true.i163.i.bch_writeback_add.exit.i_crit_edge, %if.then69.i.bch_writeback_add.exit.i_crit_edge
  %bio71.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10, i32 2
  %166 = ptrtoint ptr %bio71.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %bio3.i, ptr %bio71.i, align 4
  %167 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bi_opf.i, align 8
  %169 = and i32 %168, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool75.not.i = icmp eq i32 %169, 0
  br i1 %tobool75.not.i, label %bch_writeback_add.exit.i.cached_dev_write.exit_crit_edge, label %if.then76.i

bch_writeback_add.exit.i.cached_dev_write.exit_crit_edge: ; preds = %bch_writeback_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cached_dev_write.exit

if.then76.i:                                      ; preds = %bch_writeback_add.exit.i
  %bio_split.i = getelementptr i8, ptr %5, i32 252
  %call78.i = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 0, ptr noundef %bio_split.i) #14
  %tobool79.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool79.not.i, label %if.then80.i, label %if.end82.i

if.then80.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #16
  %status.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10, i32 7
  %170 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 9, ptr %status.i, align 4
  br label %cached_dev_write.exit

if.end82.i:                                       ; preds = %if.then76.i
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call78.i, i32 0, i32 3
  %171 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %172, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 1
  %173 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bi_bdev.i.i, align 4
  %bi_bdev1.i.i = getelementptr inbounds %struct.bio, ptr %call78.i, i32 0, i32 1
  %175 = ptrtoint ptr %bi_bdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %bi_bdev1.i.i, align 4
  call void @bio_clone_blkg_association(ptr noundef nonnull %call78.i, ptr noundef %bio3.i) #14
  %bi_end_io83.i = getelementptr inbounds %struct.bio, ptr %call78.i, i32 0, i32 10
  %176 = ptrtoint ptr %bi_end_io83.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @backing_request_endio, ptr %bi_end_io83.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call78.i, i32 0, i32 11
  %177 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call40, ptr %bi_private.i, align 4
  %bi_opf84.i = getelementptr inbounds %struct.bio, ptr %call78.i, i32 0, i32 2
  %178 = ptrtoint ptr %bi_opf84.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 262145, ptr %bi_opf84.i, align 8
  %179 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %c.i, align 8
  %remaining.i.i171.i = getelementptr inbounds %struct.closure, ptr %call40, i32 0, i32 2
  %call.i.i.i.i172.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i171.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  call void @llvm.prefetch.p0(ptr %remaining.i.i171.i, i32 1, i32 3, i32 1) #14
  %181 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i171.i, ptr %remaining.i.i171.i, i32 1, ptr elementtype(i32) %remaining.i.i171.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i173.i = extractvalue { i32, i32 } %181, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i174.i = and i32 %asmresult.i.i.i.i.i.i173.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i174.i)
  %cmp.i.i175.i = icmp eq i32 %and.i.i174.i, 0
  br i1 %cmp.i.i175.i, label %do.body2.i.i176.i, label %closure_get.exit.i179.i, !prof !88

do.body2.i.i176.i:                                ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i179.i:                          ; preds = %if.end82.i
  %flags.i177.i = getelementptr inbounds %struct.cache_set, ptr %180, i32 0, i32 6
  %182 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %flags.i177.i, align 4
  %184 = and i32 %183, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i178.i = icmp eq i32 %184, 0
  br i1 %tobool.not.i178.i, label %if.end.i182.i, label %if.then.i181.i, !prof !78

if.then.i181.i:                                   ; preds = %closure_get.exit.i179.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i180.i = getelementptr inbounds %struct.bio, ptr %call78.i, i32 0, i32 6
  %185 = ptrtoint ptr %bi_status.i180.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 10, ptr %bi_status.i180.i, align 2
  call void @bio_endio(ptr noundef nonnull %call78.i) #14
  br label %cached_dev_write.exit

if.end.i182.i:                                    ; preds = %closure_get.exit.i179.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @submit_bio_noacct(ptr noundef nonnull %call78.i) #14
  br label %cached_dev_write.exit

if.else88.i:                                      ; preds = %if.else.i110
  %bio_split90.i = getelementptr i8, ptr %5, i32 252
  %call91.i = call ptr @bio_clone_fast(ptr noundef %bio3.i, i32 noundef 3072, ptr noundef %bio_split90.i) #14
  %bio93.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10, i32 2
  %186 = ptrtoint ptr %bio93.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call91.i, ptr %bio93.i, align 4
  %bi_end_io94.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 10
  %187 = ptrtoint ptr %bi_end_io94.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @backing_request_endio, ptr %bi_end_io94.i, align 8
  %188 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %c.i, align 8
  %remaining.i.i184.i = getelementptr inbounds %struct.closure, ptr %call40, i32 0, i32 2
  %call.i.i.i.i185.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i184.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  call void @llvm.prefetch.p0(ptr %remaining.i.i184.i, i32 1, i32 3, i32 1) #14
  %190 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i184.i, ptr %remaining.i.i184.i, i32 1, ptr elementtype(i32) %remaining.i.i184.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i186.i = extractvalue { i32, i32 } %190, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i187.i = and i32 %asmresult.i.i.i.i.i.i186.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187.i)
  %cmp.i.i188.i = icmp eq i32 %and.i.i187.i, 0
  br i1 %cmp.i.i188.i, label %do.body2.i.i189.i, label %closure_get.exit.i192.i, !prof !88

do.body2.i.i189.i:                                ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i192.i:                          ; preds = %if.else88.i
  %flags.i190.i = getelementptr inbounds %struct.cache_set, ptr %189, i32 0, i32 6
  %191 = ptrtoint ptr %flags.i190.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %flags.i190.i, align 4
  %193 = and i32 %192, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i191.i = icmp eq i32 %193, 0
  br i1 %tobool.not.i191.i, label %if.end.i195.i, label %if.then.i194.i, !prof !78

if.then.i194.i:                                   ; preds = %closure_get.exit.i192.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i193.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 1, i32 2, i32 6
  %194 = ptrtoint ptr %bi_status.i193.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 10, ptr %bi_status.i193.i, align 2
  call void @bio_endio(ptr noundef %bio3.i) #14
  br label %cached_dev_write.exit

if.end.i195.i:                                    ; preds = %closure_get.exit.i192.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @submit_bio_noacct(ptr noundef %bio3.i) #14
  br label %cached_dev_write.exit

cached_dev_write.exit:                            ; preds = %if.end.i195.i, %if.then.i194.i, %if.end.i182.i, %if.then.i181.i, %if.then80.i, %bch_writeback_add.exit.i.cached_dev_write.exit_crit_edge, %if.end.i160.i, %if.then.i.i, %land.lhs.true.i.cached_dev_write.exit_crit_edge
  %iop.i = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10
  call fastcc void @closure_call(ptr noundef %iop.i, ptr noundef nonnull @bch_data_insert, ptr noundef %call40) #14
  call fastcc void @closure_set_ip(ptr noundef %call40) #14
  %fn1.i.i = getelementptr inbounds %struct.anon, ptr %call40, i32 0, i32 3
  %195 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @cached_dev_write_complete, ptr %fn1.i.i, align 4
  %196 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %call40, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  call void @closure_sub(ptr noundef %call40, i32 noundef 1073741825) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i) #14
  br label %cleanup

if.else50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %iop.i111 = getelementptr inbounds %struct.search, ptr %call40, i32 0, i32 10
  call fastcc void @closure_call(ptr noundef %iop.i111, ptr noundef nonnull @cache_lookup, ptr noundef %call40) #14
  call fastcc void @closure_set_ip(ptr noundef %call40) #14
  %fn1.i.i112 = getelementptr inbounds %struct.anon, ptr %call40, i32 0, i32 3
  %197 = ptrtoint ptr %fn1.i.i112 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @cached_dev_read_done_bh, ptr %fn1.i.i112, align 4
  %198 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %call40, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  call void @closure_sub(ptr noundef %call40, i32 noundef 1073741825) #14
  br label %cleanup

if.else53:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %199 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %199, i32 noundef 3328, i32 noundef 20) #20
  %200 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %5, ptr %call7.i.i.i, align 8
  %orig_bdev2.i = getelementptr inbounds %struct.detached_dev_io_private, ptr %call7.i.i.i, i32 0, i32 4
  %201 = ptrtoint ptr %orig_bdev2.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %1, ptr %orig_bdev2.i, align 8
  %start_time3.i = getelementptr inbounds %struct.detached_dev_io_private, ptr %call7.i.i.i, i32 0, i32 1
  %202 = ptrtoint ptr %start_time3.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %call37, ptr %start_time3.i, align 4
  %bi_end_io.i113 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %203 = ptrtoint ptr %bi_end_io.i113 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bi_end_io.i113, align 8
  %bi_end_io4.i = getelementptr inbounds %struct.detached_dev_io_private, ptr %call7.i.i.i, i32 0, i32 2
  %205 = ptrtoint ptr %bi_end_io4.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %bi_end_io4.i, align 8
  %bi_private.i114 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %206 = ptrtoint ptr %bi_private.i114 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bi_private.i114, align 4
  %bi_private5.i = getelementptr inbounds %struct.detached_dev_io_private, ptr %call7.i.i.i, i32 0, i32 3
  %208 = ptrtoint ptr %bi_private5.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %bi_private5.i, align 4
  store ptr @detached_dev_end_io, ptr %bi_end_io.i113, align 8
  store ptr %call7.i.i.i, ptr %bi_private.i114, align 4
  %209 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %bi_opf, align 8
  %and.i116 = and i32 %210, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i116)
  %cmp.i117 = icmp eq i32 %and.i116, 3
  br i1 %cmp.i117, label %land.lhs.true.i122, label %if.else53.if.else.i127_crit_edge

if.else53.if.else.i127_crit_edge:                 ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i127

land.lhs.true.i122:                               ; preds = %if.else53
  %211 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bdev, align 4
  %bd_queue.i.i119 = getelementptr inbounds %struct.block_device, ptr %212, i32 0, i32 18
  %213 = ptrtoint ptr %bd_queue.i.i119 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bd_queue.i.i119, align 4
  %queue_flags.i120 = getelementptr inbounds %struct.request_queue, ptr %214, i32 0, i32 11
  %215 = ptrtoint ptr %queue_flags.i120 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %queue_flags.i120, align 4
  %217 = and i32 %216, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i121 = icmp eq i32 %217, 0
  br i1 %tobool.not.i121, label %if.then.i125, label %land.lhs.true.i122.if.else.i127_crit_edge

land.lhs.true.i122.if.else.i127_crit_edge:        ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i127

if.then.i125:                                     ; preds = %land.lhs.true.i122
  %218 = ptrtoint ptr %bi_end_io.i113 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %204, ptr %bi_end_io.i113, align 8
  %219 = ptrtoint ptr %bi_private.i114 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %207, ptr %bi_private.i114, align 4
  call void @bio_end_io_acct_remapped(ptr noundef %bio, i32 noundef %call37, ptr noundef %1) #14
  %bi_status.i.i123 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %220 = ptrtoint ptr %bi_status.i.i123 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %bi_status.i.i123, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i.i124 = icmp eq i8 %221, 0
  br i1 %tobool.not.i.i124, label %if.then.i125.detached_dev_end_io.exit.i_crit_edge, label %if.then.i.i126

if.then.i125.detached_dev_end_io.exit.i_crit_edge: ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %detached_dev_end_io.exit.i

if.then.i.i126:                                   ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #16
  %222 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %call7.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %223, i32 -8
  call void @bch_count_backing_io_errors(ptr noundef %add.ptr.i.i, ptr noundef %bio) #14
  br label %detached_dev_end_io.exit.i

detached_dev_end_io.exit.i:                       ; preds = %if.then.i.i126, %if.then.i125.detached_dev_end_io.exit.i_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i) #14
  %224 = ptrtoint ptr %bi_end_io.i113 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %bi_end_io.i113, align 8
  call void %225(ptr noundef %bio) #14
  br label %cleanup

if.else.i127:                                     ; preds = %land.lhs.true.i122.if.else.i127_crit_edge, %if.else53.if.else.i127_crit_edge
  call void @submit_bio_noacct(ptr noundef %bio) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i127, %detached_dev_end_io.exit.i, %if.else50, %cached_dev_write.exit, %if.else.i, %do.body2.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @quit_max_writeback_rate(ptr nocapture noundef readonly %c, ptr noundef %this_dc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @bch_register_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %devices_max_used = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 11
  %0 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devices_max_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devices = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 10
  %uuids = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devices, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uuids, align 8
  %flags.i = getelementptr %struct.uuid_entry, ptr %7, i32 %i.022, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rate = getelementptr i8, ptr %5, i32 3504
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rate, i32 noundef 4) #14
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %12 = ptrtoint ptr %devices_max_used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devices_max_used, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #14
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rate11 = getelementptr inbounds %struct.cached_dev, ptr %this_dc, i32 0, i32 15, i32 1
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rate11, i32 noundef 4) #14
  %14 = ptrtoint ptr %rate11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %rate11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_start_io_acct(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @search_alloc(ptr noundef %bio, ptr noundef %d, ptr noundef %orig_bdev, i32 noundef %start_time) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %c = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %search = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 19
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %search, i32 noundef 3072) #14
  %remaining.i = getelementptr inbounds %struct.closure, ptr %call, i32 0, i32 2
  %2 = call ptr @memset(ptr %call, i32 0, i32 72)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #14
  %3 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %call) #14
  tail call fastcc void @closure_set_ip(ptr noundef %call) #14
  %bio2.i = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 1, i32 2
  tail call void @bio_init(ptr noundef %bio2.i, ptr noundef null, i16 noundef zeroext 0) #14
  tail call void @__bio_clone_fast(ptr noundef %bio2.i, ptr noundef %bio) #14
  %bi_end_io.i = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 1, i32 2, i32 10
  %4 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @request_endio, ptr %bi_end_io.i, align 8
  %bi_private.i = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 1, i32 2, i32 11
  %5 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %bi_private.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 1, i32 2, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %8 = or i16 %7, 64
  store i16 %8, ptr %bi_flags.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !100
  %__bi_cnt.i.i = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 1, i32 2, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %__bi_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %__bi_cnt.i.i, align 4
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 4
  %search_inflight = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %search_inflight, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %search_inflight, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %search_inflight, ptr %search_inflight, i32 1, ptr elementtype(i32) %search_inflight) #14, !srcloc !76
  %orig_bio = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %orig_bio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bio, ptr %orig_bio, align 8
  %cache_miss = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %cache_miss to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cache_miss, align 4
  %cache_missed = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %cache_missed to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %cache_missed, align 8
  %d2 = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %d2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %d, ptr %d2, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf, align 8
  %19 = trunc i32 %18 to i8
  %20 = shl i8 %19, 6
  %bf.set5 = and i8 %bf.load, 15
  %bf.clear8 = or i8 %bf.set5, -128
  %bf.set9 = or i8 %20, %bf.clear8
  store i8 %bf.set9, ptr %cache_missed, align 8
  %orig_bdev13 = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %orig_bdev13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %orig_bdev, ptr %orig_bdev13, align 4
  %start_time14 = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %start_time14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %start_time, ptr %start_time14, align 8
  %23 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %c, align 4
  %c16 = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %c16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %c16, align 8
  %bio18 = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 2
  %26 = ptrtoint ptr %bio18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %bio18, align 4
  %id = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 3
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %inode = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 4
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %inode, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i65 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i65 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  %mul.i.i = mul i32 %34, 1640531527
  %shr.i = lshr i32 %mul.i.i, 16
  %conv22 = trunc i32 %shr.i to i16
  %write_point = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 5
  %35 = ptrtoint ptr %write_point to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv22, ptr %write_point, align 8
  %write_prio = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 6
  %36 = ptrtoint ptr %write_prio to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %write_prio, align 2
  %status = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 7
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %status, align 4
  %38 = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %38, align 8
  %40 = and i32 %18, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i66.not = icmp eq i32 %40, 0
  %bf.shl33 = select i1 %tobool.i66.not, i8 0, i8 32
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.shl33, ptr %38, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcache_wq to i32))
  %42 = load ptr, ptr @bcache_wq, align 4
  %wq = getelementptr inbounds %struct.search, ptr %call, i32 0, i32 10, i32 3
  %43 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %wq, align 8
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_request_start(ptr noundef %d, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_request_start, i32 0, i32 1), ptr blockaddress(@trace_bcache_request_start, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !101
  %call42 = tail call i32 @__traceiter_bcache_request_start(ptr noundef null, ptr noundef %d, ptr noundef %bio) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_request_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_request_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_request_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_request_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 83, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_nodata(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %0, align 8
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 8
  tail call void @bch_journal_meta(ptr noundef %4, ptr noundef %cl) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bio2 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2
  %bi_end_io = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 10
  %5 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @backing_request_endio, ptr %bi_end_io, align 8
  %c5 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %c5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c5, align 8
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !88

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i:                               ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !78

if.then.i:                                        ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 6
  %12 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio2) #14
  br label %closure_bio_submit.exit

if.end.i:                                         ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @submit_bio_noacct(ptr noundef %bio2) #14
  br label %closure_bio_submit.exit

closure_bio_submit.exit:                          ; preds = %if.end.i, %if.then.i
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %13 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cached_dev_bio_complete, ptr %fn1.i, align 4
  %14 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_should_bypass(ptr noundef %dc, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %c1 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c1, align 8
  %flags.i.i = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags.i.i, align 8
  %4 = trunc i64 %3 to i32
  %conv.i = and i32 %4, 15
  %5 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task3 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task3, align 8
  %flags = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.skip_crit_edge

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

lor.lhs.false:                                    ; preds = %entry
  %in_use = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 40, i32 5
  %12 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %13)
  %cmp = icmp ugt i32 %13, 95
  br i1 %cmp, label %lor.lhs.false.skip_crit_edge, label %lor.lhs.false6

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf, align 8
  %and = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp7 = icmp eq i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv.i)
  %cmp8 = icmp eq i32 %conv.i, 3
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false6.skip_crit_edge, label %lor.lhs.false9

lor.lhs.false6.skip_crit_edge:                    ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i)
  %cmp10 = icmp eq i32 %conv.i, 2
  %and.i228 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.i = icmp ne i32 %and.i228, 0
  %or.cond238 = select i1 %cmp10, i1 %tobool.i, i1 false
  br i1 %or.cond238, label %lor.lhs.false9.skip_crit_edge, label %if.end15

lor.lhs.false9.skip_crit_edge:                    ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

if.end15:                                         ; preds = %lor.lhs.false9
  %conv = zext i32 %15 to i64
  %and17 = and i64 %conv, 1572864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp ne i64 %and17, 0
  %and22 = and i64 %conv, 12288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  %or.cond224 = and i1 %tobool18.not, %tobool23.not
  br i1 %or.cond224, label %land.lhs.true24, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true24:                                  ; preds = %if.end15
  %cache_readahead_policy = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 14
  %16 = ptrtoint ptr %cache_readahead_policy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cache_readahead_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25.not = icmp eq i32 %17, 0
  br i1 %cmp25.not, label %land.lhs.true24.if.end29_crit_edge, label %land.lhs.true24.skip_crit_edge

land.lhs.true24.skip_crit_edge:                   ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %18 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bi_iter, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache, align 4
  %block_size = getelementptr inbounds %struct.cache, ptr %21, i32 0, i32 1, i32 11, i32 0, i32 1
  %22 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %block_size, align 8
  %conv30 = zext i16 %23 to i32
  %sub = add nsw i32 %conv30, -1
  %conv31 = sext i32 %sub to i64
  %and32 = and i64 %19, %conv31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end29.do.body_crit_edge

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false34:                                  ; preds = %if.end29
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %25, 9
  %and41 = and i32 %shr, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end50, label %lor.lhs.false34.do.body_crit_edge

lor.lhs.false34.do.body_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false34.do.body_crit_edge, %if.end29.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_should_bypass.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_should_bypass, %if.then48)) #14
          to label %skip [label %if.then48], !srcloc !77

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_should_bypass.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #14
  br label %skip

if.end50:                                         ; preds = %lor.lhs.false34
  %bypass_torture_test = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 30
  %26 = ptrtoint ptr %bypass_torture_test to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %bypass_torture_test, align 8
  %27 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not = icmp eq i8 %27, 0
  br i1 %tobool51.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %if.end50
  %call.i = tail call i32 @get_random_u32() #14
  %and54 = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 3
  br i1 %cmp55, label %if.then52.skip_crit_edge, label %if.then52.rescale_crit_edge

if.then52.rescale_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %rescale

if.then52.skip_crit_edge:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

if.end58:                                         ; preds = %if.end50
  %call59 = tail call i32 @bch_get_congested(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true61:                                  ; preds = %if.end58
  %sequential_cutoff = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 29
  %28 = ptrtoint ptr %sequential_cutoff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sequential_cutoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool62.not = icmp eq i32 %29, 0
  br i1 %tobool62.not, label %land.lhs.true61.rescale_crit_edge, label %land.lhs.true61.if.end64_crit_edge

land.lhs.true61.if.end64_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true61.rescale_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  br label %rescale

if.end64:                                         ; preds = %land.lhs.true61.if.end64_crit_edge, %if.end58.if.end64_crit_edge
  %io_lock = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %io_lock) #14
  %30 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bi_iter, align 8
  %conv.i.i = trunc i64 %31 to i32
  %shr.i.i = lshr i64 %31, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 25
  %arrayidx.i = getelementptr %struct.cached_dev, ptr %dc, i32 0, i32 25, i32 %shr.i.i.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %i.0240 = load ptr, ptr %arrayidx.i, align 4
  %tobool71.not241 = icmp eq ptr %i.0240, null
  br i1 %tobool71.not241, label %if.end64.for.end_crit_edge, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  br label %for.body

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end64.for.body_crit_edge
  %i.0242 = phi ptr [ %i.0, %for.inc.for.body_crit_edge ], [ %i.0240, %if.end64.for.body_crit_edge ]
  %last = getelementptr inbounds %struct.io, ptr %i.0242, i32 0, i32 4
  %33 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %31)
  %cmp74 = icmp eq i64 %34, %31
  br i1 %cmp74, label %land.lhs.true76, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true76:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr inbounds %struct.io, ptr %i.0242, i32 0, i32 2
  %36 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jiffies, align 8
  %sub77 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub77)
  %cmp78 = icmp slt i32 %sub77, 0
  br i1 %cmp78, label %land.lhs.true76.found_crit_edge, label %land.lhs.true76.for.inc_crit_edge

land.lhs.true76.for.inc_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true76.found_crit_edge:                  ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

for.inc:                                          ; preds = %land.lhs.true76.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %38 = ptrtoint ptr %i.0242 to i32
  call void @__asan_load4_noabort(i32 %38)
  %i.0 = load ptr, ptr %i.0242, align 4
  %tobool71.not = icmp eq ptr %i.0, null
  br i1 %tobool71.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end64.for.end_crit_edge
  %io_lru = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 26
  %39 = ptrtoint ptr %io_lru to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_lru, align 4
  %add.ptr95 = getelementptr i8, ptr %40, i32 -8
  %sequential_io_avg.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 210
  %41 = ptrtoint ptr %sequential_io_avg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sequential_io_avg.i, align 8
  %mul.i = mul i32 %42, 7
  %sequential_io.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 209
  %43 = ptrtoint ptr %sequential_io.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sequential_io.i, align 4
  %add.i = add i32 %44, %mul.i
  %div10.i = lshr i32 %add.i, 3
  store i32 %div10.i, ptr %sequential_io_avg.i, align 8
  store i32 0, ptr %sequential_io.i, align 4
  %sequential = getelementptr i8, ptr %40, i32 12
  %45 = ptrtoint ptr %sequential to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %sequential, align 4
  br label %found

found:                                            ; preds = %for.end, %land.lhs.true76.found_crit_edge
  %i.1 = phi ptr [ %add.ptr95, %for.end ], [ %i.0242, %land.lhs.true76.found_crit_edge ]
  %sequential96 = getelementptr inbounds %struct.io, ptr %i.1, i32 0, i32 3
  %46 = ptrtoint ptr %sequential96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sequential96, align 4
  %48 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_size, align 8
  %add = add i32 %49, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %47)
  %cmp100 = icmp ugt i32 %add, %47
  br i1 %cmp100, label %if.then102, label %found.if.end107_crit_edge

found.if.end107_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then102:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %sequential96 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %sequential96, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %found.if.end107_crit_edge
  %51 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bi_iter, align 8
  %53 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bi_size, align 8
  %shr112 = lshr i32 %54, 9
  %conv113 = zext i32 %shr112 to i64
  %add114 = add i64 %52, %conv113
  %last115 = getelementptr inbounds %struct.io, ptr %i.1, i32 0, i32 4
  %55 = ptrtoint ptr %last115 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add114, ptr %last115, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add117 = add i32 %56, 500
  %jiffies118 = getelementptr inbounds %struct.io, ptr %i.1, i32 0, i32 2
  %57 = ptrtoint ptr %jiffies118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add117, ptr %jiffies118, align 8
  %58 = ptrtoint ptr %sequential96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sequential96, align 4
  %sequential_io = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 209
  %60 = ptrtoint ptr %sequential_io to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sequential_io, align 4
  %61 = ptrtoint ptr %i.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i.1, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %i.1, i32 0, i32 1
  %63 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pprev2.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %62, ptr %64, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.end107.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end107.hlist_del.exit_crit_edge:               ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end107.hlist_del.exit_crit_edge
  %67 = ptrtoint ptr %i.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %i.1, align 4
  %68 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %69 = ptrtoint ptr %last115 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %last115, align 8
  %conv.i.i229 = trunc i64 %70 to i32
  %shr.i.i230 = lshr i64 %70, 32
  %conv1.i.i231 = trunc i64 %shr.i.i230 to i32
  %mul.i.i.i232 = mul i32 %conv1.i.i231, 1640531527
  %xor.i.i233 = xor i32 %mul.i.i.i232, %conv.i.i229
  %mul.i.i.i.i234 = mul i32 %xor.i.i233, 1640531527
  %shr.i.i.i235 = lshr i32 %mul.i.i.i.i234, 25
  %arrayidx.i236 = getelementptr %struct.cached_dev, ptr %dc, i32 0, i32 25, i32 %shr.i.i.i235
  %71 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i236, align 4
  store volatile ptr %72, ptr %i.1, align 4
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %hlist_del.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

hlist_del.exit.hlist_add_head.exit_crit_edge:     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %i.1, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %hlist_del.exit.hlist_add_head.exit_crit_edge
  %74 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %i.1, ptr %arrayidx.i236, align 4
  %75 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %arrayidx.i236, ptr %pprev2.i.i, align 4
  %lru = getelementptr inbounds %struct.io, ptr %i.1, i32 0, i32 1
  %io_lru124 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 26
  tail call fastcc void @list_move_tail(ptr noundef %lru, ptr noundef %io_lru124)
  tail call void @_raw_spin_unlock(ptr noundef %io_lock) #14
  %76 = ptrtoint ptr %sequential_io to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sequential_io, align 4
  %sequential_io_avg = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 210
  %78 = ptrtoint ptr %sequential_io_avg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sequential_io_avg, align 8
  %80 = tail call i32 @llvm.umax.i32(i32 %77, i32 %79)
  %shr134 = lshr i32 %80, 9
  %sequential_cutoff135 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 29
  %81 = ptrtoint ptr %sequential_cutoff135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sequential_cutoff135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool136.not = icmp eq i32 %82, 0
  %shr139 = lshr i32 %82, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr134, i32 %shr139)
  %cmp140.not = icmp ult i32 %shr134, %shr139
  %or.cond226 = select i1 %tobool136.not, i1 true, i1 %cmp140.not
  br i1 %or.cond226, label %if.end143, label %if.then142

if.then142:                                       ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_bcache_bypass_sequential(ptr noundef %bio)
  br label %skip

if.end143:                                        ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shr134, i32 %call59)
  %cmp146.not = icmp ult i32 %shr134, %call59
  %or.cond227 = select i1 %tobool60.not, i1 true, i1 %cmp146.not
  br i1 %or.cond227, label %if.end143.rescale_crit_edge, label %if.then148

if.end143.rescale_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %rescale

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_bcache_bypass_congested(ptr noundef %bio)
  br label %skip

rescale:                                          ; preds = %if.end143.rescale_crit_edge, %land.lhs.true61.rescale_crit_edge, %if.then52.rescale_crit_edge
  %83 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bi_size, align 8
  %shr152 = lshr i32 %84, 9
  tail call void @bch_rescale_priorities(ptr noundef %1, i32 noundef %shr152) #14
  br label %cleanup

skip:                                             ; preds = %if.then148, %if.then142, %if.then52.skip_crit_edge, %if.then48, %do.body, %land.lhs.true24.skip_crit_edge, %lor.lhs.false9.skip_crit_edge, %lor.lhs.false6.skip_crit_edge, %lor.lhs.false.skip_crit_edge, %entry.skip_crit_edge
  %bi_size154 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %85 = ptrtoint ptr %bi_size154 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bi_size154, align 8
  %shr155 = lshr i32 %86, 9
  tail call void @bch_mark_sectors_bypassed(ptr noundef %1, ptr noundef %dc, i32 noundef %shr155) #14
  br label %cleanup

cleanup:                                          ; preds = %skip, %rescale
  %retval.0 = phi i1 [ true, %skip ], [ false, %rescale ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bch_cached_dev_request_init(ptr nocapture noundef writeonly %dc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_miss = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %cache_miss to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cached_dev_cache_miss, ptr %cache_miss, align 4
  %ioctl = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 14
  %1 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cached_dev_ioctl, ptr %ioctl, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cached_dev_cache_miss(ptr noundef %b, ptr noundef %s, ptr noundef %bio, i32 noundef %sectors) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %cache_missed = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %cache_missed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %cache_missed, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %cache_missed, align 8
  %cache_miss = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %cache_miss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache_miss, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1 = load i8, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool2.not = icmp sgt i8 %bf.load1, -1
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size.i, align 8
  %shr.i = lshr i32 %8, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sectors)
  %cmp.not.i = icmp ugt i32 %shr.i, %sectors
  br i1 %cmp.not.i, label %if.end.i, label %if.then.bio_next_split.exit_crit_edge

if.then.bio_next_split.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_next_split.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bio_split = getelementptr inbounds %struct.bcache_device, ptr %1, i32 0, i32 11
  %call.i = tail call ptr @bio_split(ptr noundef %bio, i32 noundef %sectors, i32 noundef 3072, ptr noundef %bio_split) #14
  br label %bio_next_split.exit

bio_next_split.exit:                              ; preds = %if.end.i, %if.then.bio_next_split.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ %bio, %if.then.bio_next_split.exit_crit_edge ]
  %cmp = icmp ne ptr %retval.0.i, %bio
  %cond = zext i1 %cmp to i32
  br label %out_submit

if.end:                                           ; preds = %lor.lhs.false
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %10, 9
  %11 = tail call i32 @llvm.umin.i32(i32 %sectors, i32 %shr)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 2048)
  %insert_bio_sectors = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 5
  %13 = ptrtoint ptr %insert_bio_sectors to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %insert_bio_sectors, align 4
  %14 = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 11
  %conv = zext i32 %12 to i64
  %shl = shl nuw nsw i64 %conv, 20
  %inode = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inode, align 4
  %conv16 = zext i32 %16 to i64
  %or = or i64 %shl, %conv16
  %or17 = or i64 %or, -9223372036854775808
  %17 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bi_iter, align 8
  %add = add i64 %18, %conv
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or17, ptr %14, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 11, i32 0, i32 1
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8
  %op = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 9
  %call22 = tail call i32 @bch_btree_insert_check_key(ptr noundef %b, ptr noundef %op, ptr noundef %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load27 = load i8, ptr %5, align 8
  %bf.set29 = or i8 %bf.load27, 8
  store i8 %bf.set29, ptr %5, align 8
  %22 = ptrtoint ptr %insert_bio_sectors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %insert_bio_sectors, align 4
  %24 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size, align 8
  %shr.i129 = lshr i32 %25, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i129, i32 %23)
  %cmp.not.i130 = icmp ugt i32 %shr.i129, %23
  br i1 %cmp.not.i130, label %if.end.i132, label %if.end25.bio_next_split.exit134_crit_edge

if.end25.bio_next_split.exit134_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_next_split.exit134

if.end.i132:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d, align 8
  %bio_split32 = getelementptr inbounds %struct.bcache_device, ptr %27, i32 0, i32 11
  %call.i131 = tail call ptr @bio_split(ptr noundef %bio, i32 noundef %23, i32 noundef 3072, ptr noundef %bio_split32) #14
  br label %bio_next_split.exit134

bio_next_split.exit134:                           ; preds = %if.end.i132, %if.end25.bio_next_split.exit134_crit_edge
  %retval.0.i133 = phi ptr [ %call.i131, %if.end.i132 ], [ %bio, %if.end25.bio_next_split.exit134_crit_edge ]
  %cmp34 = icmp eq ptr %retval.0.i133, %bio
  %cond36 = select i1 %cmp34, i32 0, i32 -4
  %28 = ptrtoint ptr %insert_bio_sectors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %insert_bio_sectors, align 4
  %sub = add i32 %29, 7
  %div127 = lshr i32 %sub, 3
  %conv39 = trunc i32 %div127 to i16
  %bio_split40 = getelementptr inbounds %struct.bcache_device, ptr %1, i32 0, i32 11
  %call41 = tail call ptr @bio_alloc_bioset(i32 noundef 2048, i16 noundef zeroext %conv39, ptr noundef %bio_split40) #14
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %bio_next_split.exit134.out_submit_crit_edge, label %if.end44

bio_next_split.exit134.out_submit_crit_edge:      ; preds = %bio_next_split.exit134
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_submit

if.end44:                                         ; preds = %bio_next_split.exit134
  %bi_iter45 = getelementptr inbounds %struct.bio, ptr %retval.0.i133, i32 0, i32 8
  %30 = ptrtoint ptr %bi_iter45 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bi_iter45, align 8
  %bi_iter47 = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 8
  %32 = ptrtoint ptr %bi_iter47 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %bi_iter47, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 3
  %33 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %34, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %retval.0.i133, i32 0, i32 1
  %35 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bi_bdev.i, align 4
  %bi_bdev1.i = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 1
  %37 = ptrtoint ptr %bi_bdev1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %bi_bdev1.i, align 4
  tail call void @bio_clone_blkg_association(ptr noundef nonnull %call41, ptr noundef %retval.0.i133) #14
  %38 = ptrtoint ptr %insert_bio_sectors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %insert_bio_sectors, align 4
  %shl50 = shl i32 %39, 9
  %bi_size52 = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %bi_size52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl50, ptr %bi_size52, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 10
  %41 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @backing_request_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 11
  %42 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %s, ptr %bi_private, align 4
  tail call void @bch_bio_map(ptr noundef nonnull %call41, ptr noundef null) #14
  %call53 = tail call i32 @bch_bio_alloc_pages(ptr noundef nonnull %call41, i32 noundef 11264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %out_put

if.end56:                                         ; preds = %if.end44
  %43 = ptrtoint ptr %cache_miss to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i133, ptr %cache_miss, align 4
  %bio59 = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %bio59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call41, ptr %bio59, align 4
  %45 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bi_flags.i.i, align 4
  %47 = or i16 %46, 64
  store i16 %47, ptr %bi_flags.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  %__bi_cnt.i = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %__bi_cnt.i, i32 1, i32 3, i32 1) #14
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i, ptr %__bi_cnt.i, i32 1, ptr elementtype(i32) %__bi_cnt.i) #14, !srcloc !76
  %c = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c, align 8
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %s, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #14
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !88

do.body2.i.i:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i:                               ; preds = %if.end56
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %50, i32 0, i32 6
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %if.end.i135, label %if.then.i, !prof !78

if.then.i:                                        ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %call41, i32 0, i32 6
  %55 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %call41) #14
  br label %cleanup

if.end.i135:                                      ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @submit_bio_noacct(ptr noundef nonnull %call41) #14
  br label %cleanup

out_put:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_put(ptr noundef nonnull %call41) #14
  br label %out_submit

out_submit:                                       ; preds = %out_put, %bio_next_split.exit134.out_submit_crit_edge, %bio_next_split.exit
  %miss.0 = phi ptr [ %retval.0.i, %bio_next_split.exit ], [ %retval.0.i133, %out_put ], [ %retval.0.i133, %bio_next_split.exit134.out_submit_crit_edge ]
  %ret.0 = phi i32 [ %cond, %bio_next_split.exit ], [ %cond36, %out_put ], [ %cond36, %bio_next_split.exit134.out_submit_crit_edge ]
  %bi_end_io62 = getelementptr inbounds %struct.bio, ptr %miss.0, i32 0, i32 10
  %56 = ptrtoint ptr %bi_end_io62 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @backing_request_endio, ptr %bi_end_io62, align 8
  %bi_private64 = getelementptr inbounds %struct.bio, ptr %miss.0, i32 0, i32 11
  %57 = ptrtoint ptr %bi_private64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %s, ptr %bi_private64, align 4
  %c66 = getelementptr inbounds %struct.search, ptr %s, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %c66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %c66, align 8
  %remaining.i.i136 = getelementptr inbounds %struct.closure, ptr %s, i32 0, i32 2
  %call.i.i.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i136, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i136, i32 1, i32 3, i32 1) #14
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i136, ptr %remaining.i.i136, i32 1, ptr elementtype(i32) %remaining.i.i136) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i138 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i139 = and i32 %asmresult.i.i.i.i.i.i138, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139)
  %cmp.i.i140 = icmp eq i32 %and.i.i139, 0
  br i1 %cmp.i.i140, label %do.body2.i.i141, label %closure_get.exit.i144, !prof !88

do.body2.i.i141:                                  ; preds = %out_submit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i144:                            ; preds = %out_submit
  %flags.i142 = getelementptr inbounds %struct.cache_set, ptr %59, i32 0, i32 6
  %61 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags.i142, align 4
  %63 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i143 = icmp eq i32 %63, 0
  br i1 %tobool.not.i143, label %if.end.i147, label %if.then.i146, !prof !78

if.then.i146:                                     ; preds = %closure_get.exit.i144
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i145 = getelementptr inbounds %struct.bio, ptr %miss.0, i32 0, i32 6
  %64 = ptrtoint ptr %bi_status.i145 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %bi_status.i145, align 2
  tail call void @bio_endio(ptr noundef %miss.0) #14
  br label %cleanup

if.end.i147:                                      ; preds = %closure_get.exit.i144
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @submit_bio_noacct(ptr noundef %miss.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i147, %if.then.i146, %if.end.i135, %if.then.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end.cleanup_crit_edge ], [ %cond36, %if.then.i ], [ %cond36, %if.end.i135 ], [ %ret.0, %if.then.i146 ], [ %ret.0, %if.end.i147 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cached_dev_ioctl(ptr nocapture noundef readonly %d, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %io_disable = getelementptr i8, ptr %d, i32 53296
  %0 = ptrtoint ptr %io_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %io_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %bdev = getelementptr i8, ptr %d, i32 868
  %1 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fops, align 8
  %ioctl = getelementptr inbounds %struct.block_device_operations, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioctl, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %8(ptr noundef %2, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flash_dev_submit_bio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bkey, align 8
  %.compoundliteral20 = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %c = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %land.rhs.if.end_crit_edge, label %if.then, !prof !78

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef %bio) #14
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call i32 @bio_start_io_acct(ptr noundef %bio) #14
  %call7 = tail call fastcc ptr @search_alloc(ptr noundef %bio, ptr noundef %5, ptr noundef %1, i32 noundef %call6)
  %bio10 = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 1, i32 2
  %d11 = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 4
  %12 = ptrtoint ptr %d11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d11, align 8
  tail call fastcc void @trace_bcache_request_start(ptr noundef %13, ptr noundef %bio10)
  %bi_iter = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 1, i32 2, i32 8
  %bi_size = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 1, i32 2, i32 8, i32 1
  %14 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcache_wq to i32))
  %16 = load ptr, ptr @bcache_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %call7) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %call7, i32 0, i32 3
  %17 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @flash_dev_nodata, ptr %fn1.i, align 4
  %18 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %call7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %19 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %do.body
  tail call void @__init_work(ptr noundef %call7, i32 noundef 0) #14
  %21 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %call7, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %call7, i32 0, i32 1
  %22 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %20, ptr noundef %call7) #14
  br i1 %call.i.i, label %do.body2.i.cleanup_crit_edge, label %do.body12.i, !prof !78

do.body2.i.cleanup_crit_edge:                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !91
  unreachable

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %fn1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fn1.i, align 4
  tail call void %25(ptr noundef %call7) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %bi_opf = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 1, i32 2, i32 2
  %26 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %iop47 = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 10
  br i1 %tobool.i.not, label %if.else46, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %c18 = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %c18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c18, align 8
  %moving_gc_keys = getelementptr inbounds %struct.cache_set, ptr %29, i32 0, i32 49
  %id = getelementptr inbounds %struct.bcache_device, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %conv = zext i32 %31 to i64
  %or = or i64 %conv, -9223372036854775808
  %32 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or, ptr %.compoundliteral, align 8
  %low = getelementptr inbounds %struct.bkey, ptr %.compoundliteral, i32 0, i32 1
  %33 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bi_iter, align 8
  %35 = ptrtoint ptr %low to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %low, align 8
  %36 = ptrtoint ptr %.compoundliteral20 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %or, ptr %.compoundliteral20, align 8
  %low25 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral20, i32 0, i32 1
  %shr = lshr i32 %15, 9
  %conv30 = zext i32 %shr to i64
  %add = add i64 %34, %conv30
  %37 = ptrtoint ptr %low25 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add, ptr %low25, align 8
  %call31 = call zeroext i1 @bch_keybuf_check_overlapping(ptr noundef %moving_gc_keys, ptr noundef nonnull %.compoundliteral, ptr noundef nonnull %.compoundliteral20) #14
  %38 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_opf, align 8
  %and33 = and i32 %39, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and33)
  %cmp = icmp eq i32 %and33, 3
  %40 = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 10, i32 9
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %40, align 8
  %bf.shl = select i1 %cmp, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %bf.set41 = or i8 %bf.set, 64
  store i8 %bf.set41, ptr %40, align 8
  %bio43 = getelementptr inbounds %struct.search, ptr %call7, i32 0, i32 10, i32 2
  %42 = ptrtoint ptr %bio43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bio10, ptr %bio43, align 4
  call fastcc void @closure_call(ptr noundef %iop47, ptr noundef nonnull @bch_data_insert, ptr noundef %call7)
  br label %do.body51

if.else46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @closure_call(ptr noundef %iop47, ptr noundef nonnull @cache_lookup, ptr noundef %call7)
  br label %do.body51

do.body51:                                        ; preds = %if.else46, %if.then17
  call fastcc void @closure_set_ip(ptr noundef %call7) #14
  %fn1.i86 = getelementptr inbounds %struct.anon, ptr %call7, i32 0, i32 3
  %43 = ptrtoint ptr %fn1.i86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @search_free, ptr %fn1.i86, align 4
  %44 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %call7, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  call void @closure_sub(ptr noundef %call7, i32 noundef 1073741825) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %if.else.i, %do.body2.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_dev_nodata(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %0, align 8
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 8
  tail call void @bch_journal_meta(ptr noundef %4, ptr noundef %cl) #14
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %5 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @search_free, ptr %fn1.i, align 4
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_keybuf_check_overlapping(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @closure_call(ptr noundef %cl, ptr noundef %fn, ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %parent1.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 1
  %1 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %entry.closure_init.exit_crit_edge, label %if.then.i

entry.closure_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %closure_init.exit

if.then.i:                                        ; preds = %entry
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %parent, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %if.then.i.closure_init.exit_crit_edge, !prof !88

if.then.i.closure_init.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %closure_init.exit

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_init.exit:                                ; preds = %if.then.i.closure_init.exit_crit_edge, %entry.closure_init.exit_crit_edge
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #14
  %3 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %cl) #14
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %4 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fn, ptr %fn1.i, align 4
  %5 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %closure_init.exit
  tail call void @__init_work(ptr noundef %cl, i32 noundef 0) #14
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %cl, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1
  %9 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %7, ptr noundef %cl) #14
  br i1 %call.i.i, label %do.body2.i.closure_queue.exit_crit_edge, label %do.body12.i, !prof !78

do.body2.i.closure_queue.exit_crit_edge:          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %closure_queue.exit

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !91
  unreachable

if.else.i:                                        ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %fn1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn1.i, align 4
  tail call void %12(ptr noundef %cl) #14
  br label %closure_queue.exit

closure_queue.exit:                               ; preds = %if.else.i, %do.body2.i.closure_queue.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_lookup(ptr noundef %cl) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr i8, ptr %cl, i32 -28
  %0 = call ptr @memset(ptr %op, i32 0, i32 24)
  %1 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %private.i = getelementptr i8, ptr %cl, i32 -24
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %private.i, align 4
  %func.i = getelementptr i8, ptr %cl, i32 -20
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @autoremove_wake_function, ptr %func.i, align 4
  %entry3.i = getelementptr i8, ptr %cl, i32 -16
  %7 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr i8, ptr %cl, i32 -12
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %op, align 4
  %lock.i = getelementptr i8, ptr %cl, i32 -8
  %10 = ptrtoint ptr %lock.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %lock.i, align 4
  %c = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 1
  %11 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c, align 8
  %inode = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 4
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inode, align 4
  %conv = zext i32 %14 to i64
  %or = or i64 %conv, -9223372036854775808
  %15 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or, ptr %.compoundliteral, align 8
  %low = getelementptr inbounds %struct.bkey, ptr %.compoundliteral, i32 0, i32 1
  %bi_iter = getelementptr i8, ptr %cl, i32 -136
  %16 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bi_iter, align 8
  %18 = ptrtoint ptr %low to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %low, align 8
  %call = call i32 @bch_btree_map_keys(ptr noundef %op, ptr noundef %12, ptr noundef nonnull %.compoundliteral, ptr noundef nonnull @cache_lookup_fn, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcache_wq to i32))
  %19 = load ptr, ptr @bcache_wq, align 4
  call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %20 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cache_lookup, ptr %fn1.i, align 4
  %21 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %cl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %do.body9, label %if.end.do.body52_crit_edge

if.end.do.body52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body52

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call)
  %cmp10 = icmp eq i32 %call, -4
  br i1 %cmp10, label %do.body14, label %do.end22, !prof !88

do.body14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/request.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 605, 0\0A.popsection", ""() #14, !srcloc !103
  unreachable

do.end22:                                         ; preds = %do.body9
  %d = getelementptr i8, ptr %cl, i32 -48
  %22 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d, align 8
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %do.end22.if.end44_crit_edge, label %land.lhs.true

do.end22.if.end44_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true:                                    ; preds = %do.end22
  %c25 = getelementptr inbounds %struct.bcache_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %c25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c25, align 4
  %tobool26.not = icmp eq ptr %25, null
  br i1 %tobool26.not, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true27

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true27:                                  ; preds = %land.lhs.true
  %uuids = getelementptr inbounds %struct.cache_set, ptr %25, i32 0, i32 58
  %26 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %uuids, align 8
  %id = getelementptr inbounds %struct.bcache_device, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %flags.i = getelementptr %struct.uuid_entry, ptr %27, i32 %29, i32 0, i32 0, i32 5
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not = icmp ne i32 %32, 0
  %add.ptr37 = getelementptr i8, ptr %23, i32 -8
  %tobool38.not = icmp eq ptr %add.ptr37, null
  %or.cond = select i1 %tobool32.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %land.lhs.true27.if.end44_crit_edge, label %land.lhs.true39

land.lhs.true27.if.end44_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true39:                                  ; preds = %land.lhs.true27
  %has_dirty = getelementptr i8, ptr %23, i32 3488
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %has_dirty, i32 noundef 4) #14
  %33 = ptrtoint ptr %has_dirty to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %has_dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool41.not = icmp eq i32 %34, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end44_crit_edge, label %if.then42

land.lhs.true39.if.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  %recoverable = getelementptr i8, ptr %cl, i32 -40
  %35 = ptrtoint ptr %recoverable to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %recoverable, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %recoverable, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true39.if.end44_crit_edge, %land.lhs.true27.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge, %do.end22.if.end44_crit_edge
  %status = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 7
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool46.not = icmp eq i8 %37, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.do.body52_crit_edge

if.end44.do.body52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %status, align 4
  br label %do.body52

do.body52:                                        ; preds = %if.then47, %if.end44.do.body52_crit_edge, %if.end.do.body52_crit_edge
  call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i78 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %39 = ptrtoint ptr %fn1.i78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %fn1.i78, align 4
  %40 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %cl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %do.body52, %do.body
  call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @search_free(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %search_inflight = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %search_inflight, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %search_inflight, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %search_inflight, ptr %search_inflight, i32 1, ptr elementtype(i32) %search_inflight) #14, !srcloc !104
  %bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 2
  %3 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bio, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_put(ptr noundef nonnull %4) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %orig_bio.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 2
  %5 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_bio.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.bio_complete.exit_crit_edge, label %if.then.i

if.end.bio_complete.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_complete.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %start_time.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 8
  %7 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_time.i, align 8
  %orig_bdev.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 7
  %9 = ptrtoint ptr %orig_bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orig_bdev.i, align 4
  tail call void @bio_end_io_acct_remapped(ptr noundef nonnull %6, i32 noundef %8, ptr noundef %10) #14
  %d.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %11 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d.i, align 8
  %13 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %orig_bio.i, align 8
  tail call fastcc void @trace_bcache_request_end(ptr noundef %12, ptr noundef %14) #14
  %status.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 7
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status.i, align 4
  %17 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %orig_bio.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %bi_status.i, align 2
  %20 = load ptr, ptr %orig_bio.i, align 8
  tail call void @bio_endio(ptr noundef %20) #14
  %21 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %orig_bio.i, align 8
  br label %bio_complete.exit

bio_complete.exit:                                ; preds = %if.then.i, %if.end.bio_complete.exit_crit_edge
  tail call void @closure_debug_destroy(ptr noundef %cl) #14
  %22 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c, align 8
  %search = getelementptr inbounds %struct.cache_set, ptr %23, i32 0, i32 19
  tail call void @mempool_free(ptr noundef %cl, ptr noundef %search) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_sub(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bch_flash_dev_request_init(ptr nocapture noundef writeonly %d) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_miss = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 13
  %0 = ptrtoint ptr %cache_miss to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @flash_dev_cache_miss, ptr %cache_miss, align 4
  %ioctl = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 14
  %1 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @flash_dev_ioctl, ptr %ioctl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flash_dev_cache_miss(ptr nocapture noundef readnone %b, ptr nocapture noundef readnone %s, ptr noundef %bio, i32 noundef %sectors) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %1, 9
  %2 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %sectors)
  %shl = shl nuw i32 %2, 9
  %3 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %bi_size, align 8
  tail call void @zero_fill_bio(ptr noundef %bio) #14
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  store i32 %1, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.i = icmp eq i32 %1, %5
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bi_size, align 8
  br label %bio_advance.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__bio_advance(ptr noundef %bio, i32 noundef %5) #14
  br label %bio_advance.exit

bio_advance.exit:                                 ; preds = %if.end.i, %if.then.i
  %7 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp ne i32 %8, 0
  %retval.0 = zext i1 %tobool.not to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flash_dev_ioctl(ptr nocapture noundef readnone %d, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_request_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bch_search_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_request_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 8, i32 noundef 0, ptr noundef null) #14
  store ptr %call, ptr @bch_search_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bch_data_invalidate(ptr noundef %cl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bio1 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 2
  %0 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_data_invalidate.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_data_invalidate, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %3, 9
  %4 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_data_invalidate.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %shr, i64 noundef %5) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bi_iter6 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %bi_size7 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %bi_size7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %tobool9.not57 = icmp ult i32 %7, 512
  br i1 %tobool9.not57, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %insert_keys = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10
  %c = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 1
  %8 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10, i32 1
  %inode = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i32 [ %7, %while.body.lr.ph ], [ %36, %cleanup.while.body_crit_edge ]
  %shr8 = lshr i32 %9, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %cmp = icmp ult i32 %9, 16777216
  %shr8. = select i1 %cmp, i32 %shr8, i32 32768
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 4
  %14 = ptrtoint ptr %insert_keys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %insert_keys, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = add i32 %sub.ptr.lhs.cast.i.i, 16
  %16 = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %mul.i = and i32 %16, -8
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 9
  %17 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cache.i, align 4
  %block_size.i = getelementptr inbounds %struct.cache, ptr %18, i32 0, i32 1, i32 11, i32 0, i32 1
  %19 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %block_size.i, align 8
  %conv.i = zext i16 %20 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 9
  %sub.i = add nsw i32 %shl.i, -240
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp.i = icmp ugt i32 %mul.i, %sub.i
  br i1 %cmp.i, label %while.body.do.body29_crit_edge, label %bch_keylist_realloc.exit

while.body.do.body29_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

bch_keylist_realloc.exit:                         ; preds = %while.body
  %call2.i = tail call i32 @__bch_keylist_realloc(ptr noundef %insert_keys, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool15.not = icmp eq i32 %call2.i, 0
  br i1 %tobool15.not, label %cleanup, label %bch_keylist_realloc.exit.do.body29_crit_edge

bch_keylist_realloc.exit.do.body29_crit_edge:     ; preds = %bch_keylist_realloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

cleanup:                                          ; preds = %bch_keylist_realloc.exit
  %conv = zext i32 %shr8. to i64
  %21 = ptrtoint ptr %bi_iter6 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bi_iter6, align 8
  %add = add i64 %22, %conv
  store i64 %add, ptr %bi_iter6, align 8
  %shl.neg = mul i32 %shr8., -512
  %23 = ptrtoint ptr %bi_size7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_size7, align 8
  %sub = add i32 %24, %shl.neg
  store i32 %sub, ptr %bi_size7, align 8
  %shl24 = shl nuw nsw i64 %conv, 20
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inode, align 4
  %conv25 = zext i32 %26 to i64
  %or = or i64 %shl24, %conv25
  %or26 = or i64 %or, -9223372036854775808
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or26, ptr %28, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %28, i32 8
  %30 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8
  %31 = load ptr, ptr %8, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %shr.i.i.i.i.i = lshr i64 %33, 60
  %34 = trunc i64 %shr.i.i.i.i.i to i32
  %35 = and i32 %34, 7
  %conv.i.i.i.i = add nuw nsw i32 %35, 2
  %add.ptr.i.i.i = getelementptr i64, ptr %31, i32 %conv.i.i.i.i
  store ptr %add.ptr.i.i.i, ptr %8, align 4
  %36 = load i32, ptr %bi_size7, align 8
  %tobool9.not = icmp ult i32 %36, 512
  br i1 %tobool9.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end.while.end_crit_edge
  %37 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 9
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %37, align 8
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %37, align 8
  tail call void @bio_put(ptr noundef %1) #14
  br label %do.body29

do.body29:                                        ; preds = %while.end, %bch_keylist_realloc.exit.do.body29_crit_edge, %while.body.do.body29_crit_edge
  %wq = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 3
  %39 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %41 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bch_data_insert_keys, ptr %fn1.i, align 4
  %42 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_data_insert_keys(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %0, align 8
  %2 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %3 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 11
  %spec.select = select i1 %tobool.not, ptr null, ptr %3
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %c = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 1
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 8
  %insert_keys = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  %spec.select81 = select i1 %tobool10.not, ptr null, ptr %cl
  %call = tail call ptr @bch_journal(ptr noundef %5, ptr noundef %insert_keys, ptr noundef %spec.select81) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %journal_ref.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %c15 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 1
  %7 = ptrtoint ptr %c15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c15, align 8
  %insert_keys16 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10
  %call17 = tail call i32 @bch_btree_insert(ptr noundef %8, ptr noundef %insert_keys16, ptr noundef %journal_ref.0, ptr noundef %spec.select) #14
  %9 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call17, label %if.then22 [
    i32 -3, label %if.end.if.end27.sink.split_crit_edge
    i32 0, label %if.end.if.end27_crit_edge
  ]

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end.if.end27.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.sink.split

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %status, align 4
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then22, %if.end.if.end27.sink.split_crit_edge
  %.sink = phi i8 [ 2, %if.then22 ], [ 4, %if.end.if.end27.sink.split_crit_edge ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load23 = load i8, ptr %0, align 8
  %bf.set25 = or i8 %bf.load23, %.sink
  store i8 %bf.set25, ptr %0, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.end.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %journal_ref.0, null
  br i1 %tobool28.not, label %if.end27.if.end42_crit_edge, label %do.body

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

do.body:                                          ; preds = %if.end27
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %journal_ref.0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr nonnull %journal_ref.0, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %journal_ref.0, ptr nonnull %journal_ref.0, i32 1, ptr nonnull elementtype(i32) %journal_ref.0) #14, !srcloc !84
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp31 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp31, label %do.body35, label %do.body.if.end42_crit_edge, !prof !88

do.body.if.end42_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

do.body35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/request.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #14, !srcloc !105
  unreachable

if.end42:                                         ; preds = %do.body.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load43 = load i8, ptr %0, align 8
  %14 = and i8 %bf.load43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool47.not = icmp eq i8 %14, 0
  br i1 %tobool47.not, label %do.body49, label %if.end52

do.body49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %wq = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 3
  %15 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %17 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bch_data_insert_start, ptr %fn1.i, align 4
  %18 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %19 = ptrtoint ptr %insert_keys16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %insert_keys16, align 8
  %inline_keys.i = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10, i32 2
  %cmp.not.i = icmp eq ptr %20, %inline_keys.i
  br i1 %cmp.not.i, label %if.end52.bch_keylist_free.exit_crit_edge, label %if.then.i

if.end52.bch_keylist_free.exit_crit_edge:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_keylist_free.exit

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %20) #14
  br label %bch_keylist_free.exit

bch_keylist_free.exit:                            ; preds = %if.then.i, %if.end52.bch_keylist_free.exit_crit_edge
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i82 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %21 = ptrtoint ptr %fn1.i82 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fn1.i82, align 4
  %22 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %bch_keylist_free.exit, %do.body49
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_alloc_sectors(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_data_insert_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.data_insert_op, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %4, align 8
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr inbounds %struct.data_insert_op, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %status, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then
  %8 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %wq = getelementptr inbounds %struct.data_insert_op, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %1) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bch_data_insert_error, ptr %fn1.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @closure_set_ip(ptr noundef %1) #14
  %fn1.i24 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %fn1.i24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fn1.i24, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9, %if.then2, %entry.if.end12_crit_edge
  %c = getelementptr inbounds %struct.data_insert_op, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c, align 8
  %17 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bi_status, align 2
  tail call void @bch_bbio_endio(ptr noundef %16, ptr noundef %bio, i8 noundef zeroext %18, ptr noundef nonnull @.str.9) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_cache_insert(ptr noundef %k) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_cache_insert, i32 0, i32 1), ptr blockaddress(@trace_bcache_cache_insert, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !106
  %call42 = tail call i32 @__traceiter_bcache_cache_insert(ptr noundef null, ptr noundef %k) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_cache_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_cache_insert, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_cache_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_cache_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 190, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
declare dso_local void @bch_submit_bbio(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bch_keylist_realloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_journal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_data_insert_error(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %insert_keys = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10
  %0 = ptrtoint ptr %insert_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %insert_keys, align 8
  %2 = getelementptr inbounds %struct.data_insert_op, ptr %cl, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp.not20 = icmp eq ptr %1, %4
  br i1 %cmp.not20, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dst.022 = phi ptr [ %add.ptr.i19, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %src.021 = phi ptr [ %add.ptr.i, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %src.021 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %src.021, align 8
  %shr.i.i.i = lshr i64 %6, 60
  %7 = trunc i64 %shr.i.i.i to i32
  %8 = and i32 %7, 7
  %conv.i.i = add nuw nsw i32 %8, 2
  %add.ptr.i = getelementptr i64, ptr %src.021, i32 %conv.i.i
  %and.i = and i64 %6, -8070450532247928833
  store i64 %and.i, ptr %src.021, align 8
  %9 = call ptr @memmove(ptr %dst.022, ptr %src.021, i32 16)
  %10 = ptrtoint ptr %dst.022 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dst.022, align 8
  %shr.i.i.i17 = lshr i64 %11, 60
  %12 = trunc i64 %shr.i.i.i17 to i32
  %13 = and i32 %12, 7
  %conv.i.i18 = add nuw nsw i32 %13, 2
  %add.ptr.i19 = getelementptr i64, ptr %dst.022, i32 %conv.i.i18
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %cmp.not = icmp eq ptr %add.ptr.i, %15
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %dst.0.lcssa = phi ptr [ %1, %entry.while.end_crit_edge ], [ %add.ptr.i19, %while.body.while.end_crit_edge ]
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dst.0.lcssa, ptr %2, align 4
  tail call void @bch_data_insert_keys(ptr noundef %cl)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bbio_endio(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @crc64_be(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_cache_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @request_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 10, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %status, align 4
  %recoverable = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %recoverable to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %recoverable, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %recoverable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  tail call void @closure_put(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @closure_set_ip(ptr nocapture noundef writeonly %cl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ip = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr blockaddress(@closure_set_ip, %__here) to i32), ptr %ip, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_clone_fast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_request_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_journal_meta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @backing_request_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 -8
  %6 = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 10, i32 9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %6, align 8
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.then.if.else_crit_edge, label %land.rhs

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.rhs:                                         ; preds = %if.then
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf, align 8
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %land.rhs.if.else_crit_edge, label %do.end, !prof !78

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %bdev = getelementptr i8, ptr %5, i32 868
  %12 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev, align 4
  %conv11 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %13, i32 noundef %conv11) #19
  br label %if.end

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %if.then.if.else_crit_edge
  %status = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 10, i32 7
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %3, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %recoverable = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %recoverable to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load14 = load i8, ptr %recoverable, align 8
  %bf.clear15 = and i8 %bf.load14, 127
  store i8 %bf.clear15, ptr %recoverable, align 8
  tail call void @bch_count_backing_io_errors(ptr noundef %add.ptr3, ptr noundef %bio) #14
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry.if.end16_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  tail call void @closure_put(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_bio_complete(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %count.i = getelementptr i8, ptr %1, i32 3340
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #14, !srcloc !109
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cached_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end5.i.i.i.i.cached_dev_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cached_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #14
  br label %cached_dev_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %detach.i = getelementptr i8, ptr %1, i32 3344
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %detach.i) #14
  br label %cached_dev_put.exit

cached_dev_put.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cached_dev_put.exit_crit_edge
  tail call void @search_free(ptr noundef %cl)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_count_backing_io_errors(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #14
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_bypass_sequential(ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_bypass_sequential, i32 0, i32 1), ptr blockaddress(@trace_bcache_bypass_sequential, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !111
  %call42 = tail call i32 @__traceiter_bcache_bypass_sequential(ptr noundef null, ptr noundef %bio) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_bypass_sequential, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_bypass_sequential, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_bypass_sequential.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_bypass_sequential.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_bypass_congested(ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_bypass_congested, i32 0, i32 1), ptr blockaddress(@trace_bcache_bypass_congested, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !113
  %call42 = tail call i32 @__traceiter_bcache_bypass_congested(ptr noundef null, ptr noundef %bio) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_bypass_congested, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_bypass_congested, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_bypass_congested.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_bypass_congested.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
declare dso_local void @bch_rescale_priorities(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_mark_sectors_bypassed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_bypass_sequential(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_bypass_congested(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_non_owner(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_write_complete(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %writeback_lock = getelementptr i8, ptr %1, i32 3392
  tail call void @up_read_non_owner(ptr noundef %writeback_lock) #14
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 8
  %count.i.i = getelementptr i8, ptr %3, i32 3340
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #14, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !78

if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cached_dev_bio_complete.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #14
  br label %cached_dev_bio_complete.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %detach.i.i = getelementptr i8, ptr %3, i32 3344
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %detach.i.i) #14
  br label %cached_dev_bio_complete.exit

cached_dev_bio_complete.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge
  tail call void @search_free(ptr noundef %cl) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_write_bdev_super(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read_non_owner(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_read_done_bh(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 8
  %cache_missed = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 6
  %4 = ptrtoint ptr %cache_missed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %cache_missed, align 8
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6 = load i8, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load6)
  %tobool9 = icmp slt i8 %bf.load6, 0
  tail call void @bch_mark_cache_accounting(ptr noundef %3, ptr noundef %1, i1 noundef zeroext %tobool.not, i1 noundef zeroext %tobool9) #14
  %orig_bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 2
  %8 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %orig_bio, align 8
  %10 = ptrtoint ptr %cache_missed to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load11 = load i8, ptr %cache_missed, align 8
  %11 = and i8 %bf.load11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load18 = load i8, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load18)
  %tobool21 = icmp slt i8 %bf.load18, 0
  tail call fastcc void @trace_bcache_read(ptr noundef %9, i1 noundef zeroext %tobool15.not, i1 noundef zeroext %tobool21)
  %status = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 7
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcache_wq to i32))
  %15 = load ptr, ptr @bcache_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %16 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cached_dev_read_error, ptr %fn1.i, align 4
  %17 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %18 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body.if.end34.sink.split_crit_edge, label %do.body2.i

do.body.if.end34.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.sink.split

do.body2.i:                                       ; preds = %do.body
  tail call void @__init_work(ptr noundef %cl, i32 noundef 0) #14
  %20 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %cl, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1
  %21 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %19, ptr noundef %cl) #14
  br i1 %call.i.i, label %do.body2.i.if.end34_crit_edge, label %do.body12.i, !prof !78

do.body2.i.if.end34_crit_edge:                    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !91
  unreachable

if.else:                                          ; preds = %entry
  %bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 2
  %23 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bio, align 4
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %lor.lhs.false, label %if.else.do.body27_crit_edge

if.else.do.body27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27

lor.lhs.false:                                    ; preds = %if.else
  %verify.i = getelementptr i8, ptr %1, i32 53296
  %25 = ptrtoint ptr %verify.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %verify.i, align 8
  %26 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %do.body31, label %lor.lhs.false.do.body27_crit_edge

lor.lhs.false.do.body27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27

do.body27:                                        ; preds = %lor.lhs.false.do.body27_crit_edge, %if.else.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcache_wq to i32))
  %27 = load ptr, ptr @bcache_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i50 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %28 = ptrtoint ptr %fn1.i50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cached_dev_read_done, ptr %fn1.i50, align 4
  %29 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %30 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cl, align 4
  %tobool.not.i51 = icmp eq ptr %31, null
  br i1 %tobool.not.i51, label %do.body27.if.end34.sink.split_crit_edge, label %do.body2.i56

do.body27.if.end34.sink.split_crit_edge:          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.sink.split

do.body2.i56:                                     ; preds = %do.body27
  tail call void @__init_work(ptr noundef %cl, i32 noundef 0) #14
  %32 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %cl, align 4
  %lockdep_map.i52 = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i52, ptr noundef nonnull @.str.13, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry3.i53 = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1
  %33 = ptrtoint ptr %entry3.i53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry3.i53, ptr %entry3.i53, align 4
  %prev.i.i54 = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry3.i53, ptr %prev.i.i54, align 4
  %call.i.i55 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %31, ptr noundef %cl) #14
  br i1 %call.i.i55, label %do.body2.i56.if.end34_crit_edge, label %do.body12.i57, !prof !78

do.body2.i56.if.end34_crit_edge:                  ; preds = %do.body2.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.body12.i57:                                    ; preds = %do.body2.i56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !91
  unreachable

do.body31:                                        ; preds = %lor.lhs.false
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i61 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %35 = ptrtoint ptr %fn1.i61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @cached_dev_bio_complete, ptr %fn1.i61, align 4
  %36 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %37 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl, align 4
  %tobool.not.i62 = icmp eq ptr %38, null
  br i1 %tobool.not.i62, label %do.body31.if.end34.sink.split_crit_edge, label %do.body2.i67

do.body31.if.end34.sink.split_crit_edge:          ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.sink.split

do.body2.i67:                                     ; preds = %do.body31
  tail call void @__init_work(ptr noundef %cl, i32 noundef 0) #14
  %39 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %cl, align 4
  %lockdep_map.i63 = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i63, ptr noundef nonnull @.str.13, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry3.i64 = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1
  %40 = ptrtoint ptr %entry3.i64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry3.i64, ptr %entry3.i64, align 4
  %prev.i.i65 = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i.i65 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry3.i64, ptr %prev.i.i65, align 4
  %call.i.i66 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %38, ptr noundef %cl) #14
  br i1 %call.i.i66, label %do.body2.i67.if.end34_crit_edge, label %do.body12.i68, !prof !78

do.body2.i67.if.end34_crit_edge:                  ; preds = %do.body2.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.body12.i68:                                    ; preds = %do.body2.i67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !91
  unreachable

if.end34.sink.split:                              ; preds = %do.body31.if.end34.sink.split_crit_edge, %do.body27.if.end34.sink.split_crit_edge, %do.body.if.end34.sink.split_crit_edge
  %fn1.i61.sink = phi ptr [ %fn1.i, %do.body.if.end34.sink.split_crit_edge ], [ %fn1.i50, %do.body27.if.end34.sink.split_crit_edge ], [ %fn1.i61, %do.body31.if.end34.sink.split_crit_edge ]
  %42 = ptrtoint ptr %fn1.i61.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fn1.i61.sink, align 4
  tail call void %43(ptr noundef %cl) #14
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %do.body2.i67.if.end34_crit_edge, %do.body2.i56.if.end34_crit_edge, %do.body2.i.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_mark_cache_accounting(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_read(ptr noundef %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_read, i32 0, i32 1), ptr blockaddress(@trace_bcache_read, %do.body)) #14
          to label %if.end51 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %cleanup.thread

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !115
  %call45 = tail call i32 @__traceiter_bcache_read(ptr noundef null, ptr noundef %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i76 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i76 to ptr
  %preempt_count.i.i77 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i77, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77, align 4
  br label %if.end51

if.end51:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i79 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !78

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div3.i.i.i84 = lshr i32 %20, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i84
  %22 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i86
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i87.not = icmp eq i32 %25, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_read, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_bcache_read.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @.str.2) #14
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i89 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_read_error(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bio2 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2
  %recoverable = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 6
  %0 = ptrtoint ptr %recoverable to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %recoverable, align 8
  %1 = and i8 %bf.load, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %2 = icmp eq i8 %1, -128
  br i1 %2, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %entry
  %orig_bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 2
  %3 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %orig_bio, align 8
  tail call fastcc void @trace_bcache_read_retry(ptr noundef %4)
  %status = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 7
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %status, align 4
  %6 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %orig_bio, align 8
  tail call void @bio_init(ptr noundef %bio2, ptr noundef null, i16 noundef zeroext 0) #14
  tail call void @__bio_clone_fast(ptr noundef %bio2, ptr noundef %7) #14
  %bi_end_io.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 10
  %8 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @backing_request_endio, ptr %bi_end_io.i, align 8
  %bi_private.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 11
  %9 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cl, ptr %bi_private.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i, align 4
  %12 = or i16 %11, 64
  store i16 %12, ptr %bi_flags.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !100
  %__bi_cnt.i.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %__bi_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 3, ptr %__bi_cnt.i.i, align 4
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !88

do.body2.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit.i:                               ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %15, i32 0, i32 6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !78

if.then.i:                                        ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_status.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 1, i32 2, i32 6
  %20 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio2) #14
  br label %do.body

if.end.i:                                         ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @submit_bio_noacct(ptr noundef %bio2) #14
  br label %do.body

do.body:                                          ; preds = %if.end.i, %if.then.i, %entry.do.body_crit_edge
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %21 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cached_dev_read_error_done, ptr %fn1.i, align 4
  %22 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_read_done(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -8
  %iop = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10
  %bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_reset(ptr noundef nonnull %3) #14
  %cache_miss = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 3
  %4 = ptrtoint ptr %cache_miss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_miss, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %8 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bio, align 4
  %bi_iter8 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %bi_iter8 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %7, ptr %bi_iter8, align 8
  %11 = load ptr, ptr %bio, align 4
  %12 = load ptr, ptr %cache_miss, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %14, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_bdev.i, align 4
  %bi_bdev1.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %bi_bdev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bi_bdev1.i, align 4
  tail call void @bio_clone_blkg_association(ptr noundef %11, ptr noundef %12) #14
  %insert_bio_sectors = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 5
  %18 = ptrtoint ptr %insert_bio_sectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %insert_bio_sectors, align 4
  %shl = shl i32 %19, 9
  %20 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bio, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %bi_size, align 8
  %23 = load ptr, ptr %bio, align 4
  tail call void @bch_bio_map(ptr noundef %23, ptr noundef null) #14
  %24 = ptrtoint ptr %cache_miss to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache_miss, align 4
  %26 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bio, align 4
  tail call void @bio_copy_data(ptr noundef %25, ptr noundef %27) #14
  %28 = ptrtoint ptr %cache_miss to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cache_miss, align 4
  tail call void @bio_put(ptr noundef %29) #14
  %30 = ptrtoint ptr %cache_miss to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cache_miss, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %verify.i = getelementptr i8, ptr %1, i32 53296
  %31 = ptrtoint ptr %verify.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %verify.i, align 8
  %32 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i.not = icmp eq i8 %32, 0
  br i1 %tobool.i.not, label %if.end.if.end30_crit_edge, label %land.lhs.true

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end
  %recoverable = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 6
  %33 = ptrtoint ptr %recoverable to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %recoverable, align 8
  %34 = and i8 %bf.load, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %34)
  %35 = icmp eq i8 %34, -128
  br i1 %35, label %if.then29, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %orig_bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 2
  %36 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %orig_bio, align 8
  tail call void @bch_data_verify(ptr noundef %add.ptr3, ptr noundef %37) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %remaining.i = getelementptr inbounds %struct.closure, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #14
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %and.i = and i32 %asmresult.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body2.i, label %closure_get.exit, !prof !88

do.body2.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

closure_get.exit:                                 ; preds = %if.end30
  %orig_bio.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 2
  %39 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %orig_bio.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %closure_get.exit.bio_complete.exit_crit_edge, label %if.then.i

closure_get.exit.bio_complete.exit_crit_edge:     ; preds = %closure_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_complete.exit

if.then.i:                                        ; preds = %closure_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %start_time.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 8
  %41 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start_time.i, align 8
  %orig_bdev.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 7
  %43 = ptrtoint ptr %orig_bdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %orig_bdev.i, align 4
  tail call void @bio_end_io_acct_remapped(ptr noundef nonnull %40, i32 noundef %42, ptr noundef %44) #14
  %45 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d, align 8
  %47 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %orig_bio.i, align 8
  tail call fastcc void @trace_bcache_request_end(ptr noundef %46, ptr noundef %48) #14
  %status.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 7
  %49 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %status.i, align 4
  %51 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %orig_bio.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %50, ptr %bi_status.i, align 2
  %54 = load ptr, ptr %orig_bio.i, align 8
  tail call void @bio_endio(ptr noundef %54) #14
  %55 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %orig_bio.i, align 8
  br label %bio_complete.exit

bio_complete.exit:                                ; preds = %if.then.i, %closure_get.exit.bio_complete.exit_crit_edge
  %56 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bio, align 4
  %tobool34.not = icmp eq ptr %57, null
  br i1 %tobool34.not, label %bio_complete.exit.do.body60_crit_edge, label %land.lhs.true35

bio_complete.exit.do.body60_crit_edge:            ; preds = %bio_complete.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body60

land.lhs.true35:                                  ; preds = %bio_complete.exit
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %c, align 8
  %flags = getelementptr inbounds %struct.cache_set, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags, align 4
  %62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool38.not = icmp eq i32 %62, 0
  br i1 %tobool38.not, label %do.body, label %land.lhs.true35.do.body60_crit_edge

land.lhs.true35.do.body60_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body60

do.body:                                          ; preds = %land.lhs.true35
  %63 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 9
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load41 = load i8, ptr %63, align 8
  %65 = and i8 %bf.load41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool45.not = icmp eq i8 %65, 0
  br i1 %tobool45.not, label %do.body50, label %do.end56, !prof !88

do.body50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/request.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 855, 0\0A.popsection", ""() #14, !srcloc !117
  unreachable

do.end56:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @closure_call(ptr noundef %iop, ptr noundef nonnull @bch_data_insert, ptr noundef %cl)
  br label %do.body60

do.body60:                                        ; preds = %do.end56, %land.lhs.true35.do.body60_crit_edge, %bio_complete.exit.do.body60_crit_edge
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #14
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %66 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @cached_dev_cache_miss_done, ptr %fn1.i, align 4
  %67 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_read(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_read_retry(ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_read_retry, i32 0, i32 1), ptr blockaddress(@trace_bcache_read_retry, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !118
  %call42 = tail call i32 @__traceiter_bcache_read_retry(ptr noundef null, ptr noundef %bio) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_read_retry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_read_retry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_read_retry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_read_retry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 185, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_read_error_done(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %0, align 8
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 8
  %d = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d, align 8
  tail call void @bch_mark_cache_miss_collision(ptr noundef %4, ptr noundef %6) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_free_pages(ptr noundef nonnull %8) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %d.i = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %9 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d.i, align 8
  %count.i.i = getelementptr i8, ptr %10, i32 3340
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #14, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !78

if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cached_dev_bio_complete.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #14
  br label %cached_dev_bio_complete.exit

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %detach.i.i = getelementptr i8, ptr %10, i32 3344
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %detach.i.i) #14
  br label %cached_dev_bio_complete.exit

cached_dev_bio_complete.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge
  tail call void @search_free(ptr noundef %cl) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_read_retry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_mark_cache_miss_collision(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bio_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_copy_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_data_verify(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cached_dev_cache_miss_done(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d1 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 4
  %0 = ptrtoint ptr %d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d1, align 8
  %2 = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %2, align 8
  %4 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %c = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 8
  tail call void @bch_mark_cache_miss_collision(ptr noundef %6, ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bio = getelementptr inbounds %struct.search, ptr %cl, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_free_pages(ptr noundef nonnull %8) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %d1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d1, align 8
  %count.i.i = getelementptr i8, ptr %10, i32 3340
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #14, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !78

if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cached_dev_bio_complete.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #14
  br label %cached_dev_bio_complete.exit

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %detach.i.i = getelementptr i8, ptr %10, i32 3344
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %detach.i.i) #14
  br label %cached_dev_bio_complete.exit

cached_dev_bio_complete.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cached_dev_bio_complete.exit_crit_edge
  tail call void @search_free(ptr noundef %cl) #14
  tail call void @closure_put(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_end_io_acct_remapped(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_request_end(ptr noundef %d, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_request_end, i32 0, i32 1), ptr blockaddress(@trace_bcache_request_end, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !120
  %call42 = tail call i32 @__traceiter_bcache_request_end(ptr noundef null, ptr noundef %d, ptr noundef %bio) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_request_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_request_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_request_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_bcache_request_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 88, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #14
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
declare dso_local i32 @__traceiter_bcache_request_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @detached_dev_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.detached_dev_io_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_end_io, align 4
  %bi_end_io1 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %4 = ptrtoint ptr %bi_end_io1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bi_end_io1, align 8
  %bi_private2 = getelementptr inbounds %struct.detached_dev_io_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %bi_private2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_private2, align 4
  store ptr %6, ptr %bi_private, align 4
  %start_time = getelementptr inbounds %struct.detached_dev_io_private, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_time, align 4
  %orig_bdev = getelementptr inbounds %struct.detached_dev_io_private, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %orig_bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orig_bdev, align 4
  tail call void @bio_end_io_acct_remapped(ptr noundef %bio, i32 noundef %8, ptr noundef %10) #14
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 -8
  tail call void @bch_count_backing_io_errors(ptr noundef %add.ptr, ptr noundef %bio) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  %15 = ptrtoint ptr %bi_end_io1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_end_io1, align 8
  tail call void %16(ptr noundef %bio) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_insert_check_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bio_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_map_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_lookup_fn(ptr noundef %op, ptr noundef %b, ptr noundef %k) #0 align 64 {
entry:
  %.compoundliteral83 = alloca %struct.bkey, align 8
  %.compoundliteral93 = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %op, i32 -236
  %bio2 = getelementptr i8, ptr %op, i32 -132
  %inode = getelementptr i8, ptr %op, i32 112
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inode, align 4
  %conv = zext i32 %1 to i64
  %bi_iter = getelementptr i8, ptr %op, i32 -108
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %4 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %k, align 8
  %and.i.i = and i64 %5, 1048575
  %and.i12.i = and i64 %conv, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i12.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !78

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i64 %and.i.i, %and.i12.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %6 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %low.i.i, align 8
  %sub7.i = sub i64 %7, %3
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i)
  %cmp = icmp slt i64 %cond.i, 1
  br i1 %cmp, label %bkey_cmp.exit.cleanup111_crit_edge, label %if.end

bkey_cmp.exit.cleanup111_crit_edge:               ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup111

if.end:                                           ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %conv)
  %cmp8.not = icmp eq i64 %and.i.i, %conv
  br i1 %cmp8.not, label %lor.lhs.false, label %if.end.cond.end35_crit_edge

if.end.cond.end35_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end35

lor.lhs.false:                                    ; preds = %if.end
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %8 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %low.i, align 8
  %shr.i = lshr i64 %5, 20
  %and.i164 = and i64 %shr.i, 65535
  %sub = sub i64 %9, %and.i164
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %3)
  %cmp14 = icmp ugt i64 %sub, %3
  br i1 %cmp14, label %cond.true, label %lor.lhs.false.if.end56_crit_edge

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

cond.true:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %low.i, align 8
  %12 = add i64 %and.i164, %3
  %sub29 = sub i64 %11, %12
  %13 = tail call i64 @llvm.umin.i64(i64 %sub29, i64 2147483647)
  %14 = trunc i64 %13 to i32
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true, %if.end.cond.end35_crit_edge
  %cond36.off0 = phi i32 [ %14, %cond.true ], [ 2147483647, %if.end.cond.end35_crit_edge ]
  %shr191.in.in = getelementptr i8, ptr %op, i32 -100
  %15 = ptrtoint ptr %shr191.in.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %shr191.in = load i32, ptr %shr191.in.in, align 8
  %d = getelementptr i8, ptr %op, i32 -20
  %16 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d, align 8
  %cache_miss = getelementptr inbounds %struct.bcache_device, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %cache_miss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cache_miss, align 4
  %call38 = tail call i32 %19(ptr noundef %b, ptr noundef %add.ptr, ptr noundef %bio2, i32 noundef %cond36.off0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 1
  br i1 %cmp39.not, label %do.body, label %cond.end35.cleanup111_crit_edge

cond.end35.cleanup111_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup111

do.body:                                          ; preds = %cond.end35
  %shr191 = lshr i32 %shr191.in, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr191, i32 %cond36.off0)
  %cmp43.not = icmp ugt i32 %shr191, %cond36.off0
  br i1 %cmp43.not, label %do.body.if.end56_crit_edge, label %do.body47, !prof !78

do.body.if.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.body47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/request.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #14, !srcloc !122
  unreachable

if.end56:                                         ; preds = %do.body.if.end56_crit_edge, %lor.lhs.false.if.end56_crit_edge
  %20 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %k, align 8
  %22 = and i64 %21, 68718428160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool58.not = icmp eq i64 %22, 0
  br i1 %tobool58.not, label %if.end56.cleanup111_crit_edge, label %if.end60

if.end56.cleanup111_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup111

if.end60:                                         ; preds = %if.end56
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %23 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %c, align 4
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cache.i, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buckets.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 0
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %30, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %24, i32 0, i32 24
  %31 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %32 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %prio = getelementptr %struct.bucket, ptr %28, i32 %conv1.i.i.i, i32 1
  %33 = ptrtoint ptr %prio to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -32768, ptr %prio, align 4
  %34 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %k, align 8
  %36 = and i64 %35, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool63.not = icmp eq i64 %36, 0
  br i1 %tobool63.not, label %if.end60.if.end65_crit_edge, label %if.then64

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %read_dirty_data = getelementptr i8, ptr %op, i32 -12
  %37 = ptrtoint ptr %read_dirty_data to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %read_dirty_data, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %read_dirty_data, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60.if.end65_crit_edge
  %low.i173 = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %38 = ptrtoint ptr %low.i173 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %low.i173, align 8
  %40 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bi_iter, align 8
  %sub69 = sub i64 %39, %41
  %42 = tail call i64 @llvm.umin.i64(i64 %sub69, i64 2147483647)
  %43 = trunc i64 %42 to i32
  %bi_size.i = getelementptr i8, ptr %op, i32 -100
  %44 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_size.i, align 8
  %shr.i174 = lshr i32 %45, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i174, i32 %43)
  %cmp.not.i175 = icmp ugt i32 %shr.i174, %43
  br i1 %cmp.not.i175, label %if.end.i, label %if.end65.bio_next_split.exit_crit_edge

if.end65.bio_next_split.exit_crit_edge:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_next_split.exit

if.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %d78 = getelementptr i8, ptr %op, i32 -20
  %46 = ptrtoint ptr %d78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d78, align 8
  %bio_split = getelementptr inbounds %struct.bcache_device, ptr %47, i32 0, i32 11
  %call.i = tail call ptr @bio_split(ptr noundef %bio2, i32 noundef %43, i32 noundef 3072, ptr noundef %bio_split) #14
  br label %bio_next_split.exit

bio_next_split.exit:                              ; preds = %if.end.i, %if.end65.bio_next_split.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ %bio2, %if.end65.bio_next_split.exit_crit_edge ]
  %48 = getelementptr i8, ptr %retval.0.i, i32 -24
  tail call void @bch_bkey_copy_single_ptr(ptr noundef %48, ptr noundef %k, i32 noundef 0) #14
  %49 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %inode, align 4
  %conv87 = zext i32 %50 to i64
  %or88 = or i64 %conv87, -9223372036854775808
  %51 = ptrtoint ptr %.compoundliteral83 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %or88, ptr %.compoundliteral83, align 8
  %low89 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral83, i32 0, i32 1
  %bi_iter90 = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 8
  %52 = ptrtoint ptr %bi_iter90 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bi_iter90, align 8
  %54 = ptrtoint ptr %low89 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %low89, align 8
  %and.i.i.i176 = and i64 %conv87, 1048575
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %48, align 8
  %and.i12.i.i = and i64 %56, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i176, i64 %and.i12.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i176, %and.i12.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !78

cond.true.i.i:                                    ; preds = %bio_next_split.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub nsw i64 %and.i.i.i176, %and.i12.i.i
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %bio_next_split.exit
  call void @__sanitizer_cov_trace_pc() #16
  %low.i15.i.i = getelementptr i8, ptr %retval.0.i, i32 -16
  %57 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %low.i15.i.i, align 8
  %sub7.i.i = sub i64 %53, %58
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp sgt i64 %cond.i.i, 0
  br i1 %cmp.i, label %do.body2.i, label %bch_cut_front.exit, !prof !88

do.body2.i:                                       ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #14, !srcloc !123
  unreachable

bch_cut_front.exit:                               ; preds = %bkey_cmp.exit.i
  %call6.i = call zeroext i1 @__bch_cut_front(ptr noundef nonnull %.compoundliteral83, ptr noundef %48) #14
  %59 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inode, align 4
  %conv97 = zext i32 %60 to i64
  %or98 = or i64 %conv97, -9223372036854775808
  %61 = ptrtoint ptr %.compoundliteral93 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %or98, ptr %.compoundliteral93, align 8
  %low99 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral93, i32 0, i32 1
  %62 = ptrtoint ptr %bi_iter90 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %bi_iter90, align 8
  %bi_size103 = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %bi_size103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bi_size103, align 8
  %shr104 = lshr i32 %65, 9
  %conv105 = zext i32 %shr104 to i64
  %add = add i64 %63, %conv105
  %66 = ptrtoint ptr %low99 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add, ptr %low99, align 8
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %48, align 8
  %and.i.i177 = and i64 %68, 1048575
  %and.i.i.i178 = and i64 %conv97, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i178, i64 %and.i.i177)
  %cmp.not.i.i179 = icmp eq i64 %and.i.i.i178, %and.i.i177
  br i1 %cmp.not.i.i179, label %cond.false.i.i185, label %cond.true.i.i181, !prof !78

cond.true.i.i181:                                 ; preds = %bch_cut_front.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i180 = sub nsw i64 %and.i.i.i178, %and.i.i177
  br label %bkey_cmp.exit.i188

cond.false.i.i185:                                ; preds = %bch_cut_front.exit
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i182 = getelementptr i8, ptr %retval.0.i, i32 -16
  %69 = ptrtoint ptr %low.i.i182 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %low.i.i182, align 8
  %shr.i.i = lshr i64 %68, 20
  %and.i1.i = and i64 %shr.i.i, 65535
  %sub.neg.i = add i64 %and.i1.i, %add
  %sub7.i.i184 = sub i64 %sub.neg.i, %70
  br label %bkey_cmp.exit.i188

bkey_cmp.exit.i188:                               ; preds = %cond.false.i.i185, %cond.true.i.i181
  %cond.i.i186 = phi i64 [ %sub.i.i180, %cond.true.i.i181 ], [ %sub7.i.i184, %cond.false.i.i185 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i186)
  %cmp.i187 = icmp slt i64 %cond.i.i186, 0
  br i1 %cmp.i187, label %do.body5.i, label %bch_cut_back.exit, !prof !88

do.body5.i:                                       ; preds = %bkey_cmp.exit.i188
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #14, !srcloc !124
  unreachable

bch_cut_back.exit:                                ; preds = %bkey_cmp.exit.i188
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i = call zeroext i1 @__bch_cut_back(ptr noundef nonnull %.compoundliteral93, ptr noundef %48) #14
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 10
  %71 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @bch_cache_read_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 11
  %72 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr, ptr %bi_private, align 4
  %73 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %c, align 4
  call void @__bch_submit_bbio(ptr noundef %retval.0.i, ptr noundef %74) #14
  %cmp108 = icmp ne ptr %retval.0.i, %bio2
  %cond110 = zext i1 %cmp108 to i32
  br label %cleanup111

cleanup111:                                       ; preds = %bch_cut_back.exit, %if.end56.cleanup111_crit_edge, %cond.end35.cleanup111_crit_edge, %bkey_cmp.exit.cleanup111_crit_edge
  %retval.1 = phi i32 [ %cond110, %bch_cut_back.exit ], [ 1, %bkey_cmp.exit.cleanup111_crit_edge ], [ 1, %if.end56.cleanup111_crit_edge ], [ %call38, %cond.end35.cleanup111_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bkey_copy_single_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_cache_read_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %tobool.not, label %if.else, label %entry.if.end14.sink.split_crit_edge

entry.if.end14.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.sink.split

if.else:                                          ; preds = %entry
  %4 = getelementptr i8, ptr %bio, i32 -24
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %if.else
  %c = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c, align 8
  %cache.i.i = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache.i.i, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr i8, ptr %bio, i32 -8
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %15, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 24
  %16 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %17 to i64
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gen.i = getelementptr %struct.bucket, ptr %13, i32 %conv1.i.i.i.i, i32 2
  %18 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gen.i, align 2
  %conv.i = trunc i64 %15 to i8
  %sub.i.i = sub i8 %19, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i)
  %cmp.i.i = icmp ugt i8 %sub.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %conv.i)
  %tobool8.not28 = icmp eq i8 %19, %conv.i
  %tobool8.not = or i1 %tobool8.not28, %cmp.i.i
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %cache_read_races = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 74
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_read_races, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %cache_read_races, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_read_races, ptr %cache_read_races, i32 1, ptr elementtype(i32) %cache_read_races) #14, !srcloc !76
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then9, %entry.if.end14.sink.split_crit_edge
  %.sink = phi i8 [ 10, %if.then9 ], [ %3, %entry.if.end14.sink.split_crit_edge ]
  %status13 = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 10, i32 7
  %21 = ptrtoint ptr %status13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %status13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %land.lhs.true.if.end14_crit_edge, %if.else.if.end14_crit_edge
  %c16 = getelementptr inbounds %struct.search, ptr %1, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %c16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c16, align 8
  %24 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bi_status, align 2
  tail call void @bch_bbio_endio(ptr noundef %23, ptr noundef %bio, i8 noundef zeroext %25, ptr noundef nonnull @.str.20) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bch_submit_bbio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bch_cut_front(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bch_cut_back(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !16, !17, !18, !19, !21, !23, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/request.c", i32 1336, i32 21}
!2 = !{ptr @bch_search_cache, !3, !"bch_search_cache", i1 false, i1 false}
!3 = !{!"../drivers/md/bcache/request.c", i32 26, i32 20}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/trace/events/bcache.h", i32 151, i32 1}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/bcache/request.c", i32 113, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bch_data_invalidate.__UNIQUE_ID_ddebug358, !13, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!18 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/bcache/request.c", i32 184, i32 45}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/bcache.h", i32 187, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/trace/events/bcache.h", i32 80, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/bcache/request.c", i32 654, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @backing_request_endio._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @backing_request_endio._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @closure_queue.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/md/bcache/closure.h", i32 247, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/bcache/request.c", i32 399, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @check_should_bypass.__UNIQUE_ID_ddebug361, !38, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!41 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/bcache.h", i32 113, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/trace/events/bcache.h", i32 118, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/bcache/writeback.h", i32 66, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @offset_to_stripe._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @offset_to_stripe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/trace/events/bcache.h", i32 123, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/bcache.h", i32 182, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/trace/events/bcache.h", i32 85, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/bcache/request.c", i32 506, i32 48}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2154175954}
!76 = !{i64 2148610250, i64 2148610276, i64 2148610305, i64 2148610339, i64 2148610370, i64 2148610393}
!77 = !{i64 2148434848, i64 2148434853, i64 2148434866, i64 2148434910, i64 2148434944, i64 2148434965}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2155100350}
!80 = !{i64 2155100601}
!81 = !{i64 2149598339}
!82 = !{i64 2149599375}
!83 = !{i64 2148698726}
!84 = !{i64 2148613435, i64 2148613467, i64 2148613496, i64 2148613530, i64 2148613561, i64 2148613584}
!85 = !{i64 2148698955}
!86 = !{i64 2154406407}
!87 = !{i64 2155637400, i64 2155637892, i64 2155637437, i64 2155637493, i64 2155637527, i64 2155637551, i64 2155637592, i64 2155637613, i64 2155637641, i64 2155637675}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 1095763, i64 1095787, i64 1095808, i64 1095825, i64 1095842}
!90 = !{i64 2154446935}
!91 = !{i64 2154413642, i64 2154414134, i64 2154413679, i64 2154413735, i64 2154413769, i64 2154413793, i64 2154413834, i64 2154413855, i64 2154413883, i64 2154413917}
!92 = !{i64 2148460035, i64 2148460315, i64 2148460649, i64 2148460983}
!93 = !{i64 2148695685}
!94 = !{i64 2148610970, i64 2148611002, i64 2148611031, i64 2148611065, i64 2148611096, i64 2148611119}
!95 = !{i64 2148695914}
!96 = !{i64 2154415552, i64 2154416044, i64 2154415589, i64 2154415645, i64 2154415679, i64 2154415703, i64 2154415744, i64 2154415765, i64 2154415793, i64 2154415827}
!97 = !{i64 2148870150}
!98 = !{i64 1117018, i64 1117035, i64 1117059, i64 1117085, i64 1117103}
!99 = !{i64 2148870520}
!100 = !{i64 2154176275}
!101 = !{i64 2155012779}
!102 = !{i64 2155012994}
!103 = !{i64 2155669903, i64 2155670395, i64 2155669940, i64 2155669996, i64 2155670030, i64 2155670054, i64 2155670095, i64 2155670116, i64 2155670144, i64 2155670178}
!104 = !{i64 2148612715, i64 2148612741, i64 2148612770, i64 2148612804, i64 2148612835, i64 2148612858}
!105 = !{i64 2155625256, i64 2155625747, i64 2155625293, i64 2155625349, i64 2155625383, i64 2155625407, i64 2155625448, i64 2155625469, i64 2155625497, i64 2155625531}
!106 = !{i64 2155136763}
!107 = !{i64 2155136966}
!108 = !{i64 2148699805}
!109 = !{i64 2148614245, i64 2148614277, i64 2148614306, i64 2148614340, i64 2148614371, i64 2148614394}
!110 = !{i64 2150487978}
!111 = !{i64 2155046039}
!112 = !{i64 2155046256}
!113 = !{i64 2155066816}
!114 = !{i64 2155067031}
!115 = !{i64 2155083461}
!116 = !{i64 2155083678}
!117 = !{i64 2155687724, i64 2155688216, i64 2155687761, i64 2155687817, i64 2155687851, i64 2155687875, i64 2155687916, i64 2155687937, i64 2155687965, i64 2155687999}
!118 = !{i64 2155120609}
!119 = !{i64 2155120812}
!120 = !{i64 2155029537}
!121 = !{i64 2155029748}
!122 = !{i64 2155662882, i64 2155663374, i64 2155662919, i64 2155662975, i64 2155663009, i64 2155663033, i64 2155663074, i64 2155663095, i64 2155663123, i64 2155663157}
!123 = !{i64 2154424031, i64 2154424520, i64 2154424068, i64 2154424124, i64 2154424158, i64 2154424182, i64 2154424223, i64 2154424244, i64 2154424272, i64 2154424306}
!124 = !{i64 2154426364, i64 2154426853, i64 2154426401, i64 2154426457, i64 2154426491, i64 2154426515, i64 2154426556, i64 2154426577, i64 2154426605, i64 2154426639}
