; ModuleID = '/llk/IR_all_yes/fs/btrfs/scrub.c_pt.bc'
source_filename = "../fs/btrfs/scrub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_dev_lookup_args = type { i64, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.87, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.87 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rcu_string = type { %struct.callback_head, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.scrub_ctx = type { [64 x ptr], ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.atomic_t, i32, i32, i64, i64, i32, i64, ptr, %struct.mutex, ptr, i8, %struct.btrfs_scrub_progress, %struct.spinlock, %struct.refcount_struct }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scrub_bio = type { i32, ptr, ptr, ptr, i8, i64, i64, [32 x ptr], i32, i32, %struct.btrfs_work }
%struct.btrfs_zoned_device_info = type { i64, i8, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, [6 x %struct.blk_zone] }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.scrub_page = type { ptr, ptr, ptr, %struct.list_head, i64, i64, i64, i64, i64, %struct.atomic_t, i8, i8, [32 x i8], ptr }
%struct.scrub_block = type { [16 x ptr], i32, %struct.atomic_t, %struct.refcount_struct, ptr, ptr, %struct.anon.80, %struct.btrfs_work }
%struct.anon.80 = type { i8, [3 x i8] }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.scrub_parity = type { ptr, ptr, i64, i64, i32, i32, %struct.refcount_struct, %struct.list_head, %struct.btrfs_work, ptr, ptr, [0 x i32] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.30, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.30 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.full_stripe_lock = type { %struct.rb_node, i64, i64, %struct.mutex }
%struct.scrub_recover = type { %struct.refcount_struct, ptr, i64 }
%struct.btrfs_io_context = type { %struct.refcount_struct, %struct.atomic_t, ptr, i64, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, ptr, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.scrub_warning = type { ptr, i64, ptr, i64, i64, ptr }
%struct.inode_fs_paths = type { ptr, ptr, ptr }
%struct.btrfs_data_container = type { i32, i32, i32, i32, [0 x i64] }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }

@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013scrub: size assumption nodesize <= BTRFS_STRIPE_LEN (%d <= %d) fails\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013scrub: size assumption nodesize and sectorsize <= SCRUB_MAX_PAGES_PER_BLOCK (%d <= %d && %d <= %d) fails\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013scrub on devid %llu: filesystem on %s is not writable\00", [40 x i8] zeroinitializer }, align 32
@btrfs_scrub_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/scrub.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016scrub: started on devid %llu\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016scrub: %s on devid %llu with status: %d\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not finished\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"finished\00", [23 x i8] zeroinitializer }, align 32
@scrub_setup_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sctx->list_lock\00", [47 x i8] zeroinitializer }, align 32
@scrub_setup_ctx.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sctx->stat_lock\00", [47 x i8] zeroinitializer }, align 32
@scrub_setup_ctx.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sctx->list_wait\00", [47 x i8] zeroinitializer }, align 32
@scrub_setup_ctx.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sctx->wr_lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sbio->page_count <= SCRUB_PAGES_PER_BIO\00", [56 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"end - start <= U32_MAX\00", [41 x i8] zeroinitializer }, align 32
@scrub_handle_errored_block.rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rs.lock\00", [24 x i8] zeroinitializer }, align 32
@__func__.scrub_handle_errored_block = private unnamed_addr constant [27 x i8] c"scrub_handle_errored_block\00", align 1
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i/o error\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"checksum error\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"checksum/header error\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!sctx->is_dev_replace\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed_mirror_index == 0\00", [39 x i8] zeroinitializer }, align 32
@scrub_handle_errored_block._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fixed up error at logical %llu on dev %s\00", [53 x i8] zeroinitializer }, align 32
@scrub_handle_errored_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scrub_handle_errored_block._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013unable to fixup (regular) error at logical %llu on dev %s\00", [36 x i8] zeroinitializer }, align 32
@scrub_handle_errored_block.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@get_full_stripe_logical.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@insert_full_stripe_lock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ret->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"page_index < SCRUB_MAX_PAGES_PER_BLOCK\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"first_page->dev\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sblock->page_count == num_sectors\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014%s at logical %llu on dev %s, physical %llu: metadata %s (level %d) in tree %llu\00", [45 x i8] zeroinitializer }, align 32
@scrub_print_warning.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leaf\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\014%s at logical %llu on dev %s, physical %llu, root %llu, inode %llu, offset %llu, length %u, links %u (path: %s)\00", [46 x i8] zeroinitializer }, align 32
@scrub_print_warning_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\014%s at logical %llu on dev %s, physical %llu, root %llu, inode %llu, offset %llu: path resolving failed with ret=%d\00", [43 x i8] zeroinitializer }, align 32
@scrub_print_warning_inode.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scrub_repair_page_from_good_copy._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.scrub_repair_page_from_good_copy = private unnamed_addr constant [33 x i8] c"scrub_repair_page_from_good_copy\00", align 1
@.str.45 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014scrub_repair_page_from_good_copy(bdev == NULL) is unexpected\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014full stripe lock at %llu refcount underflow\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scrub\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scrubwrc\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scrubparity\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"fs_info->scrub_workers == NULL && fs_info->scrub_wr_completion_workers == NULL && fs_info->scrub_parity_workers == NULL\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"index < SCRUB_MAX_PAGES_PER_BLOCK\00", [62 x i8] zeroinitializer }, align 32
@scrub_missing_raid56_worker._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.scrub_missing_raid56_worker = private unnamed_addr constant [28 x i8] c"scrub_missing_raid56_worker\00", align 1
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013IO error rebuilding logical %llu for dev %s\00", [50 x i8] zeroinitializer }, align 32
@scrub_missing_raid56_worker.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scrub_missing_raid56_worker._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013failed to rebuild valid logical %llu for dev %s\00", [46 x i8] zeroinitializer }, align 32
@scrub_missing_raid56_worker.__warned.58 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014skipping scrub of block group %llu due to active swapfile\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014failed setting block group ro: %d\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cache->start == chunk_offset\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013scrub: tree block %llu spanning stripes, ignored. logical=%llu\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bytes <= U32_MAX\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"map->stripe_len <= U32_MAX\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"logic_end - logic_start <= U32_MAX\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IS_ALIGNED(len, sectorsize)\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013zoned: failed to recover write pointer\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967268, i64 4294967270]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4053, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4067, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4097, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4148, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4172, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 603, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 604, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 605, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 609, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2365, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 3491, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2463, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 824, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 962, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 969, i32 24 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 977, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 988, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1030, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1168, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1177, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 424, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 342, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1309, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1414, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 87, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1858, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 761, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 689, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 703, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1552, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 496, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3993, i32 49 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3998, i32 49 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4003, i32 48 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 4010, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 695, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 723, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2293, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2168, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2175, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3792, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3799, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3825, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3407, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3418, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2925, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3114, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2597, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [20 x i8] c"../fs/btrfs/scrub.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 3159, i32 4 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @scrub_setup_ctx.__key, ptr @.str.9, ptr @scrub_setup_ctx.__key.10, ptr @.str.11, ptr @scrub_setup_ctx.__key.12, ptr @.str.13, ptr @scrub_setup_ctx.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @scrub_handle_errored_block.rs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @scrub_handle_errored_block._rs, ptr @.str.27, ptr @.str.28, ptr @scrub_handle_errored_block._rs.29, ptr @.str.30, ptr @.str.32, ptr @insert_full_stripe_lock.__key, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @scrub_repair_page_from_good_copy._rs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @scrub_missing_raid56_worker._rs, ptr @.str.55, ptr @scrub_missing_raid56_worker._rs.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_setup_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_setup_ctx.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_setup_ctx.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_setup_ctx.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_handle_errored_block.rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_handle_errored_block._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_handle_errored_block._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_full_stripe_lock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_repair_page_from_good_copy._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_missing_raid56_worker._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrub_missing_raid56_worker._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_scrub_dev(ptr noundef %fs_info, i64 noundef %devid, i64 noundef %start, i64 noundef %end, ptr noundef writeonly %progress, i32 noundef %readonly, i32 noundef %is_dev_replace) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.btrfs_dev_lookup_args, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry139 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #14
  %0 = getelementptr inbounds i8, ptr %args, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %devid, ptr %args, align 8
  %uuid = getelementptr inbounds %struct.btrfs_dev_lookup_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %uuid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %uuid, align 8
  %fsid = getelementptr inbounds %struct.btrfs_dev_lookup_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %fsid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fsid, align 4
  %missing = getelementptr inbounds %struct.btrfs_dev_lookup_args, ptr %args, i32 0, i32 3
  %5 = ptrtoint ptr %missing to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %missing, align 8
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i268 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i268, label %if.end, label %btrfs_fs_closing.exit

btrfs_fs_closing.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  br label %cleanup169

if.end:                                           ; preds = %entry
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %10 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %11)
  %cmp = icmp ugt i32 %11, 65536
  br i1 %cmp, label %if.then2, label %lor.lhs.false

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef 65536) #17
  br label %cleanup169

lor.lhs.false:                                    ; preds = %if.end
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %12 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %cmp7 = icmp ugt i32 %13, 65536
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef 16, i32 noundef %13, i32 noundef 16) #17
  br label %cleanup169

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = tail call fastcc ptr @scrub_setup_ctx(ptr noundef %fs_info, i32 noundef %is_dev_replace)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %call12 to i32
  br label %cleanup169

if.end16:                                         ; preds = %if.end11
  %call17 = tail call fastcc i32 @scrub_workers_get(ptr noundef %fs_info, i32 noundef %is_dev_replace)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_free_ctx_crit_edge

if.end16.out_free_ctx_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_ctx

if.end20:                                         ; preds = %if.end16
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %15 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex = getelementptr inbounds %struct.btrfs_fs_devices, ptr %16, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %device_list_mutex, i32 noundef 0) #14
  %17 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_devices, align 8
  %call22 = call ptr @btrfs_find_device(ptr noundef %18, ptr noundef nonnull %args) #14
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.if.then28_crit_edge, label %lor.lhs.false24

if.end20.if.then28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

lor.lhs.false24:                                  ; preds = %if.end20
  %dev_state = getelementptr inbounds %struct.btrfs_device, ptr %call22, i32 0, i32 10
  %19 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dev_state, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dev_replace)
  %tobool27.not = icmp eq i32 %is_dev_replace, 0
  %or.cond = and i1 %tobool27.not, %tobool26.not
  br i1 %or.cond, label %lor.lhs.false24.if.then28_crit_edge, label %if.end31

lor.lhs.false24.if.then28_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false24.if.then28_crit_edge, %if.end20.if.then28_crit_edge
  %22 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex30 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %23, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex30) #14
  br label %out

if.end31:                                         ; preds = %lor.lhs.false24
  %24 = or i32 %is_dev_replace, %readonly
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %land.lhs.true35, label %if.end31.if.end59_crit_edge

if.end31.if.end59_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true35:                                  ; preds = %if.end31
  %26 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dev_state, align 4
  %and1.i258 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i258)
  %tobool38.not = icmp eq i32 %and1.i258, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true35.if.end59_crit_edge

land.lhs.true35.if.end59_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then39:                                        ; preds = %land.lhs.true35
  %28 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex41 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %29, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex41) #14
  %30 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then39.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then39.rcu_read_lock.exit_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then39
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then39.rcu_read_lock.exit_crit_edge
  %name = getelementptr inbounds %struct.btrfs_device, ptr %call22, i32 0, i32 5
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %name, align 8
  %call44 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %rcu_read_lock.exit.do.end54_crit_edge

rcu_read_lock.exit.do.end54_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

land.lhs.true46:                                  ; preds = %rcu_read_lock.exit
  %call47 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b255 = load i1, ptr @btrfs_scrub_dev.__warned, align 1
  br i1 %.b255, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_scrub_dev.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 4099, ptr noundef nonnull @.str.4) #14
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %rcu_read_lock.exit.do.end54_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %35, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.2, i64 noundef %devid, ptr noundef %str) #17
  call fastcc void @rcu_read_unlock()
  br label %out

if.end59:                                         ; preds = %land.lhs.true35.if.end59_crit_edge, %if.end31.if.end59_crit_edge
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %36 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dev_state, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool62.not = icmp eq i32 %38, 0
  br i1 %tobool62.not, label %if.end59.if.then67_crit_edge, label %lor.lhs.false63

if.end59.if.then67_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

lor.lhs.false63:                                  ; preds = %if.end59
  %39 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dev_state, align 4
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool66.not = icmp eq i32 %41, 0
  br i1 %tobool66.not, label %if.end71, label %lor.lhs.false63.if.then67_crit_edge

lor.lhs.false63.if.then67_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false63.if.then67_crit_edge, %if.end59.if.then67_crit_edge
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  %42 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex70 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %43, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex70) #14
  br label %out

if.end71:                                         ; preds = %lor.lhs.false63
  %dev_replace = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  call void @down_read(ptr noundef %rwsem) #14
  %scrub_ctx = getelementptr inbounds %struct.btrfs_device, ptr %call22, i32 0, i32 26
  %44 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scrub_ctx, align 4
  %tobool72.not = icmp eq ptr %45, null
  br i1 %tobool72.not, label %lor.lhs.false73, label %if.end71.if.then79_crit_edge

if.end71.if.then79_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

lor.lhs.false73:                                  ; preds = %if.end71
  br i1 %tobool27.not, label %land.lhs.true75, label %lor.lhs.false73.if.end85_crit_edge

lor.lhs.false73.if.end85_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

land.lhs.true75:                                  ; preds = %lor.lhs.false73
  %call77 = call i32 @btrfs_dev_replace_is_ongoing(ptr noundef %dev_replace) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true75.if.end85_crit_edge, label %land.lhs.true75.if.then79_crit_edge

land.lhs.true75.if.then79_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

land.lhs.true75.if.end85_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then79:                                        ; preds = %land.lhs.true75.if.then79_crit_edge, %if.end71.if.then79_crit_edge
  call void @up_read(ptr noundef %rwsem) #14
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  %46 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex84 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %47, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex84) #14
  br label %out

if.end85:                                         ; preds = %land.lhs.true75.if.end85_crit_edge, %lor.lhs.false73.if.end85_crit_edge
  call void @up_read(ptr noundef %rwsem) #14
  %readonly88 = getelementptr inbounds %struct.scrub_ctx, ptr %call12, i32 0, i32 10
  %48 = ptrtoint ptr %readonly88 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %readonly, ptr %readonly88, align 8
  %49 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call12, ptr %scrub_ctx, align 4
  %50 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex91 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %51, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex91) #14
  call fastcc void @__scrub_blocked_if_needed(ptr noundef %fs_info)
  %scrubs_running = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 124
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_running, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_running, i32 1, i32 3, i32 1) #14
  %52 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_running, ptr %scrubs_running, i32 1, ptr elementtype(i32) %scrubs_running) #14, !srcloc !151
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  %53 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %58, 262144
  %or.i = or i32 %58, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  br i1 %tobool27.not, label %if.end101, label %if.end85.if.then103_crit_edge

if.end85.if.then103_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103

if.end101:                                        ; preds = %if.end85
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.5, i64 noundef %devid) #17
  %59 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex97 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %60, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %device_list_mutex97, i32 noundef 0) #14
  %call98 = call fastcc i32 @scrub_supers(ptr noundef %call12, ptr noundef nonnull %call22)
  %61 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex100 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %62, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool102.not = icmp eq i32 %call98, 0
  br i1 %tobool102.not, label %if.end101.if.then103_crit_edge, label %if.end101.if.end105_crit_edge

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.end101.if.then103_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103

if.then103:                                       ; preds = %if.end101.if.then103_crit_edge, %if.end85.if.then103_crit_edge
  %call104 = call fastcc i32 @scrub_enumerate_chunks(ptr noundef %call12, ptr noundef nonnull %call22, i64 noundef %start, i64 noundef %end)
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end101.if.end105_crit_edge
  %ret.1 = phi i32 [ %call98, %if.end101.if.end105_crit_edge ], [ %call104, %if.then103 ]
  %63 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i270 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i270 to ptr
  %task.i271 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i271 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i271, align 8
  %flags1.i272 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %flags1.i272 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags1.i272, align 4
  %and.i273 = and i32 %68, -262145
  %or.i274 = or i32 %and.i273, %and.i
  store i32 %or.i274, ptr %flags1.i272, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 4162) #14
  %bios_in_flight = getelementptr inbounds %struct.scrub_ctx, ptr %call12, i32 0, i32 4
  %call.i.i263 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %69 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp114 = icmp eq i32 %70, 0
  br i1 %cmp114, label %if.end105.do.end126_crit_edge, label %if.end116

if.end105.do.end126_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end126

if.end116:                                        ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %71 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %call12, i32 0, i32 7
  %call117285 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i264286 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %72 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp120287 = icmp eq i32 %73, 0
  br i1 %cmp120287, label %if.end116.for.end_crit_edge, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  br label %cleanup

if.end116.for.end_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end116.cleanup_crit_edge
  call void @schedule() #14
  %call117 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i264 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %74 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp120 = icmp eq i32 %75, 0
  br i1 %cmp120, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end116.for.end_crit_edge
  call void @finish_wait(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end126

do.end126:                                        ; preds = %for.end, %if.end105.do.end126_crit_edge
  %call.i.i265 = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_running, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_running, i32 1, i32 3, i32 1) #14
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_running, ptr %scrubs_running, i32 1, ptr elementtype(i32) %scrubs_running) #14, !srcloc !152
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 128
  call void @__wake_up(ptr noundef %scrub_pause_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 4166) #14
  %workers_pending = getelementptr inbounds %struct.scrub_ctx, ptr %call12, i32 0, i32 5
  %call.i.i266 = call zeroext i1 @__kasan_check_read(ptr noundef %workers_pending, i32 noundef 4) #14
  %77 = ptrtoint ptr %workers_pending to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %workers_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp136 = icmp eq i32 %78, 0
  br i1 %cmp136, label %do.end126.do.end158_crit_edge, label %if.end138

do.end126.do.end158_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end158

if.end138:                                        ; preds = %do.end126
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry139) #14
  %79 = call ptr @memset(ptr %__wq_entry139, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry139, i32 noundef 0) #14
  %list_wait143 = getelementptr inbounds %struct.scrub_ctx, ptr %call12, i32 0, i32 7
  %call144288 = call i32 @prepare_to_wait_event(ptr noundef %list_wait143, ptr noundef nonnull %__wq_entry139, i32 noundef 2) #14
  %call.i.i267289 = call zeroext i1 @__kasan_check_read(ptr noundef %workers_pending, i32 noundef 4) #14
  %80 = ptrtoint ptr %workers_pending to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %workers_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp147290 = icmp eq i32 %81, 0
  br i1 %cmp147290, label %if.end138.for.end153_crit_edge, label %if.end138.cleanup150_crit_edge

if.end138.cleanup150_crit_edge:                   ; preds = %if.end138
  br label %cleanup150

if.end138.for.end153_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end153

cleanup150:                                       ; preds = %cleanup150.cleanup150_crit_edge, %if.end138.cleanup150_crit_edge
  call void @schedule() #14
  %call144 = call i32 @prepare_to_wait_event(ptr noundef %list_wait143, ptr noundef nonnull %__wq_entry139, i32 noundef 2) #14
  %call.i.i267 = call zeroext i1 @__kasan_check_read(ptr noundef %workers_pending, i32 noundef 4) #14
  %82 = ptrtoint ptr %workers_pending to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %workers_pending, align 4
  %cmp147 = icmp eq i32 %83, 0
  br i1 %cmp147, label %cleanup150.for.end153_crit_edge, label %cleanup150.cleanup150_crit_edge

cleanup150.cleanup150_crit_edge:                  ; preds = %cleanup150
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup150

cleanup150.for.end153_crit_edge:                  ; preds = %cleanup150
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end153

for.end153:                                       ; preds = %cleanup150.for.end153_crit_edge, %if.end138.for.end153_crit_edge
  call void @finish_wait(ptr noundef %list_wait143, ptr noundef nonnull %__wq_entry139) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry139) #14
  br label %do.end158

do.end158:                                        ; preds = %for.end153, %do.end126.do.end158_crit_edge
  %tobool159.not = icmp eq ptr %progress, null
  br i1 %tobool159.not, label %do.end158.if.end161_crit_edge, label %if.then160

do.end158.if.end161_crit_edge:                    ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end161

if.then160:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #16
  %stat = getelementptr inbounds %struct.scrub_ctx, ptr %call12, i32 0, i32 20
  %84 = call ptr @memcpy(ptr %progress, ptr %stat, i32 120)
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %do.end158.if.end161_crit_edge
  br i1 %tobool27.not, label %if.then163, label %if.end161.if.end165_crit_edge

if.end161.if.end165_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then163:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool164.not = icmp eq i32 %ret.1, 0
  %cond = select i1 %tobool164.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i64 noundef %devid, i32 noundef %ret.1) #17
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end161.if.end165_crit_edge
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %85 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %scrub_ctx, align 4
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  call fastcc void @scrub_workers_put(ptr noundef %fs_info)
  call fastcc void @scrub_put_ctx(ptr noundef %call12)
  br label %cleanup169

out:                                              ; preds = %if.then79, %if.then67, %do.end54, %if.then28
  %ret.2 = phi i32 [ -5, %if.then67 ], [ -115, %if.then79 ], [ -30, %do.end54 ], [ -19, %if.then28 ]
  %scrub_workers_refcnt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 129
  %scrub_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  %call.i275 = call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %scrub_workers_refcnt.i, ptr noundef %scrub_lock.i) #14
  br i1 %call.i275, label %if.then.i276, label %out.out_free_ctx_crit_edge

out.out_free_ctx_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_ctx

if.then.i276:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %scrub_workers1.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 130
  %86 = ptrtoint ptr %scrub_workers1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %scrub_workers1.i, align 4
  %scrub_wr_completion_workers.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 131
  %88 = ptrtoint ptr %scrub_wr_completion_workers.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scrub_wr_completion_workers.i, align 8
  %scrub_parity_workers.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 132
  %90 = ptrtoint ptr %scrub_parity_workers.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %scrub_parity_workers.i, align 4
  store ptr null, ptr %scrub_workers1.i, align 4
  store ptr null, ptr %scrub_wr_completion_workers.i, align 8
  store ptr null, ptr %scrub_parity_workers.i, align 4
  call void @mutex_unlock(ptr noundef %scrub_lock.i) #14
  call void @btrfs_destroy_workqueue(ptr noundef %87) #14
  call void @btrfs_destroy_workqueue(ptr noundef %89) #14
  call void @btrfs_destroy_workqueue(ptr noundef %91) #14
  br label %out_free_ctx

out_free_ctx:                                     ; preds = %if.then.i276, %out.out_free_ctx_crit_edge, %if.end16.out_free_ctx_crit_edge
  %ret.3 = phi i32 [ %call17, %if.end16.out_free_ctx_crit_edge ], [ %ret.2, %out.out_free_ctx_crit_edge ], [ %ret.2, %if.then.i276 ]
  call fastcc void @scrub_free_ctx(ptr noundef %call12)
  br label %cleanup169

cleanup169:                                       ; preds = %out_free_ctx, %if.end165, %if.then14, %if.then8, %if.then2, %btrfs_fs_closing.exit
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.then8 ], [ %14, %if.then14 ], [ %ret.3, %out_free_ctx ], [ %ret.1, %if.end165 ], [ -11, %btrfs_fs_closing.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scrub_setup_ctx(ptr noundef %fs_info, i32 noundef %is_dev_replace) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 696) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.nomem_crit_edge, label %if.end

entry.nomem_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nomem

if.end:                                           ; preds = %entry
  %refs = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %1 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refs, align 4
  %is_dev_replace1 = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 14
  %2 = ptrtoint ptr %is_dev_replace1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %is_dev_replace, ptr %is_dev_replace1, align 8
  %pages_per_bio = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %pages_per_bio to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %pages_per_bio, align 4
  %curr = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %curr, align 8
  %fs_info2 = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fs_info, ptr %fs_info2, align 8
  %csum_list = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %csum_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %csum_list, ptr %csum_list, align 4
  %prev.i = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %csum_list, ptr %prev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i139146 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 248) #19
  %tobool4.not147 = icmp eq ptr %call7.i.i139146, null
  br i1 %tobool4.not147, label %if.end.nomem_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  br label %if.end6

if.end.nomem_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nomem

if.end6:                                          ; preds = %for.inc.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7.i.i139149 = phi ptr [ %call7.i.i139, %for.inc.if.end6_crit_edge ], [ %call7.i.i139146, %if.end.if.end6_crit_edge ]
  %i.0142148 = phi i32 [ %add, %for.inc.if.end6_crit_edge ], [ 0, %if.end.if.end6_crit_edge ]
  %arrayidx = getelementptr [64 x ptr], ptr %call7.i.i, i32 0, i32 %i.0142148
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i139149, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %call7.i.i139149 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.0142148, ptr %call7.i.i139149, align 8
  %sctx7 = getelementptr inbounds %struct.scrub_bio, ptr %call7.i.i139149, i32 0, i32 1
  %11 = ptrtoint ptr %sctx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %sctx7, align 4
  %page_count = getelementptr inbounds %struct.scrub_bio, ptr %call7.i.i139149, i32 0, i32 8
  %12 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %page_count, align 8
  %work = getelementptr inbounds %struct.scrub_bio, ptr %call7.i.i139149, i32 0, i32 10
  tail call void @btrfs_init_work(ptr noundef %work, ptr noundef nonnull @scrub_bio_end_io_worker, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.0142148)
  %cmp8.not = icmp eq i32 %i.0142148, 63
  br i1 %cmp8.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end6
  %add = add nuw nsw i32 %i.0142148, 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %next_free = getelementptr inbounds %struct.scrub_bio, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %next_free, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i139 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 248) #19
  %tobool4.not = icmp eq ptr %call7.i.i139, null
  br i1 %tobool4.not, label %for.inc.nomem_crit_edge, label %for.inc.if.end6_crit_edge

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

for.inc.nomem_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %nomem

for.end:                                          ; preds = %if.end6
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %next_free14 = getelementptr inbounds %struct.scrub_bio, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %next_free14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %next_free14, align 4
  %first_free = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %first_free, align 4
  %bios_in_flight = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %21 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %bios_in_flight, align 4
  %workers_pending = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 5
  %call.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %workers_pending, i32 noundef 4) #14
  %22 = ptrtoint ptr %workers_pending to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %workers_pending, align 8
  %cancel_req = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 9
  %call.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel_req, i32 noundef 4) #14
  %23 = ptrtoint ptr %cancel_req to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %cancel_req, align 4
  %list_lock = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @scrub_setup_ctx.__key, i16 noundef signext 3) #14
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %stat_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @scrub_setup_ctx.__key.10, i16 noundef signext 3) #14
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %list_wait, ptr noundef nonnull @.str.13, ptr noundef nonnull @scrub_setup_ctx.__key.12) #14
  %throttle_deadline = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %throttle_deadline to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %throttle_deadline, align 8
  %wr_curr_bio = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %wr_curr_bio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr_curr_bio, align 8
  %cmp24.not = icmp eq ptr %26, null
  br i1 %cmp24.not, label %for.end.if.end42_crit_edge, label %do.end36, !prof !153

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 608, i32 noundef 9, ptr noundef null) #14
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %for.end.if.end42_crit_edge
  %wr_lock = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %wr_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @scrub_setup_ctx.__key.14) #14
  %27 = ptrtoint ptr %wr_curr_bio to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %wr_curr_bio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dev_replace)
  %tobool53.not = icmp eq i32 %is_dev_replace, 0
  br i1 %tobool53.not, label %if.end42.cleanup92_crit_edge, label %if.then54

if.end42.cleanup92_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup92

if.then54:                                        ; preds = %if.end42
  %tgtdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %28 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tgtdev, align 4
  %tobool56.not = icmp eq ptr %29, null
  br i1 %tobool56.not, label %do.end74, label %if.then54.if.end80_crit_edge, !prof !154

if.then54.if.end80_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

do.end74:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 612, i32 noundef 9, ptr noundef null) #14
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.then54.if.end80_crit_edge
  %30 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tgtdev, align 4
  %wr_tgtdev = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 18
  %32 = ptrtoint ptr %wr_tgtdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %wr_tgtdev, align 8
  %flush_all_writes = getelementptr inbounds %struct.scrub_ctx, ptr %call7.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %flush_all_writes to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %flush_all_writes, align 4
  br label %cleanup92

nomem:                                            ; preds = %for.inc.nomem_crit_edge, %if.end.nomem_crit_edge, %entry.nomem_crit_edge
  tail call fastcc void @scrub_free_ctx(ptr noundef %call7.i.i)
  br label %cleanup92

cleanup92:                                        ; preds = %nomem, %if.end80, %if.end42.cleanup92_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %nomem ], [ %call7.i.i, %if.end80 ], [ %call7.i.i, %if.end42.cleanup92_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_workers_get(ptr noundef %fs_info, i32 noundef %is_dev_replace) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_pool_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 91
  %0 = ptrtoint ptr %thread_pool_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %thread_pool_size, align 4
  %scrub_workers_refcnt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scrub_workers_refcnt, i32 noundef 4) #14
  %2 = ptrtoint ptr %scrub_workers_refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %scrub_workers_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scrub_workers_refcnt, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %scrub_workers_refcnt, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %scrub_workers_refcnt, ptr %scrub_workers_refcnt, i32 %7, i32 %add.i.i.i, ptr elementtype(i32) %scrub_workers_refcnt) #14, !srcloc !155
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !153

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !153

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %scrub_workers_refcnt, i32 noundef 0) #14
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  br i1 %tobool12.i.i.i.not, label %if.end, label %refcount_inc_not_zero.exit.cleanup_crit_edge

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dev_replace)
  %tobool.not = icmp eq i32 %is_dev_replace, 0
  %spec.select = select i1 %tobool.not, i32 %1, i32 1
  %call1 = call ptr @btrfs_alloc_workqueue(ptr noundef %fs_info, ptr noundef nonnull @.str.47, i32 noundef 6, i32 noundef %spec.select, i32 noundef 4) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @btrfs_alloc_workqueue(ptr noundef %fs_info, ptr noundef nonnull @.str.48, i32 noundef 6, i32 noundef %1, i32 noundef 2) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.fail_scrub_wr_completion_workers_crit_edge, label %if.end8

if.end4.fail_scrub_wr_completion_workers_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_scrub_wr_completion_workers

if.end8:                                          ; preds = %if.end4
  %call9 = call ptr @btrfs_alloc_workqueue(ptr noundef %fs_info, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef %1, i32 noundef 2) #14
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.fail_scrub_parity_workers_crit_edge, label %if.end12

if.end8.fail_scrub_parity_workers_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_scrub_parity_workers

if.end12:                                         ; preds = %if.end8
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_workers_refcnt, i32 noundef 4) #14
  %14 = ptrtoint ptr %scrub_workers_refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %scrub_workers_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then15, label %if.end30

if.then15:                                        ; preds = %if.end12
  %scrub_workers16 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 130
  %16 = ptrtoint ptr %scrub_workers16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scrub_workers16, align 4
  %cmp17 = icmp eq ptr %17, null
  br i1 %cmp17, label %land.lhs.true, label %if.then15.cond.false23_crit_edge, !prof !153

if.then15.cond.false23_crit_edge:                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false23

land.lhs.true:                                    ; preds = %if.then15
  %scrub_wr_completion_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 131
  %18 = ptrtoint ptr %scrub_wr_completion_workers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scrub_wr_completion_workers, align 8
  %cmp18 = icmp eq ptr %19, null
  br i1 %cmp18, label %land.rhs, label %land.lhs.true.cond.false23_crit_edge, !prof !153

land.lhs.true.cond.false23_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false23

land.rhs:                                         ; preds = %land.lhs.true
  %scrub_parity_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 132
  %20 = ptrtoint ptr %scrub_parity_workers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scrub_parity_workers, align 4
  %cmp19 = icmp eq ptr %21, null
  br i1 %cmp19, label %cond.end24, label %land.rhs.cond.false23_crit_edge, !prof !153

land.rhs.cond.false23_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false23

cond.false23:                                     ; preds = %land.rhs.cond.false23_crit_edge, %land.lhs.true.cond.false23_crit_edge, %if.then15.cond.false23_crit_edge
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.50, i32 noundef 4012) #20
  unreachable

cond.end24:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %scrub_workers16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1, ptr %scrub_workers16, align 4
  %23 = ptrtoint ptr %scrub_wr_completion_workers to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5, ptr %scrub_wr_completion_workers, align 8
  %24 = ptrtoint ptr %scrub_parity_workers to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9, ptr %scrub_parity_workers, align 4
  %call.i.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %scrub_workers_refcnt, i32 noundef 4) #14
  %25 = ptrtoint ptr %scrub_workers_refcnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %scrub_workers_refcnt, align 4
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  br label %cleanup

if.end30:                                         ; preds = %if.end12
  %call.i.i.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %scrub_workers_refcnt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrub_workers_refcnt, i32 1, i32 3, i32 1) #14
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrub_workers_refcnt, ptr %scrub_workers_refcnt, i32 1, ptr elementtype(i32) %scrub_workers_refcnt) #14, !srcloc !156
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end30.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !154

if.end30.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end30
  %add.i.i.i67 = add i32 %asmresult.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i67, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i68 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i68, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !153

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end30.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end30.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %scrub_workers_refcnt, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  call void @btrfs_destroy_workqueue(ptr noundef nonnull %call9) #14
  br label %fail_scrub_parity_workers

fail_scrub_parity_workers:                        ; preds = %refcount_inc.exit, %if.end8.fail_scrub_parity_workers_crit_edge
  %ret.0 = phi i32 [ 0, %refcount_inc.exit ], [ -12, %if.end8.fail_scrub_parity_workers_crit_edge ]
  call void @btrfs_destroy_workqueue(ptr noundef nonnull %call5) #14
  br label %fail_scrub_wr_completion_workers

fail_scrub_wr_completion_workers:                 ; preds = %fail_scrub_parity_workers, %if.end4.fail_scrub_wr_completion_workers_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail_scrub_parity_workers ], [ -12, %if.end4.fail_scrub_wr_completion_workers_crit_edge ]
  call void @btrfs_destroy_workqueue(ptr noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %fail_scrub_wr_completion_workers, %cond.end24, %if.end.cleanup_crit_edge, %refcount_inc_not_zero.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end24 ], [ 0, %refcount_inc_not_zero.exit.cleanup_crit_edge ], [ %ret.1, %fail_scrub_wr_completion_workers ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @btrfs_dev_replace_is_ongoing(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__scrub_blocked_if_needed(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_pause_req = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 125
  %call.i.i28 = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  %0 = ptrtoint ptr %scrub_pause_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %scrub_pause_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not29 = icmp eq i32 %1, 0
  br i1 %tobool.not29, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 128
  br label %while.body

while.body:                                       ; preds = %do.end13.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 272) #14
  %call.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  %2 = ptrtoint ptr %scrub_pause_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %scrub_pause_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %while.body.do.end13_crit_edge, label %if.end

while.body.do.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call625 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i2226 = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  %5 = ptrtoint ptr %scrub_pause_req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %scrub_pause_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp927 = icmp eq i32 %6, 0
  br i1 %cmp927, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i22 = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  %7 = ptrtoint ptr %scrub_pause_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %scrub_pause_req, align 4
  %cmp9 = icmp eq i32 %8, 0
  br i1 %cmp9, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end13

do.end13:                                         ; preds = %for.end, %while.body.do.end13_crit_edge
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  %9 = ptrtoint ptr %scrub_pause_req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %scrub_pause_req, align 4
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.end13.while.end_crit_edge, label %do.end13.while.body_crit_edge

do.end13.while.body_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end13.while.end_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end13.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_supers(ptr noundef %sctx, ptr noundef %scrub_dev) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 149
  %2 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup38_crit_edge, !prof !153

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end:                                           ; preds = %entry
  %fs_devices = getelementptr inbounds %struct.btrfs_device, ptr %scrub_dev, i32 0, i32 3
  %4 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_devices, align 8
  %fs_devices4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %6 = ptrtoint ptr %fs_devices4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_devices4, align 8
  %cmp.not = icmp eq ptr %5, %7
  %generation = getelementptr inbounds %struct.btrfs_device, ptr %scrub_dev, i32 0, i32 6
  %last_trans_committed = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 27
  %gen.0.in = select i1 %cmp.not, ptr %last_trans_committed, ptr %generation
  %8 = ptrtoint ptr %gen.0.in to i32
  call void @__asan_load8_noabort(i32 %8)
  %gen.0 = load i64, ptr %gen.0.in, align 8
  %commit_total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %scrub_dev, i32 0, i32 22
  %zone_info.i = getelementptr inbounds %struct.btrfs_device, ptr %scrub_dev, i32 0, i32 8
  %9 = ptrtoint ptr %commit_total_bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %commit_total_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 69632, i64 %10)
  %cmp9 = icmp ult i64 %10, 69632
  br i1 %cmp9, label %if.end.do.body19_crit_edge, label %if.end11

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

if.end11:                                         ; preds = %if.end
  %11 = ptrtoint ptr %zone_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zone_info.i, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.end11.if.end14_crit_edge, label %btrfs_check_super_location.exit

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

btrfs_check_super_location.exit:                  ; preds = %if.end11
  %zone_size_shift.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %zone_size_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %zone_size_shift.i.i, align 8
  %sh_prom.i.i = zext i8 %14 to i64
  %shr.i.i = lshr i64 65536, %sh_prom.i.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %seq_zones.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %seq_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %seq_zones.i.i, align 8
  %div3.i.i.i = lshr i32 %conv2.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %16, i32 %div3.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv2.i.i, 31
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.i.not.i, label %btrfs_check_super_location.exit.if.end14_crit_edge, label %btrfs_check_super_location.exit.for.inc_crit_edge

btrfs_check_super_location.exit.for.inc_crit_edge: ; preds = %btrfs_check_super_location.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

btrfs_check_super_location.exit.if.end14_crit_edge: ; preds = %btrfs_check_super_location.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %btrfs_check_super_location.exit.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %call15 = tail call fastcc i32 @scrub_pages(ptr noundef %sctx, i64 noundef 65536, i32 noundef 4096, i64 noundef 65536, ptr noundef %scrub_dev, i64 noundef 281474976710656, i64 noundef %gen.0, i32 noundef 0, ptr noundef null, i64 noundef 65536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.for.inc_crit_edge, label %if.end14.cleanup38_crit_edge

if.end14.cleanup38_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %btrfs_check_super_location.exit.for.inc_crit_edge
  %21 = ptrtoint ptr %commit_total_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %commit_total_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 67112960, i64 %22)
  %cmp9.1 = icmp ult i64 %22, 67112960
  br i1 %cmp9.1, label %for.inc.do.body19_crit_edge, label %if.end11.1

for.inc.do.body19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

if.end11.1:                                       ; preds = %for.inc
  %23 = ptrtoint ptr %zone_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %zone_info.i, align 4
  %cmp.i.1 = icmp eq ptr %24, null
  br i1 %cmp.i.1, label %if.end11.1.if.end14.1_crit_edge, label %btrfs_check_super_location.exit.1

if.end11.1.if.end14.1_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.1

btrfs_check_super_location.exit.1:                ; preds = %if.end11.1
  %zone_size_shift.i.i.1 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %zone_size_shift.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %zone_size_shift.i.i.1, align 8
  %sh_prom.i.i.1 = zext i8 %26 to i64
  %shr.i.i.1 = lshr i64 67108864, %sh_prom.i.i.1
  %conv2.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %seq_zones.i.i.1 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %seq_zones.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seq_zones.i.i.1, align 8
  %div3.i.i.i.1 = lshr i32 %conv2.i.i.1, 5
  %arrayidx.i.i.i.1 = getelementptr i32, ptr %28, i32 %div3.i.i.i.1
  %29 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i.1, align 4
  %and.i.i.i.1 = and i32 %conv2.i.i.1, 31
  %31 = shl nuw i32 1, %and.i.i.i.1
  %32 = and i32 %31, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.i.not.i.1 = icmp eq i32 %32, 0
  br i1 %tobool3.i.not.i.1, label %btrfs_check_super_location.exit.1.if.end14.1_crit_edge, label %btrfs_check_super_location.exit.1.for.inc.1_crit_edge

btrfs_check_super_location.exit.1.for.inc.1_crit_edge: ; preds = %btrfs_check_super_location.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

btrfs_check_super_location.exit.1.if.end14.1_crit_edge: ; preds = %btrfs_check_super_location.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.1

if.end14.1:                                       ; preds = %btrfs_check_super_location.exit.1.if.end14.1_crit_edge, %if.end11.1.if.end14.1_crit_edge
  %call15.1 = tail call fastcc i32 @scrub_pages(ptr noundef %sctx, i64 noundef 67108864, i32 noundef 4096, i64 noundef 67108864, ptr noundef %scrub_dev, i64 noundef 281474976710656, i64 noundef %gen.0, i32 noundef 1, ptr noundef null, i64 noundef 67108864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %tobool16.not.1 = icmp eq i32 %call15.1, 0
  br i1 %tobool16.not.1, label %if.end14.1.for.inc.1_crit_edge, label %if.end14.1.cleanup38_crit_edge

if.end14.1.cleanup38_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end14.1.for.inc.1_crit_edge, %btrfs_check_super_location.exit.1.for.inc.1_crit_edge
  %33 = ptrtoint ptr %commit_total_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %commit_total_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877911040, i64 %34)
  %cmp9.2 = icmp ult i64 %34, 274877911040
  br i1 %cmp9.2, label %for.inc.1.do.body19_crit_edge, label %if.end11.2

for.inc.1.do.body19_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

if.end11.2:                                       ; preds = %for.inc.1
  %35 = ptrtoint ptr %zone_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %zone_info.i, align 4
  %cmp.i.2 = icmp eq ptr %36, null
  br i1 %cmp.i.2, label %if.end11.2.if.end14.2_crit_edge, label %btrfs_check_super_location.exit.2

if.end11.2.if.end14.2_crit_edge:                  ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.2

btrfs_check_super_location.exit.2:                ; preds = %if.end11.2
  %zone_size_shift.i.i.2 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %zone_size_shift.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %zone_size_shift.i.i.2, align 8
  %sh_prom.i.i.2 = zext i8 %38 to i64
  %shr.i.i.2 = lshr i64 274877906944, %sh_prom.i.i.2
  %conv2.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %seq_zones.i.i.2 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %seq_zones.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seq_zones.i.i.2, align 8
  %div3.i.i.i.2 = lshr i32 %conv2.i.i.2, 5
  %arrayidx.i.i.i.2 = getelementptr i32, ptr %40, i32 %div3.i.i.i.2
  %41 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i.i.2, align 4
  %and.i.i.i.2 = and i32 %conv2.i.i.2, 31
  %43 = shl nuw i32 1, %and.i.i.i.2
  %44 = and i32 %43, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.i.not.i.2 = icmp eq i32 %44, 0
  br i1 %tobool3.i.not.i.2, label %btrfs_check_super_location.exit.2.if.end14.2_crit_edge, label %btrfs_check_super_location.exit.2.do.body19_crit_edge

btrfs_check_super_location.exit.2.do.body19_crit_edge: ; preds = %btrfs_check_super_location.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

btrfs_check_super_location.exit.2.if.end14.2_crit_edge: ; preds = %btrfs_check_super_location.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.2

if.end14.2:                                       ; preds = %btrfs_check_super_location.exit.2.if.end14.2_crit_edge, %if.end11.2.if.end14.2_crit_edge
  %call15.2 = tail call fastcc i32 @scrub_pages(ptr noundef %sctx, i64 noundef 274877906944, i32 noundef 4096, i64 noundef 274877906944, ptr noundef %scrub_dev, i64 noundef 281474976710656, i64 noundef %gen.0, i32 noundef 2, ptr noundef null, i64 noundef 274877906944)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %tobool16.not.2 = icmp eq i32 %call15.2, 0
  br i1 %tobool16.not.2, label %if.end14.2.do.body19_crit_edge, label %if.end14.2.cleanup38_crit_edge

if.end14.2.cleanup38_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end14.2.do.body19_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

do.body19:                                        ; preds = %if.end14.2.do.body19_crit_edge, %btrfs_check_super_location.exit.2.do.body19_crit_edge, %for.inc.1.do.body19_crit_edge, %for.inc.do.body19_crit_edge, %if.end.do.body19_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3949) #14
  %bios_in_flight = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %45 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp24 = icmp eq i32 %46, 0
  br i1 %cmp24, label %do.body19.cleanup38_crit_edge, label %if.end26

do.body19.cleanup38_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.end26:                                         ; preds = %do.body19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %47 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  %call2867 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i6268 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %48 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp3169 = icmp eq i32 %49, 0
  br i1 %cmp3169, label %if.end26.for.end34_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  br label %cleanup

if.end26.for.end34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  call void @schedule() #14
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %50 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp31 = icmp eq i32 %51, 0
  br i1 %cmp31, label %cleanup.for.end34_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end34:                                        ; preds = %cleanup.for.end34_crit_edge, %if.end26.for.end34_crit_edge
  call void @finish_wait(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %cleanup38

cleanup38:                                        ; preds = %for.end34, %do.body19.cleanup38_crit_edge, %if.end14.2.cleanup38_crit_edge, %if.end14.1.cleanup38_crit_edge, %if.end14.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup38_crit_edge ], [ 0, %do.body19.cleanup38_crit_edge ], [ 0, %for.end34 ], [ %call15, %if.end14.cleanup38_crit_edge ], [ %call15.1, %if.end14.1.cleanup38_crit_edge ], [ %call15.2, %if.end14.2.cleanup38_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_enumerate_chunks(ptr noundef %sctx, ptr noundef %scrub_dev, i64 noundef %start, i64 noundef %end) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry163 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %dev_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_root, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %call = tail call ptr @btrfs_alloc_path() #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup245_crit_edge, label %if.end

entry.cleanup245_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup245

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %reada, align 4
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set5 = or i8 %bf.load, 48
  store i8 %bf.set5, ptr %search_commit_root, align 2
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %scrub_dev, i32 0, i32 13
  %8 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %devid, align 8
  %10 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %key, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %4, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -52, ptr %5, align 8
  %call6433 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6433)
  %cmp434 = icmp slt i32 %call6433, 0
  br i1 %cmp434, label %if.end.while.end_crit_edge, label %if.end8.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end8.lr.ph:                                    ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %13 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %is_dev_replace = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 14
  %15 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %scrubs_paused.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 126
  %scrub_pause_wait.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 128
  %scrub_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 123
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 15
  %cursor_right = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 8
  %cursor_left = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 5
  %item_needs_writeback = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 11
  %flush_all_writes = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 19
  %wr_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 17
  %bios_in_flight = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 4
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  %workers_pending = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 5
  %srcdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 12
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %discard_ctl = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 3
  %malloc_errors = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 10
  br label %if.end8

if.end8:                                          ; preds = %cleanup242.if.end8_crit_edge, %if.end8.lr.ph
  %call6435 = phi i32 [ %call6433, %if.end8.lr.ph ], [ %call6, %cleanup242.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6435)
  %cmp9.not = icmp eq i32 %call6435, 0
  br i1 %cmp9.not, label %if.end8.if.end23_crit_edge, label %if.then10

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then10:                                        ; preds = %if.end8
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages.i, align 4
  %call.i386 = call ptr @page_address(ptr noundef %21) #14
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %19, align 8
  %conv.i = trunc i64 %23 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i386, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %24 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %nritems.i, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %26)
  %cmp13.not = icmp ult i32 %17, %26
  br i1 %cmp13.not, label %if.then10.if.end23_crit_edge, label %if.then14

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then14:                                        ; preds = %if.then10
  %call.i387 = call i32 @btrfs_next_old_leaf(ptr noundef %3, ptr noundef nonnull %call, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %cmp16 = icmp slt i32 %call.i387, 0
  br i1 %cmp16, label %if.then14.while.end_crit_edge, label %if.end18

if.then14.while.end_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %cmp19.not = icmp eq i32 %call.i387, 0
  br i1 %cmp19.not, label %if.end18.if.end23_crit_edge, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23:                                         ; preds = %if.end18.if.end23_crit_edge, %if.then10.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %29 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %mul.i.i.i.i = mul i32 %30, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %31 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %28, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %14, align 1
  %34 = call i64 @llvm.bswap.i64(i64 %33) #14
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %13, align 8
  %37 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %disk_key.i, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  %40 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %devid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp30.not = icmp eq i64 %39, %41
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %36)
  %cmp34.not = icmp eq i8 %36, -52
  %or.cond = select i1 %cmp30.not, i1 %cmp34.not, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %end)
  %cmp39.not = icmp ult i64 %34, %end
  %or.cond423 = select i1 %or.cond, i1 %cmp39.not, i1 false
  br i1 %or.cond423, label %if.end42, label %if.end23.while.end_crit_edge

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end42:                                         ; preds = %if.end23
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %43)
  %cmp45 = icmp ult i64 %34, %43
  br i1 %cmp45, label %if.end42.while.end_crit_edge, label %if.end48

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end48:                                         ; preds = %if.end42
  %44 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i388 = call i32 @btrfs_get_32(ptr noundef %28, ptr noundef %44, i32 noundef 17) #14
  %add = add i32 %call.i.i388, 101
  %45 = inttoptr i32 %add to ptr
  %call.i389 = call i64 @btrfs_get_64(ptr noundef %28, ptr noundef %45, i32 noundef 24) #14
  %add52 = add i64 %call.i389, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add52, i64 %start)
  %cmp53.not = icmp ugt i64 %add52, %start
  br i1 %cmp53.not, label %if.end56, label %if.end48.cleanup242_crit_edge

if.end48.cleanup242_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup242

if.end56:                                         ; preds = %if.end48
  %call.i390 = call i64 @btrfs_get_64(ptr noundef %28, ptr noundef %45, i32 noundef 16) #14
  %call58 = call ptr @btrfs_lookup_block_group(ptr noundef %1, i64 noundef %call.i390) #14
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.cleanup242_crit_edge, label %if.end61

if.end56.cleanup242_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup242

if.end61:                                         ; preds = %if.end56
  %46 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool62.not = icmp eq i32 %47, 0
  br i1 %tobool62.not, label %if.end61.if.end73_crit_edge, label %land.lhs.true

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end61
  %48 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %cmp.i.not = icmp eq i64 %49, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end73_crit_edge, label %if.then65

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then65:                                        ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %to_copy = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 17
  %50 = ptrtoint ptr %to_copy to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load66 = load i8, ptr %to_copy, align 8
  %51 = and i8 %bf.load66, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool68.not = icmp eq i8 %51, 0
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br i1 %tobool68.not, label %if.then65.cleanup242.sink.split_crit_edge, label %if.then65.if.end73_crit_edge

if.then65.if.end73_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then65.cleanup242.sink.split_crit_edge:        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup242.sink.split

if.end73:                                         ; preds = %if.then65.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %if.end61.if.end73_crit_edge
  %lock74 = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock74) #14
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 17
  %52 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load75 = load i8, ptr %removed, align 8
  %53 = and i8 %bf.load75, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool79.not = icmp eq i8 %53, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %lock74) #14
  br label %cleanup242.sink.split

if.end82:                                         ; preds = %if.end73
  call void @btrfs_freeze_block_group(ptr noundef nonnull %call58) #14
  call void @_raw_spin_unlock(ptr noundef %lock74) #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i, i32 1, i32 3, i32 1) #14
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i, ptr %scrubs_paused.i, i32 1, ptr elementtype(i32) %scrubs_paused.i) #14, !srcloc !151
  call void @__wake_up(ptr noundef %scrub_pause_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %55 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool85 = icmp ne i32 %56, 0
  %call86 = call i32 @btrfs_inc_block_group_ro(ptr noundef nonnull %call58, i1 noundef zeroext %tobool85) #14
  %57 = zext i32 %call86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call86, label %if.end82.if.else112_crit_edge [
    i32 0, label %land.lhs.true88
    i32 -26, label %if.then110
    i32 -28, label %land.lhs.true103
  ]

if.end82.if.else112_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else112

land.lhs.true88:                                  ; preds = %if.end82
  %58 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool90.not = icmp eq i32 %59, 0
  br i1 %tobool90.not, label %land.lhs.true88.if.end119_crit_edge, label %if.then91

land.lhs.true88.if.end119_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then91:                                        ; preds = %land.lhs.true88
  %call92 = call fastcc i32 @finish_extent_writes_for_zoned(ptr noundef %3, ptr noundef nonnull %call58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end114, label %if.then94

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_dec_block_group_ro(ptr noundef nonnull %call58) #14
  call fastcc void @scrub_pause_off(ptr noundef %1)
  call void @btrfs_put_block_group(ptr noundef nonnull %call58) #14
  br label %while.end

land.lhs.true103:                                 ; preds = %if.end82
  %60 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool105.not = icmp eq i32 %61, 0
  br i1 %tobool105.not, label %land.lhs.true103.if.end119_crit_edge, label %land.lhs.true103.if.else112_crit_edge

land.lhs.true103.if.else112_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else112

land.lhs.true103.if.end119_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then110:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  %start111 = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 3
  %62 = ptrtoint ptr %start111 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %start111, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.59, i64 noundef %63) #17
  call fastcc void @scrub_pause_off(ptr noundef %1)
  br label %skip_unfreeze

if.else112:                                       ; preds = %land.lhs.true103.if.else112_crit_edge, %if.end82.if.else112_crit_edge
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %call86) #17
  call void @btrfs_unfreeze_block_group(ptr noundef nonnull %call58) #14
  call void @btrfs_put_block_group(ptr noundef nonnull %call58) #14
  call fastcc void @scrub_pause_off(ptr noundef %1)
  br label %while.end

if.end114:                                        ; preds = %if.then91
  %64 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr.pr = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool116.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool116.not, label %if.end114.if.end119_crit_edge, label %if.then117

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_wait_nocow_writers(ptr noundef nonnull %call58) #14
  %start118 = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 3
  %65 = ptrtoint ptr %start118 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %start118, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 4
  %67 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %length, align 8
  call void @btrfs_wait_ordered_roots(ptr noundef %1, i64 noundef -1, i64 noundef %66, i64 noundef %68) #14
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114.if.end119_crit_edge, %land.lhs.true103.if.end119_crit_edge, %land.lhs.true88.if.end119_crit_edge
  %ro_set.0410 = phi i32 [ 1, %if.then117 ], [ 1, %if.end114.if.end119_crit_edge ], [ 0, %land.lhs.true103.if.end119_crit_edge ], [ 1, %land.lhs.true88.if.end119_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %scrub_lock.i, i32 noundef 0) #14
  call fastcc void @__scrub_blocked_if_needed(ptr noundef %1) #14
  %call.i.i.i392 = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i, i32 1, i32 3, i32 1) #14
  %69 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i, ptr %scrubs_paused.i, i32 1, ptr elementtype(i32) %scrubs_paused.i) #14, !srcloc !152
  call void @mutex_unlock(ptr noundef %scrub_lock.i) #14
  call void @__wake_up(ptr noundef %scrub_pause_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @down_write(ptr noundef %rwsem) #14
  %70 = ptrtoint ptr %cursor_right to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %add52, ptr %cursor_right, align 8
  %71 = ptrtoint ptr %cursor_left to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %34, ptr %cursor_left, align 8
  %72 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %item_needs_writeback, align 4
  call void @up_write(ptr noundef %rwsem) #14
  %start124 = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 3
  %73 = ptrtoint ptr %start124 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %start124, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %call.i390)
  %cmp125 = icmp eq i64 %74, %call.i390
  br i1 %cmp125, label %cond.end, label %cond.false, !prof !153

cond.false:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.61, i32 noundef 3825) #20
  unreachable

cond.end:                                         ; preds = %if.end119
  %call130 = call fastcc i32 @scrub_chunk(ptr noundef %sctx, ptr noundef nonnull %call58, ptr noundef %scrub_dev, i64 noundef %34, i64 noundef %call.i389)
  %75 = ptrtoint ptr %flush_all_writes to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %flush_all_writes, align 4
  call fastcc void @scrub_submit(ptr noundef %sctx)
  call void @mutex_lock_nested(ptr noundef %wr_lock, i32 noundef 0) #14
  call fastcc void @scrub_wr_submit(ptr noundef %sctx)
  call void @mutex_unlock(ptr noundef %wr_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3846) #14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %76 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp137 = icmp eq i32 %77, 0
  br i1 %cmp137, label %cond.end.do.end150_crit_edge, label %if.end140

cond.end.do.end150_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end150

if.end140:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %78 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call141426 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i382427 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %79 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp144428 = icmp eq i32 %80, 0
  br i1 %cmp144428, label %if.end140.for.end_crit_edge, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  br label %cleanup

if.end140.for.end_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end140.cleanup_crit_edge
  call void @schedule() #14
  %call141 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i382 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %81 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp144 = icmp eq i32 %82, 0
  br i1 %cmp144, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end140.for.end_crit_edge
  call void @finish_wait(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end150

do.end150:                                        ; preds = %for.end, %cond.end.do.end150_crit_edge
  %call.i.i.i395 = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i, i32 1, i32 3, i32 1) #14
  %83 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i, ptr %scrubs_paused.i, i32 1, ptr elementtype(i32) %scrubs_paused.i) #14, !srcloc !151
  call void @__wake_up(ptr noundef %scrub_pause_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3856) #14
  %call.i.i383 = call zeroext i1 @__kasan_check_read(ptr noundef %workers_pending, i32 noundef 4) #14
  %84 = ptrtoint ptr %workers_pending to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %workers_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp159 = icmp eq i32 %85, 0
  br i1 %cmp159, label %do.end150.do.end183_crit_edge, label %if.end162

do.end150.do.end183_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end183

if.end162:                                        ; preds = %do.end150
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry163) #14
  %86 = call ptr @memset(ptr %__wq_entry163, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry163, i32 noundef 0) #14
  %call168429 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry163, i32 noundef 2) #14
  %call.i.i384430 = call zeroext i1 @__kasan_check_read(ptr noundef %workers_pending, i32 noundef 4) #14
  %87 = ptrtoint ptr %workers_pending to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %workers_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp171431 = icmp eq i32 %88, 0
  br i1 %cmp171431, label %if.end162.for.end178_crit_edge, label %if.end162.cleanup175_crit_edge

if.end162.cleanup175_crit_edge:                   ; preds = %if.end162
  br label %cleanup175

if.end162.for.end178_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end178

cleanup175:                                       ; preds = %cleanup175.cleanup175_crit_edge, %if.end162.cleanup175_crit_edge
  call void @schedule() #14
  %call168 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry163, i32 noundef 2) #14
  %call.i.i384 = call zeroext i1 @__kasan_check_read(ptr noundef %workers_pending, i32 noundef 4) #14
  %89 = ptrtoint ptr %workers_pending to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %workers_pending, align 4
  %cmp171 = icmp eq i32 %90, 0
  br i1 %cmp171, label %cleanup175.for.end178_crit_edge, label %cleanup175.cleanup175_crit_edge

cleanup175.cleanup175_crit_edge:                  ; preds = %cleanup175
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup175

cleanup175.for.end178_crit_edge:                  ; preds = %cleanup175
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end178

for.end178:                                       ; preds = %cleanup175.for.end178_crit_edge, %if.end162.for.end178_crit_edge
  call void @finish_wait(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry163) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry163) #14
  br label %do.end183

do.end183:                                        ; preds = %for.end178, %do.end150.do.end183_crit_edge
  %91 = ptrtoint ptr %flush_all_writes to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %flush_all_writes, align 4
  call void @mutex_lock_nested(ptr noundef %scrub_lock.i, i32 noundef 0) #14
  call fastcc void @__scrub_blocked_if_needed(ptr noundef %1) #14
  %call.i.i.i399 = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i, i32 1, i32 3, i32 1) #14
  %92 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i, ptr %scrubs_paused.i, i32 1, ptr elementtype(i32) %scrubs_paused.i) #14, !srcloc !152
  call void @mutex_unlock(ptr noundef %scrub_lock.i) #14
  call void @__wake_up(ptr noundef %scrub_pause_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %93 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool186.not = icmp eq i32 %94, 0
  br i1 %tobool186.not, label %do.end183.if.end191_crit_edge, label %land.lhs.true187

do.end183.if.end191_crit_edge:                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191

land.lhs.true187:                                 ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %srcdev, align 8
  %call189 = call zeroext i1 @btrfs_finish_block_group_to_copy(ptr noundef %96, ptr noundef %call58, i64 noundef %34) #14
  %spec.select = select i1 %call189, i32 %ro_set.0410, i32 0
  br label %if.end191

if.end191:                                        ; preds = %land.lhs.true187, %do.end183.if.end191_crit_edge
  %ro_set.1 = phi i32 [ %ro_set.0410, %do.end183.if.end191_crit_edge ], [ %spec.select, %land.lhs.true187 ]
  call void @down_write(ptr noundef %rwsem) #14
  %97 = ptrtoint ptr %cursor_right to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %cursor_right, align 8
  %99 = ptrtoint ptr %cursor_left to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %cursor_left, align 8
  %100 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %item_needs_writeback, align 4
  call void @up_write(ptr noundef %rwsem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ro_set.1)
  %tobool197.not = icmp eq i32 %ro_set.1, 0
  br i1 %tobool197.not, label %if.end191.if.end199_crit_edge, label %if.then198

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.then198:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_dec_block_group_ro(ptr noundef %call58) #14
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.end191.if.end199_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock74) #14
  %101 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load202 = load i8, ptr %removed, align 8
  %102 = and i8 %bf.load202, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool206.not = icmp eq i8 %102, 0
  br i1 %tobool206.not, label %land.lhs.true207, label %if.end199.if.else221_crit_edge

if.end199.if.else221_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else221

land.lhs.true207:                                 ; preds = %if.end199
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 16
  %103 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool208.not = icmp eq i32 %104, 0
  br i1 %tobool208.not, label %land.lhs.true209, label %land.lhs.true207.if.else221_crit_edge

land.lhs.true207.if.else221_crit_edge:            ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else221

land.lhs.true209:                                 ; preds = %land.lhs.true207
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 6
  %105 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %cmp210 = icmp eq i64 %106, 0
  br i1 %cmp210, label %land.lhs.true212, label %land.lhs.true209.if.else221_crit_edge

land.lhs.true209.if.else221_crit_edge:            ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else221

land.lhs.true212:                                 ; preds = %land.lhs.true209
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %call58, i32 0, i32 7
  %107 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %used, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %cmp213 = icmp eq i64 %108, 0
  br i1 %cmp213, label %if.then215, label %land.lhs.true212.if.else221_crit_edge

land.lhs.true212.if.else221_crit_edge:            ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else221

if.then215:                                       ; preds = %land.lhs.true212
  call void @_raw_spin_unlock(ptr noundef %lock74) #14
  %109 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mount_opt, align 8
  %and = and i32 %110, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool217.not = icmp eq i32 %and, 0
  br i1 %tobool217.not, label %if.else219, label %if.then218

if.then218:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef %call58) #14
  br label %skip_unfreeze

if.else219:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_bg_unused(ptr noundef %call58) #14
  br label %skip_unfreeze

if.else221:                                       ; preds = %land.lhs.true212.if.else221_crit_edge, %land.lhs.true209.if.else221_crit_edge, %land.lhs.true207.if.else221_crit_edge, %if.end199.if.else221_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock74) #14
  br label %skip_unfreeze

skip_unfreeze:                                    ; preds = %if.else221, %if.else219, %if.then218, %if.then110
  %ret.2 = phi i32 [ %call130, %if.else221 ], [ %call130, %if.then218 ], [ %call130, %if.else219 ], [ 0, %if.then110 ]
  call void @btrfs_unfreeze_block_group(ptr noundef %call58) #14
  call void @btrfs_put_block_group(ptr noundef %call58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool224.not = icmp eq i32 %ret.2, 0
  br i1 %tobool224.not, label %if.end226, label %skip_unfreeze.while.end_crit_edge

skip_unfreeze.while.end_crit_edge:                ; preds = %skip_unfreeze
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end226:                                        ; preds = %skip_unfreeze
  %111 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool228.not = icmp eq i32 %112, 0
  br i1 %tobool228.not, label %if.end226.if.end234_crit_edge, label %land.lhs.true229

if.end226.if.end234_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234

land.lhs.true229:                                 ; preds = %if.end226
  %call.i.i385 = call zeroext i1 @__kasan_check_read(ptr noundef %num_write_errors, i32 noundef 8) #14
  %call.i = call i64 @generic_atomic64_read(ptr noundef %num_write_errors) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp231 = icmp sgt i64 %call.i, 0
  br i1 %cmp231, label %land.lhs.true229.while.end_crit_edge, label %land.lhs.true229.if.end234_crit_edge

land.lhs.true229.if.end234_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234

land.lhs.true229.while.end_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end234:                                        ; preds = %land.lhs.true229.if.end234_crit_edge, %if.end226.if.end234_crit_edge
  %113 = ptrtoint ptr %malloc_errors to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %malloc_errors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %114)
  %cmp235.not = icmp eq i64 %114, 0
  br i1 %cmp235.not, label %if.end234.cleanup242_crit_edge, label %if.end234.while.end_crit_edge

if.end234.while.end_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end234.cleanup242_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup242

cleanup242.sink.split:                            ; preds = %if.then80, %if.then65.cleanup242.sink.split_crit_edge
  call void @btrfs_put_block_group(ptr noundef nonnull %call58) #14
  br label %cleanup242

cleanup242:                                       ; preds = %cleanup242.sink.split, %if.end234.cleanup242_crit_edge, %if.end56.cleanup242_crit_edge, %if.end48.cleanup242_crit_edge
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %add52, ptr %4, align 1
  call void @btrfs_release_path(ptr noundef nonnull %call) #14
  %call6 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #14
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %cleanup242.while.end_crit_edge, label %cleanup242.if.end8_crit_edge

cleanup242.if.end8_crit_edge:                     ; preds = %cleanup242
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

cleanup242.while.end_crit_edge:                   ; preds = %cleanup242
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup242.while.end_crit_edge, %if.end234.while.end_crit_edge, %land.lhs.true229.while.end_crit_edge, %skip_unfreeze.while.end_crit_edge, %if.else112, %if.then94, %if.end42.while.end_crit_edge, %if.end23.while.end_crit_edge, %if.end18.while.end_crit_edge, %if.then14.while.end_crit_edge, %if.end.while.end_crit_edge
  %ret.4.ph = phi i32 [ %call92, %if.then94 ], [ %call86, %if.else112 ], [ %call6433, %if.end.while.end_crit_edge ], [ -12, %if.end234.while.end_crit_edge ], [ -5, %land.lhs.true229.while.end_crit_edge ], [ %ret.2, %skip_unfreeze.while.end_crit_edge ], [ 0, %if.end42.while.end_crit_edge ], [ 0, %if.end23.while.end_crit_edge ], [ 0, %if.end18.while.end_crit_edge ], [ %call.i387, %if.then14.while.end_crit_edge ], [ %call6, %cleanup242.while.end_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  br label %cleanup245

cleanup245:                                       ; preds = %while.end, %entry.cleanup245_crit_edge
  %retval.0 = phi i32 [ %ret.4.ph, %while.end ], [ -12, %entry.cleanup245_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_workers_put(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_workers_refcnt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 129
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %scrub_workers_refcnt, ptr noundef %scrub_lock) #14
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %scrub_workers1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 130
  %0 = ptrtoint ptr %scrub_workers1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scrub_workers1, align 4
  %scrub_wr_completion_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 131
  %2 = ptrtoint ptr %scrub_wr_completion_workers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scrub_wr_completion_workers, align 8
  %scrub_parity_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 132
  %4 = ptrtoint ptr %scrub_parity_workers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scrub_parity_workers, align 4
  store ptr null, ptr %scrub_workers1, align 4
  store ptr null, ptr %scrub_wr_completion_workers, align 8
  store ptr null, ptr %scrub_parity_workers, align 4
  tail call void @mutex_unlock(ptr noundef %scrub_lock) #14
  tail call void @btrfs_destroy_workqueue(ptr noundef %1) #14
  tail call void @btrfs_destroy_workqueue(ptr noundef %3) #14
  tail call void @btrfs_destroy_workqueue(ptr noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_put_ctx(ptr noundef %sctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !153

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call fastcc void @scrub_free_ctx(ptr noundef %sctx)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_free_ctx(ptr noundef %sctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sctx, null
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup43

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 3
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end.for.body33.preheader_crit_edge, label %if.then1

if.end.for.body33.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33.preheader

if.then1:                                         ; preds = %if.end
  %arrayidx = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %page_count = getelementptr inbounds %struct.scrub_bio, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp367 = icmp sgt i32 %5, 0
  br i1 %cmp367, label %if.then1.for.body_crit_edge, label %if.then1.for.end_crit_edge

if.then1.for.end_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then1.for.body_crit_edge:                      ; preds = %if.then1
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.then1.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %if.end21.for.body_crit_edge ], [ 0, %if.then1.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.scrub_bio, ptr %3, i32 0, i32 7, i32 %i.068
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %page = getelementptr inbounds %struct.scrub_page, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end, label %for.body.if.end21_crit_edge, !prof !154

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 539, i32 noundef 9, ptr noundef null) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end, %for.body.if.end21_crit_edge
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call fastcc void @scrub_block_put(ptr noundef %13)
  %inc = add nuw nsw i32 %i.068, 1
  %14 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_count, align 8
  %cmp3 = icmp slt i32 %inc, %15
  br i1 %cmp3, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.then1.for.end_crit_edge
  %bio = getelementptr inbounds %struct.scrub_bio, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bio, align 4
  tail call void @bio_put(ptr noundef %17) #14
  br label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.end, %if.end.for.body33.preheader_crit_edge
  br label %for.body33

for.body33:                                       ; preds = %for.inc40.for.body33_crit_edge, %for.body33.preheader
  %i.169 = phi i32 [ %inc41, %for.inc40.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  %arrayidx36 = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %i.169
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %19, null
  br i1 %tobool37.not, label %for.body33.for.end42_crit_edge, label %for.inc40

for.body33.for.end42_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end42

for.inc40:                                        ; preds = %for.body33
  tail call void @kfree(ptr noundef nonnull %19) #14
  %inc41 = add nuw nsw i32 %i.169, 1
  %exitcond.not = icmp eq i32 %inc41, 64
  br i1 %exitcond.not, label %for.inc40.for.end42_crit_edge, label %for.inc40.for.body33_crit_edge

for.inc40.for.body33_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end42

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %for.body33.for.end42_crit_edge
  %wr_curr_bio = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 16
  %20 = ptrtoint ptr %wr_curr_bio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr_curr_bio, align 8
  tail call void @kfree(ptr noundef %21) #14
  %csum_list.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 8
  %22 = ptrtoint ptr %csum_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %csum_list.i, align 4
  %cmp.i.not4.i = icmp eq ptr %23, %csum_list.i
  br i1 %cmp.i.not4.i, label %for.end42.scrub_free_csums.exit_crit_edge, label %for.end42.while.body.i_crit_edge

for.end42.while.body.i_crit_edge:                 ; preds = %for.end42
  br label %while.body.i

for.end42.scrub_free_csums.exit_crit_edge:        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_free_csums.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %for.end42.while.body.i_crit_edge
  %24 = phi ptr [ %34, %list_del.exit.i.while.body.i_crit_edge ], [ %23, %for.end42.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %24, i32 -12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
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

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  %33 = ptrtoint ptr %csum_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %csum_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %csum_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.scrub_free_csums.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

list_del.exit.i.scrub_free_csums.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_free_csums.exit

scrub_free_csums.exit:                            ; preds = %list_del.exit.i.scrub_free_csums.exit_crit_edge, %for.end42.scrub_free_csums.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %sctx) #14
  br label %cleanup43

cleanup43:                                        ; preds = %scrub_free_csums.exit, %entry.cleanup43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_scrub_pause(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %scrub_pause_req = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 125
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %scrub_pause_req, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrub_pause_req, ptr %scrub_pause_req, i32 1, ptr elementtype(i32) %scrub_pause_req) #14, !srcloc !151
  %scrubs_paused = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 126
  %call.i.i3547 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_paused, i32 noundef 4) #14
  %1 = ptrtoint ptr %scrubs_paused to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %scrubs_paused, align 4
  %scrubs_running = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 124
  %call.i.i3648 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %3 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not49 = icmp eq i32 %2, %4
  br i1 %cmp.not49, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 128
  br label %while.body

while.body:                                       ; preds = %do.end20.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 4200) #14
  %call.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_paused, i32 noundef 4) #14
  %5 = ptrtoint ptr %scrubs_paused to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %scrubs_paused, align 4
  %call.i.i38 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %7 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp10 = icmp eq i32 %6, %8
  br i1 %cmp10, label %while.body.do.end20_crit_edge, label %if.end

while.body.do.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call1143 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i3944 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_paused, i32 noundef 4) #14
  %10 = ptrtoint ptr %scrubs_paused to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %scrubs_paused, align 4
  %call.i.i4045 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %12 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp1646 = icmp eq i32 %11, %13
  br i1 %cmp1646, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_paused, i32 noundef 4) #14
  %14 = ptrtoint ptr %scrubs_paused to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %scrubs_paused, align 4
  %call.i.i40 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %16 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %scrubs_running, align 4
  %cmp16 = icmp eq i32 %15, %17
  br i1 %cmp16, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end20

do.end20:                                         ; preds = %for.end, %while.body.do.end20_crit_edge
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %call.i.i35 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_paused, i32 noundef 4) #14
  %18 = ptrtoint ptr %scrubs_paused to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %scrubs_paused, align 4
  %call.i.i36 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %20 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %scrubs_running, align 4
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %do.end20.while.end_crit_edge, label %do.end20.while.body_crit_edge

do.end20.while.body_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end20.while.end_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end20.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_scrub_continue(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_pause_req = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 125
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %scrub_pause_req, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrub_pause_req, ptr %scrub_pause_req, i32 1, ptr elementtype(i32) %scrub_pause_req) #14, !srcloc !152
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 128
  tail call void @__wake_up(ptr noundef %scrub_pause_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_scrub_cancel(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %scrubs_running = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 124
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %0 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %scrub_lock) #14
  br label %return

if.end:                                           ; preds = %entry
  %scrub_cancel_req = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 127
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scrub_cancel_req, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %scrub_cancel_req, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrub_cancel_req, ptr %scrub_cancel_req, i32 1, ptr elementtype(i32) %scrub_cancel_req) #14, !srcloc !151
  %call.i.i3746 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %3 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not47 = icmp eq i32 %4, 0
  br i1 %tobool4.not47, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 128
  br label %while.body

while.body:                                       ; preds = %do.end20.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 4224) #14
  %call.i.i38 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %5 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %while.body.do.end20_crit_edge, label %if.end12

while.body.do.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

if.end12:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call1343 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i3944 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %8 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %scrubs_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1645 = icmp eq i32 %9, 0
  br i1 %cmp1645, label %if.end12.for.end_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  br label %cleanup

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  call void @schedule() #14
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %10 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %scrubs_running, align 4
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end12.for.end_crit_edge
  call void @finish_wait(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end20

do.end20:                                         ; preds = %for.end, %while.body.do.end20_crit_edge
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %call.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %scrubs_running, i32 noundef 4) #14
  %12 = ptrtoint ptr %scrubs_running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %scrubs_running, align 4
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %do.end20.while.end_crit_edge, label %do.end20.while.body_crit_edge

do.end20.while.body_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end20.while.end_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end20.while.end_crit_edge, %if.end.while.end_crit_edge
  %call.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef %scrub_cancel_req, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrub_cancel_req, i32 1, i32 3, i32 1) #14
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrub_cancel_req, ptr %scrub_cancel_req, i32 1, ptr elementtype(i32) %scrub_cancel_req) #14, !srcloc !152
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %while.end ], [ -107, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_scrub_cancel_dev(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %scrub_ctx = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 26
  %2 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scrub_ctx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %scrub_lock) #14
  br label %cleanup22

if.end:                                           ; preds = %entry
  %cancel_req = getelementptr inbounds %struct.scrub_ctx, ptr %3, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel_req, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %cancel_req, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cancel_req, ptr %cancel_req, i32 1, ptr elementtype(i32) %cancel_req) #14, !srcloc !151
  %5 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scrub_ctx, align 4
  %tobool4.not39 = icmp eq ptr %6, null
  br i1 %tobool4.not39, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 128
  br label %while.body

while.body:                                       ; preds = %do.end19.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 4248) #14
  %7 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scrub_ctx, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %while.body.do.end19_crit_edge, label %if.end12

while.body.do.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.end12:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call37 = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %10 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scrub_ctx, align 4
  %cmp1438 = icmp eq ptr %11, null
  br i1 %cmp1438, label %if.end12.for.end_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  br label %cleanup

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  call void @schedule() #14
  %call = call i32 @prepare_to_wait_event(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %12 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scrub_ctx, align 4
  %cmp14 = icmp eq ptr %13, null
  br i1 %cmp14, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end12.for.end_crit_edge
  call void @finish_wait(ptr noundef %scrub_pause_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end19

do.end19:                                         ; preds = %for.end, %while.body.do.end19_crit_edge
  call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  %14 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scrub_ctx, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %do.end19.while.end_crit_edge, label %do.end19.while.body_crit_edge

do.end19.while.body_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end19.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %scrub_lock) #14
  br label %cleanup22

cleanup22:                                        ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %while.end ], [ -107, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_scrub_progress(ptr nocapture noundef readonly %fs_info, i64 noundef %devid, ptr nocapture noundef writeonly %progress) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.btrfs_dev_lookup_args, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #14
  %0 = getelementptr inbounds i8, ptr %args, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %devid, ptr %args, align 8
  %uuid = getelementptr inbounds %struct.btrfs_dev_lookup_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %uuid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %uuid, align 8
  %fsid = getelementptr inbounds %struct.btrfs_dev_lookup_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %fsid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fsid, align 4
  %missing = getelementptr inbounds %struct.btrfs_dev_lookup_args, ptr %args, i32 0, i32 3
  %5 = ptrtoint ptr %missing to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %missing, align 8
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %6 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex = getelementptr inbounds %struct.btrfs_fs_devices, ptr %7, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %device_list_mutex, i32 noundef 0) #14
  %8 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_devices, align 8
  %call = call ptr @btrfs_find_device(ptr noundef %9, ptr noundef nonnull %args) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.end

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread

if.end:                                           ; preds = %entry
  %scrub_ctx = getelementptr inbounds %struct.btrfs_device, ptr %call, i32 0, i32 26
  %10 = ptrtoint ptr %scrub_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scrub_ctx, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end.thread_crit_edge, label %if.end5

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %stat = getelementptr inbounds %struct.scrub_ctx, ptr %11, i32 0, i32 20
  %12 = call ptr @memcpy(ptr %progress, ptr %stat, i32 120)
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end5, %if.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %spec.select = phi i32 [ -107, %if.end.if.end.thread_crit_edge ], [ -19, %entry.if.end.thread_crit_edge ], [ 0, %if.end5 ]
  %13 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex7 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %14, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #14
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_work(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_bio_end_io_worker(ptr nocapture noundef %work) #0 align 64 {
entry:
  %__shash_desc.i.i.i = alloca [376 x i8], align 8
  %calculated_csum.i.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -176
  %sctx1 = getelementptr i8, ptr %work, i32 -172
  %0 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx1, align 4
  %page_count = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %3)
  %cmp = icmp slt i32 %3, 33
  br i1 %cmp, label %cond.end, label %cond.false, !prof !153

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.16, i32 noundef 2365) #20
  unreachable

cond.end:                                         ; preds = %entry
  %status = getelementptr i8, ptr %work, i32 -160
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %page_count, align 8
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %for.cond.preheader

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp560 = icmp sgt i32 %.pr, 0
  br i1 %cmp560, label %for.body.lr.ph, label %for.cond.preheader.for.end22_crit_edge

for.cond.preheader.for.end22_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pagev = getelementptr i8, ptr %work, i32 -136
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %pagev, i32 0, i32 %i.061
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %io_error = getelementptr inbounds %struct.scrub_page, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %io_error, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %io_error, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr inbounds %struct.scrub_block, ptr %11, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load6 = load i8, ptr %12, align 4
  %bf.clear7 = and i8 %bf.load6, -33
  store i8 %bf.clear7, ptr %12, align 4
  %inc = add nuw nsw i32 %i.061, 1
  %14 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_count, align 8
  %cmp5 = icmp slt i32 %inc, %15
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %cond.end.if.end_crit_edge
  %16 = phi i32 [ %.pr, %cond.end.if.end_crit_edge ], [ %15, %for.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1162 = icmp sgt i32 %16, 0
  br i1 %cmp1162, label %for.body12.lr.ph, label %if.end.for.end22_crit_edge

if.end.for.end22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.body12.lr.ph:                                 ; preds = %if.end
  %pagev14 = getelementptr i8, ptr %work, i32 -136
  br label %for.body12

for.body12:                                       ; preds = %if.end19.for.body12_crit_edge, %for.body12.lr.ph
  %i.163 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc21, %if.end19.for.body12_crit_edge ]
  %arrayidx15 = getelementptr [32 x ptr], ptr %pagev14, i32 0, i32 %i.163
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %outstanding_pages = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_pages, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  call void @llvm.prefetch.p0(ptr %outstanding_pages, i32 1, i32 3, i32 1) #14
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_pages, ptr %outstanding_pages, i32 1, ptr elementtype(i32) %outstanding_pages) #14, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then18, label %for.body12.if.end19_crit_edge

for.body12.if.end19_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then18:                                        ; preds = %for.body12
  %22 = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %22, align 4
  %24 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then18.if.end5.i_crit_edge, label %if.else.i

if.then18.if.end5.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.else.i:                                        ; preds = %if.then18
  %bf.clear5.i.i = and i8 %bf.load.i, 47
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.clear5.i.i, ptr %22, align 4
  %page_count.i.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.i58 = icmp slt i32 %27, 1
  br i1 %cmp.i.i58, label %do.end.i.i, label %if.else.i.if.end.i.i_crit_edge, !prof !154

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1789, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.else.i.if.end.i.i_crit_edge
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %20, align 4
  %flags25.i.i = getelementptr inbounds %struct.scrub_page, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %flags25.i.i, align 8
  %and.i.i = and i64 %31, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool26.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i59 = call fastcc i32 @scrub_checksum_data(ptr noundef %20) #14
  br label %if.end66.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %and28.i.i = and i64 %31, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28.i.i)
  %tobool29.not.i.i = icmp eq i64 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.else32.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call31.i.i = call fastcc i32 @scrub_checksum_tree_block(ptr noundef %20) #14
  br label %if.end66.i.i

if.else32.i.i:                                    ; preds = %if.else.i.i
  %and33.i.i = and i64 %31, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i.i)
  %tobool34.not.i.i = icmp eq i64 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %do.end50.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.else32.i.i
  %sctx1.i.i.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 4
  %32 = ptrtoint ptr %sctx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sctx1.i.i.i, align 4
  %fs_info2.i.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %fs_info2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info2.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc.i.i.i) #14
  %36 = call ptr @memset(ptr %__shash_desc.i.i.i, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %calculated_csum.i.i.i) #14
  %37 = call ptr @memset(ptr %calculated_csum.i.i.i, i32 255, i32 32)
  %38 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i.i = icmp slt i32 %39, 1
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !154

do.body4.i.i.i:                                   ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1914, 0\0A.popsection", ""() #14, !srcloc !164
  unreachable

do.end9.i.i.i:                                    ; preds = %if.then35.i.i
  %page.i.i.i = getelementptr inbounds %struct.scrub_page, ptr %29, i32 0, i32 1
  %40 = ptrtoint ptr %page.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page.i.i.i, align 4
  %call.i.i.i = call ptr @page_address(ptr noundef %41) #14
  %logical.i.i.i = getelementptr inbounds %struct.scrub_page, ptr %29, i32 0, i32 6
  %42 = ptrtoint ptr %logical.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %logical.i.i.i, align 8
  %bytenr.i.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %bytenr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %bytenr.i.i.i.i, align 1
  %46 = call i64 @llvm.bswap.i64(i64 %45) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %46)
  %cmp11.not.i.i.i = icmp ne i64 %43, %46
  %spec.select.i.i.i = zext i1 %cmp11.not.i.i.i to i32
  %generation.i.i.i = getelementptr inbounds %struct.scrub_page, ptr %29, i32 0, i32 5
  %47 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %generation.i.i.i, align 8
  %generation.i.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %generation.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %generation.i.i.i.i, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %51)
  %cmp15.not.i.i.i = icmp ne i64 %48, %51
  %fail_gen.0.neg.i.i.i = sext i1 %cmp15.not.i.i.i to i32
  %fsid.i.i.i = getelementptr %struct.btrfs_super_block, ptr %call.i.i.i, i32 0, i32 1
  %dev.i.i.i.i = getelementptr inbounds %struct.scrub_page, ptr %29, i32 0, i32 2
  %52 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i.i.i, align 8
  %fs_devices1.i.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %fs_devices1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fs_devices1.i.i.i.i, align 8
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %fsid.i.i.i, ptr noundef dereferenceable(16) %55, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool.not.i.not.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %inc23.i.i.i = select i1 %cmp11.not.i.i.i, i32 2, i32 1
  %fail_cor.1.i.i.i = select i1 %tobool.not.i.not.i.i.i, i32 %spec.select.i.i.i, i32 %inc23.i.i.i
  %csum_shash.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 174
  %56 = ptrtoint ptr %csum_shash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csum_shash.i.i.i, align 8
  %58 = ptrtoint ptr %__shash_desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %__shash_desc.i.i.i, align 8
  %base.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %57, i32 0, i32 2
  %59 = ptrtoint ptr %base.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base.i.i.i.i.i.i, align 128
  %and.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %if.end.i.i.i.i, label %do.end9.i.i.i.crypto_shash_init.exit.i.i.i_crit_edge

do.end9.i.i.i.crypto_shash_init.exit.i.i.i_crit_edge: ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %crypto_shash_init.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %__crt_alg.i.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %57, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %__crt_alg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_alg.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %62, i32 -256
  %63 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i.i.i.i.i, align 128
  %call3.i.i.i.i = call i32 %64(ptr noundef nonnull %__shash_desc.i.i.i) #14
  br label %crypto_shash_init.exit.i.i.i

crypto_shash_init.exit.i.i.i:                     ; preds = %if.end.i.i.i.i, %do.end9.i.i.i.crypto_shash_init.exit.i.i.i_crit_edge
  %call27.i.i.i = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc.i.i.i, ptr noundef %fsid.i.i.i, i32 noundef 4064, ptr noundef nonnull %calculated_csum.i.i.i) #14
  %65 = ptrtoint ptr %fs_info2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fs_info2.i.i.i, align 8
  %csum_size.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %66, i32 0, i32 169
  %67 = ptrtoint ptr %csum_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %csum_size.i.i.i, align 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %calculated_csum.i.i.i, ptr %call.i.i.i, i32 %68) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool32.not.i.i.i = icmp ne i32 %bcmp.i.i.i, 0
  %inc34.i.i.i = zext i1 %tobool32.not.i.i.i to i32
  %fail_cor.2.i.i.i = add nuw nsw i32 %fail_cor.1.i.i.i, %inc34.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %fail_cor.2.i.i.i, i32 %fail_gen.0.neg.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %fail_cor.2.i.i.i, %fail_gen.0.neg.i.i.i
  br i1 %tobool36.not.i.i.i, label %crypto_shash_init.exit.i.i.i.scrub_checksum_super.exit.i.i_crit_edge, label %if.then37.i.i.i

crypto_shash_init.exit.i.i.i.scrub_checksum_super.exit.i.i_crit_edge: ; preds = %crypto_shash_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_checksum_super.exit.i.i

if.then37.i.i.i:                                  ; preds = %crypto_shash_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock.i.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %33, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock.i.i.i) #14
  %super_errors.i.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %33, i32 0, i32 20, i32 9
  %69 = ptrtoint ptr %super_errors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %super_errors.i.i.i, align 8
  %inc38.i.i.i = add i64 %70, 1
  store i64 %inc38.i.i.i, ptr %super_errors.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail_cor.2.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %fail_cor.2.i.i.i, 0
  %71 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i.i.i, align 8
  %..i.i.i = select i1 %tobool40.not.i.i.i, i32 4, i32 3
  call void @btrfs_dev_stat_inc_and_print(ptr noundef %72, i32 noundef %..i.i.i) #14
  br label %scrub_checksum_super.exit.i.i

scrub_checksum_super.exit.i.i:                    ; preds = %if.then37.i.i.i, %crypto_shash_init.exit.i.i.i.scrub_checksum_super.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %calculated_csum.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i.i.i) #14
  br label %land.lhs.true.i

do.end50.i.i:                                     ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1799, i32 noundef 9, ptr noundef null) #14
  br label %land.lhs.true.i

if.end66.i.i:                                     ; preds = %if.then30.i.i, %if.then27.i.i
  %ret.0.i.i = phi i32 [ %call.i.i59, %if.then27.i.i ], [ %call31.i.i, %if.then30.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool67.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end66.i.i.land.lhs.true.i_crit_edge, label %if.end66.i.i.if.end5.i_crit_edge

if.end66.i.i.if.end5.i_crit_edge:                 ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end66.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end66.i.i.land.lhs.true.i_crit_edge, %do.end50.i.i, %scrub_checksum_super.exit.i.i
  %sctx.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 4
  %73 = ptrtoint ptr %sctx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sctx.i, align 4
  %is_dev_replace.i = getelementptr inbounds %struct.scrub_ctx, ptr %74, i32 0, i32 14
  %75 = ptrtoint ptr %is_dev_replace.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %is_dev_replace.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool3.not.i = icmp eq i32 %76, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end19_crit_edge, label %if.then4.i

land.lhs.true.i.if.end19_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then4.i:                                       ; preds = %land.lhs.true.i
  %fs_info1.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %fs_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fs_info1.i.i, align 8
  %sparity.i.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 5
  %79 = ptrtoint ptr %sparity.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sparity.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.then4.i.if.end19_crit_edge

if.then4.i.if.end19_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.cond.preheader.i.i:                           ; preds = %if.then4.i
  %81 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %page_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp11.i.i = icmp sgt i32 %82, 0
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.if.end19_crit_edge

for.cond.preheader.i.i.if.end19_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %num_write_errors.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %78, i32 0, i32 154, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end4.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %page_num.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end4.i.i.for.body.i.i_crit_edge ]
  %call.i44.i = call fastcc i32 @scrub_write_page_to_dev_replace(ptr noundef %20, i32 noundef %page_num.012.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool2.not.i.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i.i.if.end4.i.i_crit_edge, label %if.then3.i.i

for.body.i.i.if.end4.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors.i.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_write_errors.i.i) #14
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %for.body.i.i.if.end4.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %page_num.012.i.i, 1
  %83 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_count.i.i, align 4
  %cmp.i45.i = icmp slt i32 %inc.i.i, %84
  br i1 %cmp.i45.i, label %if.end4.i.i.for.body.i.i_crit_edge, label %if.end4.i.i.if.end19_crit_edge

if.end4.i.i.if.end19_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end5.i:                                        ; preds = %if.end66.i.i.if.end5.i_crit_edge, %if.then18.if.end5.i_crit_edge
  call fastcc void @scrub_handle_errored_block(ptr noundef %20) #14
  %sparity.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 5
  %85 = ptrtoint ptr %sparity.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sparity.i, align 4
  %tobool6.not.i = icmp eq ptr %86, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end19_crit_edge, label %land.lhs.true9.i

if.end5.i.if.end19_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

land.lhs.true9.i:                                 ; preds = %if.end5.i
  %87 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load10.i = load i8, ptr %22, align 4
  %88 = and i8 %bf.load10.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool14.not.i = icmp eq i8 %88, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %land.lhs.true9.i.if.end19_crit_edge

land.lhs.true9.i.if.end19_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then15.i:                                      ; preds = %land.lhs.true9.i
  %89 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %20, align 4
  %logical.i = getelementptr inbounds %struct.scrub_page, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %logical.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %logical.i, align 8
  %page_count.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 1
  %93 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %page_count.i, align 4
  %sub.i = add i32 %94, -1
  %arrayidx17.i = getelementptr [16 x ptr], ptr %20, i32 0, i32 %sub.i
  %95 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx17.i, align 4
  %logical18.i = getelementptr inbounds %struct.scrub_page, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %logical18.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %logical18.i, align 8
  %sctx19.i = getelementptr inbounds %struct.scrub_block, ptr %20, i32 0, i32 4
  %99 = ptrtoint ptr %sctx19.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sctx19.i, align 4
  %fs_info.i = getelementptr inbounds %struct.scrub_ctx, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fs_info.i, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %102, i32 0, i32 167
  %103 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sectorsize.i, align 4
  %conv.i = zext i32 %104 to i64
  %add.i = sub i64 %98, %92
  %sub20.i = add i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub20.i)
  %cmp.i = icmp ult i64 %sub20.i, 4294967296
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !prof !153

cond.false.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.20, i32 noundef 2463) #22
  unreachable

cond.end.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv26.i = trunc i64 %sub20.i to i32
  %ebitmap.i.i = getelementptr inbounds %struct.scrub_parity, ptr %86, i32 0, i32 10
  %105 = ptrtoint ptr %ebitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ebitmap.i.i, align 8
  call fastcc void @__scrub_mark_bitmap(ptr noundef nonnull %86, ptr noundef %106, i64 noundef %92, i32 noundef %conv26.i) #14
  br label %if.end19

if.end19:                                         ; preds = %cond.end.i, %land.lhs.true9.i.if.end19_crit_edge, %if.end5.i.if.end19_crit_edge, %if.end4.i.i.if.end19_crit_edge, %for.cond.preheader.i.i.if.end19_crit_edge, %if.then4.i.if.end19_crit_edge, %land.lhs.true.i.if.end19_crit_edge, %for.body12.if.end19_crit_edge
  call fastcc void @scrub_block_put(ptr noundef %20)
  %inc21 = add nuw nsw i32 %i.163, 1
  %107 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %page_count, align 8
  %cmp11 = icmp slt i32 %inc21, %108
  br i1 %cmp11, label %if.end19.for.body12_crit_edge, label %if.end19.for.end22_crit_edge

if.end19.for.end22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

if.end19.for.body12_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body12

for.end22:                                        ; preds = %if.end19.for.end22_crit_edge, %if.end.for.end22_crit_edge, %for.cond.preheader.for.end22_crit_edge
  %bio = getelementptr i8, ptr %work, i32 -164
  %109 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bio, align 4
  call void @bio_put(ptr noundef %110) #14
  %111 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %bio, align 4
  %list_lock = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %list_lock) #14
  %first_free = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 2
  %112 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %first_free, align 4
  %next_free = getelementptr i8, ptr %work, i32 -4
  %114 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %next_free, align 4
  %115 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr, align 8
  store i32 %116, ptr %first_free, align 4
  call void @_raw_spin_unlock(ptr noundef %list_lock) #14
  %is_dev_replace = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 14
  %117 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool26.not = icmp eq i32 %118, 0
  br i1 %tobool26.not, label %for.end22.if.end30_crit_edge, label %land.lhs.true

for.end22.if.end30_crit_edge:                     ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true:                                    ; preds = %for.end22
  %flush_all_writes = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 19
  %119 = ptrtoint ptr %flush_all_writes to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %flush_all_writes, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool27.not = icmp eq i8 %120, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end30_crit_edge, label %if.then28

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %wr_lock = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %wr_lock, i32 noundef 0) #14
  call fastcc void @scrub_wr_submit(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %wr_lock) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true.if.end30_crit_edge, %for.end22.if.end30_crit_edge
  call fastcc void @scrub_pending_bio_dec(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #9 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %expr, ptr noundef nonnull @.str.3, i32 noundef %line) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #14, !srcloc !166
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_block_put(ptr noundef %sblock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i, !prof !153

if.end5.i.i.i.if.end3_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #14
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  %sparity = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 5
  %1 = ptrtoint ptr %sparity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sparity, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @scrub_parity_put(ptr noundef nonnull %2)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %3 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13 = icmp sgt i32 %4, 0
  br i1 %cmp13, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %scrub_page_put.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %scrub_page_put.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %sblock, i32 0, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %refs.i = getelementptr inbounds %struct.scrub_page, ptr %6, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !162
  %asmresult.i.i.i.i.i.i11 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i11)
  %cmp.i.i.i12 = icmp eq i32 %asmresult.i.i.i.i.i.i11, 0
  br i1 %cmp.i.i.i12, label %if.then.i, label %for.body.scrub_page_put.exit_crit_edge

for.body.scrub_page_put.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_page_put.exit

if.then.i:                                        ; preds = %for.body
  %page.i = getelementptr inbounds %struct.scrub_page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %9, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %6) #14
  br label %scrub_page_put.exit

scrub_page_put.exit:                              ; preds = %if.end.i, %for.body.scrub_page_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %10 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_count, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %scrub_page_put.exit.for.body_crit_edge, label %scrub_page_put.exit.for.end_crit_edge

scrub_page_put.exit.for.end_crit_edge:            ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

scrub_page_put.exit.for.body_crit_edge:           ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %scrub_page_put.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %sblock) #14
  br label %if.end3

if.end3:                                          ; preds = %for.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_wr_submit(ptr noundef %sctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_curr_bio = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 16
  %0 = ptrtoint ptr %wr_curr_bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_curr_bio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wr_curr_bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %wr_curr_bio, align 8
  %bio = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bio, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bdev, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %do.end, label %if.end.if.end19_crit_edge, !prof !154

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1720, i32 noundef 9, ptr noundef null) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %refs.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !154

if.end19.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.scrub_pending_bio_inc.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.scrub_pending_bio_inc.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_pending_bio_inc.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #14
  br label %scrub_pending_bio_inc.exit

scrub_pending_bio_inc.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.scrub_pending_bio_inc.exit_crit_edge
  %bios_in_flight.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bios_in_flight.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %bios_in_flight.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bios_in_flight.i, ptr %bios_in_flight.i, i32 1, ptr elementtype(i32) %bios_in_flight.i) #14, !srcloc !151
  %10 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bio, align 4
  tail call void @btrfsic_submit_bio(ptr noundef %11) #14
  %fs_info = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 176
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp.i.not = icmp eq i64 %16, 0
  br i1 %cmp.i.not, label %scrub_pending_bio_inc.exit.cleanup_crit_edge, label %if.then27

scrub_pending_bio_inc.exit.cleanup_crit_edge:     ; preds = %scrub_pending_bio_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27:                                        ; preds = %scrub_pending_bio_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %physical = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %physical, align 8
  %page_count = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_count, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 167
  %21 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sectorsize, align 4
  %mul = mul i32 %22, %20
  %conv = zext i32 %mul to i64
  %add = add i64 %18, %conv
  %write_pointer = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 15
  %23 = ptrtoint ptr %write_pointer to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add, ptr %write_pointer, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %scrub_pending_bio_inc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_pending_bio_dec(ptr noundef %sctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_in_flight = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bios_in_flight, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %bios_in_flight, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bios_in_flight, ptr %bios_in_flight, i32 1, ptr elementtype(i32) %bios_in_flight) #14, !srcloc !152
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %list_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %refs.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.scrub_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.scrub_put_ctx.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #14
  br label %scrub_put_ctx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call fastcc void @scrub_free_ctx(ptr noundef %sctx) #14
  br label %scrub_put_ctx.exit

scrub_put_ctx.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.scrub_put_ctx.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_handle_errored_block(ptr nocapture noundef %sblock_to_check) unnamed_addr #0 align 64 {
entry:
  %bioc.i = alloca ptr, align 4
  %mapped_length.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx1 = getelementptr inbounds %struct.scrub_block, ptr %sblock_to_check, i32 0, i32 4
  %0 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx1, align 4
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock_to_check, i32 0, i32 1
  %2 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.body3, label %do.end8, !prof !154

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 827, 0\0A.popsection", ""() #14, !srcloc !167
  unreachable

do.end8:                                          ; preds = %entry
  %fs_info9 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fs_info9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info9, align 8
  %6 = ptrtoint ptr %sblock_to_check to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sblock_to_check, align 4
  %flags = getelementptr inbounds %struct.scrub_page, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags, align 8
  %and = and i64 %9, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %super_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 9
  %10 = ptrtoint ptr %super_errors to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %super_errors, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %super_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %cleanup541

if.end13:                                         ; preds = %do.end8
  %logical16 = getelementptr inbounds %struct.scrub_page, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %logical16 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %logical16, align 8
  %mirror_num = getelementptr inbounds %struct.scrub_page, ptr %7, i32 0, i32 10
  %14 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mirror_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp20 = icmp eq i8 %15, 0
  br i1 %cmp20, label %do.body29, label %do.end37, !prof !154

do.body29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 841, 0\0A.popsection", ""() #14, !srcloc !168
  unreachable

do.end37:                                         ; preds = %if.end13
  %conv = zext i8 %15 to i32
  %sub = add nsw i32 %conv, -1
  %and45 = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45)
  %tobool46.not = icmp ne i64 %and45, 0
  %have_csum51 = getelementptr inbounds %struct.scrub_page, ptr %7, i32 0, i32 11
  %16 = ptrtoint ptr %have_csum51 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %have_csum51, align 1
  %dev54 = getelementptr inbounds %struct.scrub_page, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev54, align 8
  %is_dev_replace = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool55.not = icmp eq i32 %20, 0
  br i1 %tobool55.not, label %land.lhs.true, label %do.end37.if.end58_crit_edge

do.end37.if.end58_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true:                                    ; preds = %do.end37
  %call = tail call zeroext i1 @btrfs_repair_one_zone(ptr noundef %5, i64 noundef %13) #14
  br i1 %call, label %land.lhs.true.cleanup541_crit_edge, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true.cleanup541_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup541

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %do.end37.if.end58_crit_edge
  %21 = tail call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %26, 262144
  %or.i = or i32 %26, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %call.i22 = tail call ptr @btrfs_lookup_block_group(ptr noundef %5, i64 noundef %13) #14
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %if.then.i24, label %if.end.i

if.then.i24:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.32, i32 noundef 424) #22
  unreachable

if.end.i:                                         ; preds = %if.end58
  %flags.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i22, i32 0, i32 10
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flags.i, align 8
  %and.i25 = and i64 %28, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i25)
  %tobool1.not.i = icmp eq i64 %and.i25, 0
  br i1 %tobool1.not.i, label %if.end.i.lock_full_stripe.exit.thread_crit_edge, label %if.end3.i

if.end.i.lock_full_stripe.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_full_stripe.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %full_stripe_locks_root.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i22, i32 0, i32 45
  %full_stripe_len.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i22, i32 0, i32 15
  %29 = ptrtoint ptr %full_stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %full_stripe_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.i = icmp eq i32 %30, -1
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end3.i.get_full_stripe_logical.exit.i_crit_edge

if.end3.i.get_full_stripe_logical.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_full_stripe_logical.exit.i

land.rhs.i.i:                                     ; preds = %if.end3.i
  %.b45.i.i = load i1, ptr @get_full_stripe_logical.__already_done, align 1
  br i1 %.b45.i.i, label %land.rhs.i.i.get_full_stripe_logical.exit.i_crit_edge, label %if.then.i.i, !prof !153

land.rhs.i.i.get_full_stripe_logical.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_full_stripe_logical.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @get_full_stripe_logical.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 390, i32 noundef 9, ptr noundef null) #14
  br label %get_full_stripe_logical.exit.i

get_full_stripe_logical.exit.i:                   ; preds = %if.then.i.i, %land.rhs.i.i.get_full_stripe_logical.exit.i_crit_edge, %if.end3.i.get_full_stripe_logical.exit.i_crit_edge
  %start.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i22, i32 0, i32 3
  %31 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %start.i.i, align 8
  %sub.i.i = sub i64 %13, %32
  %33 = ptrtoint ptr %full_stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %full_stripe_len.i.i, align 8
  %conv.i.i = zext i32 %34 to i64
  %call.i.i26 = tail call i64 @div64_u64(i64 noundef %sub.i.i, i64 noundef %conv.i.i) #14
  %35 = ptrtoint ptr %full_stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %full_stripe_len.i.i, align 8
  %conv37.i.i = zext i32 %36 to i64
  %mul.i.i = mul i64 %call.i.i26, %conv37.i.i
  %37 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start.i.i, align 8
  %add.i.i = add i64 %mul.i.i, %38
  %lock.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i22, i32 0, i32 45, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %get_full_stripe_logical.exit.i.if.end.i.i_crit_edge, label %land.rhs.i21.i

get_full_stripe_logical.exit.i.if.end.i.i_crit_edge: ; preds = %get_full_stripe_logical.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.rhs.i21.i:                                   ; preds = %get_full_stripe_logical.exit.i
  %dep_map.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i22, i32 0, i32 45, i32 1, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i21.i.if.end.i.i_crit_edge, !prof !154

land.rhs.i21.i.if.end.i.i_crit_edge:              ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 318, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i21.i.if.end.i.i_crit_edge, %get_full_stripe_logical.exit.i.if.end.i.i_crit_edge
  %40 = ptrtoint ptr %full_stripe_locks_root.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %full_stripe_locks_root.i, align 4
  %tobool25.not73.i.i = icmp eq ptr %41, null
  br i1 %tobool25.not73.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end34.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %42 = phi ptr [ %48, %if.end34.i.i.while.body.i.i_crit_edge ], [ %41, %if.end.i.i.while.body.i.i_crit_edge ]
  %logical.i.i = getelementptr inbounds %struct.full_stripe_lock, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %logical.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %logical.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %add.i.i)
  %cmp27.i.i = icmp ugt i64 %44, %add.i.i
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.else.i.i

if.then28.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 2
  br label %if.end34.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %add.i.i)
  %cmp30.i.i = icmp ult i64 %44, %add.i.i
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.else32.i.i

if.then31.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  br label %if.end34.i.i

if.else32.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %refs.i.i = getelementptr inbounds %struct.full_stripe_lock, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %refs.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %refs.i.i, align 8
  %inc.i.i = add i64 %46, 1
  store i64 %inc.i.i, ptr %refs.i.i, align 8
  br label %insert_full_stripe_lock.exit.i

if.end34.i.i:                                     ; preds = %if.then31.i.i, %if.then28.i.i
  %p.1.i.i = phi ptr [ %rb_left.i.i, %if.then28.i.i ], [ %rb_right.i.i, %if.then31.i.i ]
  %47 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p.1.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %48, null
  br i1 %tobool25.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %if.end34.i.i.while.body.i.i_crit_edge

if.end34.i.i.while.body.i.i_crit_edge:            ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i = ptrtoint ptr %42 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.end.i.i.while.end.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end.i.i.while.end.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %full_stripe_locks_root.i, %if.end.i.i.while.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 128) #19
  %tobool36.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool36.not.i.i, label %lock_full_stripe.exit.thread164, label %if.end39.i.i

lock_full_stripe.exit.thread164:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i22) #14
  br label %if.then63

if.end39.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %logical40.i.i = getelementptr inbounds %struct.full_stripe_lock, ptr %call7.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %logical40.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add.i.i, ptr %logical40.i.i, align 8
  %refs41.i.i = getelementptr inbounds %struct.full_stripe_lock, ptr %call7.i.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %refs41.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1, ptr %refs41.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.full_stripe_lock, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @insert_full_stripe_lock.__key) #14
  %52 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %parent.0.lcssa.i.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %55 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %full_stripe_locks_root.i) #14
  br label %insert_full_stripe_lock.exit.i

insert_full_stripe_lock.exit.i:                   ; preds = %if.end39.i.i, %if.else32.i.i
  %retval.0.i.i = phi ptr [ %42, %if.else32.i.i ], [ %call7.i.i.i, %if.end39.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  %cmp.i22.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i, label %lock_full_stripe.exit, label %if.end10.i

if.end10.i:                                       ; preds = %insert_full_stripe_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %mutex.i = getelementptr inbounds %struct.full_stripe_lock, ptr %retval.0.i.i, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  br label %lock_full_stripe.exit.thread

lock_full_stripe.exit.thread:                     ; preds = %if.end10.i, %if.end.i.lock_full_stripe.exit.thread_crit_edge
  %full_stripe_locked.0.ph = phi i8 [ 1, %if.end10.i ], [ 0, %if.end.i.lock_full_stripe.exit.thread_crit_edge ]
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i22) #14
  br label %if.end76

lock_full_stripe.exit:                            ; preds = %insert_full_stripe_lock.exit.i
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i22) #14
  %cmp61 = icmp slt ptr %retval.0.i.i, null
  br i1 %cmp61, label %lock_full_stripe.exit.if.then63_crit_edge, label %lock_full_stripe.exit.if.end76_crit_edge

lock_full_stripe.exit.if.end76_crit_edge:         ; preds = %lock_full_stripe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

lock_full_stripe.exit.if.then63_crit_edge:        ; preds = %lock_full_stripe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63

if.then63:                                        ; preds = %lock_full_stripe.exit.if.then63_crit_edge, %lock_full_stripe.exit.thread164
  %retval.0.i25.i167 = phi ptr [ inttoptr (i32 -12 to ptr), %lock_full_stripe.exit.thread164 ], [ %retval.0.i.i, %lock_full_stripe.exit.if.then63_crit_edge ]
  %56 = tail call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i27 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i27 to ptr
  %task.i28 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i28, align 8
  %flags1.i29 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %flags1.i29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags1.i29, align 4
  %and.i30 = and i32 %61, -262145
  %or.i31 = or i32 %and.i30, %and.i
  store i32 %or.i31, ptr %flags1.i29, align 4
  %stat_lock64 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock64) #14
  %cmp65 = icmp eq ptr %retval.0.i25.i167, inttoptr (i32 -12 to ptr)
  br i1 %cmp65, label %if.then67, label %if.then63.if.end70_crit_edge

if.then63.if.end70_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  %malloc_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 10
  %62 = ptrtoint ptr %malloc_errors to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %malloc_errors, align 8
  %inc69 = add i64 %63, 1
  store i64 %inc69, ptr %malloc_errors, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then63.if.end70_crit_edge
  %read_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 4
  %64 = ptrtoint ptr %read_errors to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %read_errors, align 8
  %inc72 = add i64 %65, 1
  store i64 %inc72, ptr %read_errors, align 8
  %uncorrectable_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 11
  %66 = ptrtoint ptr %uncorrectable_errors to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %uncorrectable_errors, align 8
  %inc74 = add i64 %67, 1
  store i64 %inc74, ptr %uncorrectable_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock64) #14
  br label %cleanup541

if.end76:                                         ; preds = %lock_full_stripe.exit.if.end76_crit_edge, %lock_full_stripe.exit.thread
  %full_stripe_locked.0119 = phi i8 [ %full_stripe_locked.0.ph, %lock_full_stripe.exit.thread ], [ 0, %lock_full_stripe.exit.if.end76_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 800) #19
  %tobool78.not = icmp eq ptr %call7.i.i.i32, null
  br i1 %tobool78.not, label %out.thread, label %if.end91

out.thread:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock80 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock80) #14
  %malloc_errors82 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 10
  %69 = ptrtoint ptr %malloc_errors82 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %malloc_errors82, align 8
  %inc83 = add i64 %70, 1
  store i64 %inc83, ptr %malloc_errors82, align 8
  %read_errors85 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 4
  %71 = ptrtoint ptr %read_errors85 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %read_errors85, align 8
  %inc86 = add i64 %72, 1
  store i64 %inc86, ptr %read_errors85, align 8
  %uncorrectable_errors88 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 11
  %73 = ptrtoint ptr %uncorrectable_errors88 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %uncorrectable_errors88, align 8
  %inc89 = add i64 %74, 1
  store i64 %inc89, ptr %uncorrectable_errors88, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock80) #14
  tail call void @btrfs_dev_stat_inc_and_print(ptr noundef %18, i32 noundef 1) #14
  br label %if.end534

if.end91:                                         ; preds = %if.end76
  %75 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sctx1, align 4
  %fs_info2.i = getelementptr inbounds %struct.scrub_ctx, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %fs_info2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fs_info2.i, align 8
  %79 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %page_count, align 4
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %78, i32 0, i32 167
  %81 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sectorsize.i, align 4
  %mul.i = mul i32 %82, %80
  %83 = ptrtoint ptr %sblock_to_check to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sblock_to_check, align 4
  %logical3.i = getelementptr inbounds %struct.scrub_page, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %logical3.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %logical3.i, align 8
  %generation6.i = getelementptr inbounds %struct.scrub_page, ptr %84, i32 0, i32 5
  %87 = ptrtoint ptr %generation6.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %generation6.i, align 8
  %flags9.i = getelementptr inbounds %struct.scrub_page, ptr %84, i32 0, i32 4
  %89 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %flags9.i, align 8
  %have_csum12.i = getelementptr inbounds %struct.scrub_page, ptr %84, i32 0, i32 11
  %91 = ptrtoint ptr %have_csum12.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i = load i8, ptr %have_csum12.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bioc.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mapped_length.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.not220.i = icmp eq i32 %mul.i, 0
  br i1 %cmp.not220.i, label %if.end91.do.body104_crit_edge, label %while.body.lr.ph.i

if.end91.do.body104_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body104

while.body.lr.ph.i:                               ; preds = %if.end91
  %conv.i = zext i32 %mul.i to i64
  %bf.shl.i = and i8 %bf.load.i, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool60.not.i = icmp sgt i8 %bf.load.i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %scrub_put_recover.exit208.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %page_index.0224.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc107.i, %scrub_put_recover.exit208.i.while.body.i_crit_edge ]
  %logical.0222.i = phi i64 [ %86, %while.body.lr.ph.i ], [ %add106.i, %scrub_put_recover.exit208.i.while.body.i_crit_edge ]
  %length.0221.i = phi i64 [ %conv.i, %while.body.lr.ph.i ], [ %sub105.i, %scrub_put_recover.exit208.i.while.body.i_crit_edge ]
  %92 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sectorsize.i, align 4
  %conv16.i = zext i32 %93 to i64
  %94 = call i64 @llvm.umin.i64(i64 %length.0221.i, i64 %conv16.i) #14
  %95 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %mapped_length.i, align 8
  %96 = ptrtoint ptr %bioc.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %bioc.i, align 4
  call void @btrfs_bio_counter_inc_blocked(ptr noundef %78) #14
  %call.i33 = call i32 @btrfs_map_sblock(ptr noundef %78, i32 noundef 3, i64 noundef %logical.0222.i, ptr noundef nonnull %mapped_length.i, ptr noundef nonnull %bioc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %lor.lhs.false.i, label %while.body.i.if.then.i35_crit_edge

while.body.i.if.then.i35_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i35

lor.lhs.false.i:                                  ; preds = %while.body.i
  %97 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bioc.i, align 4
  %tobool19.not.i = icmp eq ptr %98, null
  br i1 %tobool19.not.i, label %lor.lhs.false.i.if.then.i35_crit_edge, label %lor.lhs.false20.i

lor.lhs.false.i.if.then.i35_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i35

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i
  %99 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %mapped_length.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %94)
  %cmp21.i = icmp ult i64 %100, %94
  br i1 %cmp21.i, label %lor.lhs.false20.i.if.then.i35_crit_edge, label %if.end.i37

lor.lhs.false20.i.if.then.i35_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i35

if.then.i35:                                      ; preds = %lor.lhs.false20.i.if.then.i35_crit_edge, %lor.lhs.false.i.if.then.i35_crit_edge, %while.body.i.if.then.i35_crit_edge
  %101 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bioc.i, align 4
  call void @btrfs_put_bioc(ptr noundef %102) #14
  call void @btrfs_bio_counter_sub(ptr noundef %78, i64 noundef 1) #14
  br label %if.then94

if.end.i37:                                       ; preds = %lor.lhs.false20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3392, i32 noundef 16) #19
  %tobool24.not.i = icmp eq ptr %call7.i.i.i36, null
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  %104 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bioc.i, align 4
  call void @btrfs_put_bioc(ptr noundef %105) #14
  call void @btrfs_bio_counter_sub(ptr noundef %78, i64 noundef 1) #14
  br label %if.then94

if.end26.i:                                       ; preds = %if.end.i37
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i36, i32 noundef 4) #14
  %106 = ptrtoint ptr %call7.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 1, ptr %call7.i.i.i36, align 8
  %107 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bioc.i, align 4
  %bioc27.i = getelementptr inbounds %struct.scrub_recover, ptr %call7.i.i.i36, i32 0, i32 1
  %109 = ptrtoint ptr %bioc27.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %bioc27.i, align 4
  %110 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %mapped_length.i, align 8
  %map_length.i = getelementptr inbounds %struct.scrub_recover, ptr %call7.i.i.i36, i32 0, i32 2
  %112 = ptrtoint ptr %map_length.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %map_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %page_index.0224.i)
  %exitcond233.not.i = icmp eq i32 %page_index.0224.i, 16
  br i1 %exitcond233.not.i, label %cond.false33.i, label %cond.end34.i, !prof !154

cond.false33.i:                                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.34, i32 noundef 1309) #22
  unreachable

cond.end34.i:                                     ; preds = %if.end26.i
  %map_type.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %108, i32 0, i32 3
  %113 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %map_type.i.i, align 8
  %and.i.i38 = and i64 %114, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i38)
  %tobool.not.i.i39 = icmp eq i64 %and.i.i38, 0
  br i1 %tobool.not.i.i39, label %if.else.i.i40, label %cond.end34.i.for.body.lr.ph.i_crit_edge

cond.end34.i.for.body.lr.ph.i_crit_edge:          ; preds = %cond.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

if.else.i.i40:                                    ; preds = %cond.end34.i
  %and2.i.i = and i64 %114, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %scrub_nr_raid_mirrors.exit.i, label %if.else.i.i40.for.body.lr.ph.i_crit_edge

if.else.i.i40.for.body.lr.ph.i_crit_edge:         ; preds = %if.else.i.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

scrub_nr_raid_mirrors.exit.i:                     ; preds = %if.else.i.i40
  %num_stripes.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %108, i32 0, i32 9
  %115 = ptrtoint ptr %num_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %116)
  %cmp37.i = icmp slt i32 %116, 5
  br i1 %cmp37.i, label %117, label %scrub_nr_raid_mirrors.exit.i.for.body.lr.ph.i_crit_edge

scrub_nr_raid_mirrors.exit.i.for.body.lr.ph.i_crit_edge: ; preds = %scrub_nr_raid_mirrors.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

117:                                              ; preds = %scrub_nr_raid_mirrors.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp43218.i = icmp sgt i32 %116, 0
  br i1 %cmp43218.i, label %.for.body.lr.ph.i_crit_edge, label %.for.end.i_crit_edge

.for.end.i_crit_edge:                             ; preds = %117
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

.for.body.lr.ph.i_crit_edge:                      ; preds = %117
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %.for.body.lr.ph.i_crit_edge, %scrub_nr_raid_mirrors.exit.i.for.body.lr.ph.i_crit_edge, %if.else.i.i40.for.body.lr.ph.i_crit_edge, %cond.end34.i.for.body.lr.ph.i_crit_edge
  %118 = phi i32 [ %116, %.for.body.lr.ph.i_crit_edge ], [ 5, %scrub_nr_raid_mirrors.exit.i.for.body.lr.ph.i_crit_edge ], [ 2, %cond.end34.i.for.body.lr.ph.i_crit_edge ], [ 3, %if.else.i.i40.for.body.lr.ph.i_crit_edge ]
  %arrayidx91.i = getelementptr [16 x ptr], ptr %sblock_to_check, i32 0, i32 %page_index.0224.i
  br label %for.body.i

for.body.i:                                       ; preds = %scrub_get_recover.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mirror_index.0219.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc104.i, %scrub_get_recover.exit.i.for.body.i_crit_edge ]
  %sctx45.i = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.0219.i, i32 4
  %119 = ptrtoint ptr %sctx45.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %76, ptr %sctx45.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i192.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3392, i32 noundef 112) #19
  %tobool47.not.i = icmp eq ptr %call7.i.i192.i, null
  br i1 %tobool47.not.i, label %for.body.i.leave_nomem.i_crit_edge, label %if.end50.i

for.body.i.leave_nomem.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave_nomem.i

leave_nomem.i:                                    ; preds = %do.end89.i.leave_nomem.i_crit_edge, %for.body.i.leave_nomem.i_crit_edge
  %stat_lock.i = getelementptr inbounds %struct.scrub_ctx, ptr %76, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock.i) #14
  %malloc_errors.i = getelementptr inbounds %struct.scrub_ctx, ptr %76, i32 0, i32 20, i32 10
  %121 = ptrtoint ptr %malloc_errors.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %malloc_errors.i, align 8
  %inc.i = add i64 %122, 1
  store i64 %inc.i, ptr %malloc_errors.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call7.i.i.i36, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @llvm.prefetch.p0(ptr %call7.i.i.i36, i32 1, i32 3, i32 1) #14
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call7.i.i.i36, ptr %call7.i.i.i36, i32 1, ptr elementtype(i32) %call7.i.i.i36) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i41, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %leave_nomem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then94_crit_edge, label %if.then10.i.i.i.i.i, !prof !153

if.end5.i.i.i.i.i.if.then94_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %call7.i.i.i36, i32 noundef 3) #14
  br label %if.then94

if.then.i.i41:                                    ; preds = %leave_nomem.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @btrfs_bio_counter_sub(ptr noundef %78, i64 noundef 1) #14
  %124 = ptrtoint ptr %bioc27.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bioc27.i, align 4
  call void @btrfs_put_bioc(ptr noundef %125) #14
  call void @kfree(ptr noundef %call7.i.i.i36) #14
  br label %if.then94

if.end50.i:                                       ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.0219.i
  %refs.i.i42 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 9
  %call.i.i.i193.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i42, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i.i42, i32 1, i32 3, i32 1) #14
  %126 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i42, ptr %refs.i.i42, i32 1, ptr elementtype(i32) %refs.i.i42) #14, !srcloc !151
  %arrayidx52.i = getelementptr [16 x ptr], ptr %add.ptr.i, i32 0, i32 %page_index.0224.i
  %127 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i.i192.i, ptr %arrayidx52.i, align 4
  %128 = ptrtoint ptr %call7.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i, ptr %call7.i.i192.i, align 8
  %flags54.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 4
  %129 = ptrtoint ptr %flags54.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %90, ptr %flags54.i, align 8
  %generation55.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 5
  %130 = ptrtoint ptr %generation55.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %88, ptr %generation55.i, align 8
  %logical56.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 6
  %131 = ptrtoint ptr %logical56.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %logical.0222.i, ptr %logical56.i, align 8
  %have_csum58.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 11
  %132 = ptrtoint ptr %have_csum58.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load59.i = load i8, ptr %have_csum58.i, align 1
  %bf.clear.i = and i8 %bf.load59.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %have_csum58.i, align 1
  br i1 %tobool60.not.i, label %if.end50.i.if.end67.i_crit_edge, label %if.then61.i

if.end50.i.if.end67.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67.i

if.then61.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  %csum.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 12
  %133 = ptrtoint ptr %sblock_to_check to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sblock_to_check, align 4
  %csum64.i = getelementptr inbounds %struct.scrub_page, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %fs_info2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fs_info2.i, align 8
  %csum_size.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %136, i32 0, i32 169
  %137 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %csum_size.i, align 4
  %139 = call ptr @memcpy(ptr %csum.i, ptr %csum64.i, i32 %138)
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then61.i, %if.end50.i.if.end67.i_crit_edge
  %140 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bioc.i, align 4
  %map_type.i = getelementptr inbounds %struct.btrfs_io_context, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %map_type.i, align 8
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %141, i32 0, i32 13
  %144 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %raid_map.i, align 4
  %146 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %mapped_length.i, align 8
  %num_stripes.i = getelementptr inbounds %struct.btrfs_io_context, ptr %141, i32 0, i32 9
  %148 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_stripes.i, align 4
  %num_tgtdevs.i = getelementptr inbounds %struct.btrfs_io_context, ptr %141, i32 0, i32 11
  %150 = ptrtoint ptr %num_tgtdevs.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_tgtdevs.i, align 4
  %sub.i = sub i32 %149, %151
  %and.i194.i = and i64 %143, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i194.i)
  %tobool.not.i195.i = icmp eq i64 %and.i194.i, 0
  br i1 %tobool.not.i195.i, label %if.end67.i.scrub_stripe_index_and_offset.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end67.i.scrub_stripe_index_and_offset.exit.i_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_stripe_index_and_offset.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp28.i.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp28.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i45, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %145, i32 %i.029.i.i
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %153)
  %switch.i.i = icmp ugt i64 %153, -3
  br i1 %switch.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i44

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i.i44:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %logical.0222.i)
  %cmp6.not.i.i = icmp ule i64 %153, %logical.0222.i
  %add.i.i43 = add i64 %153, %147
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i43, i64 %logical.0222.i)
  %cmp8.i.i = icmp ugt i64 %add.i.i43, %logical.0222.i
  %or.cond.i.i = and i1 %cmp6.not.i.i, %cmp8.i.i
  br i1 %or.cond.i.i, label %if.end.i.i44.for.end.i.i_crit_edge, label %if.end.i.i44.for.inc.i.i_crit_edge

if.end.i.i44.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i.i44.for.end.i.i_crit_edge:               ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i44.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i45 = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i45, %sub.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i44.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %i.029.i.i, %if.end.i.i44.for.end.i.i_crit_edge ], [ %sub.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr i64, ptr %145, i32 %i.0.lcssa.i.i
  %154 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx11.i.i, align 8
  %sub.i.i46 = sub i64 %logical.0222.i, %155
  br label %scrub_stripe_index_and_offset.exit.i

scrub_stripe_index_and_offset.exit.i:             ; preds = %for.end.i.i, %if.end67.i.scrub_stripe_index_and_offset.exit.i_crit_edge
  %stripe_index.0.i = phi i32 [ %i.0.lcssa.i.i, %for.end.i.i ], [ %mirror_index.0219.i, %if.end67.i.scrub_stripe_index_and_offset.exit.i_crit_edge ]
  %storemerge.i.i = phi i64 [ %sub.i.i46, %for.end.i.i ], [ 0, %if.end67.i.scrub_stripe_index_and_offset.exit.i_crit_edge ]
  %physical.i = getelementptr %struct.btrfs_io_context, ptr %141, i32 0, i32 14, i32 %stripe_index.0.i, i32 1
  %156 = ptrtoint ptr %physical.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %physical.i, align 8
  %add.i = add i64 %157, %storemerge.i.i
  %physical69.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 7
  %158 = ptrtoint ptr %physical69.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add.i, ptr %physical69.i, align 8
  %arrayidx71.i = getelementptr %struct.btrfs_io_context, ptr %141, i32 0, i32 14, i32 %stripe_index.0.i
  %159 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx71.i, align 8
  %dev72.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 2
  %161 = ptrtoint ptr %dev72.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %dev72.i, align 8
  %162 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %page_index.0224.i, i32 %163)
  %cmp74.not.i = icmp slt i32 %page_index.0224.i, %163
  br i1 %cmp74.not.i, label %do.end89.i, label %do.body83.i, !prof !153

do.body83.i:                                      ; preds = %scrub_stripe_index_and_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1355, 0\0A.popsection", ""() #14, !srcloc !169
  unreachable

do.end89.i:                                       ; preds = %scrub_stripe_index_and_offset.exit.i
  %164 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx91.i, align 4
  %physical_for_dev_replace.i = getelementptr inbounds %struct.scrub_page, ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %physical_for_dev_replace.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %physical_for_dev_replace.i, align 8
  %physical_for_dev_replace92.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 8
  %168 = ptrtoint ptr %physical_for_dev_replace92.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %physical_for_dev_replace92.i, align 8
  %169 = trunc i32 %mirror_index.0219.i to i8
  %conv94.i = add i8 %169, 1
  %mirror_num.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 10
  %170 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv94.i, ptr %mirror_num.i, align 4
  %page_count95.i = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.0219.i, i32 1
  %171 = ptrtoint ptr %page_count95.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %page_count95.i, align 8
  %inc96.i = add i32 %172, 1
  store i32 %inc96.i, ptr %page_count95.i, align 8
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %page.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 1
  %173 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call38.i.i.i.i, ptr %page.i, align 4
  %tobool99.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool99.not.i, label %do.end89.i.leave_nomem.i_crit_edge, label %if.end101.i

do.end89.i.leave_nomem.i_crit_edge:               ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave_nomem.i

if.end101.i:                                      ; preds = %do.end89.i
  %call.i.i.i.i.i.i197.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i36, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i36, i32 1, i32 3, i32 1) #14
  %174 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i36, ptr nonnull %call7.i.i.i36, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i36) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end101.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !154

if.end101.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end101.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %175 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %175)
  %.not.i.i.i.i198.i = icmp sgt i32 %175, -1
  br i1 %.not.i.i.i.i198.i, label %if.else.i.i.i.i.i.scrub_get_recover.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.scrub_get_recover.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_get_recover.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end101.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end101.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i36, i32 noundef %.sink.i.i.i.i.i) #14
  br label %scrub_get_recover.exit.i

scrub_get_recover.exit.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.scrub_get_recover.exit.i_crit_edge
  %recover102.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i192.i, i32 0, i32 13
  %176 = ptrtoint ptr %recover102.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call7.i.i.i36, ptr %recover102.i, align 8
  %inc104.i = add nuw nsw i32 %mirror_index.0219.i, 1
  %exitcond.not.i = icmp eq i32 %inc104.i, %118
  br i1 %exitcond.not.i, label %scrub_get_recover.exit.i.for.end.i_crit_edge, label %scrub_get_recover.exit.i.for.body.i_crit_edge

scrub_get_recover.exit.i.for.body.i_crit_edge:    ; preds = %scrub_get_recover.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

scrub_get_recover.exit.i.for.end.i_crit_edge:     ; preds = %scrub_get_recover.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %scrub_get_recover.exit.i.for.end.i_crit_edge, %.for.end.i_crit_edge
  %call.i.i.i.i.i.i199.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i36, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i36, i32 1, i32 3, i32 1) #14
  %177 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i36, ptr nonnull %call7.i.i.i36, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i36) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i.i200.i = extractvalue { i32, i32, i32 } %177, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i200.i)
  %cmp.i.i.i.i201.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i200.i, 1
  br i1 %cmp.i.i.i.i201.i, label %if.then.i206.i, label %if.end5.i.i.i.i203.i

if.end5.i.i.i.i203.i:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i200.i)
  %.not.i.i.i.i202.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i200.i, 0
  br i1 %.not.i.i.i.i202.i, label %if.end5.i.i.i.i203.i.scrub_put_recover.exit208.i_crit_edge, label %if.then10.i.i.i.i204.i, !prof !153

if.end5.i.i.i.i203.i.scrub_put_recover.exit208.i_crit_edge: ; preds = %if.end5.i.i.i.i203.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_put_recover.exit208.i

if.then10.i.i.i.i204.i:                           ; preds = %if.end5.i.i.i.i203.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i36, i32 noundef 3) #14
  br label %scrub_put_recover.exit208.i

if.then.i206.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @btrfs_bio_counter_sub(ptr noundef %78, i64 noundef 1) #14
  %178 = ptrtoint ptr %bioc27.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bioc27.i, align 4
  call void @btrfs_put_bioc(ptr noundef %179) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i36) #14
  br label %scrub_put_recover.exit208.i

scrub_put_recover.exit208.i:                      ; preds = %if.then.i206.i, %if.then10.i.i.i.i204.i, %if.end5.i.i.i.i203.i.scrub_put_recover.exit208.i_crit_edge
  %sub105.i = sub i64 %length.0221.i, %94
  %add106.i = add i64 %94, %logical.0222.i
  %inc107.i = add nuw nsw i32 %page_index.0224.i, 1
  %cmp.not.i = icmp eq i64 %sub105.i, 0
  br i1 %cmp.not.i, label %scrub_put_recover.exit208.i.do.body104_crit_edge, label %scrub_put_recover.exit208.i.while.body.i_crit_edge

scrub_put_recover.exit208.i.while.body.i_crit_edge: ; preds = %scrub_put_recover.exit208.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

scrub_put_recover.exit208.i.do.body104_crit_edge: ; preds = %scrub_put_recover.exit208.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body104

if.then94:                                        ; preds = %if.then.i.i41, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then94_crit_edge, %if.then25.i, %if.then.i35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_length.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #14
  %stat_lock95 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock95) #14
  %read_errors97 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 4
  %180 = ptrtoint ptr %read_errors97 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %read_errors97, align 8
  %inc98 = add i64 %181, 1
  store i64 %inc98, ptr %read_errors97, align 8
  %uncorrectable_errors100 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 11
  %182 = ptrtoint ptr %uncorrectable_errors100 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %uncorrectable_errors100, align 8
  %inc101 = add i64 %183, 1
  store i64 %inc101, ptr %uncorrectable_errors100, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock95) #14
  call void @btrfs_dev_stat_inc_and_print(ptr noundef %18, i32 noundef 1) #14
  br label %for.body506.preheader

do.body104:                                       ; preds = %scrub_put_recover.exit208.i.do.body104_crit_edge, %if.end91.do.body104_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_length.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp105 = icmp ugt i32 %sub, 4
  br i1 %cmp105, label %do.body114, label %do.end122, !prof !154

do.body114:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 931, 0\0A.popsection", ""() #14, !srcloc !170
  unreachable

do.end122:                                        ; preds = %do.body104
  %add.ptr = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %sub
  call fastcc void @scrub_recheck_block(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 1)
  %184 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %sub, i32 6
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %185)
  %bf.load123 = load i8, ptr %184, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load123)
  %tobool126.not = icmp sgt i8 %bf.load123, -1
  %186 = and i8 %bf.load123, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool131.not = icmp eq i8 %186, 0
  %187 = and i8 %bf.load123, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %187)
  %.not = icmp eq i8 %187, 32
  br i1 %.not, label %if.then138, label %if.end149

if.then138:                                       ; preds = %do.end122
  %stat_lock139 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock139) #14
  %unverified_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 14
  %188 = ptrtoint ptr %unverified_errors to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %unverified_errors, align 8
  %inc141 = add i64 %189, 1
  store i64 %inc141, ptr %unverified_errors, align 8
  %190 = getelementptr inbounds %struct.scrub_block, ptr %sblock_to_check, i32 0, i32 6
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %191)
  %bf.load142 = load i8, ptr %190, align 4
  %bf.set = or i8 %bf.load142, 8
  store i8 %bf.set, ptr %190, align 4
  call void @_raw_spin_unlock(ptr noundef %stat_lock139) #14
  %192 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool146.not = icmp eq i32 %193, 0
  br i1 %tobool146.not, label %if.then138.for.body506.preheader_crit_edge, label %if.then147

if.then138.for.body506.preheader_crit_edge:       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body506.preheader

if.then147:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_write_block_to_dev_replace(ptr noundef %add.ptr)
  br label %for.body506.preheader

if.end149:                                        ; preds = %do.end122
  %194 = and i8 %bf.load123, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool137.not = icmp eq i8 %194, 0
  br i1 %tobool137.not, label %if.then155, label %if.else

if.then155:                                       ; preds = %if.end149
  %stat_lock156 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock156) #14
  %read_errors158 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 4
  %195 = ptrtoint ptr %read_errors158 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %read_errors158, align 8
  %inc159 = add i64 %196, 1
  store i64 %inc159, ptr %read_errors158, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock156) #14
  %call161 = call i32 @___ratelimit(ptr noundef nonnull @scrub_handle_errored_block.rs, ptr noundef nonnull @__func__.scrub_handle_errored_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then155.if.end203.sink.split_crit_edge, label %if.then163

if.then155.if.end203.sink.split_crit_edge:        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end203.sink.split

if.then163:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_print_warning(ptr noundef nonnull @.str.22, ptr noundef %sblock_to_check)
  br label %if.end203.sink.split

if.else:                                          ; preds = %if.end149
  br i1 %tobool131.not, label %if.else179, label %if.then170

if.then170:                                       ; preds = %if.else
  %stat_lock171 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock171) #14
  %csum_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 5
  %197 = ptrtoint ptr %csum_errors to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %csum_errors, align 8
  %inc173 = add i64 %198, 1
  store i64 %inc173, ptr %csum_errors, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock171) #14
  %call175 = call i32 @___ratelimit(ptr noundef nonnull @scrub_handle_errored_block.rs, ptr noundef nonnull @__func__.scrub_handle_errored_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.then170.if.end203.sink.split_crit_edge, label %if.then177

if.then170.if.end203.sink.split_crit_edge:        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end203.sink.split

if.then177:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_print_warning(ptr noundef nonnull @.str.23, ptr noundef %sblock_to_check)
  br label %if.end203.sink.split

if.else179:                                       ; preds = %if.else
  br i1 %tobool126.not, label %if.else179.if.end203_crit_edge, label %if.then184

if.else179.if.end203_crit_edge:                   ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end203

if.then184:                                       ; preds = %if.else179
  %stat_lock185 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock185) #14
  %verify_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 6
  %199 = ptrtoint ptr %verify_errors to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %verify_errors, align 8
  %inc187 = add i64 %200, 1
  store i64 %inc187, ptr %verify_errors, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock185) #14
  %call189 = call i32 @___ratelimit(ptr noundef nonnull @scrub_handle_errored_block.rs, ptr noundef nonnull @__func__.scrub_handle_errored_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then184.if.end192_crit_edge, label %if.then191

if.then184.if.end192_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end192

if.then191:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_print_warning(ptr noundef nonnull @.str.24, ptr noundef %sblock_to_check)
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.then184.if.end192_crit_edge
  %201 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load193 = load i8, ptr %184, align 4
  %202 = and i8 %bf.load193, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool197.not = icmp eq i8 %202, 0
  %. = select i1 %tobool197.not, i32 3, i32 4
  br label %if.end203.sink.split

if.end203.sink.split:                             ; preds = %if.end192, %if.then177, %if.then170.if.end203.sink.split_crit_edge, %if.then163, %if.then155.if.end203.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then163 ], [ 1, %if.then155.if.end203.sink.split_crit_edge ], [ 3, %if.then177 ], [ 3, %if.then170.if.end203.sink.split_crit_edge ], [ %., %if.end192 ]
  call void @btrfs_dev_stat_inc_and_print(ptr noundef %18, i32 noundef %.sink) #14
  br label %if.end203

if.end203:                                        ; preds = %if.end203.sink.split, %if.else179.if.end203_crit_edge
  %readonly = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 10
  %203 = ptrtoint ptr %readonly to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %readonly, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool204.not = icmp eq i32 %204, 0
  br i1 %tobool204.not, label %for.cond.preheader, label %if.then205

for.cond.preheader:                               ; preds = %if.end203
  %arrayidx245 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 1
  %page_count246 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp250 = icmp eq i32 %sub, 0
  br label %for.cond

if.then205:                                       ; preds = %if.end203
  %205 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool207.not = icmp eq i32 %206, 0
  br i1 %tobool207.not, label %if.then205.for.body506.preheader_crit_edge, label %cond.false, !prof !153

if.then205.for.body506.preheader_crit_edge:       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body506.preheader

cond.false:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 988) #20
  unreachable

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %mirror_index.0 = phi i32 [ %inc298, %for.inc ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mirror_index.0, i32 %sub)
  %cmp217 = icmp eq i32 %mirror_index.0, %sub
  br i1 %cmp217, label %for.cond.for.inc_crit_edge, label %if.end220

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end220:                                        ; preds = %for.cond
  %207 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr, align 8
  %recover.i = getelementptr inbounds %struct.scrub_page, ptr %208, i32 0, i32 13
  %209 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %recover.i, align 8
  %tobool.not.i47 = icmp eq ptr %210, null
  br i1 %tobool.not.i47, label %if.end220.if.then225_crit_edge, label %scrub_is_page_on_raid56.exit

if.end220.if.then225_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then225

scrub_is_page_on_raid56.exit:                     ; preds = %if.end220
  %bioc.i48 = getelementptr inbounds %struct.scrub_recover, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %bioc.i48 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bioc.i48, align 4
  %map_type.i49 = getelementptr inbounds %struct.btrfs_io_context, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %map_type.i49 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %map_type.i49, align 8
  %and.i50 = and i64 %214, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i50)
  %tobool2.i.not = icmp eq i64 %and.i50, 0
  br i1 %tobool2.i.not, label %scrub_is_page_on_raid56.exit.if.then225_crit_edge, label %if.else236

scrub_is_page_on_raid56.exit.if.then225_crit_edge: ; preds = %scrub_is_page_on_raid56.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then225

if.then225:                                       ; preds = %scrub_is_page_on_raid56.exit.if.then225_crit_edge, %if.end220.if.then225_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mirror_index.0)
  %cmp226 = icmp sgt i32 %mirror_index.0, 4
  br i1 %cmp226, label %if.then225.for.end_crit_edge, label %if.end229

if.then225.for.end_crit_edge:                     ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end229:                                        ; preds = %if.then225
  %page_count231 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.0, i32 1
  %215 = ptrtoint ptr %page_count231 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %page_count231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool232.not = icmp eq i32 %216, 0
  br i1 %tobool232.not, label %if.end229.for.end_crit_edge, label %if.end234

if.end229.for.end_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end234:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx230 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.0
  br label %if.end267

if.else236:                                       ; preds = %scrub_is_page_on_raid56.exit
  %217 = ptrtoint ptr %bioc.i48 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bioc.i48, align 4
  %num_stripes = getelementptr inbounds %struct.btrfs_io_context, ptr %218, i32 0, i32 9
  %219 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_stripes, align 4
  %num_tgtdevs = getelementptr inbounds %struct.btrfs_io_context, ptr %218, i32 0, i32 11
  %221 = ptrtoint ptr %num_tgtdevs to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %num_tgtdevs, align 4
  %sub240 = sub i32 %220, %222
  call void @__sanitizer_cov_trace_cmp4(i32 %mirror_index.0, i32 %sub240)
  %cmp241.not = icmp slt i32 %mirror_index.0, %sub240
  br i1 %cmp241.not, label %if.end244, label %if.else236.for.end_crit_edge

if.else236.for.end_crit_edge:                     ; preds = %if.else236
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end244:                                        ; preds = %if.else236
  %223 = ptrtoint ptr %page_count246 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %page_count246, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool247.not = icmp eq i32 %224, 0
  br i1 %tobool247.not, label %if.end244.for.end_crit_edge, label %if.end249

if.end244.for.end_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end249:                                        ; preds = %if.end244
  br i1 %cmp250, label %cleanup, label %cond.false259, !prof !153

cond.false259:                                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.26, i32 noundef 1030) #20
  unreachable

cleanup:                                          ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #16
  %225 = trunc i32 %mirror_index.0 to i8
  %conv262 = add i8 %225, 1
  %226 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx245, align 8
  %mirror_num265 = getelementptr inbounds %struct.scrub_page, ptr %227, i32 0, i32 10
  %228 = ptrtoint ptr %mirror_num265 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv262, ptr %mirror_num265, align 4
  br label %if.end267

if.end267:                                        ; preds = %cleanup, %if.end234
  %sblock_other.1 = phi ptr [ %arrayidx245, %cleanup ], [ %arrayidx230, %if.end234 ]
  call fastcc void @scrub_recheck_block(ptr noundef %5, ptr noundef %sblock_other.1, i32 noundef 0)
  %229 = getelementptr inbounds %struct.scrub_block, ptr %sblock_other.1, i32 0, i32 6
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load1_noabort(i32 %230)
  %bf.load268 = load i8, ptr %229, align 4
  %231 = and i8 %bf.load268, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %231)
  %.not132 = icmp eq i8 %231, 32
  br i1 %.not132, label %if.then284, label %if.end267.for.inc_crit_edge

if.end267.for.inc_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then284:                                       ; preds = %if.end267
  %232 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool286.not = icmp eq i32 %233, 0
  br i1 %tobool286.not, label %if.else288, label %if.then287

if.then287:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_write_block_to_dev_replace(ptr noundef %sblock_other.1)
  br label %corrected_error

if.else288:                                       ; preds = %if.then284
  %call289 = call fastcc i32 @scrub_repair_block_from_good_copy(ptr noundef %add.ptr, ptr noundef %sblock_other.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.else288.corrected_error_crit_edge, label %if.else288.for.inc_crit_edge

if.else288.for.inc_crit_edge:                     ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else288.corrected_error_crit_edge:             ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #16
  br label %corrected_error

for.inc:                                          ; preds = %if.else288.for.inc_crit_edge, %if.end267.for.inc_crit_edge, %for.cond.for.inc_crit_edge
  %inc298 = add i32 %mirror_index.0, 1
  br label %for.cond

for.end:                                          ; preds = %if.end244.for.end_crit_edge, %if.else236.for.end_crit_edge, %if.end229.for.end_crit_edge, %if.then225.for.end_crit_edge
  %234 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %234)
  %bf.load299 = load i8, ptr %184, align 4
  %235 = and i8 %bf.load299, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool303.not = icmp eq i8 %235, 0
  br i1 %tobool303.not, label %for.end.if.end308_crit_edge, label %land.lhs.true304

for.end.if.end308_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end308

land.lhs.true304:                                 ; preds = %for.end
  %236 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool306.not = icmp eq i32 %237, 0
  br i1 %tobool306.not, label %land.lhs.true304.did_not_correct_error_crit_edge, label %land.lhs.true304.if.end308_crit_edge

land.lhs.true304.if.end308_crit_edge:             ; preds = %land.lhs.true304
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end308

land.lhs.true304.did_not_correct_error_crit_edge: ; preds = %land.lhs.true304
  call void @__sanitizer_cov_trace_pc() #16
  br label %did_not_correct_error

if.end308:                                        ; preds = %land.lhs.true304.if.end308_crit_edge, %for.end.if.end308_crit_edge
  %page_count310 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %sub, i32 1
  %238 = ptrtoint ptr %page_count310 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %page_count310, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp311145 = icmp sgt i32 %239, 0
  br i1 %cmp311145, label %for.body.lr.ph, label %if.end308.land.lhs.true401_crit_edge

if.end308.land.lhs.true401_crit_edge:             ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true401

for.body.lr.ph:                                   ; preds = %if.end308
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 154, i32 3
  %page_count343 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 0, i32 1
  %page_count343.2 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 2, i32 1
  %arrayidx342.2 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 2
  %page_count343.3 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 3, i32 1
  %arrayidx342.3 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 3
  %page_count343.4 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 4, i32 1
  %arrayidx342.4 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup393.for.body_crit_edge, %for.body.lr.ph
  %success.0148 = phi i32 [ 1, %for.body.lr.ph ], [ %success.3, %cleanup393.for.body_crit_edge ]
  %page_num.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc398, %cleanup393.for.body_crit_edge ]
  %arrayidx314 = getelementptr [16 x ptr], ptr %add.ptr, i32 0, i32 %page_num.0146
  %240 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx314, align 4
  %io_error = getelementptr inbounds %struct.scrub_page, ptr %241, i32 0, i32 11
  %242 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %242)
  %bf.load316 = load i8, ptr %io_error, align 1
  %243 = and i8 %bf.load316, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool320.not = icmp eq i8 %243, 0
  br i1 %tobool320.not, label %land.lhs.true321, label %if.end325.thread

land.lhs.true321:                                 ; preds = %for.body
  %244 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool323.not = icmp eq i32 %245, 0
  br i1 %tobool323.not, label %land.lhs.true321.cleanup393_crit_edge, label %if.end325

land.lhs.true321.cleanup393_crit_edge:            ; preds = %land.lhs.true321
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup393

if.end325:                                        ; preds = %land.lhs.true321
  %246 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %add.ptr, align 8
  %recover.i51 = getelementptr inbounds %struct.scrub_page, ptr %247, i32 0, i32 13
  %248 = ptrtoint ptr %recover.i51 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %recover.i51, align 8
  %tobool.not.i52 = icmp eq ptr %249, null
  br i1 %tobool.not.i52, label %if.end325.if.end366_crit_edge, label %if.end325.scrub_is_page_on_raid56.exit59_crit_edge

if.end325.scrub_is_page_on_raid56.exit59_crit_edge: ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_is_page_on_raid56.exit59

if.end325.if.end366_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end366

if.end325.thread:                                 ; preds = %for.body
  %250 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %add.ptr, align 8
  %recover.i51168 = getelementptr inbounds %struct.scrub_page, ptr %251, i32 0, i32 13
  %252 = ptrtoint ptr %recover.i51168 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %recover.i51168, align 8
  %tobool.not.i52169 = icmp eq ptr %253, null
  br i1 %tobool.not.i52169, label %if.end325.thread.for.cond339.preheader_crit_edge, label %if.end325.thread.scrub_is_page_on_raid56.exit59_crit_edge

if.end325.thread.scrub_is_page_on_raid56.exit59_crit_edge: ; preds = %if.end325.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_is_page_on_raid56.exit59

if.end325.thread.for.cond339.preheader_crit_edge: ; preds = %if.end325.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond339.preheader

scrub_is_page_on_raid56.exit59:                   ; preds = %if.end325.thread.scrub_is_page_on_raid56.exit59_crit_edge, %if.end325.scrub_is_page_on_raid56.exit59_crit_edge
  %254 = phi ptr [ %253, %if.end325.thread.scrub_is_page_on_raid56.exit59_crit_edge ], [ %249, %if.end325.scrub_is_page_on_raid56.exit59_crit_edge ]
  %bioc.i53 = getelementptr inbounds %struct.scrub_recover, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %bioc.i53 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bioc.i53, align 4
  %map_type.i54 = getelementptr inbounds %struct.btrfs_io_context, ptr %256, i32 0, i32 3
  %257 = ptrtoint ptr %map_type.i54 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %map_type.i54, align 8
  %and.i55 = and i64 %258, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i55)
  %tobool2.i56.not = icmp ne i64 %and.i55, 0
  %brmerge = select i1 %tobool2.i56.not, i1 true, i1 %tobool320.not
  br i1 %brmerge, label %scrub_is_page_on_raid56.exit59.if.end366_crit_edge, label %scrub_is_page_on_raid56.exit59.for.cond339.preheader_crit_edge

scrub_is_page_on_raid56.exit59.for.cond339.preheader_crit_edge: ; preds = %scrub_is_page_on_raid56.exit59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond339.preheader

scrub_is_page_on_raid56.exit59.if.end366_crit_edge: ; preds = %scrub_is_page_on_raid56.exit59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end366

for.cond339.preheader:                            ; preds = %scrub_is_page_on_raid56.exit59.for.cond339.preheader_crit_edge, %if.end325.thread.for.cond339.preheader_crit_edge
  %259 = ptrtoint ptr %page_count343 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %page_count343, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp344 = icmp sgt i32 %260, 0
  br i1 %cmp344, label %for.body346, label %for.cond339.preheader.for.end361_crit_edge

for.cond339.preheader.for.end361_crit_edge:       ; preds = %for.cond339.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.cond339:                                      ; preds = %for.body346
  %261 = ptrtoint ptr %page_count246 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %page_count246, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp344.1 = icmp sgt i32 %262, 0
  br i1 %cmp344.1, label %for.body346.1, label %for.cond339.for.end361_crit_edge

for.cond339.for.end361_crit_edge:                 ; preds = %for.cond339
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.body346.1:                                    ; preds = %for.cond339
  %arrayidx349.1 = getelementptr [16 x ptr], ptr %arrayidx245, i32 0, i32 %page_num.0146
  %263 = ptrtoint ptr %arrayidx349.1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx349.1, align 4
  %io_error350.1 = getelementptr inbounds %struct.scrub_page, ptr %264, i32 0, i32 11
  %265 = ptrtoint ptr %io_error350.1 to i32
  call void @__asan_load1_noabort(i32 %265)
  %bf.load351.1 = load i8, ptr %io_error350.1, align 1
  %266 = and i8 %bf.load351.1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool355.not.1 = icmp eq i8 %266, 0
  br i1 %tobool355.not.1, label %for.body346.1.for.end361_crit_edge, label %for.cond339.1

for.body346.1.for.end361_crit_edge:               ; preds = %for.body346.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.cond339.1:                                    ; preds = %for.body346.1
  %267 = ptrtoint ptr %page_count343.2 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %page_count343.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp344.2 = icmp sgt i32 %268, 0
  br i1 %cmp344.2, label %for.body346.2, label %for.cond339.1.for.end361_crit_edge

for.cond339.1.for.end361_crit_edge:               ; preds = %for.cond339.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.body346.2:                                    ; preds = %for.cond339.1
  %arrayidx349.2 = getelementptr [16 x ptr], ptr %arrayidx342.2, i32 0, i32 %page_num.0146
  %269 = ptrtoint ptr %arrayidx349.2 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx349.2, align 4
  %io_error350.2 = getelementptr inbounds %struct.scrub_page, ptr %270, i32 0, i32 11
  %271 = ptrtoint ptr %io_error350.2 to i32
  call void @__asan_load1_noabort(i32 %271)
  %bf.load351.2 = load i8, ptr %io_error350.2, align 1
  %272 = and i8 %bf.load351.2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool355.not.2 = icmp eq i8 %272, 0
  br i1 %tobool355.not.2, label %for.body346.2.for.end361_crit_edge, label %for.cond339.2

for.body346.2.for.end361_crit_edge:               ; preds = %for.body346.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.cond339.2:                                    ; preds = %for.body346.2
  %273 = ptrtoint ptr %page_count343.3 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %page_count343.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp344.3 = icmp sgt i32 %274, 0
  br i1 %cmp344.3, label %for.body346.3, label %for.cond339.2.for.end361_crit_edge

for.cond339.2.for.end361_crit_edge:               ; preds = %for.cond339.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.body346.3:                                    ; preds = %for.cond339.2
  %arrayidx349.3 = getelementptr [16 x ptr], ptr %arrayidx342.3, i32 0, i32 %page_num.0146
  %275 = ptrtoint ptr %arrayidx349.3 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx349.3, align 4
  %io_error350.3 = getelementptr inbounds %struct.scrub_page, ptr %276, i32 0, i32 11
  %277 = ptrtoint ptr %io_error350.3 to i32
  call void @__asan_load1_noabort(i32 %277)
  %bf.load351.3 = load i8, ptr %io_error350.3, align 1
  %278 = and i8 %bf.load351.3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool355.not.3 = icmp eq i8 %278, 0
  br i1 %tobool355.not.3, label %for.body346.3.for.end361_crit_edge, label %for.cond339.3

for.body346.3.for.end361_crit_edge:               ; preds = %for.body346.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.cond339.3:                                    ; preds = %for.body346.3
  %279 = ptrtoint ptr %page_count343.4 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %page_count343.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp344.4 = icmp sgt i32 %280, 0
  br i1 %cmp344.4, label %for.body346.4, label %for.cond339.3.for.end361_crit_edge

for.cond339.3.for.end361_crit_edge:               ; preds = %for.cond339.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.body346.4:                                    ; preds = %for.cond339.3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx349.4 = getelementptr [16 x ptr], ptr %arrayidx342.4, i32 0, i32 %page_num.0146
  %281 = ptrtoint ptr %arrayidx349.4 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx349.4, align 4
  %io_error350.4 = getelementptr inbounds %struct.scrub_page, ptr %282, i32 0, i32 11
  %283 = ptrtoint ptr %io_error350.4 to i32
  call void @__asan_load1_noabort(i32 %283)
  %bf.load351.4 = load i8, ptr %io_error350.4, align 1
  %284 = and i8 %bf.load351.4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool355.not.4 = icmp eq i8 %284, 0
  %spec.select183 = select i1 %tobool355.not.4, ptr %arrayidx342.4, ptr null
  br label %for.end361

for.body346:                                      ; preds = %for.cond339.preheader
  %arrayidx349 = getelementptr [16 x ptr], ptr %call7.i.i.i32, i32 0, i32 %page_num.0146
  %285 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx349, align 4
  %io_error350 = getelementptr inbounds %struct.scrub_page, ptr %286, i32 0, i32 11
  %287 = ptrtoint ptr %io_error350 to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load351 = load i8, ptr %io_error350, align 1
  %288 = and i8 %bf.load351, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool355.not = icmp eq i8 %288, 0
  br i1 %tobool355.not, label %for.body346.for.end361_crit_edge, label %for.cond339

for.body346.for.end361_crit_edge:                 ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end361

for.end361:                                       ; preds = %for.body346.for.end361_crit_edge, %for.body346.4, %for.cond339.3.for.end361_crit_edge, %for.body346.3.for.end361_crit_edge, %for.cond339.2.for.end361_crit_edge, %for.body346.2.for.end361_crit_edge, %for.cond339.1.for.end361_crit_edge, %for.body346.1.for.end361_crit_edge, %for.cond339.for.end361_crit_edge, %for.cond339.preheader.for.end361_crit_edge
  %sblock_other315.0 = phi ptr [ null, %for.cond339.preheader.for.end361_crit_edge ], [ %call7.i.i.i32, %for.body346.for.end361_crit_edge ], [ null, %for.cond339.for.end361_crit_edge ], [ %arrayidx245, %for.body346.1.for.end361_crit_edge ], [ null, %for.cond339.1.for.end361_crit_edge ], [ %arrayidx342.2, %for.body346.2.for.end361_crit_edge ], [ null, %for.cond339.2.for.end361_crit_edge ], [ %arrayidx342.3, %for.body346.3.for.end361_crit_edge ], [ null, %for.cond339.3.for.end361_crit_edge ], [ %spec.select183, %for.body346.4 ]
  %tobool362.not = icmp eq ptr %sblock_other315.0, null
  %spec.select = select i1 %tobool362.not, i32 0, i32 %success.0148
  br label %if.end366

if.end366:                                        ; preds = %for.end361, %scrub_is_page_on_raid56.exit59.if.end366_crit_edge, %if.end325.if.end366_crit_edge
  %success.1 = phi i32 [ %success.0148, %scrub_is_page_on_raid56.exit59.if.end366_crit_edge ], [ %spec.select, %for.end361 ], [ %success.0148, %if.end325.if.end366_crit_edge ]
  %sblock_other315.1 = phi ptr [ null, %scrub_is_page_on_raid56.exit59.if.end366_crit_edge ], [ %sblock_other315.0, %for.end361 ], [ null, %if.end325.if.end366_crit_edge ]
  %289 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool368.not = icmp eq i32 %290, 0
  %tobool379.not = icmp eq ptr %sblock_other315.1, null
  br i1 %tobool368.not, label %if.else378, label %if.then369

if.then369:                                       ; preds = %if.end366
  %spec.select7 = select i1 %tobool379.not, ptr %add.ptr, ptr %sblock_other315.1
  %call373 = call fastcc i32 @scrub_write_page_to_dev_replace(ptr noundef %spec.select7, i32 noundef %page_num.0146)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %cmp374.not = icmp eq i32 %call373, 0
  br i1 %cmp374.not, label %if.then369.cleanup393_crit_edge, label %if.then376

if.then369.cleanup393_crit_edge:                  ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup393

if.then376:                                       ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_write_errors) #14
  br label %cleanup393

if.else378:                                       ; preds = %if.end366
  br i1 %tobool379.not, label %if.else378.cleanup393_crit_edge, label %if.then380

if.else378.cleanup393_crit_edge:                  ; preds = %if.else378
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup393

if.then380:                                       ; preds = %if.else378
  %call381 = call fastcc i32 @scrub_repair_page_from_good_copy(ptr noundef %add.ptr, ptr noundef nonnull %sblock_other315.1, i32 noundef %page_num.0146, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %cmp382 = icmp eq i32 %call381, 0
  br i1 %cmp382, label %if.then384, label %if.then380.cleanup393_crit_edge

if.then380.cleanup393_crit_edge:                  ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup393

if.then384:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #16
  %291 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load386 = load i8, ptr %io_error, align 1
  %bf.clear387 = and i8 %bf.load386, -65
  store i8 %bf.clear387, ptr %io_error, align 1
  br label %cleanup393

cleanup393:                                       ; preds = %if.then384, %if.then380.cleanup393_crit_edge, %if.else378.cleanup393_crit_edge, %if.then376, %if.then369.cleanup393_crit_edge, %land.lhs.true321.cleanup393_crit_edge
  %success.3 = phi i32 [ %success.0148, %land.lhs.true321.cleanup393_crit_edge ], [ 0, %if.then376 ], [ %success.1, %if.then369.cleanup393_crit_edge ], [ %success.1, %if.then384 ], [ %success.1, %if.else378.cleanup393_crit_edge ], [ 0, %if.then380.cleanup393_crit_edge ]
  %inc398 = add nuw nsw i32 %page_num.0146, 1
  %292 = ptrtoint ptr %page_count310 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %page_count310, align 8
  %cmp311 = icmp slt i32 %inc398, %293
  br i1 %cmp311, label %cleanup393.for.body_crit_edge, label %for.end399

cleanup393.for.body_crit_edge:                    ; preds = %cleanup393
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end399:                                       ; preds = %cleanup393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.3)
  %tobool400.not = icmp eq i32 %success.3, 0
  br i1 %tobool400.not, label %for.end399.did_not_correct_error_crit_edge, label %for.end399.land.lhs.true401_crit_edge

for.end399.land.lhs.true401_crit_edge:            ; preds = %for.end399
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true401

for.end399.did_not_correct_error_crit_edge:       ; preds = %for.end399
  call void @__sanitizer_cov_trace_pc() #16
  br label %did_not_correct_error

land.lhs.true401:                                 ; preds = %for.end399.land.lhs.true401_crit_edge, %if.end308.land.lhs.true401_crit_edge
  %294 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool403.not = icmp eq i32 %295, 0
  br i1 %tobool403.not, label %if.then404, label %land.lhs.true401.did_not_correct_error_crit_edge

land.lhs.true401.did_not_correct_error_crit_edge: ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #16
  br label %did_not_correct_error

if.then404:                                       ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool406.not = icmp sgt i8 %bf.load, -1
  %or.cond8 = select i1 %tobool46.not, i1 %tobool406.not, i1 false
  br i1 %or.cond8, label %if.then404.corrected_error_crit_edge, label %if.then407

if.then404.corrected_error_crit_edge:             ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #16
  br label %corrected_error

if.then407:                                       ; preds = %if.then404
  call fastcc void @scrub_recheck_block(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 1)
  %296 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %296)
  %bf.load408 = load i8, ptr %184, align 4
  %297 = and i8 %bf.load408, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %297)
  %.not131 = icmp eq i8 %297, 32
  br i1 %.not131, label %if.then407.corrected_error_crit_edge, label %if.then407.did_not_correct_error_crit_edge

if.then407.did_not_correct_error_crit_edge:       ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #16
  br label %did_not_correct_error

if.then407.corrected_error_crit_edge:             ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #16
  br label %corrected_error

corrected_error:                                  ; preds = %if.then407.corrected_error_crit_edge, %if.then404.corrected_error_crit_edge, %if.else288.corrected_error_crit_edge, %if.then287
  %stat_lock427 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock427) #14
  %corrected_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 12
  %298 = ptrtoint ptr %corrected_errors to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %corrected_errors, align 8
  %inc429 = add i64 %299, 1
  store i64 %inc429, ptr %corrected_errors, align 8
  %300 = getelementptr inbounds %struct.scrub_block, ptr %sblock_to_check, i32 0, i32 6
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load1_noabort(i32 %301)
  %bf.load430 = load i8, ptr %300, align 4
  %bf.set432 = or i8 %bf.load430, 8
  store i8 %bf.set432, ptr %300, align 4
  call void @_raw_spin_unlock(ptr noundef %stat_lock427) #14
  %302 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i = and i32 %302, -16384
  %303 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %305, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %corrected_error.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

corrected_error.rcu_read_lock.exit_crit_edge:     ; preds = %corrected_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %corrected_error
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %corrected_error.rcu_read_lock.exit_crit_edge
  %call436 = call i32 @___ratelimit(ptr noundef nonnull @scrub_handle_errored_block._rs, ptr noundef nonnull @__func__.scrub_handle_errored_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call436)
  %tobool437.not = icmp eq i32 %call436, 0
  br i1 %tobool437.not, label %rcu_read_lock.exit.do.end458_crit_edge, label %if.then438

rcu_read_lock.exit.do.end458_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end458

if.then438:                                       ; preds = %rcu_read_lock.exit
  %name = getelementptr inbounds %struct.btrfs_device, ptr %18, i32 0, i32 5
  %306 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load volatile ptr, ptr %name, align 8
  %call443 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call443)
  %tobool444.not = icmp eq i32 %call443, 0
  br i1 %tobool444.not, label %land.lhs.true445, label %if.then438.do.end453_crit_edge

if.then438.do.end453_crit_edge:                   ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end453

land.lhs.true445:                                 ; preds = %if.then438
  %call446 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446)
  %tobool447.not = icmp eq i32 %call446, 0
  br i1 %tobool447.not, label %land.lhs.true445.do.end453_crit_edge, label %land.lhs.true448

land.lhs.true445.do.end453_crit_edge:             ; preds = %land.lhs.true445
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end453

land.lhs.true448:                                 ; preds = %land.lhs.true445
  %.b1 = load i1, ptr @scrub_handle_errored_block.__warned, align 1
  br i1 %.b1, label %land.lhs.true448.do.end453_crit_edge, label %if.then450

land.lhs.true448.do.end453_crit_edge:             ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end453

if.then450:                                       ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_handle_errored_block.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1170, ptr noundef nonnull @.str.4) #14
  br label %do.end453

do.end453:                                        ; preds = %if.then450, %land.lhs.true448.do.end453_crit_edge, %land.lhs.true445.do.end453_crit_edge, %if.then438.do.end453_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %307, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.28, i64 noundef %13, ptr noundef %str) #17
  br label %do.end458

do.end458:                                        ; preds = %do.end453, %rcu_read_lock.exit.do.end458_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %for.body506.preheader

did_not_correct_error:                            ; preds = %if.then407.did_not_correct_error_crit_edge, %land.lhs.true401.did_not_correct_error_crit_edge, %for.end399.did_not_correct_error_crit_edge, %land.lhs.true304.did_not_correct_error_crit_edge
  %stat_lock463 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock463) #14
  %uncorrectable_errors465 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 11
  %308 = ptrtoint ptr %uncorrectable_errors465 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %uncorrectable_errors465, align 8
  %inc466 = add i64 %309, 1
  store i64 %inc466, ptr %uncorrectable_errors465, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock463) #14
  %310 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i11 = and i32 %310, -16384
  %311 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %add.i.i.i13 = add i32 %313, 1
  store volatile i32 %add.i.i.i13, ptr %preempt_count.i.i.i.i12, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i14 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i14, label %did_not_correct_error.rcu_read_lock.exit21_crit_edge, label %land.lhs.true.i17

did_not_correct_error.rcu_read_lock.exit21_crit_edge: ; preds = %did_not_correct_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit21

land.lhs.true.i17:                                ; preds = %did_not_correct_error
  %call1.i15 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_lock.exit21_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_lock.exit21_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit21

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_lock.exit21_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_lock.exit21_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit21

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit21

rcu_read_lock.exit21:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_lock.exit21_crit_edge, %land.lhs.true.i17.rcu_read_lock.exit21_crit_edge, %did_not_correct_error.rcu_read_lock.exit21_crit_edge
  %call470 = call i32 @___ratelimit(ptr noundef nonnull @scrub_handle_errored_block._rs.29, ptr noundef nonnull @__func__.scrub_handle_errored_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %tobool471.not = icmp eq i32 %call470, 0
  br i1 %tobool471.not, label %rcu_read_lock.exit21.do.end497_crit_edge, label %if.then472

rcu_read_lock.exit21.do.end497_crit_edge:         ; preds = %rcu_read_lock.exit21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end497

if.then472:                                       ; preds = %rcu_read_lock.exit21
  %name478 = getelementptr inbounds %struct.btrfs_device, ptr %18, i32 0, i32 5
  %314 = ptrtoint ptr %name478 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load volatile ptr, ptr %name478, align 8
  %call480 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480)
  %tobool481.not = icmp eq i32 %call480, 0
  br i1 %tobool481.not, label %land.lhs.true482, label %if.then472.do.end490_crit_edge

if.then472.do.end490_crit_edge:                   ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end490

land.lhs.true482:                                 ; preds = %if.then472
  %call483 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483)
  %tobool484.not = icmp eq i32 %call483, 0
  br i1 %tobool484.not, label %land.lhs.true482.do.end490_crit_edge, label %land.lhs.true485

land.lhs.true482.do.end490_crit_edge:             ; preds = %land.lhs.true482
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end490

land.lhs.true485:                                 ; preds = %land.lhs.true482
  %.b7212 = load i1, ptr @scrub_handle_errored_block.__warned.31, align 1
  br i1 %.b7212, label %land.lhs.true485.do.end490_crit_edge, label %if.then487

land.lhs.true485.do.end490_crit_edge:             ; preds = %land.lhs.true485
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end490

if.then487:                                       ; preds = %land.lhs.true485
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_handle_errored_block.__warned.31, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1179, ptr noundef nonnull @.str.4) #14
  br label %do.end490

do.end490:                                        ; preds = %if.then487, %land.lhs.true485.do.end490_crit_edge, %land.lhs.true482.do.end490_crit_edge, %if.then472.do.end490_crit_edge
  %str493 = getelementptr inbounds %struct.rcu_string, ptr %315, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.30, i64 noundef %13, ptr noundef %str493) #17
  br label %do.end497

do.end497:                                        ; preds = %do.end490, %rcu_read_lock.exit21.do.end497_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %for.body506.preheader

for.body506.preheader:                            ; preds = %do.end497, %do.end458, %if.then205.for.body506.preheader_crit_edge, %if.then147, %if.then138.for.body506.preheader_crit_edge, %if.then94
  br label %for.body506

for.body506:                                      ; preds = %for.end530.for.body506_crit_edge, %for.body506.preheader
  %mirror_index.2152 = phi i32 [ %inc532, %for.end530.for.body506_crit_edge ], [ 0, %for.body506.preheader ]
  %add.ptr507 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.2152
  %page_count510 = getelementptr %struct.scrub_block, ptr %call7.i.i.i32, i32 %mirror_index.2152, i32 1
  %316 = ptrtoint ptr %page_count510 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %page_count510, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %cmp511150 = icmp sgt i32 %317, 0
  br i1 %cmp511150, label %for.body506.for.body513_crit_edge, label %for.body506.for.end530_crit_edge

for.body506.for.end530_crit_edge:                 ; preds = %for.body506
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end530

for.body506.for.body513_crit_edge:                ; preds = %for.body506
  br label %for.body513

for.body513:                                      ; preds = %scrub_page_put.exit.for.body513_crit_edge, %for.body506.for.body513_crit_edge
  %page_index.0151 = phi i32 [ %inc529, %scrub_page_put.exit.for.body513_crit_edge ], [ 0, %for.body506.for.body513_crit_edge ]
  %arrayidx515 = getelementptr [16 x ptr], ptr %add.ptr507, i32 0, i32 %page_index.0151
  %318 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx515, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr null, ptr %319, align 8
  %321 = load ptr, ptr %arrayidx515, align 4
  %recover519 = getelementptr inbounds %struct.scrub_page, ptr %321, i32 0, i32 13
  %322 = ptrtoint ptr %recover519 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %recover519, align 8
  %tobool520.not = icmp eq ptr %323, null
  br i1 %tobool520.not, label %for.body513.if.end525_crit_edge, label %if.then521

for.body513.if.end525_crit_edge:                  ; preds = %for.body513
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end525

if.then521:                                       ; preds = %for.body513
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %323, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @llvm.prefetch.p0(ptr nonnull %323, i32 1, i32 3, i32 1) #14
  %324 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %323, ptr nonnull %323, i32 1, ptr nonnull elementtype(i32) %323) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i.i60 = extractvalue { i32, i32, i32 } %324, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i60)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i60, 1
  br i1 %cmp.i.i.i.i, label %if.then.i62, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then521
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i60)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i60, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.scrub_put_recover.exit_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.scrub_put_recover.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_put_recover.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef nonnull %323, i32 noundef 3) #14
  br label %scrub_put_recover.exit

if.then.i62:                                      ; preds = %if.then521
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @btrfs_bio_counter_sub(ptr noundef %5, i64 noundef 1) #14
  %bioc.i61 = getelementptr inbounds %struct.scrub_recover, ptr %323, i32 0, i32 1
  %325 = ptrtoint ptr %bioc.i61 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %bioc.i61, align 4
  call void @btrfs_put_bioc(ptr noundef %326) #14
  call void @kfree(ptr noundef nonnull %323) #14
  br label %scrub_put_recover.exit

scrub_put_recover.exit:                           ; preds = %if.then.i62, %if.then10.i.i.i.i, %if.end5.i.i.i.i.scrub_put_recover.exit_crit_edge
  %327 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx515, align 4
  %recover524 = getelementptr inbounds %struct.scrub_page, ptr %328, i32 0, i32 13
  %329 = ptrtoint ptr %recover524 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr null, ptr %recover524, align 8
  br label %if.end525

if.end525:                                        ; preds = %scrub_put_recover.exit, %for.body513.if.end525_crit_edge
  %330 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx515, align 4
  %refs.i = getelementptr inbounds %struct.scrub_page, ptr %331, i32 0, i32 9
  %call.i.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %332 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !162
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %332, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i67, label %if.end525.scrub_page_put.exit_crit_edge

if.end525.scrub_page_put.exit_crit_edge:          ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_page_put.exit

if.then.i67:                                      ; preds = %if.end525
  %page.i65 = getelementptr inbounds %struct.scrub_page, ptr %331, i32 0, i32 1
  %333 = ptrtoint ptr %page.i65 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %page.i65, align 4
  %tobool.not.i66 = icmp eq ptr %334, null
  br i1 %tobool.not.i66, label %if.then.i67.if.end.i68_crit_edge, label %if.then1.i

if.then.i67.if.end.i68_crit_edge:                 ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i68

if.then1.i:                                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %334, i32 noundef 0) #14
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then1.i, %if.then.i67.if.end.i68_crit_edge
  call void @kfree(ptr noundef %331) #14
  br label %scrub_page_put.exit

scrub_page_put.exit:                              ; preds = %if.end.i68, %if.end525.scrub_page_put.exit_crit_edge
  %inc529 = add nuw nsw i32 %page_index.0151, 1
  %335 = ptrtoint ptr %page_count510 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %page_count510, align 8
  %cmp511 = icmp slt i32 %inc529, %336
  br i1 %cmp511, label %scrub_page_put.exit.for.body513_crit_edge, label %scrub_page_put.exit.for.end530_crit_edge

scrub_page_put.exit.for.end530_crit_edge:         ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end530

scrub_page_put.exit.for.body513_crit_edge:        ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body513

for.end530:                                       ; preds = %scrub_page_put.exit.for.end530_crit_edge, %for.body506.for.end530_crit_edge
  %inc532 = add nuw nsw i32 %mirror_index.2152, 1
  %exitcond.not = icmp eq i32 %inc532, 5
  br i1 %exitcond.not, label %for.end533, label %for.end530.for.body506_crit_edge

for.end530.for.body506_crit_edge:                 ; preds = %for.end530
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body506

for.end533:                                       ; preds = %for.end530
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i32) #14
  br label %if.end534

if.end534:                                        ; preds = %for.end533, %out.thread
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %full_stripe_locked.0119)
  %tobool535.not = icmp eq i8 %full_stripe_locked.0119, 0
  br i1 %tobool535.not, label %if.end534.unlock_full_stripe.exit_crit_edge, label %if.end.i72

if.end534.unlock_full_stripe.exit_crit_edge:      ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_full_stripe.exit

if.end.i72:                                       ; preds = %if.end534
  %call.i70 = call ptr @btrfs_lookup_block_group(ptr noundef %5, i64 noundef %13) #14
  %tobool1.not.i71 = icmp eq ptr %call.i70, null
  br i1 %tobool1.not.i71, label %if.then2.i, label %if.end3.i75

if.then2.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.32, i32 noundef 475) #22
  unreachable

if.end3.i75:                                      ; preds = %if.end.i72
  %flags.i73 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i70, i32 0, i32 10
  %337 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %flags.i73, align 8
  %and.i74 = and i64 %338, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i74)
  %tobool4.not.i = icmp eq i64 %and.i74, 0
  br i1 %tobool4.not.i, label %if.end3.i75.out.i_crit_edge, label %if.end6.i

if.end3.i75.out.i_crit_edge:                      ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end6.i:                                        ; preds = %if.end3.i75
  %full_stripe_locks_root.i76 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i70, i32 0, i32 45
  %full_stripe_len.i.i77 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i70, i32 0, i32 15
  %339 = ptrtoint ptr %full_stripe_len.i.i77 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %full_stripe_len.i.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %340)
  %cmp.i.i78 = icmp eq i32 %340, -1
  br i1 %cmp.i.i78, label %land.rhs.i.i80, label %if.end6.i.get_full_stripe_logical.exit.i91_crit_edge

if.end6.i.get_full_stripe_logical.exit.i91_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_full_stripe_logical.exit.i91

land.rhs.i.i80:                                   ; preds = %if.end6.i
  %.b45.i.i79 = load i1, ptr @get_full_stripe_logical.__already_done, align 1
  br i1 %.b45.i.i79, label %land.rhs.i.i80.get_full_stripe_logical.exit.i91_crit_edge, label %if.then.i.i81, !prof !153

land.rhs.i.i80.get_full_stripe_logical.exit.i91_crit_edge: ; preds = %land.rhs.i.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_full_stripe_logical.exit.i91

if.then.i.i81:                                    ; preds = %land.rhs.i.i80
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @get_full_stripe_logical.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 390, i32 noundef 9, ptr noundef null) #14
  br label %get_full_stripe_logical.exit.i91

get_full_stripe_logical.exit.i91:                 ; preds = %if.then.i.i81, %land.rhs.i.i80.get_full_stripe_logical.exit.i91_crit_edge, %if.end6.i.get_full_stripe_logical.exit.i91_crit_edge
  %start.i.i82 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i70, i32 0, i32 3
  %341 = ptrtoint ptr %start.i.i82 to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %start.i.i82, align 8
  %sub.i.i83 = sub i64 %13, %342
  %343 = ptrtoint ptr %full_stripe_len.i.i77 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %full_stripe_len.i.i77, align 8
  %conv.i.i84 = zext i32 %344 to i64
  %call.i.i85 = call i64 @div64_u64(i64 noundef %sub.i.i83, i64 noundef %conv.i.i84) #14
  %345 = ptrtoint ptr %full_stripe_len.i.i77 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %full_stripe_len.i.i77, align 8
  %conv37.i.i86 = zext i32 %346 to i64
  %mul.i.i87 = mul i64 %call.i.i85, %conv37.i.i86
  %347 = ptrtoint ptr %start.i.i82 to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %start.i.i82, align 8
  %add.i.i88 = add i64 %mul.i.i87, %348
  %lock.i89 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i70, i32 0, i32 45, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i89, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %349 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool.not.i.i90 = icmp eq i32 %349, 0
  br i1 %tobool.not.i.i90, label %get_full_stripe_logical.exit.i91.if.end.i.i96_crit_edge, label %land.rhs.i92.i

get_full_stripe_logical.exit.i91.if.end.i.i96_crit_edge: ; preds = %get_full_stripe_logical.exit.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i96

land.rhs.i92.i:                                   ; preds = %get_full_stripe_logical.exit.i91
  %dep_map.i.i92 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i70, i32 0, i32 45, i32 1, i32 5
  %call.i.i.i93 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i92, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i93)
  %cmp.not.i.i94 = icmp eq i32 %call.i.i.i93, 0
  br i1 %cmp.not.i.i94, label %do.end.i.i95, label %land.rhs.i92.i.if.end.i.i96_crit_edge, !prof !154

land.rhs.i92.i.if.end.i.i96_crit_edge:            ; preds = %land.rhs.i92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i96

do.end.i.i95:                                     ; preds = %land.rhs.i92.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 362, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i96

if.end.i.i96:                                     ; preds = %do.end.i.i95, %land.rhs.i92.i.if.end.i.i96_crit_edge, %get_full_stripe_logical.exit.i91.if.end.i.i96_crit_edge
  %350 = ptrtoint ptr %full_stripe_locks_root.i76 to i32
  call void @__asan_load4_noabort(i32 %350)
  %node.044.i.i = load ptr, ptr %full_stripe_locks_root.i76, align 4
  %tobool25.not45.i.i = icmp eq ptr %node.044.i.i, null
  br i1 %tobool25.not45.i.i, label %if.end.i.i96.do.end.i_crit_edge, label %if.end.i.i96.while.body.i.i99_crit_edge

if.end.i.i96.while.body.i.i99_crit_edge:          ; preds = %if.end.i.i96
  br label %while.body.i.i99

if.end.i.i96.do.end.i_crit_edge:                  ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

while.body.i.i99:                                 ; preds = %if.end34.i.i107.while.body.i.i99_crit_edge, %if.end.i.i96.while.body.i.i99_crit_edge
  %node.046.i.i = phi ptr [ %node.0.i.i, %if.end34.i.i107.while.body.i.i99_crit_edge ], [ %node.044.i.i, %if.end.i.i96.while.body.i.i99_crit_edge ]
  %logical.i.i97 = getelementptr inbounds %struct.full_stripe_lock, ptr %node.046.i.i, i32 0, i32 1
  %351 = ptrtoint ptr %logical.i.i97 to i32
  call void @__asan_load8_noabort(i32 %351)
  %352 = load i64, ptr %logical.i.i97, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %352, i64 %add.i.i88)
  %cmp27.i.i98 = icmp ugt i64 %352, %add.i.i88
  br i1 %cmp27.i.i98, label %if.then28.i.i101, label %if.else.i.i103

if.then28.i.i101:                                 ; preds = %while.body.i.i99
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i100 = getelementptr inbounds %struct.rb_node, ptr %node.046.i.i, i32 0, i32 2
  br label %if.end34.i.i107

if.else.i.i103:                                   ; preds = %while.body.i.i99
  call void @__sanitizer_cov_trace_cmp8(i64 %352, i64 %add.i.i88)
  %cmp30.i.i102 = icmp ult i64 %352, %add.i.i88
  br i1 %cmp30.i.i102, label %if.then31.i.i105, label %if.end29.i

if.then31.i.i105:                                 ; preds = %if.else.i.i103
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i104 = getelementptr inbounds %struct.rb_node, ptr %node.046.i.i, i32 0, i32 1
  br label %if.end34.i.i107

if.end34.i.i107:                                  ; preds = %if.then31.i.i105, %if.then28.i.i101
  %node.1.in.i.i = phi ptr [ %rb_left.i.i100, %if.then28.i.i101 ], [ %rb_right.i.i104, %if.then31.i.i105 ]
  %353 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool25.not.i.i106 = icmp eq ptr %node.0.i.i, null
  br i1 %tobool25.not.i.i106, label %if.end34.i.i107.do.end.i_crit_edge, label %if.end34.i.i107.while.body.i.i99_crit_edge

if.end34.i.i107.while.body.i.i99_crit_edge:       ; preds = %if.end34.i.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i99

if.end34.i.i107.do.end.i_crit_edge:               ; preds = %if.end34.i.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.end34.i.i107.do.end.i_crit_edge, %if.end.i.i96.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 488, i32 noundef 9, ptr noundef null) #14
  call void @mutex_unlock(ptr noundef %lock.i89) #14
  br label %out.i

if.end29.i:                                       ; preds = %if.else.i.i103
  %refs.i108 = getelementptr inbounds %struct.full_stripe_lock, ptr %node.046.i.i, i32 0, i32 2
  %354 = ptrtoint ptr %refs.i108 to i32
  call void @__asan_load8_noabort(i32 %354)
  %355 = load i64, ptr %refs.i108, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %355)
  %cmp.i = icmp eq i64 %355, 0
  br i1 %cmp.i, label %do.end43.i, label %if.else.i

do.end43.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 495, i32 noundef 9, ptr noundef null) #14
  %356 = ptrtoint ptr %logical.i.i97 to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %logical.i.i97, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.46, i64 noundef %357) #17
  %358 = ptrtoint ptr %refs.i108 to i32
  call void @__asan_load8_noabort(i32 %358)
  %.pr.i = load i64, ptr %refs.i108, align 8
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add i64 %355, -1
  %359 = ptrtoint ptr %refs.i108 to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %dec.i, ptr %refs.i108, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else.i, %do.end43.i
  %360 = phi i64 [ %dec.i, %if.else.i ], [ %.pr.i, %do.end43.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %360)
  %cmp60.i = icmp eq i64 %360, 0
  br i1 %cmp60.i, label %if.then61.i109, label %out.critedge.i

if.then61.i109:                                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rb_erase(ptr noundef nonnull %node.046.i.i, ptr noundef %full_stripe_locks_root.i76) #14
  call void @mutex_unlock(ptr noundef %lock.i89) #14
  %mutex.c.i = getelementptr inbounds %struct.full_stripe_lock, ptr %node.046.i.i, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %mutex.c.i) #14
  call void @kfree(ptr noundef nonnull %node.046.i.i) #14
  br label %out.i

out.critedge.i:                                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %lock.i89) #14
  %mutex.c91.i = getelementptr inbounds %struct.full_stripe_lock, ptr %node.046.i.i, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %mutex.c91.i) #14
  br label %out.i

out.i:                                            ; preds = %out.critedge.i, %if.then61.i109, %do.end.i, %if.end3.i75.out.i_crit_edge
  call void @btrfs_put_block_group(ptr noundef nonnull %call.i70) #14
  br label %unlock_full_stripe.exit

unlock_full_stripe.exit:                          ; preds = %out.i, %if.end534.unlock_full_stripe.exit_crit_edge
  %361 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i111 = and i32 %361, -16384
  %362 = inttoptr i32 %and.i.i111 to ptr
  %task.i112 = getelementptr inbounds %struct.thread_info, ptr %362, i32 0, i32 2
  %363 = ptrtoint ptr %task.i112 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %task.i112, align 8
  %flags1.i113 = getelementptr inbounds %struct.task_struct, ptr %364, i32 0, i32 3
  %365 = ptrtoint ptr %flags1.i113 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %flags1.i113, align 4
  %and.i114 = and i32 %366, -262145
  %or.i115 = or i32 %and.i114, %and.i
  store i32 %or.i115, ptr %flags1.i113, align 4
  br label %cleanup541

cleanup541:                                       ; preds = %unlock_full_stripe.exit, %if.end70, %land.lhs.true.cleanup541_crit_edge, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_write_block_to_dev_replace(ptr nocapture noundef readonly %sblock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 4
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %sparity = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 5
  %4 = ptrtoint ptr %sparity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sparity, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %6 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 154, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %page_num.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end4.for.body_crit_edge ]
  %call = tail call fastcc i32 @scrub_write_page_to_dev_replace(ptr noundef %sblock, i32 noundef %page_num.012)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.if.end4_crit_edge, label %if.then3

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_write_errors) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body.if.end4_crit_edge
  %inc = add nuw nsw i32 %page_num.012, 1
  %8 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_count, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_repair_one_zone(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_dev_stat_inc_and_print(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_recheck_block(ptr nocapture noundef readonly %fs_info, ptr nocapture noundef %sblock, i32 noundef %retry_failed_mirror) unnamed_addr #0 align 64 {
entry:
  %done.i.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %0, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_failed_mirror)
  %tobool.not = icmp eq i32 %retry_failed_mirror, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblock, align 4
  %recover.i = getelementptr inbounds %struct.scrub_page, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recover.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %scrub_is_page_on_raid56.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

scrub_is_page_on_raid56.exit:                     ; preds = %land.lhs.true
  %bioc.i = getelementptr inbounds %struct.scrub_recover, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bioc.i, align 4
  %map_type.i = getelementptr inbounds %struct.btrfs_io_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %map_type.i, align 8
  %and.i = and i64 %9, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool2.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool2.i.not, label %scrub_is_page_on_raid56.exit.if.end_crit_edge, label %if.then

scrub_is_page_on_raid56.exit.if.end_crit_edge:    ; preds = %scrub_is_page_on_raid56.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %scrub_is_page_on_raid56.exit
  %dev.i = getelementptr inbounds %struct.scrub_page, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %tobool.not.i84 = icmp eq ptr %11, null
  br i1 %tobool.not.i84, label %cond.false.i, label %cond.end.i, !prof !154

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.36, i32 noundef 1414) #22
  unreachable

cond.end.i:                                       ; preds = %if.then
  %bdev.i = getelementptr inbounds %struct.btrfs_device, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev.i, align 8
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %cond.end.i.out.i_crit_edge, label %if.end.i

cond.end.i.out.i_crit_edge:                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end.i:                                         ; preds = %cond.end.i
  %call.i = tail call ptr @btrfs_bio_alloc(i32 noundef 256) #14
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %bdev6.i = getelementptr inbounds %struct.btrfs_device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %bdev6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev6.i, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %19, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %21, %17
  br i1 %cmp.not.i.i, label %if.end.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.end.i.bio_set_dev.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i = and i16 %19, -2177
  %22 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.end.i.bio_set_dev.exit.i_crit_edge
  %23 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #14
  %page_count.i = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %24 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.i = icmp sgt i32 %25, 0
  br i1 %cmp7.i, label %bio_set_dev.exit.i.for.body.i_crit_edge, label %bio_set_dev.exit.i.for.end.i_crit_edge

bio_set_dev.exit.i.for.end.i_crit_edge:           ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

bio_set_dev.exit.i.for.body.i_crit_edge:          ; preds = %bio_set_dev.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %bio_set_dev.exit.i.for.body.i_crit_edge
  %page_num.08.i = phi i32 [ %inc.i, %if.end30.i.for.body.i_crit_edge ], [ 0, %bio_set_dev.exit.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr [16 x ptr], ptr %sblock, i32 0, i32 %page_num.08.i
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.i, align 4
  %page.i = getelementptr inbounds %struct.scrub_page, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page.i, align 4
  %tobool9.not.i = icmp eq ptr %29, null
  br i1 %tobool9.not.i, label %do.end.i, label %for.body.i.if.end30.i_crit_edge, !prof !154

for.body.i.if.end30.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1424, i32 noundef 9, ptr noundef null) #14
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end.i, %for.body.i.if.end30.i_crit_edge
  %30 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %page.i, align 4
  %call38.i = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %31, i32 noundef 4096, i32 noundef 0) #14
  %inc.i = add nuw nsw i32 %page_num.08.i, 1
  %32 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %33
  br i1 %cmp.i, label %if.end30.i.for.body.i_crit_edge, label %if.end30.i.for.end.i_crit_edge

if.end30.i.for.end.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %if.end30.i.for.end.i_crit_edge, %bio_set_dev.exit.i.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i.i) #14
  %34 = getelementptr inbounds i8, ptr %done.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 255, i32 52)
  %36 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %done.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %34, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #14
  %logical.i.i = getelementptr inbounds %struct.scrub_page, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %logical.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %logical.i.i, align 8
  %shr.i.i = lshr i64 %38, 9
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %39 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %shr.i.i, ptr %bi_iter.i.i, align 8
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %40 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %done.i.i, ptr %bi_private.i.i, align 4
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @scrub_bio_wait_endio, ptr %bi_end_io.i.i, align 8
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %mirror_num1.i.i = getelementptr inbounds %struct.scrub_page, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %mirror_num1.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mirror_num1.i.i, align 4
  %conv.i.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %recover.i, align 8
  %bioc.i.i = getelementptr inbounds %struct.scrub_recover, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bioc.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bioc.i.i, align 4
  %map_length.i.i = getelementptr inbounds %struct.scrub_recover, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %map_length.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %map_length.i.i, align 8
  %call.i.i = call i32 @raid56_parity_recover(ptr noundef %call.i, ptr noundef %51, i64 noundef %53, i32 noundef %conv.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %scrub_submit_raid56_bio_wait.exit.i, label %scrub_submit_raid56_bio_wait.exit.thread.i

scrub_submit_raid56_bio_wait.exit.thread.i:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i.i) #14
  br label %if.then41.i

scrub_submit_raid56_bio_wait.exit.i:              ; preds = %for.end.i
  call void @wait_for_completion_io(ptr noundef nonnull %done.i.i) #14
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 6
  %54 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bi_status.i.i, align 2
  %call3.i.i = call i32 @blk_status_to_errno(i8 noundef zeroext %55) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool40.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %scrub_submit_raid56_bio_wait.exit.i.if.then41.i_crit_edge

scrub_submit_raid56_bio_wait.exit.i.if.then41.i_crit_edge: ; preds = %scrub_submit_raid56_bio_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41.i

if.then41.i:                                      ; preds = %scrub_submit_raid56_bio_wait.exit.i.if.then41.i_crit_edge, %scrub_submit_raid56_bio_wait.exit.thread.i
  call void @bio_put(ptr noundef %call.i) #14
  br label %out.i

if.end42.i:                                       ; preds = %scrub_submit_raid56_bio_wait.exit.i
  call void @bio_put(ptr noundef %call.i) #14
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i = load i8, ptr %0, align 4
  %bf.clear5.i.i = and i8 %bf.load.i.i, 47
  store i8 %bf.clear5.i.i, ptr %0, align 4
  %57 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sblock, align 4
  %flags.i.i = getelementptr inbounds %struct.scrub_page, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %flags.i.i, align 8
  %and.i.i = and i64 %60, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i1.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %if.else.i.i, label %if.then.i3.i

if.then.i3.i:                                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i2.i = call fastcc i32 @scrub_checksum_data(ptr noundef %sblock) #14
  br label %cleanup58

if.else.i.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i.i = call fastcc i32 @scrub_checksum_tree_block(ptr noundef %sblock) #14
  br label %cleanup58

out.i:                                            ; preds = %if.then41.i, %cond.end.i.out.i_crit_edge
  %page_count44.i = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %61 = ptrtoint ptr %page_count44.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %page_count44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp459.i = icmp sgt i32 %62, 0
  br i1 %cmp459.i, label %out.i.for.body46.i_crit_edge, label %out.i.for.end51.i_crit_edge

out.i.for.end51.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end51.i

out.i.for.body46.i_crit_edge:                     ; preds = %out.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %out.i.for.body46.i_crit_edge
  %page_num.110.i = phi i32 [ %inc50.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %out.i.for.body46.i_crit_edge ]
  %arrayidx48.i = getelementptr [16 x ptr], ptr %sblock, i32 0, i32 %page_num.110.i
  %63 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx48.i, align 4
  %io_error.i = getelementptr inbounds %struct.scrub_page, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %io_error.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %io_error.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %io_error.i, align 1
  %inc50.i = add nuw nsw i32 %page_num.110.i, 1
  %66 = ptrtoint ptr %page_count44.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %page_count44.i, align 4
  %cmp45.i = icmp slt i32 %inc50.i, %67
  br i1 %cmp45.i, label %for.body46.i.for.body46.i_crit_edge, label %for.body46.i.for.end51.i_crit_edge

for.body46.i.for.end51.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end51.i

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body46.i

for.end51.i:                                      ; preds = %for.body46.i.for.end51.i_crit_edge, %out.i.for.end51.i_crit_edge
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load52.i = load i8, ptr %0, align 4
  %bf.clear53.i = and i8 %bf.load52.i, -33
  store i8 %bf.clear53.i, ptr %0, align 4
  br label %cleanup58

if.end:                                           ; preds = %scrub_is_page_on_raid56.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %69 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp93 = icmp sgt i32 %70, 0
  br i1 %cmp93, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %page_num.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx3 = getelementptr [16 x ptr], ptr %sblock, i32 0, i32 %page_num.094
  %71 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx3, align 4
  %dev = getelementptr inbounds %struct.scrub_page, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bdev, align 8
  %cmp4 = icmp eq ptr %76, null
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %io_error = getelementptr inbounds %struct.scrub_page, ptr %72, i32 0, i32 11
  %77 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load6 = load i8, ptr %io_error, align 1
  %bf.set8 = or i8 %bf.load6, 64
  store i8 %bf.set8, ptr %io_error, align 1
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load9 = load i8, ptr %0, align 4
  %bf.clear10 = and i8 %bf.load9, -33
  store i8 %bf.clear10, ptr %0, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %page = getelementptr inbounds %struct.scrub_page, ptr %72, i32 0, i32 1
  %79 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %page, align 4
  %tobool13.not = icmp eq ptr %80, null
  br i1 %tobool13.not, label %do.end, label %if.end12.if.end29_crit_edge, !prof !154

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1474, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end12.if.end29_crit_edge
  %call36 = tail call ptr @btrfs_bio_alloc(i32 noundef 1) #14
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 8
  %bdev38 = getelementptr inbounds %struct.btrfs_device, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %bdev38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bdev38, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 3
  %85 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %86, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 1
  %87 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %88, %84
  br i1 %cmp.not.i, label %if.end29.bio_set_dev.exit_crit_edge, label %if.then.i

if.end29.bio_set_dev.exit_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %86, -2177
  %89 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end29.bio_set_dev.exit_crit_edge
  %90 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %84, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call36) #14
  %91 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %page, align 4
  %93 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sectorsize, align 4
  %call40 = tail call i32 @bio_add_page(ptr noundef %call36, ptr noundef %92, i32 noundef %94, i32 noundef 0) #14
  %physical = getelementptr inbounds %struct.scrub_page, ptr %72, i32 0, i32 7
  %95 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %physical, align 8
  %shr = lshr i64 %96, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 8
  %97 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %shr, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 2
  %98 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %bi_opf, align 8
  %call41 = tail call i32 @btrfsic_submit_bio_wait(ptr noundef %call36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %bio_set_dev.exit.if.end51_crit_edge, label %if.then43

bio_set_dev.exit.if.end51_crit_edge:              ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then43:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  %io_error44 = getelementptr inbounds %struct.scrub_page, ptr %72, i32 0, i32 11
  %99 = ptrtoint ptr %io_error44 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load45 = load i8, ptr %io_error44, align 1
  %bf.set47 = or i8 %bf.load45, 64
  store i8 %bf.set47, ptr %io_error44, align 1
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load48 = load i8, ptr %0, align 4
  %bf.clear49 = and i8 %bf.load48, -33
  store i8 %bf.clear49, ptr %0, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %bio_set_dev.exit.if.end51_crit_edge
  tail call void @bio_put(ptr noundef %call36) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then5
  %inc = add nuw nsw i32 %page_num.094, 1
  %101 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %page_count, align 4
  %cmp = icmp slt i32 %inc, %102
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %103 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load53 = load i8, ptr %0, align 4
  %104 = and i8 %bf.load53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool55.not = icmp eq i8 %104, 0
  br i1 %tobool55.not, label %for.end.cleanup58_crit_edge, label %if.then56

for.end.cleanup58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

if.then56:                                        ; preds = %for.end
  %bf.clear5.i = and i8 %bf.load53, 47
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %bf.clear5.i, ptr %0, align 4
  %106 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sblock, align 4
  %flags.i = getelementptr inbounds %struct.scrub_page, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %flags.i, align 8
  %and.i87 = and i64 %109, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i87)
  %tobool.not.i88 = icmp eq i64 %and.i87, 0
  br i1 %tobool.not.i88, label %if.else.i, label %if.then.i90

if.then.i90:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %call.i89 = tail call fastcc i32 @scrub_checksum_data(ptr noundef %sblock) #14
  br label %cleanup58

if.else.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = tail call fastcc i32 @scrub_checksum_tree_block(ptr noundef %sblock) #14
  br label %cleanup58

cleanup58:                                        ; preds = %if.else.i, %if.then.i90, %for.end.cleanup58_crit_edge, %for.end51.i, %if.else.i.i, %if.then.i3.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_print_warning(ptr noundef %errstr, ptr nocapture noundef readonly %sblock) unnamed_addr #0 align 64 {
entry:
  %found_key = alloca %struct.btrfs_key, align 8
  %swarn = alloca %struct.scrub_warning, align 8
  %ptr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ref_root = alloca i64, align 8
  %ref_level = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %found_key) #14
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 2
  %1 = call ptr @memset(ptr %found_key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %swarn) #14
  %2 = call ptr @memset(ptr %swarn, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #14
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags) #14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref_root) #14
  %5 = ptrtoint ptr %ref_root to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %ref_root, align 8, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ref_level) #14
  %6 = ptrtoint ptr %ref_level to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ref_level, align 1
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %7 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !154

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 731, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sblock, align 4
  %dev19 = getelementptr inbounds %struct.scrub_page, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 8
  %sctx = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 4
  %13 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sctx, align 4
  %fs_info20 = getelementptr inbounds %struct.scrub_ctx, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %fs_info20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs_info20, align 8
  %call = tail call ptr @btrfs_alloc_path() #14
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %17 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sblock, align 4
  %physical = getelementptr inbounds %struct.scrub_page, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %physical, align 8
  %physical26 = getelementptr inbounds %struct.scrub_warning, ptr %swarn, i32 0, i32 3
  %21 = ptrtoint ptr %physical26 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %physical26, align 8
  %logical = getelementptr inbounds %struct.scrub_page, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %logical, align 8
  %logical29 = getelementptr inbounds %struct.scrub_warning, ptr %swarn, i32 0, i32 4
  %24 = ptrtoint ptr %logical29 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %logical29, align 8
  %errstr30 = getelementptr inbounds %struct.scrub_warning, ptr %swarn, i32 0, i32 2
  %25 = ptrtoint ptr %errstr30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %errstr, ptr %errstr30, align 8
  %dev31 = getelementptr inbounds %struct.scrub_warning, ptr %swarn, i32 0, i32 5
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dev31, align 8
  %call33 = call i32 @extent_from_logical(ptr noundef %16, i64 noundef %23, ptr noundef nonnull %call, ptr noundef nonnull %found_key, ptr noundef nonnull %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end23.out_crit_edge, label %if.end36

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end36:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %logical29 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %logical29, align 8
  %29 = ptrtoint ptr %found_key to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %found_key, align 8
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %0, align 1
  %extent_item_size = getelementptr inbounds %struct.scrub_warning, ptr %swarn, i32 0, i32 1
  %33 = ptrtoint ptr %extent_item_size to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %extent_item_size, align 8
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %37, 25
  %add.i.i.i126 = add i32 %mul.i.i.i, 101
  %38 = inttoptr i32 %add.i.i.i126 to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %35, ptr noundef %38, i32 noundef 17) #14
  %add = add i32 %call.i.i, 101
  %39 = inttoptr i32 %add to ptr
  %40 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slots, align 4
  %mul.i.i.i127 = mul i32 %41, 25
  %add.i.i.i128 = add i32 %mul.i.i.i127, 101
  %42 = inttoptr i32 %add.i.i.i128 to ptr
  %call.i.i129 = call i32 @btrfs_get_32(ptr noundef %35, ptr noundef %42, i32 noundef 21) #14
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %flags, align 8
  %and = and i64 %44, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool44.not = icmp eq i64 %and, 0
  br i1 %tobool44.not, label %if.else, label %do.body46.preheader

do.body46.preheader:                              ; preds = %if.end36
  %name = getelementptr inbounds %struct.btrfs_device, ptr %12, i32 0, i32 5
  br label %do.body46

do.body46:                                        ; preds = %rcu_read_unlock.exit.do.body46_crit_edge, %do.body46.preheader
  %call47 = call i32 @tree_backref_for_extent(ptr noundef nonnull %ptr, ptr noundef %35, ptr noundef nonnull %found_key, ptr noundef %39, i32 noundef %call.i.i129, ptr noundef nonnull %ref_root, ptr noundef nonnull %ref_level) #14
  %45 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %do.body46.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body46.rcu_read_lock.exit_crit_edge:           ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body46
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body46.rcu_read_lock.exit_crit_edge
  %49 = ptrtoint ptr %logical29 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %logical29, align 8
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %name, align 8
  %call55 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end64_crit_edge

rcu_read_lock.exit.do.end64_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end64

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call57 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true.do.end64_crit_edge, label %land.lhs.true59

land.lhs.true.do.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end64

land.lhs.true59:                                  ; preds = %land.lhs.true
  %.b125 = load i1, ptr @scrub_print_warning.__warned, align 1
  br i1 %.b125, label %land.lhs.true59.do.end64_crit_edge, label %if.then61

land.lhs.true59.do.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_print_warning.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 768, ptr noundef nonnull @.str.4) #14
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %land.lhs.true59.do.end64_crit_edge, %land.lhs.true.do.end64_crit_edge, %rcu_read_lock.exit.do.end64_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %physical26 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %physical26, align 8
  %55 = ptrtoint ptr %ref_level to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ref_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool68.not = icmp eq i8 %56, 0
  %cond = select i1 %tobool68.not, ptr @.str.41, ptr @.str.40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp69 = icmp slt i32 %call47, 0
  %conv = zext i8 %56 to i32
  %spec.select = select i1 %cmp69, i32 -1, i32 %conv
  br i1 %cmp69, label %do.end64.cond.end77_crit_edge, label %cond.false76

do.end64.cond.end77_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end77

cond.false76:                                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %ref_root to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ref_root, align 8
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false76, %do.end64.cond.end77_crit_edge
  %cond78 = phi i64 [ %58, %cond.false76 ], [ -1, %do.end64.cond.end77_crit_edge ]
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %16, ptr noundef nonnull @.str.39, ptr noundef %errstr, i64 noundef %50, ptr noundef %str, i64 noundef %54, ptr noundef nonnull %cond, i32 noundef %spec.select, i64 noundef %cond78) #17
  %call.i130 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i130, label %cond.end77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i133

cond.end77.rcu_read_unlock.exit_crit_edge:        ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i133:                               ; preds = %cond.end77
  %call1.i131 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, %cond.end77.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %59 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i137 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i138, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %cmp82.not = icmp eq i32 %call47, 1
  br i1 %cmp82.not, label %do.end84, label %rcu_read_unlock.exit.do.body46_crit_edge

rcu_read_unlock.exit.do.body46_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body46

do.end84:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef nonnull %call) #14
  br label %out

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i64 %28, %30
  call void @btrfs_release_path(ptr noundef nonnull %call) #14
  %63 = ptrtoint ptr %swarn to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call, ptr %swarn, align 8
  %64 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %12, ptr %dev31, align 8
  %65 = ptrtoint ptr %found_key to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %found_key, align 8
  %call88 = call i32 @iterate_extent_inodes(ptr noundef %16, i64 noundef %66, i64 noundef %sub, i32 noundef 1, ptr noundef nonnull @scrub_print_warning_inode, ptr noundef nonnull %swarn, i1 noundef zeroext false) #14
  br label %out

out:                                              ; preds = %if.else, %do.end84, %if.end23.out_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ref_level) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref_root) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %swarn) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %found_key) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_repair_block_from_good_copy(ptr nocapture noundef readonly %sblock_bad, ptr nocapture noundef readonly %sblock_good) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock_bad, i32 0, i32 1
  %0 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ret.07 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %page_num.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @scrub_repair_page_from_good_copy(ptr noundef %sblock_bad, ptr noundef %sblock_good, i32 noundef %page_num.06, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %ret.07, i32 %call
  %inc = add nuw nsw i32 %page_num.06, 1
  %2 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_count, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_write_page_to_dev_replace(ptr nocapture noundef readonly %sblock, i32 noundef %page_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x ptr], ptr %sblock, i32 0, i32 %page_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %page = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !154

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1607, 0\0A.popsection", ""() #14, !srcloc !172
  unreachable

do.end7:                                          ; preds = %entry
  %io_error = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %io_error, align 1
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %do.end7.if.end11_crit_edge, label %if.then9

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @page_address(ptr noundef nonnull %3) #14
  %6 = call ptr @memset(ptr %call, i32 0, i32 4096)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end7.if.end11_crit_edge
  %sctx = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 4
  %7 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sctx, align 4
  %fs_info.i = getelementptr inbounds %struct.scrub_ctx, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info.i, align 8
  %sectorsize1.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 167
  %11 = ptrtoint ptr %sectorsize1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectorsize1.i, align 4
  %wr_lock.i = getelementptr inbounds %struct.scrub_ctx, ptr %8, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %wr_lock.i, i32 noundef 0) #14
  %wr_curr_bio.i = getelementptr inbounds %struct.scrub_ctx, ptr %8, i32 0, i32 16
  %physical_for_dev_replace31.i = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 8
  %logical39.i = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 6
  %wr_tgtdev.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %8, i32 0, i32 18
  %write_pointer.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %8, i32 0, i32 15
  %pages_per_bio.i = getelementptr inbounds %struct.scrub_ctx, ptr %8, i32 0, i32 11
  br label %again.i

again.i:                                          ; preds = %again.backedge.i, %if.end11
  %13 = ptrtoint ptr %wr_curr_bio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr_curr_bio.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i, label %again.i.if.end10.i_crit_edge

again.i.if.end10.i_crit_edge:                     ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then.i:                                        ; preds = %again.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 248) #19
  %16 = ptrtoint ptr %wr_curr_bio.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %wr_curr_bio.i, align 8
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.then.i.scrub_add_page_to_wr_bio.exit_crit_edge, label %if.end.i

if.then.i.scrub_add_page_to_wr_bio.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_add_page_to_wr_bio.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sctx8.i = getelementptr inbounds %struct.scrub_bio, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %sctx8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %sctx8.i, align 4
  %page_count.i = getelementptr inbounds %struct.scrub_bio, ptr %call7.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %page_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %page_count.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %again.i.if.end10.i_crit_edge
  %19 = ptrtoint ptr %wr_curr_bio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr_curr_bio.i, align 8
  %page_count12.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %page_count12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_count12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end10.i
  %23 = ptrtoint ptr %physical_for_dev_replace31.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %physical_for_dev_replace31.i, align 8
  %25 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info.i, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 176
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp.i.not.i.i = icmp eq i64 %29, 0
  br i1 %cmp.i.not.i.i, label %if.then13.i.if.end18.i_crit_edge, label %if.end.i.i

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end.i.i:                                       ; preds = %if.then13.i
  %30 = ptrtoint ptr %wr_tgtdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr_tgtdev.i.i, align 8
  %zone_info1.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %zone_info1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %zone_info1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end18.i_crit_edge, label %btrfs_dev_is_sequential.exit.i.i

if.end.i.i.if.end18.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

btrfs_dev_is_sequential.exit.i.i:                 ; preds = %if.end.i.i
  %zone_size_shift.i.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %zone_size_shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %zone_size_shift.i.i.i, align 8
  %sh_prom.i.i.i = zext i8 %35 to i64
  %shr.i.i.i = lshr i64 %24, %sh_prom.i.i.i
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %seq_zones.i.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %seq_zones.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %seq_zones.i.i.i, align 8
  %div3.i.i.i.i = lshr i32 %conv2.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %37, i32 %div3.i.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %conv2.i.i.i, 31
  %40 = shl nuw i32 1, %and.i.i.i.i
  %41 = and i32 %40, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.i.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool3.i.not.i.i, label %btrfs_dev_is_sequential.exit.i.i.if.end18.i_crit_edge, label %if.end3.i.i

btrfs_dev_is_sequential.exit.i.i.if.end18.i_crit_edge: ; preds = %btrfs_dev_is_sequential.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end3.i.i:                                      ; preds = %btrfs_dev_is_sequential.exit.i.i
  %42 = ptrtoint ptr %write_pointer.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %write_pointer.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %43)
  %cmp.i.i = icmp ugt i64 %24, %43
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end3.i.i.if.end18.i_crit_edge

if.end3.i.i.if.end18.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then4.i.i:                                     ; preds = %if.end3.i.i
  %sub.i.i = sub i64 %24, %43
  %call8.i.i = tail call i32 @btrfs_zoned_issue_zeroout(ptr noundef %31, i64 noundef %43, i64 noundef %sub.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %if.then4.i.i.scrub_add_page_to_wr_bio.exit_crit_edge

if.then4.i.i.scrub_add_page_to_wr_bio.exit_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_add_page_to_wr_bio.exit

if.then9.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %write_pointer.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %24, ptr %write_pointer.i.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then9.i.i, %if.end3.i.i.if.end18.i_crit_edge, %btrfs_dev_is_sequential.exit.i.i.if.end18.i_crit_edge, %if.end.i.i.if.end18.i_crit_edge, %if.then13.i.if.end18.i_crit_edge
  %45 = ptrtoint ptr %physical_for_dev_replace31.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %physical_for_dev_replace31.i, align 8
  %physical.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 6
  %47 = ptrtoint ptr %physical.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %physical.i, align 8
  %48 = ptrtoint ptr %logical39.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %logical39.i, align 8
  %logical20.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 5
  %50 = ptrtoint ptr %logical20.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %logical20.i, align 8
  %51 = ptrtoint ptr %wr_tgtdev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr_tgtdev.i.i, align 8
  %dev.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 2
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %dev.i, align 8
  %bio21.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 3
  %54 = ptrtoint ptr %bio21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bio21.i, align 4
  %tobool22.not.i = icmp eq ptr %55, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end18.i.if.end26.i_crit_edge

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %pages_per_bio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pages_per_bio.i, align 4
  %call24.i = tail call ptr @btrfs_bio_alloc(i32 noundef %57) #14
  %58 = ptrtoint ptr %bio21.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call24.i, ptr %bio21.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end26.i_crit_edge
  %bio.0.i = phi ptr [ %55, %if.end18.i.if.end26.i_crit_edge ], [ %call24.i, %if.then23.i ]
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 11
  %59 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %20, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 10
  %60 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @scrub_wr_bio_end_io, ptr %bi_end_io.i, align 8
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  %bdev.i = getelementptr inbounds %struct.btrfs_device, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bdev.i, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 3
  %65 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %66, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 1
  %67 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %68, %64
  br i1 %cmp.not.i.i, label %if.end26.i.cleanup.thread.i_crit_edge, label %if.then.i.i

if.end26.i.cleanup.thread.i_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i = and i16 %66, -2177
  %69 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i.i, %if.end26.i.cleanup.thread.i_crit_edge
  %70 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio.0.i) #14
  %71 = ptrtoint ptr %physical.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %physical.i, align 8
  %shr.i = lshr i64 %72, 9
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 8
  %73 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %shr.i, ptr %bi_iter.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.0.i, i32 0, i32 2
  %74 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %bi_opf.i, align 8
  %status.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 4
  %75 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %status.i, align 8
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end10.i
  %physical29.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 6
  %76 = ptrtoint ptr %physical29.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %physical29.i, align 8
  %mul.i = mul i32 %22, %12
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %77, %conv.i
  %78 = ptrtoint ptr %physical_for_dev_replace31.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %physical_for_dev_replace31.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %79)
  %cmp32.not.i = icmp eq i64 %add.i, %79
  br i1 %cmp32.not.i, label %lor.lhs.false.i, label %if.else.i.again.backedge.i_crit_edge

if.else.i.again.backedge.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %logical34.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 5
  %80 = ptrtoint ptr %logical34.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %logical34.i, align 8
  %add38.i = add i64 %81, %conv.i
  %82 = ptrtoint ptr %logical39.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %logical39.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add38.i, i64 %83)
  %cmp40.not.i = icmp eq i64 %add38.i, %83
  br i1 %cmp40.not.i, label %lor.lhs.false.i.if.end44.i_crit_edge, label %lor.lhs.false.i.again.backedge.i_crit_edge

lor.lhs.false.i.again.backedge.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge.i

lor.lhs.false.i.if.end44.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

again.backedge.i:                                 ; preds = %if.then49.i.again.backedge.i_crit_edge, %lor.lhs.false.i.again.backedge.i_crit_edge, %if.else.i.again.backedge.i_crit_edge
  tail call fastcc void @scrub_wr_submit(ptr noundef %8) #14
  br label %again.i

if.end44.i:                                       ; preds = %lor.lhs.false.i.if.end44.i_crit_edge, %cleanup.thread.i
  %bio45.i = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 3
  %84 = ptrtoint ptr %bio45.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bio45.i, align 4
  %86 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %page, align 4
  %call46.i = tail call i32 @bio_add_page(ptr noundef %85, ptr noundef %87, i32 noundef %12, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call46.i, i32 %12)
  %cmp47.not.i = icmp eq i32 %call46.i, %12
  %88 = ptrtoint ptr %page_count12.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %page_count12.i, align 8
  br i1 %cmp47.not.i, label %if.end58.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp51.i = icmp slt i32 %89, 1
  br i1 %cmp51.i, label %if.then53.i, label %if.then49.i.again.backedge.i_crit_edge

if.then49.i.again.backedge.i_crit_edge:           ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge.i

if.then53.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #16
  %bio45.i.le = getelementptr inbounds %struct.scrub_bio, ptr %20, i32 0, i32 3
  %90 = ptrtoint ptr %bio45.i.le to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bio45.i.le, align 4
  tail call void @bio_put(ptr noundef %91) #14
  %92 = ptrtoint ptr %bio45.i.le to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %bio45.i.le, align 4
  br label %scrub_add_page_to_wr_bio.exit

if.end58.i:                                       ; preds = %if.end44.i
  %arrayidx.i = getelementptr %struct.scrub_bio, ptr %20, i32 0, i32 7, i32 %89
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %1, ptr %arrayidx.i, align 4
  %refs.i.i = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #14
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #14, !srcloc !151
  %95 = ptrtoint ptr %page_count12.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %page_count12.i, align 8
  %inc.i = add i32 %96, 1
  store i32 %inc.i, ptr %page_count12.i, align 8
  %97 = ptrtoint ptr %pages_per_bio.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pages_per_bio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %98)
  %cmp63.i = icmp eq i32 %inc.i, %98
  br i1 %cmp63.i, label %if.then65.i, label %if.end58.i.scrub_add_page_to_wr_bio.exit_crit_edge

if.end58.i.scrub_add_page_to_wr_bio.exit_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_add_page_to_wr_bio.exit

if.then65.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @scrub_wr_submit(ptr noundef %8) #14
  br label %scrub_add_page_to_wr_bio.exit

scrub_add_page_to_wr_bio.exit:                    ; preds = %if.then65.i, %if.end58.i.scrub_add_page_to_wr_bio.exit_crit_edge, %if.then53.i, %if.then4.i.i.scrub_add_page_to_wr_bio.exit_crit_edge, %if.then.i.scrub_add_page_to_wr_bio.exit_crit_edge
  %retval.3.i = phi i32 [ -5, %if.then53.i ], [ 0, %if.then65.i ], [ 0, %if.end58.i.scrub_add_page_to_wr_bio.exit_crit_edge ], [ %call8.i.i, %if.then4.i.i.scrub_add_page_to_wr_bio.exit_crit_edge ], [ -12, %if.then.i.scrub_add_page_to_wr_bio.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wr_lock.i) #14
  ret i32 %retval.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_repair_page_from_good_copy(ptr nocapture noundef readonly %sblock_bad, ptr nocapture noundef readonly %sblock_good, i32 noundef %page_num, i32 noundef %force_write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x ptr], ptr %sblock_bad, i32 0, i32 %page_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %sctx = getelementptr inbounds %struct.scrub_block, ptr %sblock_bad, i32 0, i32 4
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sctx, align 4
  %fs_info3 = getelementptr inbounds %struct.scrub_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fs_info3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info3, align 8
  %sectorsize4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize4, align 4
  %page = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %do.body6, label %do.body12, !prof !154

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1544, 0\0A.popsection", ""() #14, !srcloc !173
  unreachable

do.body12:                                        ; preds = %entry
  %arrayidx2 = getelementptr [16 x ptr], ptr %sblock_good, i32 0, i32 %page_num
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %page13 = getelementptr inbounds %struct.scrub_page, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %page13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page13, align 4
  %cmp14 = icmp eq ptr %13, null
  br i1 %cmp14, label %do.body22, label %do.end30, !prof !154

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1545, 0\0A.popsection", ""() #14, !srcloc !174
  unreachable

do.end30:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_write)
  %tobool31.not = icmp eq i32 %force_write, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %do.end30.if.then44_crit_edge

do.end30.if.then44_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then44

lor.lhs.false:                                    ; preds = %do.end30
  %14 = getelementptr inbounds %struct.scrub_block, ptr %sblock_bad, i32 0, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %16 = icmp ult i8 %bf.load, 64
  br i1 %16, label %lor.lhs.false38, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then44

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %io_error = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load39 = load i8, ptr %io_error, align 1
  %18 = and i8 %bf.load39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool43.not = icmp eq i8 %18, 0
  br i1 %tobool43.not, label %lor.lhs.false38.cleanup69_crit_edge, label %lor.lhs.false38.if.then44_crit_edge

lor.lhs.false38.if.then44_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then44

lor.lhs.false38.cleanup69_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.then44:                                        ; preds = %lor.lhs.false38.if.then44_crit_edge, %lor.lhs.false.if.then44_crit_edge, %do.end30.if.then44_crit_edge
  %dev = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev, align 8
  %tobool45.not = icmp eq ptr %22, null
  br i1 %tobool45.not, label %do.body47, label %if.end53

do.body47:                                        ; preds = %if.then44
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @scrub_repair_page_from_good_copy._rs, ptr noundef nonnull @__func__.scrub_repair_page_from_good_copy) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool48.not = icmp eq i32 %call, 0
  br i1 %tobool48.not, label %do.body47.cleanup69_crit_edge, label %if.then49

do.body47.cleanup69_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.then49:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.45) #17
  br label %cleanup69

if.end53:                                         ; preds = %if.then44
  %call54 = tail call ptr @btrfs_bio_alloc(i32 noundef 1) #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %bdev56 = getelementptr inbounds %struct.btrfs_device, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %bdev56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev56, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call54, i32 0, i32 3
  %27 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %28, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call54, i32 0, i32 1
  %29 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %30, %26
  br i1 %cmp.not.i, label %if.end53.bio_set_dev.exit_crit_edge, label %if.then.i

if.end53.bio_set_dev.exit_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %28, -2177
  %31 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end53.bio_set_dev.exit_crit_edge
  %32 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call54) #14
  %physical = getelementptr inbounds %struct.scrub_page, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %physical, align 8
  %shr = lshr i64 %34, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call54, i32 0, i32 8
  %35 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shr, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call54, i32 0, i32 2
  %36 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %bi_opf, align 8
  %37 = ptrtoint ptr %page13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %page13, align 4
  %call58 = tail call i32 @bio_add_page(ptr noundef %call54, ptr noundef %38, i32 noundef %7, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %7)
  %cmp59.not = icmp eq i32 %call58, %7
  br i1 %cmp59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_put(ptr noundef %call54) #14
  br label %cleanup69

if.end61:                                         ; preds = %bio_set_dev.exit
  %call62 = tail call i32 @btrfsic_submit_bio_wait(ptr noundef %call54) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  tail call void @btrfs_dev_stat_inc_and_print(ptr noundef %40, i32 noundef 0) #14
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 154, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_write_errors) #14
  tail call void @bio_put(ptr noundef %call54) #14
  br label %cleanup69

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_put(ptr noundef %call54) #14
  br label %cleanup69

cleanup69:                                        ; preds = %if.end66, %if.then64, %if.then60, %if.then49, %do.body47.cleanup69_crit_edge, %lor.lhs.false38.cleanup69_crit_edge
  %retval.1 = phi i32 [ -5, %do.body47.cleanup69_crit_edge ], [ -5, %if.then49 ], [ -5, %if.then64 ], [ -5, %if.then60 ], [ 0, %if.end66 ], [ 0, %lor.lhs.false38.cleanup69_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_block_group(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_bio_counter_inc_blocked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_map_sblock(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_bioc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_bio_counter_sub(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_bio_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfsic_submit_bio_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_bio_wait_endio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  tail call void @complete(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raid56_parity_recover(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_checksum_data(ptr nocapture noundef %sblock) unnamed_addr #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  %csum = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx1 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 4
  %0 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx1, align 4
  %fs_info2 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #14
  %4 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %csum) #14
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %5 = call ptr @memset(ptr %csum, i32 255, i32 32)
  %6 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %do.body4, label %do.end9, !prof !154

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1815, 0\0A.popsection", ""() #14, !srcloc !175
  unreachable

do.end9:                                          ; preds = %entry
  %8 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sblock, align 4
  %have_csum = getelementptr inbounds %struct.scrub_page, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %have_csum to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %have_csum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %page = getelementptr inbounds %struct.scrub_page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %12) #14
  %csum_shash = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 174
  %13 = ptrtoint ptr %csum_shash to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csum_shash, align 8
  %15 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.crypto_shash_init.exit_crit_edge

if.end12.crypto_shash_init.exit_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 -256
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %21(ptr noundef nonnull %__shash_desc) #14
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %if.end12.crypto_shash_init.exit_crit_edge
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %22 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectorsize, align 4
  %call15 = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc, ptr noundef %call, i32 noundef %23, ptr noundef nonnull %csum) #14
  %csum17 = getelementptr inbounds %struct.scrub_page, ptr %9, i32 0, i32 12
  %csum_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 169
  %24 = ptrtoint ptr %csum_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %csum_size, align 4
  %bcmp = call i32 @bcmp(ptr nonnull %csum, ptr %csum17, i32 %25) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  br i1 %tobool20.not, label %crypto_shash_init.exit.if.end23_crit_edge, label %if.then21

crypto_shash_init.exit.if.end23_crit_edge:        ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then21:                                        ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %26 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load22 = load i8, ptr %26, align 4
  %bf.set = or i8 %bf.load22, 64
  store i8 %bf.set, ptr %26, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %crypto_shash_init.exit.if.end23_crit_edge
  %28 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load24 = load i8, ptr %28, align 4
  %bf.lshr25 = lshr i8 %bf.load24, 6
  %bf.clear26 = and i8 %bf.lshr25, 1
  %bf.cast27 = zext i8 %bf.clear26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %bf.cast27, %if.end23 ], [ 0, %do.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %csum) #14
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_checksum_tree_block(ptr nocapture noundef %sblock) unnamed_addr #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  %calculated_csum = alloca [32 x i8], align 1
  %on_disk_csum = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx1 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 4
  %0 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx1, align 4
  %fs_info2 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #14
  %4 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %calculated_csum) #14
  %5 = call ptr @memset(ptr %calculated_csum, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %on_disk_csum) #14
  %6 = call ptr @memset(ptr %on_disk_csum, i32 255, i32 32)
  %7 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info2, align 8
  %sectorsize4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %8, i32 0, i32 167
  %9 = ptrtoint ptr %sectorsize4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize4, align 4
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 166
  %11 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nodesize, align 8
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %13 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %12, %14
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 1
  %15 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp slt i32 %16, 1
  br i1 %cmp, label %do.body6, label %do.end11, !prof !154

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/scrub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1855, 0\0A.popsection", ""() #14, !srcloc !176
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %shr)
  %cmp13 = icmp eq i32 %16, %shr
  br i1 %cmp13, label %cond.end, label %cond.false, !prof !153

cond.false:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.38, i32 noundef 1858) #20
  unreachable

cond.end:                                         ; preds = %do.end11
  %17 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sblock, align 4
  %page = getelementptr inbounds %struct.scrub_page, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %20) #14
  %21 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fs_info2, align 8
  %csum_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %22, i32 0, i32 169
  %23 = ptrtoint ptr %csum_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %csum_size, align 4
  %25 = call ptr @memcpy(ptr %on_disk_csum, ptr %call, i32 %24)
  %logical = getelementptr inbounds %struct.scrub_page, ptr %18, i32 0, i32 6
  %26 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %logical, align 8
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %bytenr.i, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %30)
  %cmp24.not = icmp eq i64 %27, %30
  br i1 %cmp24.not, label %cond.end.if.end26_crit_edge, label %if.then25

cond.end.if.end26_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %31 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %31, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %31, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %cond.end.if.end26_crit_edge
  %generation = getelementptr inbounds %struct.scrub_page, ptr %18, i32 0, i32 5
  %33 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %generation, align 8
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %call, i32 0, i32 5
  %35 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %generation.i, align 1
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %37)
  %cmp28.not = icmp eq i64 %34, %37
  br i1 %cmp28.not, label %if.end26.if.end36_crit_edge, label %if.then29

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %38 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load30 = load i8, ptr %38, align 4
  %bf.set35 = or i8 %bf.load30, -112
  store i8 %bf.set35, ptr %38, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end26.if.end36_crit_edge
  %fsid = getelementptr %struct.btrfs_header, ptr %call, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.scrub_page, ptr %18, i32 0, i32 2
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  %fs_devices1.i = getelementptr inbounds %struct.btrfs_device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %fs_devices1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_devices1.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %fsid, ptr noundef dereferenceable(16) %43, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.end36.if.end44_crit_edge, label %if.then40

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %44 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load41 = load i8, ptr %44, align 4
  %bf.set43 = or i8 %bf.load41, -128
  store i8 %bf.set43, ptr %44, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end36.if.end44_crit_edge
  %chunk_tree_uuid = getelementptr inbounds %struct.btrfs_header, ptr %call, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %chunk_tree_uuid, ptr noundef dereferenceable(16) %3, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool49.not = icmp eq i32 %bcmp, 0
  br i1 %tobool49.not, label %if.end44.if.end54_crit_edge, label %if.then50

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %46 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load51 = load i8, ptr %46, align 4
  %bf.set53 = or i8 %bf.load51, -128
  store i8 %bf.set53, ptr %46, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end44.if.end54_crit_edge
  %csum_shash = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 174
  %48 = ptrtoint ptr %csum_shash to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csum_shash, align 8
  %50 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %49, i32 0, i32 2
  %51 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i119 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i119, label %if.end.i, label %if.end54.crypto_shash_init.exit_crit_edge

if.end54.crypto_shash_init.exit_crit_edge:        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %49, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 -256
  %55 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %56(ptr noundef nonnull %__shash_desc) #14
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %if.end54.crypto_shash_init.exit_crit_edge
  %sub = add i32 %10, -32
  %call56 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %fsid, i32 noundef %sub) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp57120 = icmp sgt i32 %shr, 1
  br i1 %cmp57120, label %crypto_shash_init.exit.for.body_crit_edge, label %crypto_shash_init.exit.for.end_crit_edge

crypto_shash_init.exit.for.end_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

crypto_shash_init.exit.for.body_crit_edge:        ; preds = %crypto_shash_init.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %crypto_shash_init.exit.for.body_crit_edge
  %i.0121 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %crypto_shash_init.exit.for.body_crit_edge ]
  %arrayidx59 = getelementptr [16 x ptr], ptr %sblock, i32 0, i32 %i.0121
  %57 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx59, align 4
  %page60 = getelementptr inbounds %struct.scrub_page, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %page60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %page60, align 4
  %call61 = call ptr @page_address(ptr noundef %60) #14
  %call62 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %call61, i32 noundef %10) #14
  %inc = add nuw nsw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %crypto_shash_init.exit.for.end_crit_edge
  %call64 = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %calculated_csum) #14
  %61 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fs_info2, align 8
  %csum_size68 = getelementptr inbounds %struct.btrfs_fs_info, ptr %62, i32 0, i32 169
  %63 = ptrtoint ptr %csum_size68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %csum_size68, align 4
  %bcmp118 = call i32 @bcmp(ptr nonnull %calculated_csum, ptr nonnull %on_disk_csum, i32 %64) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp118)
  %tobool70.not = icmp eq i32 %bcmp118, 0
  br i1 %tobool70.not, label %for.end.if.end75_crit_edge, label %if.then71

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then71:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %65 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load72 = load i8, ptr %65, align 4
  %bf.set74 = or i8 %bf.load72, 64
  store i8 %bf.set74, ptr %65, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %for.end.if.end75_crit_edge
  %67 = getelementptr inbounds %struct.scrub_block, ptr %sblock, i32 0, i32 6
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load76 = load i8, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load76)
  %tobool77.not = icmp sgt i8 %bf.load76, -1
  %69 = lshr i8 %bf.load76, 6
  %.lobit = and i8 %69, 1
  %narrow = select i1 %tobool77.not, i8 %.lobit, i8 1
  %70 = zext i8 %narrow to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %on_disk_csum) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %calculated_csum) #14
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #14
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extent_from_logical(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tree_backref_for_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_extent_inodes(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scrub_print_warning_inode(i64 noundef %inum, i64 noundef %offset, i64 noundef %root, ptr nocapture noundef readonly %warn_ctx) #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %4 = call ptr @memset(ptr %key, i32 255, i32 17)
  %call = tail call ptr @btrfs_get_fs_root(ptr noundef %3, i64 noundef %root, i1 noundef zeroext true) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call to i32
  br label %do.body45

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %7 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %inum, ptr %key, align 8
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %7, align 8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %6, align 1
  %11 = ptrtoint ptr %warn_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %warn_ctx, align 8
  %call5 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef %12, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_put_root(ptr noundef %call) #14
  %13 = ptrtoint ptr %warn_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %warn_ctx, align 8
  call void @btrfs_release_path(ptr noundef %14) #14
  br label %do.body45

if.end8:                                          ; preds = %if.end
  %15 = ptrtoint ptr %warn_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %warn_ctx, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %20, 25
  %add.i.i.i138 = add i32 %mul.i.i.i, 101
  %21 = inttoptr i32 %add.i.i.i138 to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %21, i32 noundef 17) #14
  %add = add i32 %call.i.i, 101
  %22 = inttoptr i32 %add to ptr
  %call.i139 = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %22, i32 noundef 40) #14
  %23 = ptrtoint ptr %warn_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %warn_ctx, align 8
  call void @btrfs_release_path(ptr noundef %24) #14
  %25 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %30, 262144
  %or.i = or i32 %30, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %31 = ptrtoint ptr %warn_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %warn_ctx, align 8
  %call17 = call ptr @init_ipath(i32 noundef 4096, ptr noundef %call, ptr noundef %32) #14
  %33 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i140 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i140 to ptr
  %task.i141 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i141 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i141, align 8
  %flags1.i142 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %flags1.i142 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags1.i142, align 4
  %and.i143 = and i32 %38, -262145
  %or.i144 = or i32 %and.i143, %and.i
  store i32 %or.i144, ptr %flags1.i142, align 4
  %cmp.i145 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_put_root(ptr noundef %call) #14
  %39 = ptrtoint ptr %call17 to i32
  br label %do.body45

if.end21:                                         ; preds = %if.end8
  %call22 = call i32 @paths_from_inode(i64 noundef %inum, ptr noundef %call17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end21.do.body45_crit_edge, label %for.cond.preheader

if.end21.do.body45_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body45

for.cond.preheader:                               ; preds = %if.end21
  %fspath = getelementptr inbounds %struct.inode_fs_paths, ptr %call17, i32 0, i32 2
  %40 = ptrtoint ptr %fspath to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fspath, align 4
  %elem_cnt166 = getelementptr inbounds %struct.btrfs_data_container, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %elem_cnt166 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %elem_cnt166, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp25167.not = icmp eq i32 %43, 0
  br i1 %cmp25167.not, label %for.cond.preheader.for.end_crit_edge, label %do.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %errstr = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 2
  %logical = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 4
  %physical = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 3
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  br label %do.body

do.body:                                          ; preds = %rcu_read_unlock.exit.do.body_crit_edge, %do.body.lr.ph
  %i.0168 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %rcu_read_unlock.exit.do.body_crit_edge ]
  %44 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %48 = ptrtoint ptr %errstr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %errstr, align 8
  %50 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %logical, align 8
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.btrfs_device, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %name, align 8
  %call29 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end38_crit_edge

rcu_read_lock.exit.do.end38_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call31 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true.do.end38_crit_edge, label %land.lhs.true33

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

land.lhs.true33:                                  ; preds = %land.lhs.true
  %.b125 = load i1, ptr @scrub_print_warning_inode.__warned, align 1
  br i1 %.b125, label %land.lhs.true33.do.end38_crit_edge, label %if.then35

land.lhs.true33.do.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_print_warning_inode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #14
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.lhs.true33.do.end38_crit_edge, %land.lhs.true.do.end38_crit_edge, %rcu_read_lock.exit.do.end38_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %physical, align 8
  %58 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sectorsize, align 4
  %60 = ptrtoint ptr %fspath to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fspath, align 4
  %arrayidx42 = getelementptr %struct.btrfs_data_container, ptr %61, i32 0, i32 4, i32 %i.0168
  %62 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx42, align 8
  %conv = trunc i64 %63 to i32
  %64 = inttoptr i32 %conv to ptr
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef %49, i64 noundef %51, ptr noundef %str, i64 noundef %57, i64 noundef %root, i64 noundef %inum, i64 noundef %offset, i32 noundef %59, i32 noundef %call.i139, ptr noundef %64) #17
  %call.i146 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i146, label %do.end38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i149

do.end38.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i149:                               ; preds = %do.end38
  %call1.i147 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %tobool.not.i148 = icmp eq i32 %call1.i147, 0
  br i1 %tobool.not.i148, label %land.lhs.true.i149.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i151

land.lhs.true.i149.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i151:                              ; preds = %land.lhs.true.i149
  %.b4.i150 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i150, label %land.lhs.true2.i151.rcu_read_unlock.exit_crit_edge, label %if.then.i152

land.lhs.true2.i151.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i152:                                     ; preds = %land.lhs.true2.i151
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i152, %land.lhs.true2.i151.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i149.rcu_read_unlock.exit_crit_edge, %do.end38.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %65 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i153 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i153 to ptr
  %preempt_count.i.i.i.i154 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i154, align 4
  %sub.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i154, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %inc = add nuw i32 %i.0168, 1
  %69 = ptrtoint ptr %fspath to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fspath, align 4
  %elem_cnt = getelementptr inbounds %struct.btrfs_data_container, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %elem_cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %elem_cnt, align 8
  %cmp25 = icmp ult i32 %inc, %72
  br i1 %cmp25, label %rcu_read_unlock.exit.do.body_crit_edge, label %rcu_read_unlock.exit.for.end_crit_edge

rcu_read_unlock.exit.for.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

rcu_read_unlock.exit.do.body_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %rcu_read_unlock.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @btrfs_put_root(ptr noundef %call) #14
  br label %cleanup

do.body45:                                        ; preds = %if.end21.do.body45_crit_edge, %if.then19, %if.then6, %if.then
  %ipath.0 = phi ptr [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then19 ], [ %call17, %if.end21.do.body45_crit_edge ]
  %ret.0 = phi i32 [ %5, %if.then ], [ %call5, %if.then6 ], [ %39, %if.then19 ], [ %call22, %if.end21.do.body45_crit_edge ]
  %73 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i127 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i127 to ptr
  %preempt_count.i.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i128, align 4
  %add.i.i.i129 = add i32 %76, 1
  store volatile i32 %add.i.i.i129, ptr %preempt_count.i.i.i.i128, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i130 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i130, label %do.body45.rcu_read_lock.exit137_crit_edge, label %land.lhs.true.i133

do.body45.rcu_read_lock.exit137_crit_edge:        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit137

land.lhs.true.i133:                               ; preds = %do.body45
  %call1.i131 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_lock.exit137_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_lock.exit137_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit137

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_lock.exit137_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_lock.exit137_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit137

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit137

rcu_read_lock.exit137:                            ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_lock.exit137_crit_edge, %land.lhs.true.i133.rcu_read_lock.exit137_crit_edge, %do.body45.rcu_read_lock.exit137_crit_edge
  %errstr46 = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 2
  %77 = ptrtoint ptr %errstr46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %errstr46, align 8
  %logical47 = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 4
  %79 = ptrtoint ptr %logical47 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %logical47, align 8
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 8
  %name54 = getelementptr inbounds %struct.btrfs_device, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %name54, align 8
  %call56 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true58, label %rcu_read_lock.exit137.do.end66_crit_edge

rcu_read_lock.exit137.do.end66_crit_edge:         ; preds = %rcu_read_lock.exit137
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

land.lhs.true58:                                  ; preds = %rcu_read_lock.exit137
  %call59 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.do.end66_crit_edge, label %land.lhs.true61

land.lhs.true58.do.end66_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %.b124126 = load i1, ptr @scrub_print_warning_inode.__warned.44, align 1
  br i1 %.b124126, label %land.lhs.true61.do.end66_crit_edge, label %if.then63

land.lhs.true61.do.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_print_warning_inode.__warned.44, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 708, ptr noundef nonnull @.str.4) #14
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %land.lhs.true61.do.end66_crit_edge, %land.lhs.true58.do.end66_crit_edge, %rcu_read_lock.exit137.do.end66_crit_edge
  %str69 = getelementptr inbounds %struct.rcu_string, ptr %84, i32 0, i32 1
  %physical71 = getelementptr inbounds %struct.scrub_warning, ptr %warn_ctx, i32 0, i32 3
  %85 = ptrtoint ptr %physical71 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %physical71, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef %78, i64 noundef %80, ptr noundef %str69, i64 noundef %86, i64 noundef %root, i64 noundef %inum, i64 noundef %offset, i32 noundef %ret.0) #17
  %call.i155 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i155, label %do.end66.rcu_read_unlock.exit165_crit_edge, label %land.lhs.true.i158

do.end66.rcu_read_unlock.exit165_crit_edge:       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit165

land.lhs.true.i158:                               ; preds = %do.end66
  %call1.i156 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_unlock.exit165_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_unlock.exit165_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit165

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_unlock.exit165_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_unlock.exit165_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit165

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #14
  br label %rcu_read_unlock.exit165

rcu_read_unlock.exit165:                          ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_unlock.exit165_crit_edge, %land.lhs.true.i158.rcu_read_unlock.exit165_crit_edge, %do.end66.rcu_read_unlock.exit165_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %87 = call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i162 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i162 to ptr
  %preempt_count.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i163, align 4
  %sub.i.i.i164 = add i32 %90, -1
  store volatile i32 %sub.i.i.i164, ptr %preempt_count.i.i.i.i163, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit165, %for.end
  %ipath.0.sink = phi ptr [ %ipath.0, %rcu_read_unlock.exit165 ], [ %call17, %for.end ]
  call void @free_ipath(ptr noundef %ipath.0.sink) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_ipath(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paths_from_inode(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_ipath(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_wr_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %dev = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info1, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status, align 2
  %status = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %status, align 8
  %bio2 = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %bio2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bio, ptr %bio2, align 4
  %work = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 10
  tail call void @btrfs_init_work(ptr noundef %work, ptr noundef nonnull @scrub_wr_bio_end_io_worker, ptr noundef null, ptr noundef null) #14
  %scrub_wr_completion_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 131
  %10 = ptrtoint ptr %scrub_wr_completion_workers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scrub_wr_completion_workers, align 8
  tail call void @btrfs_queue_work(ptr noundef %11, ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_zoned_issue_zeroout(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_wr_bio_end_io_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sctx1 = getelementptr i8, ptr %work, i32 -172
  %0 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx1, align 4
  %page_count = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %3)
  %cmp = icmp slt i32 %3, 33
  br i1 %cmp, label %cond.end, label %cond.false, !prof !153

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.16, i32 noundef 1751) #20
  unreachable

cond.end:                                         ; preds = %entry
  %status = getelementptr i8, ptr %work, i32 -160
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %page_count, align 8
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp731 = icmp sgt i32 %.pr, 0
  br i1 %cmp731, label %for.body.lr.ph, label %if.then.for.end16_crit_edge

if.then.for.end16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.body.lr.ph:                                   ; preds = %if.then
  %fs_info = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info, align 8
  %pagev = getelementptr i8, ptr %work, i32 -136
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %8, i32 0, i32 154, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %pagev, i32 0, i32 %i.032
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %io_error = getelementptr inbounds %struct.scrub_page, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %io_error to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %io_error, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %io_error, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_write_errors) #14
  %inc = add nuw nsw i32 %i.032, 1
  %12 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_count, align 8
  %cmp7 = icmp slt i32 %inc, %13
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %cond.end.if.end_crit_edge
  %14 = phi i32 [ %.pr, %cond.end.if.end_crit_edge ], [ %13, %for.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1033 = icmp sgt i32 %14, 0
  br i1 %cmp1033, label %for.body11.lr.ph, label %if.end.for.end16_crit_edge

if.end.for.end16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.body11.lr.ph:                                 ; preds = %if.end
  %pagev12 = getelementptr i8, ptr %work, i32 -136
  br label %for.body11

for.body11:                                       ; preds = %scrub_page_put.exit.for.body11_crit_edge, %for.body11.lr.ph
  %i.134 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc15, %scrub_page_put.exit.for.body11_crit_edge ]
  %arrayidx13 = getelementptr [32 x ptr], ptr %pagev12, i32 0, i32 %i.134
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %refs.i = getelementptr inbounds %struct.scrub_page, ptr %16, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !162
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %for.body11.scrub_page_put.exit_crit_edge

for.body11.scrub_page_put.exit_crit_edge:         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_page_put.exit

if.then.i:                                        ; preds = %for.body11
  %page.i = getelementptr inbounds %struct.scrub_page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %19, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %16) #14
  br label %scrub_page_put.exit

scrub_page_put.exit:                              ; preds = %if.end.i, %for.body11.scrub_page_put.exit_crit_edge
  %inc15 = add nuw nsw i32 %i.134, 1
  %20 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_count, align 8
  %cmp10 = icmp slt i32 %inc15, %21
  br i1 %cmp10, label %scrub_page_put.exit.for.body11_crit_edge, label %scrub_page_put.exit.for.end16_crit_edge

scrub_page_put.exit.for.end16_crit_edge:          ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

scrub_page_put.exit.for.body11_crit_edge:         ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.end16:                                        ; preds = %scrub_page_put.exit.for.end16_crit_edge, %if.end.for.end16_crit_edge, %if.then.for.end16_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -176
  %bio = getelementptr i8, ptr %work, i32 -164
  %22 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bio, align 4
  tail call void @bio_put(ptr noundef %23) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  tail call fastcc void @scrub_pending_bio_dec(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__scrub_mark_bitmap(ptr nocapture noundef readonly %sparity, ptr noundef %bitmap, i64 noundef %start, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #14
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %offset, align 8, !annotation !171
  %stripe_len = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 5
  %1 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stripe_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len)
  %cmp.not = icmp ugt i32 %2, %len
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nsectors2 = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 4
  %3 = ptrtoint ptr %nsectors2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nsectors2, align 8
  tail call void @__bitmap_set(ptr noundef %bitmap, i32 noundef 0, i32 noundef %4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sparity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sparity, align 8
  %fs_info = getelementptr inbounds %struct.scrub_ctx, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info, align 8
  %sectorsize_bits1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %8, i32 0, i32 168
  %9 = ptrtoint ptr %sectorsize_bits1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize_bits1, align 8
  %logic_start = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 2
  %11 = ptrtoint ptr %logic_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %logic_start, align 8
  %sub = sub i64 %start, %12
  %conv = zext i32 %2 to i64
  %call = call i64 @div64_u64_rem(i64 noundef %sub, i64 noundef %conv, ptr noundef nonnull %offset) #14
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset, align 8
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %14, %sh_prom
  store i64 %shr, ptr %offset, align 8
  %shr4 = lshr i32 %len, %10
  %conv5 = zext i32 %shr4 to i64
  %add = add i64 %shr, %conv5
  %nsectors6 = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 4
  %15 = ptrtoint ptr %nsectors6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsectors6, align 8
  %conv7 = sext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv7)
  %cmp8.not = icmp ugt i64 %add, %conv7
  %conv13 = trunc i64 %shr to i32
  br i1 %cmp8.not, label %if.end12, label %if.else11.i52

if.else11.i52:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__bitmap_set(ptr noundef %bitmap, i32 noundef %conv13, i32 noundef %shr4) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv17 = sub i32 %16, %conv13
  call void @__bitmap_set(ptr noundef %bitmap, i32 noundef %conv13, i32 noundef %conv17) #14
  %17 = ptrtoint ptr %nsectors6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nsectors6, align 8
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset, align 8
  %21 = trunc i64 %20 to i32
  %22 = sub i32 %21, %18
  %conv23 = add i32 %22, %shr4
  call void @__bitmap_set(ptr noundef %bitmap, i32 noundef 0, i32 noundef %conv23) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else11.i52, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_parity_put(ptr noundef %sparity) unnamed_addr #0 align 64 {
entry:
  %bioc.i = alloca ptr, align 4
  %length.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !153

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #14
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  %1 = ptrtoint ptr %sparity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sparity, align 8
  %fs_info2.i = getelementptr inbounds %struct.scrub_ctx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %fs_info2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_info2.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bioc.i) #14
  %5 = ptrtoint ptr %bioc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bioc.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i) #14
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %length.i, align 8, !annotation !171
  %dbitmap.i = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 9
  %ebitmap.i = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 10
  %nsectors.i = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 4
  %7 = ptrtoint ptr %nsectors.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsectors.i, align 8
  %9 = ptrtoint ptr %ebitmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ebitmap.i, align 8
  %11 = ptrtoint ptr %dbitmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dbitmap.i, align 4
  %call.i.i = tail call i32 @__bitmap_andnot(ptr noundef %12, ptr noundef %12, ptr noundef %10, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.out.i_crit_edge, label %if.end.i

if.end.out.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end.i:                                         ; preds = %if.end
  %logic_end.i = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 3
  %13 = ptrtoint ptr %logic_end.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %logic_end.i, align 8
  %logic_start.i = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 2
  %15 = ptrtoint ptr %logic_start.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %logic_start.i, align 8
  %sub.i = sub i64 %14, %16
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub.i, ptr %length.i, align 8
  tail call void @btrfs_bio_counter_inc_blocked(ptr noundef %4) #14
  %18 = ptrtoint ptr %logic_start.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %logic_start.i, align 8
  %call5.i = call i32 @btrfs_map_sblock(ptr noundef %4, i32 noundef 1, i64 noundef %19, ptr noundef nonnull %length.i, ptr noundef nonnull %bioc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %if.end.i.bioc_out.i_crit_edge

if.end.i.bioc_out.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bioc_out.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %20 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bioc.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.bioc_out.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.bioc_out.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bioc_out.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %raid_map.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.bioc_out.i_crit_edge, label %if.end11.i

lor.lhs.false8.i.bioc_out.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bioc_out.i

if.end11.i:                                       ; preds = %lor.lhs.false8.i
  %call12.i = call ptr @btrfs_bio_alloc(i32 noundef 256) #14
  %24 = ptrtoint ptr %logic_start.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %logic_start.i, align 8
  %shr.i = lshr i64 %25, 9
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 8
  %26 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shr.i, ptr %bi_iter.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 11
  %27 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sparity, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 10
  %28 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @scrub_parity_bio_endio, ptr %bi_end_io.i, align 8
  %29 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bioc.i, align 4
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %length.i, align 8
  %scrub_dev.i = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 1
  %33 = ptrtoint ptr %scrub_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scrub_dev.i, align 4
  %35 = ptrtoint ptr %dbitmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dbitmap.i, align 4
  %37 = ptrtoint ptr %nsectors.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nsectors.i, align 8
  %call16.i = call ptr @raid56_parity_alloc_scrub_rbio(ptr noundef %call12.i, ptr noundef %30, i64 noundef %32, ptr noundef %34, ptr noundef %36, i32 noundef %38) #14
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %rbio_out.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.end11.i
  %refs.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %2, i32 0, i32 22
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #14
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !154

if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end19.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.scrub_pending_bio_inc.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.scrub_pending_bio_inc.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_pending_bio_inc.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end19.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %scrub_pending_bio_inc.exit.i

scrub_pending_bio_inc.exit.i:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.scrub_pending_bio_inc.exit.i_crit_edge
  %bios_in_flight.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %2, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bios_in_flight.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bios_in_flight.i.i, i32 1, i32 3, i32 1) #14
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bios_in_flight.i.i, ptr %bios_in_flight.i.i, i32 1, ptr elementtype(i32) %bios_in_flight.i.i) #14, !srcloc !151
  call void @raid56_parity_submit_scrub_rbio(ptr noundef nonnull %call16.i) #14
  br label %scrub_parity_check_and_repair.exit

rbio_out.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @bio_put(ptr noundef %call12.i) #14
  br label %bioc_out.i

bioc_out.i:                                       ; preds = %rbio_out.i, %lor.lhs.false8.i.bioc_out.i_crit_edge, %lor.lhs.false.i.bioc_out.i_crit_edge, %if.end.i.bioc_out.i_crit_edge
  call void @btrfs_bio_counter_sub(ptr noundef %4, i64 noundef 1) #14
  %42 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bioc.i, align 4
  call void @btrfs_put_bioc(ptr noundef %43) #14
  %44 = ptrtoint ptr %nsectors.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nsectors.i, align 8
  %46 = ptrtoint ptr %dbitmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dbitmap.i, align 4
  %48 = ptrtoint ptr %ebitmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ebitmap.i, align 8
  call void @__bitmap_or(ptr noundef %49, ptr noundef %49, ptr noundef %47, i32 noundef %45) #14
  %stat_lock.i = getelementptr inbounds %struct.scrub_ctx, ptr %2, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock.i) #14
  %malloc_errors.i = getelementptr inbounds %struct.scrub_ctx, ptr %2, i32 0, i32 20, i32 10
  %50 = ptrtoint ptr %malloc_errors.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %malloc_errors.i, align 8
  %inc.i = add i64 %51, 1
  store i64 %inc.i, ptr %malloc_errors.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #14
  br label %out.i

out.i:                                            ; preds = %bioc_out.i, %if.end.out.i_crit_edge
  call fastcc void @scrub_free_parity(ptr noundef %sparity) #14
  br label %scrub_parity_check_and_repair.exit

scrub_parity_check_and_repair.exit:               ; preds = %out.i, %scrub_pending_bio_inc.exit.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #14
  br label %return

return:                                           ; preds = %scrub_parity_check_and_repair.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_parity_bio_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info1, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nsectors = getelementptr inbounds %struct.scrub_parity, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %nsectors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsectors, align 8
  %dbitmap = getelementptr inbounds %struct.scrub_parity, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dbitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbitmap, align 4
  %ebitmap = getelementptr inbounds %struct.scrub_parity, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %ebitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ebitmap, align 8
  tail call void @__bitmap_or(ptr noundef %13, ptr noundef %13, ptr noundef %11, i32 noundef %9) #14
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  %work = getelementptr inbounds %struct.scrub_parity, ptr %1, i32 0, i32 8
  tail call void @btrfs_init_work(ptr noundef %work, ptr noundef nonnull @scrub_parity_bio_endio_worker, ptr noundef null, ptr noundef null) #14
  %scrub_parity_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 132
  %14 = ptrtoint ptr %scrub_parity_workers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scrub_parity_workers, align 4
  tail call void @btrfs_queue_work(ptr noundef %15, ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raid56_parity_alloc_scrub_rbio(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid56_parity_submit_scrub_rbio(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_free_parity(ptr noundef %sparity) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sparity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparity, align 8
  %nsectors = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 4
  %2 = ptrtoint ptr %nsectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsectors, align 8
  %ebitmap = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 10
  %4 = ptrtoint ptr %ebitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ebitmap, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %5, i32 noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %conv = sext i32 %call4.i to i64
  %read_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 4
  %6 = ptrtoint ptr %read_errors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %read_errors, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %read_errors, align 8
  %uncorrectable_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 11
  %8 = ptrtoint ptr %uncorrectable_errors to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %uncorrectable_errors, align 8
  %add4 = add i64 %9, %conv
  store i64 %add4, ptr %uncorrectable_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spages = getelementptr inbounds %struct.scrub_parity, ptr %sparity, i32 0, i32 7
  %10 = ptrtoint ptr %spages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spages, align 4
  %cmp.not38 = icmp eq ptr %11, %spages
  br i1 %cmp.not38, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %scrub_page_put.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in39 = phi ptr [ %.pn, %scrub_page_put.exit.for.body_crit_edge ], [ %11, %if.end.for.body_crit_edge ]
  %curr.0 = getelementptr i8, ptr %.pn.in39, i32 -12
  %12 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in39, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %.pn.in39, ptr %.pn.in39, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.pn.in39, ptr %prev.i3.i, align 4
  %refs.i = getelementptr i8, ptr %.pn.in39, i32 52
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !162
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i36, label %list_del_init.exit.scrub_page_put.exit_crit_edge

list_del_init.exit.scrub_page_put.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_page_put.exit

if.then.i36:                                      ; preds = %list_del_init.exit
  %page.i = getelementptr i8, ptr %.pn.in39, i32 -8
  %22 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then.i36.if.end.i37_crit_edge, label %if.then1.i

if.then.i36.if.end.i37_crit_edge:                 ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i37

if.then1.i:                                       ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %23, i32 noundef 0) #14
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then1.i, %if.then.i36.if.end.i37_crit_edge
  tail call void @kfree(ptr noundef %curr.0) #14
  br label %scrub_page_put.exit

scrub_page_put.exit:                              ; preds = %if.end.i37, %list_del_init.exit.scrub_page_put.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %spages
  br i1 %cmp.not, label %scrub_page_put.exit.for.end_crit_edge, label %scrub_page_put.exit.for.body_crit_edge

scrub_page_put.exit.for.body_crit_edge:           ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

scrub_page_put.exit.for.end_crit_edge:            ; preds = %scrub_page_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %scrub_page_put.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %sparity) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_parity_bio_endio_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @scrub_free_parity(ptr noundef %add.ptr)
  tail call fastcc void @scrub_pending_bio_dec(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfsic_submit_bio(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_workqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_pages(ptr noundef %sctx, i64 noundef %logical, i32 noundef %len, i64 noundef %physical, ptr noundef %dev, i64 noundef %flags, i64 noundef %gen, i32 noundef %mirror_num, ptr noundef readonly %csum, i64 noundef %physical_for_dev_replace) unnamed_addr #0 align 64 {
entry:
  %length.i = alloca i64, align 8
  %bioc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %sectorsize1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %2 = ptrtoint ptr %sectorsize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sectorsize1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 160) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %malloc_errors = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 10
  %5 = ptrtoint ptr %malloc_errors to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %malloc_errors, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %malloc_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %cleanup108

if.end:                                           ; preds = %entry
  %refs = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %7 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refs, align 8
  %sctx3 = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %sctx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sctx, ptr %sctx3, align 4
  %9 = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %9, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not186 = icmp eq i32 %len, 0
  br i1 %cmp.not186, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv = trunc i32 %mirror_num to i8
  %tobool27.not = icmp eq ptr %csum, null
  %page_count = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %logical.addr.0191 = phi i64 [ %logical, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %len.addr.0190 = phi i32 [ %len, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %index.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc51, %for.inc.for.body_crit_edge ]
  %physical_for_dev_replace.addr.0188 = phi i64 [ %physical_for_dev_replace, %for.body.lr.ph ], [ %add49, %for.inc.for.body_crit_edge ]
  %physical.addr.0187 = phi i64 [ %physical, %for.body.lr.ph ], [ %add47, %for.inc.for.body_crit_edge ]
  %11 = tail call i32 @llvm.umin.i32(i32 %3, i32 %len.addr.0190)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i172 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 112) #19
  %tobool6.not = icmp eq ptr %call7.i.i172, null
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index.0189)
  %exitcond.not = icmp eq i32 %index.0189, 16
  br i1 %exitcond.not, label %cond.false18, label %cond.end19, !prof !154

cond.false18:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.54, i32 noundef 2293) #20
  unreachable

cond.end19:                                       ; preds = %if.end13
  %refs.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 9
  %call.i.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !151
  %arrayidx = getelementptr [16 x ptr], ptr %call7.i.i, i32 0, i32 %index.0189
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i172, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %call7.i.i172 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %call7.i.i172, align 8
  %dev21 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 2
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %dev21, align 8
  %flags22 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 4
  %17 = ptrtoint ptr %flags22 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %flags, ptr %flags22, align 8
  %generation = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 5
  %18 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %gen, ptr %generation, align 8
  %logical23 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 6
  %19 = ptrtoint ptr %logical23 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %logical.addr.0191, ptr %logical23, align 8
  %physical24 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 7
  %20 = ptrtoint ptr %physical24 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %physical.addr.0187, ptr %physical24, align 8
  %physical_for_dev_replace25 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 8
  %21 = ptrtoint ptr %physical_for_dev_replace25 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %physical_for_dev_replace.addr.0188, ptr %physical_for_dev_replace25, align 8
  %mirror_num26 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 10
  %22 = ptrtoint ptr %mirror_num26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %mirror_num26, align 4
  %have_csum34 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 11
  %23 = ptrtoint ptr %have_csum34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load35 = load i8, ptr %have_csum34, align 1
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set31 = or i8 %bf.load35, -128
  %24 = ptrtoint ptr %have_csum34 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set31, ptr %have_csum34, align 1
  %csum32 = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 12
  %25 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info, align 8
  %csum_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 169
  %27 = ptrtoint ptr %csum_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %csum_size, align 4
  %29 = call ptr @memcpy(ptr %csum32, ptr %csum, i32 %28)
  br label %if.end38

if.else:                                          ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear36 = and i8 %bf.load35, 127
  %30 = ptrtoint ptr %have_csum34 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.clear36, ptr %have_csum34, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then28
  %31 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_count, align 8
  %inc39 = add i32 %32, 1
  store i32 %inc39, ptr %page_count, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %page = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i172, i32 0, i32 1
  %33 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call38.i.i.i, ptr %page, align 4
  %tobool42.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool42.not, label %if.end38.cleanup_crit_edge, label %for.inc

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %stat_lock8 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock8) #14
  %malloc_errors10 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 10
  %34 = ptrtoint ptr %malloc_errors10 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %malloc_errors10, align 8
  %inc11 = add i64 %35, 1
  store i64 %inc11, ptr %malloc_errors10, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock8) #14
  tail call fastcc void @scrub_block_put(ptr noundef nonnull %call7.i.i)
  br label %cleanup108

for.inc:                                          ; preds = %if.end38
  %sub = sub i32 %len.addr.0190, %11
  %conv45 = zext i32 %11 to i64
  %add = add i64 %logical.addr.0191, %conv45
  %add47 = add i64 %physical.addr.0187, %conv45
  %add49 = add i64 %physical_for_dev_replace.addr.0188, %conv45
  %inc51 = add nuw nsw i32 %index.0189, 1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %page_count52 = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %page_count52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %page_count52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp53 = icmp eq i32 %37, 0
  br i1 %cmp53, label %do.end, label %for.end.if.end73_crit_edge, !prof !154

for.end.if.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2320, i32 noundef 9, ptr noundef null) #14
  br label %if.end73

if.end73:                                         ; preds = %do.end, %for.end.if.end73_crit_edge
  %dev_state = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 10
  %38 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dev_state, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool82.not = icmp eq i32 %40, 0
  br i1 %tobool82.not, label %for.cond85.preheader, label %if.then83

for.cond85.preheader:                             ; preds = %if.end73
  %41 = ptrtoint ptr %page_count52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_count52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp87192 = icmp sgt i32 %42, 0
  br i1 %cmp87192, label %for.cond85.preheader.for.body89_crit_edge, label %for.cond85.preheader.for.end103_crit_edge

for.cond85.preheader.for.end103_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end103

for.cond85.preheader.for.body89_crit_edge:        ; preds = %for.cond85.preheader
  br label %for.body89

if.then83:                                        ; preds = %if.end73
  %43 = ptrtoint ptr %sctx3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sctx3, align 4
  %fs_info2.i = getelementptr inbounds %struct.scrub_ctx, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %fs_info2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fs_info2.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i) #14
  %47 = ptrtoint ptr %page_count52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_count52, align 8
  %mul.i = shl i32 %48, 12
  %conv.i = zext i32 %mul.i to i64
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i, ptr %length.i, align 8
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %logical3.i = getelementptr inbounds %struct.scrub_page, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %logical3.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %logical3.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bioc.i) #14
  %54 = ptrtoint ptr %bioc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %bioc.i, align 4
  tail call void @btrfs_bio_counter_inc_blocked(ptr noundef %46) #14
  %call.i = call i32 @btrfs_map_sblock(ptr noundef %46, i32 noundef 3, i64 noundef %53, ptr noundef nonnull %length.i, ptr noundef nonnull %bioc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then83.bioc_out.i_crit_edge

if.then83.bioc_out.i_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %bioc_out.i

lor.lhs.false.i:                                  ; preds = %if.then83
  %55 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bioc.i, align 4
  %tobool4.not.i = icmp eq ptr %56, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.bioc_out.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.bioc_out.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bioc_out.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %raid_map.i, align 4
  %tobool6.not.i = icmp eq ptr %58, null
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.bioc_out.i_crit_edge, label %if.end.i

lor.lhs.false5.i.bioc_out.i_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bioc_out.i

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %is_dev_replace.i = getelementptr inbounds %struct.scrub_ctx, ptr %44, i32 0, i32 14
  %59 = ptrtoint ptr %is_dev_replace.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %is_dev_replace.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool7.not.i = icmp eq i32 %60, 0
  br i1 %tobool7.not.i, label %if.end.i.do.end.i_crit_edge, label %lor.rhs.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.end.i
  %map_type.i = getelementptr inbounds %struct.btrfs_io_context, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %map_type.i, align 8
  %and.i = and i64 %62, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool8.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end33.critedge.i, !prof !154

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2211, i32 noundef 9, ptr noundef null) #14
  br label %bioc_out.i

if.end33.critedge.i:                              ; preds = %lor.rhs.i
  %call34.i = call ptr @btrfs_bio_alloc(i32 noundef 256) #14
  %shr.i174 = lshr i64 %53, 9
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call34.i, i32 0, i32 8
  %63 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %shr.i174, ptr %bi_iter.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call34.i, i32 0, i32 11
  %64 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call34.i, i32 0, i32 10
  %65 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @scrub_missing_raid56_end_io, ptr %bi_end_io.i, align 8
  %66 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bioc.i, align 4
  %68 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %length.i, align 8
  %call35.i = call ptr @raid56_alloc_missing_rbio(ptr noundef %call34.i, ptr noundef %67, i64 noundef %69) #14
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %rbio_out.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end33.critedge.i
  %70 = ptrtoint ptr %page_count52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %page_count52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp88.i = icmp sgt i32 %71, 0
  br i1 %cmp88.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.089.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx42.i = getelementptr [16 x ptr], ptr %call7.i.i, i32 0, i32 %i.089.i
  %72 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx42.i, align 4
  %page.i = getelementptr inbounds %struct.scrub_page, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %page.i, align 4
  %logical43.i = getelementptr inbounds %struct.scrub_page, ptr %73, i32 0, i32 6
  %76 = ptrtoint ptr %logical43.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %logical43.i, align 8
  call void @raid56_add_scrub_pages(ptr noundef nonnull %call35.i, ptr noundef %75, i64 noundef %77) #14
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %78 = ptrtoint ptr %page_count52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %page_count52, align 8
  %cmp.i = icmp slt i32 %inc.i, %79
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %work.i = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i, i32 0, i32 7
  call void @btrfs_init_work(ptr noundef %work.i, ptr noundef nonnull @scrub_missing_raid56_worker, ptr noundef null, ptr noundef null) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !154

for.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %81 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i.i = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.scrub_block_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.scrub_block_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_block_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i.i.i) #14
  br label %scrub_block_get.exit.i

scrub_block_get.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.scrub_block_get.exit.i_crit_edge
  %refs.i79.i = getelementptr inbounds %struct.scrub_ctx, ptr %44, i32 0, i32 22
  %call.i.i.i.i.i.i80.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i79.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i79.i, i32 1, i32 3, i32 1) #14
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i79.i, ptr %refs.i79.i, i32 1, ptr elementtype(i32) %refs.i79.i) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i81.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i81.i)
  %tobool1.not.i.i.i.i82.i = icmp eq i32 %asmresult.i.i.i.i.i.i81.i, 0
  br i1 %tobool1.not.i.i.i.i82.i, label %scrub_block_get.exit.i.if.end15.sink.split.i.i.i.i87.i_crit_edge, label %if.else.i.i.i.i85.i, !prof !154

scrub_block_get.exit.i.if.end15.sink.split.i.i.i.i87.i_crit_edge: ; preds = %scrub_block_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i87.i

if.else.i.i.i.i85.i:                              ; preds = %scrub_block_get.exit.i
  %add.i.i.i.i83.i = add i32 %asmresult.i.i.i.i.i.i81.i, 1
  %83 = or i32 %add.i.i.i.i83.i, %asmresult.i.i.i.i.i.i81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %.not.i.i.i.i84.i = icmp sgt i32 %83, -1
  br i1 %.not.i.i.i.i84.i, label %if.else.i.i.i.i85.i.scrub_pending_bio_inc.exit.i_crit_edge, label %if.else.i.i.i.i85.i.if.end15.sink.split.i.i.i.i87.i_crit_edge, !prof !153

if.else.i.i.i.i85.i.if.end15.sink.split.i.i.i.i87.i_crit_edge: ; preds = %if.else.i.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i87.i

if.else.i.i.i.i85.i.scrub_pending_bio_inc.exit.i_crit_edge: ; preds = %if.else.i.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_pending_bio_inc.exit.i

if.end15.sink.split.i.i.i.i87.i:                  ; preds = %if.else.i.i.i.i85.i.if.end15.sink.split.i.i.i.i87.i_crit_edge, %scrub_block_get.exit.i.if.end15.sink.split.i.i.i.i87.i_crit_edge
  %.sink.i.i.i.i86.i = phi i32 [ 2, %scrub_block_get.exit.i.if.end15.sink.split.i.i.i.i87.i_crit_edge ], [ 1, %if.else.i.i.i.i85.i.if.end15.sink.split.i.i.i.i87.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i79.i, i32 noundef %.sink.i.i.i.i86.i) #14
  br label %scrub_pending_bio_inc.exit.i

scrub_pending_bio_inc.exit.i:                     ; preds = %if.end15.sink.split.i.i.i.i87.i, %if.else.i.i.i.i85.i.scrub_pending_bio_inc.exit.i_crit_edge
  %bios_in_flight.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %44, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bios_in_flight.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bios_in_flight.i.i, i32 1, i32 3, i32 1) #14
  %84 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bios_in_flight.i.i, ptr %bios_in_flight.i.i, i32 1, ptr elementtype(i32) %bios_in_flight.i.i) #14, !srcloc !151
  call void @raid56_submit_missing_rbio(ptr noundef nonnull %call35.i) #14
  br label %scrub_missing_raid56_pages.exit

rbio_out.i:                                       ; preds = %if.end33.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @bio_put(ptr noundef %call34.i) #14
  br label %bioc_out.i

bioc_out.i:                                       ; preds = %rbio_out.i, %do.end.i, %lor.lhs.false5.i.bioc_out.i_crit_edge, %lor.lhs.false.i.bioc_out.i_crit_edge, %if.then83.bioc_out.i_crit_edge
  call void @btrfs_bio_counter_sub(ptr noundef %46, i64 noundef 1) #14
  %85 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bioc.i, align 4
  call void @btrfs_put_bioc(ptr noundef %86) #14
  %stat_lock.i = getelementptr inbounds %struct.scrub_ctx, ptr %44, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock.i) #14
  %malloc_errors.i = getelementptr inbounds %struct.scrub_ctx, ptr %44, i32 0, i32 20, i32 10
  %87 = ptrtoint ptr %malloc_errors.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %malloc_errors.i, align 8
  %inc44.i = add i64 %88, 1
  store i64 %inc44.i, ptr %malloc_errors.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #14
  br label %scrub_missing_raid56_pages.exit

scrub_missing_raid56_pages.exit:                  ; preds = %bioc_out.i, %scrub_pending_bio_inc.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i) #14
  br label %if.end107

for.cond85:                                       ; preds = %for.body89
  %inc102 = add nuw nsw i32 %index.1193, 1
  %89 = ptrtoint ptr %page_count52 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %page_count52, align 8
  %cmp87 = icmp slt i32 %inc102, %90
  br i1 %cmp87, label %for.cond85.for.body89_crit_edge, label %for.cond85.for.end103_crit_edge

for.cond85.for.end103_crit_edge:                  ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end103

for.cond85.for.body89_crit_edge:                  ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body89

for.body89:                                       ; preds = %for.cond85.for.body89_crit_edge, %for.cond85.preheader.for.body89_crit_edge
  %index.1193 = phi i32 [ %inc102, %for.cond85.for.body89_crit_edge ], [ 0, %for.cond85.preheader.for.body89_crit_edge ]
  %arrayidx92 = getelementptr [16 x ptr], ptr %call7.i.i, i32 0, i32 %index.1193
  %91 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx92, align 4
  %call93 = tail call fastcc i32 @scrub_add_page_to_rd_bio(ptr noundef %sctx, ptr noundef %92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.cond85, label %cleanup97

cleanup97:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @scrub_block_put(ptr noundef nonnull %call7.i.i)
  br label %cleanup108

for.end103:                                       ; preds = %for.cond85.for.end103_crit_edge, %for.cond85.preheader.for.end103_crit_edge
  %and = and i64 %flags, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool104.not = icmp eq i64 %and, 0
  br i1 %tobool104.not, label %for.end103.if.end107_crit_edge, label %if.then105

for.end103.if.end107_crit_edge:                   ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then105:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @scrub_submit(ptr noundef %sctx)
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %for.end103.if.end107_crit_edge, %scrub_missing_raid56_pages.exit
  call fastcc void @scrub_block_put(ptr noundef nonnull %call7.i.i)
  br label %cleanup108

cleanup108:                                       ; preds = %if.end107, %cleanup97, %cleanup, %if.then
  %retval.4 = phi i32 [ -12, %cleanup ], [ 0, %if.end107 ], [ %call93, %cleanup97 ], [ -12, %if.then ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_add_page_to_rd_bio(ptr noundef %sctx, ptr noundef %spage) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spage, align 8
  %fs_info = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %sectorsize2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize2, align 4
  %curr = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 3
  %list_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 6
  %first_free = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 2
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  %physical51 = getelementptr inbounds %struct.scrub_page, ptr %spage, i32 0, i32 7
  %logical59 = getelementptr inbounds %struct.scrub_page, ptr %spage, i32 0, i32 6
  %dev64 = getelementptr inbounds %struct.scrub_page, ptr %spage, i32 0, i32 2
  %pages_per_bio = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 11
  %page = getelementptr inbounds %struct.scrub_page, ptr %spage, i32 0, i32 1
  br label %again

again:                                            ; preds = %again.backedge, %entry
  %6 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp170 = icmp eq i32 %7, -1
  br i1 %cmp170, label %again.while.body_crit_edge, label %again.while.end_crit_edge

again.while.end_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

again.while.body_crit_edge:                       ; preds = %again
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %again.while.body_crit_edge
  call void @_raw_spin_lock(ptr noundef %list_lock) #14
  %8 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_free, align 4
  %10 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %curr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp5.not = icmp eq i32 %9, -1
  br i1 %cmp5.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %next_free = getelementptr inbounds %struct.scrub_bio, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %next_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_free, align 4
  %15 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %first_free, align 4
  %16 = load ptr, ptr %arrayidx, align 4
  %next_free11 = getelementptr inbounds %struct.scrub_bio, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %next_free11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %next_free11, align 4
  %18 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr, align 8
  %arrayidx14 = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14, align 4
  %page_count = getelementptr inbounds %struct.scrub_bio, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %page_count, align 8
  call void @_raw_spin_unlock(ptr noundef %list_lock) #14
  br label %if.end31

if.else:                                          ; preds = %while.body
  call void @_raw_spin_unlock(ptr noundef %list_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2085) #14
  %23 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp22.not = icmp eq i32 %24, -1
  br i1 %cmp22.not, label %if.end, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end:                                           ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call168 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %26 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp25.not169 = icmp eq i32 %27, -1
  br i1 %cmp25.not169, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %28 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_free, align 4
  %cmp25.not = icmp eq i32 %29, -1
  br i1 %cmp25.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end31

if.end31:                                         ; preds = %for.end, %if.else.if.end31_crit_edge, %if.then
  %30 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %curr, align 8
  %cmp = icmp eq i32 %31, -1
  br i1 %cmp, label %if.end31.while.body_crit_edge, label %if.end31.while.end_crit_edge

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %again.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %again.while.end_crit_edge ], [ %31, %if.end31.while.end_crit_edge ]
  %arrayidx34 = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %.lcssa
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx34, align 4
  %page_count35 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %page_count35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %page_count35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp36 = icmp eq i32 %35, 0
  br i1 %cmp36, label %if.then37, label %if.else48

if.then37:                                        ; preds = %while.end
  %36 = ptrtoint ptr %physical51 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %physical51, align 8
  %physical38 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 6
  %38 = ptrtoint ptr %physical38 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %physical38, align 8
  %39 = ptrtoint ptr %logical59 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %logical59, align 8
  %logical39 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 5
  %41 = ptrtoint ptr %logical39 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %logical39, align 8
  %42 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev64, align 8
  %dev40 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 2
  %44 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %dev40, align 8
  %bio41 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 3
  %45 = ptrtoint ptr %bio41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bio41, align 4
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %if.then42, label %if.then37.if.end45_crit_edge

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %pages_per_bio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pages_per_bio, align 4
  %call43 = call ptr @btrfs_bio_alloc(i32 noundef %48) #14
  %49 = ptrtoint ptr %bio41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call43, ptr %bio41, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then37.if.end45_crit_edge
  %bio.0 = phi ptr [ %46, %if.then37.if.end45_crit_edge ], [ %call43, %if.then42 ]
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 11
  %50 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %33, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 10
  %51 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @scrub_bio_end_io, ptr %bi_end_io, align 8
  %52 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev40, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 3
  %56 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %57, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 1
  %58 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %59, %55
  br i1 %cmp.not.i, label %if.end45.bio_set_dev.exit_crit_edge, label %if.then.i

if.end45.bio_set_dev.exit_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %57, -2177
  %60 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end45.bio_set_dev.exit_crit_edge
  %61 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %bio.0) #14
  %62 = ptrtoint ptr %physical38 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %physical38, align 8
  %shr = lshr i64 %63, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8
  %64 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %shr, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %65 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %bi_opf, align 8
  %status = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 4
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %status, align 8
  br label %if.end69

if.else48:                                        ; preds = %while.end
  %physical49 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 6
  %67 = ptrtoint ptr %physical49 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %physical49, align 8
  %mul = mul i32 %35, %5
  %conv = zext i32 %mul to i64
  %add = add i64 %68, %conv
  %69 = ptrtoint ptr %physical51 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %physical51, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %70)
  %cmp52.not = icmp eq i64 %add, %70
  br i1 %cmp52.not, label %lor.lhs.false, label %if.else48.again.backedge_crit_edge

if.else48.again.backedge_crit_edge:               ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

lor.lhs.false:                                    ; preds = %if.else48
  %logical54 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 5
  %71 = ptrtoint ptr %logical54 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %logical54, align 8
  %add58 = add i64 %72, %conv
  %73 = ptrtoint ptr %logical59 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %logical59, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add58, i64 %74)
  %cmp60.not = icmp eq i64 %add58, %74
  br i1 %cmp60.not, label %lor.lhs.false62, label %lor.lhs.false.again.backedge_crit_edge

lor.lhs.false.again.backedge_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %dev63 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 2
  %75 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev63, align 8
  %77 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev64, align 8
  %cmp65.not = icmp eq ptr %76, %78
  br i1 %cmp65.not, label %lor.lhs.false62.if.end69_crit_edge, label %lor.lhs.false62.again.backedge_crit_edge

lor.lhs.false62.again.backedge_crit_edge:         ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

lor.lhs.false62.if.end69_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

again.backedge:                                   ; preds = %if.then76.again.backedge_crit_edge, %lor.lhs.false62.again.backedge_crit_edge, %lor.lhs.false.again.backedge_crit_edge, %if.else48.again.backedge_crit_edge
  call fastcc void @scrub_submit(ptr noundef %sctx)
  br label %again

if.end69:                                         ; preds = %lor.lhs.false62.if.end69_crit_edge, %bio_set_dev.exit
  %79 = ptrtoint ptr %page_count35 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %page_count35, align 8
  %arrayidx71 = getelementptr %struct.scrub_bio, ptr %33, i32 0, i32 7, i32 %80
  %81 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %spage, ptr %arrayidx71, align 4
  %bio72 = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 3
  %82 = ptrtoint ptr %bio72 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bio72, align 4
  %84 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %page, align 4
  %call73 = call i32 @bio_add_page(ptr noundef %83, ptr noundef %85, i32 noundef %5, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call73, i32 %5)
  %cmp74.not = icmp eq i32 %call73, %5
  br i1 %cmp74.not, label %if.end84, label %if.then76

if.then76:                                        ; preds = %if.end69
  %86 = ptrtoint ptr %page_count35 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %page_count35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp78 = icmp slt i32 %87, 1
  br i1 %cmp78, label %if.then80, label %if.then76.again.backedge_crit_edge

if.then76.again.backedge_crit_edge:               ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

if.then80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  %bio72.le = getelementptr inbounds %struct.scrub_bio, ptr %33, i32 0, i32 3
  %88 = ptrtoint ptr %bio72.le to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bio72.le, align 4
  call void @bio_put(ptr noundef %89) #14
  %90 = ptrtoint ptr %bio72.le to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %bio72.le, align 4
  br label %cleanup92

if.end84:                                         ; preds = %if.end69
  %refs.i = getelementptr inbounds %struct.scrub_block, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end84.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !154

if.end84.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end84
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %92 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %.not.i.i.i.i = icmp sgt i32 %92, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.scrub_block_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.scrub_block_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_block_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end84.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end84.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #14
  br label %scrub_block_get.exit

scrub_block_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.scrub_block_get.exit_crit_edge
  %outstanding_pages = getelementptr inbounds %struct.scrub_block, ptr %1, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_pages, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %outstanding_pages, i32 1, i32 3, i32 1) #14
  %93 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_pages, ptr %outstanding_pages, i32 1, ptr elementtype(i32) %outstanding_pages) #14, !srcloc !151
  %94 = ptrtoint ptr %page_count35 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %page_count35, align 8
  %inc = add i32 %95, 1
  store i32 %inc, ptr %page_count35, align 8
  %96 = ptrtoint ptr %pages_per_bio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pages_per_bio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %97)
  %cmp88 = icmp eq i32 %inc, %97
  br i1 %cmp88, label %if.then90, label %scrub_block_get.exit.cleanup92_crit_edge

scrub_block_get.exit.cleanup92_crit_edge:         ; preds = %scrub_block_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup92

if.then90:                                        ; preds = %scrub_block_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_submit(ptr noundef %sctx)
  br label %cleanup92

cleanup92:                                        ; preds = %if.then90, %scrub_block_get.exit.cleanup92_crit_edge, %if.then80
  %retval.0 = phi i32 [ -5, %if.then80 ], [ 0, %if.then90 ], [ 0, %scrub_block_get.exit.cleanup92_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_submit(ptr noundef %sctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 3
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %dev.i = getelementptr inbounds %struct.scrub_bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %scrub_speed_max.i = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %scrub_speed_max.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load volatile i64, ptr %scrub_speed_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i = icmp eq i64 %7, 0
  br i1 %cmp.i, label %if.end.scrub_throttle.exit_crit_edge, label %if.end.i

if.end.scrub_throttle.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_throttle.exit

if.end.i:                                         ; preds = %if.end
  %div167.i = lshr i64 %7, 24
  %conv.i = trunc i64 %div167.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp3.i = icmp eq i32 %conv.i, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 64) #14
  %9 = select i1 %cmp3.i, i32 1, i32 %8
  %call.i = tail call i64 @ktime_get() #14
  %throttle_deadline.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 12
  %10 = ptrtoint ptr %throttle_deadline.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %throttle_deadline.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp12.i = icmp eq i64 %11, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %div15.rhs.trunc.i = trunc i32 %9 to i16
  %div15103.i = udiv i16 1000, %div15.rhs.trunc.i
  %conv16.i = zext i16 %div15103.i to i64
  %mul.i.i = mul nuw nsw i64 %conv16.i, 1000000
  %add.i.i = add i64 %mul.i.i, %call.i
  %12 = ptrtoint ptr %throttle_deadline.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add.i.i, ptr %throttle_deadline.i, align 8
  %throttle_sent.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 13
  %13 = ptrtoint ptr %throttle_sent.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %throttle_sent.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end.i.if.end19.i_crit_edge
  %14 = ptrtoint ptr %throttle_deadline.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %throttle_deadline.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %call.i)
  %cmp.i.i.i = icmp sgt i64 %15, %call.i
  br i1 %cmp.i.i.i, label %if.then22.i, label %if.end19.i.if.end38.i_crit_edge

if.end19.i.if.end38.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then22.i:                                      ; preds = %if.end19.i
  %bio.i = getelementptr inbounds %struct.scrub_bio, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bio.i, align 4
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_size.i, align 8
  %conv23.i = zext i32 %19 to i64
  %throttle_sent24.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 13
  %20 = ptrtoint ptr %throttle_sent24.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %throttle_sent24.i, align 8
  %add.i = add i64 %21, %conv23.i
  store i64 %add.i, ptr %throttle_sent24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp164.i.i.i = icmp ult i64 %7, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !153

if.then168.i.i.i:                                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %7 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %9
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %7) #24, !srcloc !177
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %22, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %dividend.addr.0.i.i.i)
  %cmp27.not.i = icmp ugt i64 %add.i, %dividend.addr.0.i.i.i
  br i1 %cmp27.not.i, label %if.end33.i, label %div_u64.exit.i.scrub_throttle.exit_crit_edge

div_u64.exit.i.scrub_throttle.exit_crit_edge:     ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_throttle.exit

if.end33.i:                                       ; preds = %div_u64.exit.i
  %sub.i.i = sub i64 %15, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #14
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #24, !srcloc !178
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %24, i32 0) #24, !srcloc !179
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 18
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i.i)
  %tobool.not.i = icmp eq i64 %cond213.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end33.i.if.end38.i_crit_edge, label %if.then34.i

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul nsw i64 %cond213.i.i.i.i, 100
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #24, !srcloc !180
  %asmresult.i.i.i80.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i.i81.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i.i80.i, i32 %asmresult4.i.i.i81.i) #24, !srcloc !179
  %asmresult10.i.i.i93.i = extractvalue { i64, i32 } %27, 0
  %div158.i.i98105.i = lshr i64 %asmresult10.i.i.i93.i, 9
  %conv36.i = trunc i64 %div158.i.i98105.i to i32
  %call37.i = tail call i32 @schedule_timeout_interruptible(i32 noundef %conv36.i) #14
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end33.i.if.end38.i_crit_edge, %if.end19.i.if.end38.i_crit_edge
  %28 = ptrtoint ptr %throttle_deadline.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %throttle_deadline.i, align 8
  br label %scrub_throttle.exit

scrub_throttle.exit:                              ; preds = %if.end38.i, %div_u64.exit.i.scrub_throttle.exit_crit_edge, %if.end.scrub_throttle.exit_crit_edge
  %29 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %curr, align 8
  %arrayidx = getelementptr [64 x ptr], ptr %sctx, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  store i32 -1, ptr %curr, align 8
  %refs.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i8 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i8, label %scrub_throttle.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i9, !prof !154

scrub_throttle.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %scrub_throttle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i9:                                 ; preds = %scrub_throttle.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i9.scrub_pending_bio_inc.exit_crit_edge, label %if.else.i.i.i.i9.if.end15.sink.split.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i9.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i9.scrub_pending_bio_inc.exit_crit_edge: ; preds = %if.else.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_pending_bio_inc.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i9.if.end15.sink.split.i.i.i.i_crit_edge, %scrub_throttle.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %scrub_throttle.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i9.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #14
  br label %scrub_pending_bio_inc.exit

scrub_pending_bio_inc.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i9.scrub_pending_bio_inc.exit_crit_edge
  %bios_in_flight.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bios_in_flight.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %bios_in_flight.i, i32 1, i32 3, i32 1) #14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bios_in_flight.i, ptr %bios_in_flight.i, i32 1, ptr elementtype(i32) %bios_in_flight.i) #14, !srcloc !151
  %bio = getelementptr inbounds %struct.scrub_bio, ptr %32, i32 0, i32 3
  %36 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bio, align 4
  tail call void @btrfsic_submit_bio(ptr noundef %37) #14
  br label %cleanup

cleanup:                                          ; preds = %scrub_pending_bio_inc.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_missing_raid56_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %sctx = getelementptr inbounds %struct.scrub_block, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sctx, align 4
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info1, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = getelementptr inbounds %struct.scrub_block, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %8, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  %scrub_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 130
  %10 = ptrtoint ptr %scrub_workers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scrub_workers, align 4
  %work = getelementptr inbounds %struct.scrub_block, ptr %1, i32 0, i32 7
  tail call void @btrfs_queue_work(ptr noundef %11, ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raid56_alloc_missing_rbio(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid56_add_scrub_pages(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_missing_raid56_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -88
  %sctx1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx1, align 4
  %fs_info2 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %logical3 = getelementptr inbounds %struct.scrub_page, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %logical3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %logical3, align 8
  %dev6 = getelementptr inbounds %struct.scrub_page, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 8
  %10 = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %10, align 4
  %12 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %10, align 4
  %bf.clear5.i = and i8 %bf.load.i, 47
  store i8 %bf.clear5.i, ptr %10, align 4
  %flags.i = getelementptr inbounds %struct.scrub_page, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i130 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i130, label %if.else.i, label %if.then.i132

if.then.i132:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call.i131 = tail call fastcc i32 @scrub_checksum_data(ptr noundef %add.ptr) #14
  br label %if.endthread-pre-split

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = tail call fastcc i32 @scrub_checksum_tree_block(ptr noundef %add.ptr) #14
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.else.i, %if.then.i132
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load7.pr = load i8, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %bf.load7 = phi i8 [ %bf.load7.pr, %if.endthread-pre-split ], [ %bf.load, %entry.if.end_crit_edge ]
  %17 = and i8 %bf.load7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %read_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 4
  %18 = ptrtoint ptr %read_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %read_errors, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %read_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then12.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then12.rcu_read_lock.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then12
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then12.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @scrub_missing_raid56_worker._rs, ptr noundef nonnull @__func__.scrub_missing_raid56_worker) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %rcu_read_lock.exit.do.end34_crit_edge, label %if.then16

rcu_read_lock.exit.do.end34_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

if.then16:                                        ; preds = %rcu_read_lock.exit
  %name = getelementptr inbounds %struct.btrfs_device, ptr %9, i32 0, i32 5
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %name, align 8
  %call20 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.then16.do.end29_crit_edge

if.then16.do.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

land.lhs.true:                                    ; preds = %if.then16
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b117 = load i1, ptr @scrub_missing_raid56_worker.__warned, align 1
  br i1 %.b117, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_missing_raid56_worker.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2170, ptr noundef nonnull @.str.4) #14
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %if.then16.do.end29_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.55, i64 noundef %7, ptr noundef %str) #17
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %rcu_read_lock.exit.do.end34_crit_edge
  %call.i133 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i133, label %do.end34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i136

do.end34.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i136:                               ; preds = %do.end34
  %call1.i134 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i138

land.lhs.true.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i138:                              ; preds = %land.lhs.true.i136
  %.b4.i137 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i137, label %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, label %if.then.i139

land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i139:                                     ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i139, %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, %do.end34.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  br label %if.end85.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load7)
  %26 = icmp ult i8 %bf.load7, 64
  br i1 %26, label %if.else83, label %if.then46

if.then46:                                        ; preds = %if.else
  %stat_lock47 = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock47) #14
  %uncorrectable_errors = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 20, i32 11
  %27 = ptrtoint ptr %uncorrectable_errors to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %uncorrectable_errors, align 8
  %inc49 = add i64 %28, 1
  store i64 %inc49, ptr %uncorrectable_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock47) #14
  %29 = tail call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i119 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i120, align 4
  %add.i.i.i121 = add i32 %32, 1
  store volatile i32 %add.i.i.i121, ptr %preempt_count.i.i.i.i120, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i122 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i122, label %if.then46.rcu_read_lock.exit129_crit_edge, label %land.lhs.true.i125

if.then46.rcu_read_lock.exit129_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit129

land.lhs.true.i125:                               ; preds = %if.then46
  %call1.i123 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.rcu_read_lock.exit129_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.rcu_read_lock.exit129_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit129

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.rcu_read_lock.exit129_crit_edge, label %if.then.i128

land.lhs.true2.i127.rcu_read_lock.exit129_crit_edge: ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit129

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #14
  br label %rcu_read_lock.exit129

rcu_read_lock.exit129:                            ; preds = %if.then.i128, %land.lhs.true2.i127.rcu_read_lock.exit129_crit_edge, %land.lhs.true.i125.rcu_read_lock.exit129_crit_edge, %if.then46.rcu_read_lock.exit129_crit_edge
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @scrub_missing_raid56_worker._rs.56, ptr noundef nonnull @__func__.scrub_missing_raid56_worker) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %rcu_read_lock.exit129.do.end80_crit_edge, label %if.then55

rcu_read_lock.exit129.do.end80_crit_edge:         ; preds = %rcu_read_lock.exit129
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end80

if.then55:                                        ; preds = %rcu_read_lock.exit129
  %name61 = getelementptr inbounds %struct.btrfs_device, ptr %9, i32 0, i32 5
  %33 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %name61, align 8
  %call63 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %if.then55.do.end73_crit_edge

if.then55.do.end73_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end73

land.lhs.true65:                                  ; preds = %if.then55
  %call66 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true65.do.end73_crit_edge, label %land.lhs.true68

land.lhs.true65.do.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end73

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %.b116118 = load i1, ptr @scrub_missing_raid56_worker.__warned.58, align 1
  br i1 %.b116118, label %land.lhs.true68.do.end73_crit_edge, label %if.then70

land.lhs.true68.do.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end73

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scrub_missing_raid56_worker.__warned.58, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2177, ptr noundef nonnull @.str.4) #14
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %land.lhs.true68.do.end73_crit_edge, %land.lhs.true65.do.end73_crit_edge, %if.then55.do.end73_crit_edge
  %str76 = getelementptr inbounds %struct.rcu_string, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.57, i64 noundef %7, ptr noundef %str76) #17
  br label %do.end80

do.end80:                                         ; preds = %do.end73, %rcu_read_lock.exit129.do.end80_crit_edge
  %call.i142 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i142, label %do.end80.rcu_read_unlock.exit152_crit_edge, label %land.lhs.true.i145

do.end80.rcu_read_unlock.exit152_crit_edge:       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit152

land.lhs.true.i145:                               ; preds = %do.end80
  %call1.i143 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143)
  %tobool.not.i144 = icmp eq i32 %call1.i143, 0
  br i1 %tobool.not.i144, label %land.lhs.true.i145.rcu_read_unlock.exit152_crit_edge, label %land.lhs.true2.i147

land.lhs.true.i145.rcu_read_unlock.exit152_crit_edge: ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit152

land.lhs.true2.i147:                              ; preds = %land.lhs.true.i145
  %.b4.i146 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i146, label %land.lhs.true2.i147.rcu_read_unlock.exit152_crit_edge, label %if.then.i148

land.lhs.true2.i147.rcu_read_unlock.exit152_crit_edge: ; preds = %land.lhs.true2.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit152

if.then.i148:                                     ; preds = %land.lhs.true2.i147
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #14
  br label %rcu_read_unlock.exit152

rcu_read_unlock.exit152:                          ; preds = %if.then.i148, %land.lhs.true2.i147.rcu_read_unlock.exit152_crit_edge, %land.lhs.true.i145.rcu_read_unlock.exit152_crit_edge, %do.end80.rcu_read_unlock.exit152_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  br label %if.end85.sink.split

if.else83:                                        ; preds = %if.else
  %35 = ptrtoint ptr %sctx1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sctx1, align 4
  %fs_info1.i = getelementptr inbounds %struct.scrub_ctx, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_info1.i, align 8
  %sparity.i = getelementptr i8, ptr %work, i32 -8
  %39 = ptrtoint ptr %sparity.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sparity.i, align 4
  %tobool.not.i153 = icmp eq ptr %40, null
  br i1 %tobool.not.i153, label %for.cond.preheader.i, label %if.else83.if.end85_crit_edge

if.else83.if.end85_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

for.cond.preheader.i:                             ; preds = %if.else83
  %page_count.i = getelementptr i8, ptr %work, i32 -24
  %41 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp11.i = icmp sgt i32 %42, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end85_crit_edge

for.cond.preheader.i.if.end85_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %num_write_errors.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %38, i32 0, i32 154, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %page_num.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %call.i154 = tail call fastcc i32 @scrub_write_page_to_dev_replace(ptr noundef %add.ptr, i32 noundef %page_num.012.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool2.not.i = icmp eq i32 %call.i154, 0
  br i1 %tobool2.not.i, label %for.body.i.if.end4.i_crit_edge, label %if.then3.i

for.body.i.if.end4.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_write_errors.i) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %for.body.i.if.end4.i_crit_edge
  %inc.i = add nuw nsw i32 %page_num.012.i, 1
  %43 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %page_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %44
  br i1 %cmp.i, label %if.end4.i.for.body.i_crit_edge, label %if.end4.i.if.end85_crit_edge

if.end4.i.if.end85_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end85.sink.split:                              ; preds = %rcu_read_unlock.exit152, %rcu_read_unlock.exit
  %45 = tail call i32 @llvm.read_register.i32(metadata !140) #14
  %and.i.i.i.i.i140 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i140 to ptr
  %preempt_count.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i141, align 4
  %sub.i.i.i151 = add i32 %48, -1
  store volatile i32 %sub.i.i.i151, ptr %preempt_count.i.i.i.i141, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.end4.i.if.end85_crit_edge, %for.cond.preheader.i.if.end85_crit_edge, %if.else83.if.end85_crit_edge
  %is_dev_replace = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool86.not = icmp eq i32 %50, 0
  br i1 %tobool86.not, label %if.end85.if.end91_crit_edge, label %land.lhs.true87

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

land.lhs.true87:                                  ; preds = %if.end85
  %flush_all_writes = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 19
  %51 = ptrtoint ptr %flush_all_writes to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flush_all_writes, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool88.not = icmp eq i8 %52, 0
  br i1 %tobool88.not, label %land.lhs.true87.if.end91_crit_edge, label %if.then89

land.lhs.true87.if.end91_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  %wr_lock = getelementptr inbounds %struct.scrub_ctx, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %wr_lock, i32 noundef 0) #14
  tail call fastcc void @scrub_wr_submit(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %wr_lock) #14
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %land.lhs.true87.if.end91_crit_edge, %if.end85.if.end91_crit_edge
  tail call fastcc void @scrub_block_put(ptr noundef %add.ptr)
  tail call fastcc void @scrub_pending_bio_dec(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid56_submit_missing_rbio(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %dev = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info1, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status, align 2
  %status = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %status, align 8
  %bio2 = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %bio2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bio, ptr %bio2, align 4
  %scrub_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 130
  %10 = ptrtoint ptr %scrub_workers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scrub_workers, align 4
  %work = getelementptr inbounds %struct.scrub_bio, ptr %1, i32 0, i32 10
  tail call void @btrfs_queue_work(ptr noundef %11, ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_freeze_block_group(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inc_block_group_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @finish_extent_writes_for_zoned(ptr noundef %root, ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @btrfs_wait_block_group_reservations(ptr noundef %cache) #14
  tail call void @btrfs_wait_nocow_writers(ptr noundef %cache) #14
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length, align 8
  tail call void @btrfs_wait_ordered_roots(ptr noundef %1, i64 noundef -1, i64 noundef %6, i64 noundef %8) #14
  %call2 = tail call ptr @btrfs_join_transaction(ptr noundef %root) #14
  %cmp.i16 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 @btrfs_commit_transaction(ptr noundef %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then4 ], [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_dec_block_group_ro(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scrub_pause_off(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %scrub_lock, i32 noundef 0) #14
  tail call fastcc void @__scrub_blocked_if_needed(ptr noundef %fs_info)
  %scrubs_paused = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 126
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %scrubs_paused, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused, ptr %scrubs_paused, i32 1, ptr elementtype(i32) %scrubs_paused) #14, !srcloc !152
  tail call void @mutex_unlock(ptr noundef %scrub_lock) #14
  %scrub_pause_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 128
  tail call void @__wake_up(ptr noundef %scrub_pause_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_unfreeze_block_group(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_nocow_writers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_ordered_roots(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_chunk(ptr noundef %sctx, ptr noundef %bg, ptr noundef %scrub_dev, i64 noundef %dev_offset, i64 noundef %dev_extent_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock) #14
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 3
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 4
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  %call = tail call ptr @lookup_extent_mapping(ptr noundef %mapping_tree, i64 noundef %3, i64 noundef %5) #14
  tail call void @_raw_read_unlock(ptr noundef %lock) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock3 = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock3) #14
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 17
  %6 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %removed, align 8
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool4.not, i32 -22, i32 0
  tail call void @_raw_spin_unlock(ptr noundef %lock3) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %start8 = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %start8 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start8, align 8
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.not = icmp eq i64 %9, %11
  br i1 %cmp.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end11:                                         ; preds = %if.end7
  %len = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %dev_extent_len)
  %cmp12 = icmp ult i64 %13, %dev_extent_len
  br i1 %cmp12, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end14:                                         ; preds = %if.end11
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 12
  %14 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map_lookup, align 4
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1556 = icmp sgt i32 %17, 0
  br i1 %cmp1556, label %for.body.lr.ph, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %if.end14
  %bdev16 = getelementptr inbounds %struct.btrfs_device, ptr %scrub_dev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.map_lookup, ptr %15, i32 0, i32 7, i32 %i.057
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 8
  %22 = ptrtoint ptr %bdev16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev16, align 8
  %cmp17 = icmp eq ptr %21, %23
  br i1 %cmp17, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %physical = getelementptr %struct.map_lookup, ptr %15, i32 0, i32 7, i32 %i.057, i32 1
  %24 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %physical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %dev_offset)
  %cmp20 = icmp eq i64 %25, %dev_offset
  br i1 %cmp20, label %if.then21, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true
  %call22 = tail call fastcc i32 @scrub_stripe(ptr noundef %sctx, ptr noundef %bg, ptr noundef %15, ptr noundef %scrub_dev, i32 noundef %i.057, i64 noundef %dev_extent_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.for.inc_crit_edge, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then21.for.inc_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.then21.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %26 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_stripes, align 8
  %cmp15 = icmp slt i32 %inc, %27
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.then21.out_crit_edge, %if.end14.out_crit_edge, %if.end11.out_crit_edge, %if.end7.out_crit_edge
  %ret.3 = phi i32 [ 0, %if.end7.out_crit_edge ], [ 0, %if.end11.out_crit_edge ], [ 0, %if.end14.out_crit_edge ], [ %call22, %if.then21.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  tail call void @free_extent_map(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.3, %out ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_finish_block_group_to_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_bg_unused(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_block_group_reservations(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_join_transaction(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_commit_transaction(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_stripe(ptr noundef %sctx, ptr noundef %bg, ptr noundef readonly %map, ptr noundef %scrub_dev, i32 noundef %stripe_index, i64 noundef %dev_extent_len) unnamed_addr #3 align 64 {
entry:
  %__wq_entry.i706 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %csum.i = alloca [32 x i8], align 1
  %mapped_length.i = alloca i64, align 8
  %bioc.i = alloca ptr, align 4
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %plug = alloca %struct.blk_plug, align 4
  %logical = alloca i64, align 8
  %logic_end = alloca i64, align 8
  %key = alloca %struct.btrfs_key, align 8
  %offset = alloca i64, align 8
  %stripe_logical = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry127 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #14
  %2 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 3
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %logical) #14
  %5 = ptrtoint ptr %logical to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %logical, align 8, !annotation !171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %logic_end) #14
  %6 = ptrtoint ptr %logic_end to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %logic_end, align 8, !annotation !171
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %7 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %stripe_len = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 3
  %9 = call ptr @memset(ptr %key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stripe_logical) #14
  %10 = ptrtoint ptr %stripe_logical to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %stripe_logical, align 8, !annotation !171
  %physical2 = getelementptr %struct.map_lookup, ptr %map, i32 0, i32 7, i32 %stripe_index, i32 1
  %11 = ptrtoint ptr %physical2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %physical2, align 8
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %offset, align 8
  %14 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %stripe_len, align 8
  %call = tail call i64 @div64_u64(i64 noundef %dev_extent_len, i64 noundef %15) #14
  %16 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stripe_len, align 8
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %map, align 8
  %and = and i64 %19, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = sext i32 %stripe_index to i64
  %mul = mul i64 %17, %conv
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %mul, ptr %offset, align 8
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 4
  %21 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_stripes, align 8
  %conv7 = sext i32 %22 to i64
  %mul8 = mul i64 %17, %conv7
  br label %if.end52

if.else:                                          ; preds = %entry
  %and10 = and i64 %19, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.else23, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %num_stripes13 = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 4
  %23 = ptrtoint ptr %num_stripes13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_stripes13, align 8
  %sub_stripes = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 5
  %25 = ptrtoint ptr %sub_stripes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sub_stripes, align 4
  %div = sdiv i32 %24, %26
  %.frozen = freeze i32 %26
  %div16 = sdiv i32 %stripe_index, %.frozen
  %conv17 = sext i32 %div16 to i64
  %mul18 = mul i64 %17, %conv17
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %mul18, ptr %offset, align 8
  %conv20 = sext i32 %div to i64
  %mul21 = mul i64 %17, %conv20
  %28 = mul i32 %div16, %.frozen
  %rem.decomposed = sub i32 %stripe_index, %28
  %add = add i32 %rem.decomposed, 1
  br label %if.end52

if.else23:                                        ; preds = %if.else
  %and25 = and i64 %19, 1552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.else31, label %if.then27

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #16
  %num_stripes28 = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 4
  %29 = ptrtoint ptr %num_stripes28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_stripes28, align 8
  %rem29 = srem i32 %stripe_index, %30
  %add30 = add i32 %rem29, 1
  br label %if.end52

if.else31:                                        ; preds = %if.else23
  %and33 = and i64 %19, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.else39, label %if.then35

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #16
  %num_stripes36 = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 4
  %31 = ptrtoint ptr %num_stripes36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_stripes36, align 8
  %rem37 = srem i32 %stripe_index, %32
  %add38 = add i32 %rem37, 1
  br label %if.end52

if.else39:                                        ; preds = %if.else31
  %and41 = and i64 %19, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %if.else39.if.end52_crit_edge, label %if.then43

if.else39.if.end52_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = call fastcc i32 @get_raid56_logic_offset(i64 noundef %12, i32 noundef %stripe_index, ptr noundef %map, ptr noundef nonnull %offset, ptr noundef null)
  %33 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %stripe_len, align 8
  %num_stripes.i = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 4
  %35 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_stripes.i, align 8
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %map, align 8
  %and.i.i = and i64 %38, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %39 = trunc i64 %38 to i32
  %40 = lshr i32 %39, 7
  %41 = and i32 %40, 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %41, i32 1
  %sub.i = sub i32 %36, %retval.0.i.i
  %conv47 = sext i32 %sub.i to i64
  %mul48 = mul i64 %34, %conv47
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %if.else39.if.end52_crit_edge, %if.then35, %if.then27, %if.then12, %if.then
  %mirror_num.0 = phi i32 [ 1, %if.then ], [ %add, %if.then12 ], [ %add30, %if.then27 ], [ %add38, %if.then35 ], [ 1, %if.then43 ], [ 1, %if.else39.if.end52_crit_edge ]
  %increment.0 = phi i64 [ %mul8, %if.then ], [ %mul21, %if.then12 ], [ %17, %if.then27 ], [ %17, %if.then35 ], [ %mul48, %if.then43 ], [ %17, %if.else39.if.end52_crit_edge ]
  %call53 = tail call ptr @btrfs_alloc_path() #14
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.cleanup425_crit_edge, label %if.end56

if.end52.cleanup425_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup425

if.end56:                                         ; preds = %if.end52
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call53, i32 0, i32 5
  %42 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set59 = or i8 %bf.load, 48
  store i8 %bf.set59, ptr %search_commit_root, align 2
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call53, i32 0, i32 3
  %43 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %reada, align 4
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %offset, align 8
  %add60 = add i64 %45, %4
  %46 = ptrtoint ptr %logical to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add60, ptr %logical, align 8
  %47 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %stripe_len, align 8
  %mul62 = mul i64 %48, %call
  %add63 = add i64 %mul62, %12
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %map, align 8
  %and65 = and i64 %50, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %if.else70, label %if.then67

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %call68 = call fastcc i32 @get_raid56_logic_offset(i64 noundef %add63, i32 noundef %stripe_index, ptr noundef %map, ptr noundef nonnull %logic_end, ptr noundef null)
  %51 = ptrtoint ptr %logic_end to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %logic_end, align 8
  %add69 = add i64 %52, %4
  br label %do.body74

if.else70:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %mul71 = mul i64 %increment.0, %call
  %add72 = add i64 %add60, %mul71
  br label %do.body74

do.body74:                                        ; preds = %if.else70, %if.then67
  %storemerge = phi i64 [ %add72, %if.else70 ], [ %add69, %if.then67 ]
  %53 = ptrtoint ptr %logic_end to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %storemerge, ptr %logic_end, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3254) #14
  %bios_in_flight = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %54 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp = icmp eq i32 %55, 0
  br i1 %cmp, label %do.body74.do.end91_crit_edge, label %if.end81

do.body74.do.end91_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end91

if.end81:                                         ; preds = %do.body74
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %56 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %list_wait = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  %call82771 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i670772 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %57 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp85773 = icmp eq i32 %58, 0
  br i1 %cmp85773, label %if.end81.for.end_crit_edge, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  br label %cleanup

if.end81.for.end_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end81.cleanup_crit_edge
  call void @schedule() #14
  %call82 = call i32 @prepare_to_wait_event(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i670 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %59 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp85 = icmp eq i32 %60, 0
  br i1 %cmp85, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end81.for.end_crit_edge
  call void @finish_wait(ptr noundef %list_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end91

do.end91:                                         ; preds = %for.end, %do.body74.do.end91_crit_edge
  %scrubs_paused.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 126
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i.i, i32 1, i32 3, i32 1) #14
  %61 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i.i, ptr %scrubs_paused.i.i, i32 1, ptr elementtype(i32) %scrubs_paused.i.i) #14, !srcloc !151
  %scrub_pause_wait.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 128
  call void @__wake_up(ptr noundef %scrub_pause_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %scrub_lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 123
  call void @mutex_lock_nested(ptr noundef %scrub_lock.i.i, i32 noundef 0) #14
  call fastcc void @__scrub_blocked_if_needed(ptr noundef %1) #14
  %call.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i.i, i32 1, i32 3, i32 1) #14
  %62 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i.i, ptr %scrubs_paused.i.i, i32 1, ptr elementtype(i32) %scrubs_paused.i.i) #14, !srcloc !152
  call void @mutex_unlock(ptr noundef %scrub_lock.i.i) #14
  call void @__wake_up(ptr noundef %scrub_pause_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %63 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %logical, align 8
  %call92 = call ptr @btrfs_extent_root(ptr noundef %1, i64 noundef %64) #14
  %65 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %logical, align 8
  %call93 = call ptr @btrfs_csum_root(ptr noundef %1, i64 noundef %66) #14
  call void @blk_start_plug(ptr noundef nonnull %plug) #14
  %is_dev_replace = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 14
  %67 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool94.not = icmp eq i32 %68, 0
  br i1 %tobool94.not, label %do.end91.if.end99_crit_edge, label %land.lhs.true

do.end91.if.end99_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

land.lhs.true:                                    ; preds = %do.end91
  %wr_tgtdev = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 18
  %69 = ptrtoint ptr %wr_tgtdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr_tgtdev, align 8
  %zone_info1.i = getelementptr inbounds %struct.btrfs_device, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %zone_info1.i, align 4
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end99_crit_edge, label %btrfs_dev_is_sequential.exit

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

btrfs_dev_is_sequential.exit:                     ; preds = %land.lhs.true
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %74 to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %72, i32 0, i32 5
  %75 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %76, i32 %div3.i.i
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i676 = and i32 %conv2.i, 31
  %79 = shl nuw i32 1, %and.i.i676
  %80 = and i32 %79, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool3.i.not = icmp eq i32 %80, 0
  br i1 %tobool3.i.not, label %btrfs_dev_is_sequential.exit.if.end99_crit_edge, label %if.then97

btrfs_dev_is_sequential.exit.if.end99_crit_edge:  ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.then97:                                        ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #16
  %wr_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %wr_lock, i32 noundef 0) #14
  %write_pointer = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 15
  %81 = ptrtoint ptr %write_pointer to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %12, ptr %write_pointer, align 8
  call void @mutex_unlock(ptr noundef %wr_lock) #14
  %flush_all_writes = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 19
  %82 = ptrtoint ptr %flush_all_writes to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %flush_all_writes, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %btrfs_dev_is_sequential.exit.if.end99_crit_edge, %land.lhs.true.if.end99_crit_edge, %do.end91.if.end99_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %add63)
  %cmp100779 = icmp ult i64 %12, %add63
  br i1 %cmp100779, label %while.body.lr.ph, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.lr.ph:                                 ; preds = %if.end99
  %scrub_cancel_req = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 127
  %cancel_req = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 9
  %scrub_pause_req = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 125
  %flush_all_writes111 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 19
  %wr_lock112 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 17
  %list_wait131 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call53, i32 0, i32 1
  %83 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %84 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 2
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 17
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 21
  %uncorrectable_errors = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 11
  %csum_list = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 8
  %stat.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20
  %data_bytes_scrubbed.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 2
  %tree_extents_scrubbed.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 1
  %tree_bytes_scrubbed.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 3
  %no_csum.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 7
  %last_physical396 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 13
  br label %while.body

while.body:                                       ; preds = %if.else394.while.body_crit_edge, %while.body.lr.ph
  %physical.0780 = phi i64 [ %12, %while.body.lr.ph ], [ %add385, %if.else394.while.body_crit_edge ]
  %call.i.i671 = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_cancel_req, i32 noundef 4) #14
  %85 = ptrtoint ptr %scrub_cancel_req to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %scrub_cancel_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool103.not = icmp eq i32 %86, 0
  br i1 %tobool103.not, label %lor.lhs.false, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false:                                    ; preds = %while.body
  %call.i.i672 = call zeroext i1 @__kasan_check_read(ptr noundef %cancel_req, i32 noundef 4) #14
  %87 = ptrtoint ptr %cancel_req to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %cancel_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool105.not = icmp eq i32 %88, 0
  br i1 %tobool105.not, label %if.end107, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end107:                                        ; preds = %lor.lhs.false
  %call.i.i673 = call zeroext i1 @__kasan_check_read(ptr noundef %scrub_pause_req, i32 noundef 4) #14
  %89 = ptrtoint ptr %scrub_pause_req to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %scrub_pause_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool109.not = icmp eq i32 %90, 0
  br i1 %tobool109.not, label %if.end107.if.end149_crit_edge, label %if.then110

if.end107.if.end149_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then110:                                       ; preds = %if.end107
  %91 = ptrtoint ptr %flush_all_writes111 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %flush_all_writes111, align 4
  call fastcc void @scrub_submit(ptr noundef %sctx)
  call void @mutex_lock_nested(ptr noundef %wr_lock112, i32 noundef 0) #14
  call fastcc void @scrub_wr_submit(ptr noundef %sctx)
  call void @mutex_unlock(ptr noundef %wr_lock112) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3298) #14
  %call.i.i674 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %92 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp123 = icmp eq i32 %93, 0
  br i1 %cmp123, label %if.then110.do.end147_crit_edge, label %if.end126

if.then110.do.end147_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147

if.end126:                                        ; preds = %if.then110
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry127) #14
  %94 = call ptr @memset(ptr %__wq_entry127, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry127, i32 noundef 0) #14
  %call132774 = call i32 @prepare_to_wait_event(ptr noundef %list_wait131, ptr noundef nonnull %__wq_entry127, i32 noundef 2) #14
  %call.i.i675775 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %95 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp135776 = icmp eq i32 %96, 0
  br i1 %cmp135776, label %if.end126.for.end142_crit_edge, label %if.end126.cleanup139_crit_edge

if.end126.cleanup139_crit_edge:                   ; preds = %if.end126
  br label %cleanup139

if.end126.for.end142_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end142

cleanup139:                                       ; preds = %cleanup139.cleanup139_crit_edge, %if.end126.cleanup139_crit_edge
  call void @schedule() #14
  %call132 = call i32 @prepare_to_wait_event(ptr noundef %list_wait131, ptr noundef nonnull %__wq_entry127, i32 noundef 2) #14
  %call.i.i675 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %97 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp135 = icmp eq i32 %98, 0
  br i1 %cmp135, label %cleanup139.for.end142_crit_edge, label %cleanup139.cleanup139_crit_edge

cleanup139.cleanup139_crit_edge:                  ; preds = %cleanup139
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup139

cleanup139.for.end142_crit_edge:                  ; preds = %cleanup139
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end142

for.end142:                                       ; preds = %cleanup139.for.end142_crit_edge, %if.end126.for.end142_crit_edge
  call void @finish_wait(ptr noundef %list_wait131, ptr noundef nonnull %__wq_entry127) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry127) #14
  br label %do.end147

do.end147:                                        ; preds = %for.end142, %if.then110.do.end147_crit_edge
  %99 = ptrtoint ptr %flush_all_writes111 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %flush_all_writes111, align 4
  %call.i.i.i.i678 = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i.i, i32 1, i32 3, i32 1) #14
  %100 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i.i, ptr %scrubs_paused.i.i, i32 1, ptr elementtype(i32) %scrubs_paused.i.i) #14, !srcloc !151
  call void @__wake_up(ptr noundef %scrub_pause_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @mutex_lock_nested(ptr noundef %scrub_lock.i.i, i32 noundef 0) #14
  call fastcc void @__scrub_blocked_if_needed(ptr noundef %1) #14
  %call.i.i.i3.i681 = call zeroext i1 @__kasan_check_write(ptr noundef %scrubs_paused.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %scrubs_paused.i.i, i32 1, i32 3, i32 1) #14
  %101 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scrubs_paused.i.i, ptr %scrubs_paused.i.i, i32 1, ptr elementtype(i32) %scrubs_paused.i.i) #14, !srcloc !152
  call void @mutex_unlock(ptr noundef %scrub_lock.i.i) #14
  call void @__wake_up(ptr noundef %scrub_pause_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end149

if.end149:                                        ; preds = %do.end147, %if.end107.if.end149_crit_edge
  %102 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %map, align 8
  %and151 = and i64 %103, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and151)
  %tobool152.not = icmp eq i64 %and151, 0
  br i1 %tobool152.not, label %if.end149.if.end165_crit_edge, label %if.then153

if.end149.if.end165_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then153:                                       ; preds = %if.end149
  %call154 = call fastcc i32 @get_raid56_logic_offset(i64 noundef %physical.0780, i32 noundef %stripe_index, ptr noundef %map, ptr noundef nonnull %logical, ptr noundef nonnull %stripe_logical)
  %104 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %logical, align 8
  %add155 = add i64 %105, %4
  store i64 %add155, ptr %logical, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool156.not = icmp eq i32 %call154, 0
  br i1 %tobool156.not, label %if.then153.if.end165_crit_edge, label %if.then157

if.then153.if.end165_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then157:                                       ; preds = %if.then153
  %106 = ptrtoint ptr %stripe_logical to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %stripe_logical, align 8
  %add158 = add i64 %107, %4
  store i64 %add158, ptr %stripe_logical, align 8
  %add159 = add i64 %add158, %increment.0
  %call160 = call fastcc i32 @scrub_raid56_parity(ptr noundef %sctx, ptr noundef %map, ptr noundef %scrub_dev, i64 noundef %add158, i64 noundef %add159)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then157.skip_crit_edge, label %if.then157.out_crit_edge

if.then157.out_crit_edge:                         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then157.skip_crit_edge:                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

if.end165:                                        ; preds = %if.then153.if.end165_crit_edge, %if.end149.if.end165_crit_edge
  %108 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %109, i32 0, i32 22
  %110 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 8)
  %111 = load i64, ptr %incompat_flags.i.i, align 1
  %112 = and i64 %111, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %tobool.i.not = icmp eq i64 %112, 0
  %. = select i1 %tobool.i.not, i8 -88, i8 -87
  %113 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %., ptr %7, align 8
  %114 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %logical, align 8
  %116 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %key, align 8
  %117 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 -1, ptr %8, align 1
  %call173 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call92, ptr noundef nonnull %key, ptr noundef nonnull %call53, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end165.out_crit_edge, label %if.end177

if.end165.out_crit_edge:                          ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end177:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp178.not = icmp eq i32 %call173, 0
  br i1 %cmp178.not, label %if.end177.while.cond196.preheader_crit_edge, label %if.then180

if.end177.while.cond196.preheader_crit_edge:      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond196.preheader

if.then180:                                       ; preds = %if.end177
  %call181 = call i32 @btrfs_previous_extent_item(ptr noundef %call92, ptr noundef nonnull %call53, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %if.then180.out_crit_edge, label %if.end185

if.then180.out_crit_edge:                         ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end185:                                        ; preds = %if.then180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp186.not = icmp eq i32 %call181, 0
  br i1 %cmp186.not, label %if.end185.while.cond196.preheader_crit_edge, label %if.then188

if.end185.while.cond196.preheader_crit_edge:      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond196.preheader

if.then188:                                       ; preds = %if.end185
  call void @btrfs_release_path(ptr noundef nonnull %call53) #14
  %call189 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call92, ptr noundef nonnull %key, ptr noundef nonnull %call53, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.then188.out_crit_edge, label %if.then188.while.cond196.preheader_crit_edge

if.then188.while.cond196.preheader_crit_edge:     ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond196.preheader

if.then188.out_crit_edge:                         ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.cond196.preheader:                          ; preds = %if.then188.while.cond196.preheader_crit_edge, %if.end185.while.cond196.preheader_crit_edge, %if.end177.while.cond196.preheader_crit_edge
  %ret.2.ph = phi i32 [ 0, %if.end177.while.cond196.preheader_crit_edge ], [ 0, %if.end185.while.cond196.preheader_crit_edge ], [ %call189, %if.then188.while.cond196.preheader_crit_edge ]
  br label %while.cond196.outer

while.cond196.outer:                              ; preds = %next, %while.cond196.preheader
  %ret.2.ph872 = phi i32 [ %ret.2.ph, %while.cond196.preheader ], [ %ret.4, %next ]
  %physical.1.ph = phi i64 [ %physical.0780, %while.cond196.preheader ], [ %physical.5, %next ]
  br label %while.cond196

while.cond196:                                    ; preds = %if.then203.while.cond196_crit_edge, %while.cond196.outer
  %ret.2 = phi i32 [ 0, %if.then203.while.cond196_crit_edge ], [ %ret.2.ph872, %while.cond196.outer ]
  %118 = ptrtoint ptr %call53 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call53, align 4
  %120 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %119, i32 0, i32 12
  %122 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %123) #14
  %124 = ptrtoint ptr %119 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %119, align 8
  %conv.i = trunc i64 %125 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %126 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %nritems.i, align 1
  %128 = call i32 @llvm.bswap.i32(i32 %127) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %128)
  %cmp201.not = icmp ult i32 %121, %128
  br i1 %cmp201.not, label %if.end213, label %if.then203

if.then203:                                       ; preds = %while.cond196
  %call.i682 = call i32 @btrfs_next_old_leaf(ptr noundef %call92, ptr noundef nonnull %call53, i64 noundef 0) #14
  %cmp205 = icmp eq i32 %call.i682, 0
  br i1 %cmp205, label %if.then203.while.cond196_crit_edge, label %if.end208

if.then203.while.cond196_crit_edge:               ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond196

if.end208:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i682)
  %cmp209 = icmp slt i32 %call.i682, 0
  br i1 %cmp209, label %if.end208.out_crit_edge, label %if.end208.while.end_crit_edge

if.end208.while.end_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end208.out_crit_edge:                          ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end213:                                        ; preds = %while.cond196
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %mul.i.i.i.i = mul i32 %121, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %129 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %119, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %130 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %131 = load i64, ptr %84, align 1
  %132 = call i64 @llvm.bswap.i64(i64 %131) #14
  %133 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 8)
  store i64 %132, ptr %8, align 1
  %134 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %83, align 8
  %136 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %7, align 8
  %137 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %disk_key.i, align 8
  %139 = call i64 @llvm.bswap.i64(i64 %138) #14
  %140 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  %141 = and i8 %135, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %141)
  %switch669 = icmp eq i8 %141, -88
  br i1 %switch669, label %if.end224, label %if.end213.next_crit_edge

if.end213.next_crit_edge:                         ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.end224:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %135)
  %cmp227 = icmp eq i8 %135, -87
  br i1 %cmp227, label %if.then229, label %if.end224.if.end233_crit_edge

if.end224.if.end233_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end233

if.then229:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #16
  %142 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nodesize, align 8
  %conv230 = zext i32 %143 to i64
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %if.end224.if.end233_crit_edge
  %bytes.0 = phi i64 [ %conv230, %if.then229 ], [ %132, %if.end224.if.end233_crit_edge ]
  %add235 = add i64 %bytes.0, %139
  %144 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %logical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add235, i64 %145)
  %cmp236.not = icmp ugt i64 %add235, %145
  br i1 %cmp236.not, label %if.end239, label %if.end233.next_crit_edge

if.end233.next_crit_edge:                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.end239:                                        ; preds = %if.end233
  %146 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %stripe_len, align 8
  %add242 = add i64 %147, %145
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %add242)
  %cmp243.not = icmp ult i64 %139, %add242
  br i1 %cmp243.not, label %if.end251, label %if.then245

if.then245:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %logic_end to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %logic_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %149)
  %cmp247.not = icmp uge i64 %139, %149
  %spec.select = zext i1 %cmp247.not to i32
  br label %while.end

if.end251:                                        ; preds = %if.end239
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %150 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %150)
  %bf.load252 = load i8, ptr %removed, align 8
  %151 = and i8 %bf.load252, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool254.not = icmp eq i8 %151, 0
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br i1 %tobool254.not, label %if.end257, label %if.end251.out_crit_edge

if.end251.out_crit_edge:                          ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end257:                                        ; preds = %if.end251
  %152 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i683 = call i32 @btrfs_get_32(ptr noundef %119, ptr noundef %152, i32 noundef 17) #14
  %add260 = add i32 %call.i.i683, 101
  %153 = inttoptr i32 %add260 to ptr
  %call.i684 = call i64 @btrfs_get_64(ptr noundef %119, ptr noundef %153, i32 noundef 16) #14
  %call.i685 = call i64 @btrfs_get_64(ptr noundef %119, ptr noundef %153, i32 noundef 8) #14
  %and263 = and i64 %call.i684, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and263)
  %tobool264.not = icmp eq i64 %and263, 0
  br i1 %tobool264.not, label %if.end257.if.end279_crit_edge, label %land.lhs.true265

if.end257.if.end279_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end279

land.lhs.true265:                                 ; preds = %if.end257
  %154 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %key, align 8
  %156 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %logical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %155, i64 %157)
  %cmp267 = icmp ult i64 %155, %157
  br i1 %cmp267, label %land.lhs.true265.if.then276_crit_edge, label %lor.lhs.false269

land.lhs.true265.if.then276_crit_edge:            ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then276

lor.lhs.false269:                                 ; preds = %land.lhs.true265
  %add271 = add i64 %155, %bytes.0
  %158 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %stripe_len, align 8
  %add273 = add i64 %159, %157
  call void @__sanitizer_cov_trace_cmp8(i64 %add271, i64 %add273)
  %cmp274 = icmp ugt i64 %add271, %add273
  br i1 %cmp274, label %lor.lhs.false269.if.then276_crit_edge, label %lor.lhs.false269.if.end279_crit_edge

lor.lhs.false269.if.end279_crit_edge:             ; preds = %lor.lhs.false269
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end279

lor.lhs.false269.if.then276_crit_edge:            ; preds = %lor.lhs.false269
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then276

if.then276:                                       ; preds = %lor.lhs.false269.if.then276_crit_edge, %land.lhs.true265.if.then276_crit_edge
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.62, i64 noundef %155, i64 noundef %157) #17
  call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %160 = ptrtoint ptr %uncorrectable_errors to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %uncorrectable_errors, align 8
  %inc = add i64 %161, 1
  store i64 %inc, ptr %uncorrectable_errors, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %next

if.end279:                                        ; preds = %lor.lhs.false269.if.end279_crit_edge, %if.end257.if.end279_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes.0)
  %cmp281 = icmp ult i64 %bytes.0, 4294967296
  br i1 %cmp281, label %cond.end.lr.ph, label %cond.false, !prof !153

cond.end.lr.ph:                                   ; preds = %if.end279
  %and311 = and i64 %call.i684, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and311)
  %tobool312.not = icmp eq i64 %and311, 0
  br label %cond.end

cond.false:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.63, i32 noundef 3418) #20
  unreachable

cond.end:                                         ; preds = %if.then368, %cond.end.lr.ph
  %physical.2778 = phi i64 [ %physical.1.ph, %cond.end.lr.ph ], [ %physical.4, %if.then368 ]
  %162 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %key, align 8
  %164 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %logical, align 8
  %166 = call i64 @llvm.umax.i64(i64 %163, i64 %165)
  %167 = call i64 @llvm.usub.sat.i64(i64 %165, i64 %163)
  %extent_len.0.v = sub i64 %bytes.0, %167
  %conv293 = and i64 %extent_len.0.v, 4294967295
  %add294 = add i64 %conv293, %166
  %168 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %stripe_len, align 8
  %add296 = add i64 %169, %165
  call void @__sanitizer_cov_trace_cmp8(i64 %add294, i64 %add296)
  %cmp297 = icmp ugt i64 %add294, %add296
  %sub302 = sub i64 %add296, %166
  %extent_len.1.v = select i1 %cmp297, i64 %sub302, i64 %extent_len.0.v
  %extent_len.1 = trunc i64 %extent_len.1.v to i32
  %sub305 = sub i64 %166, %165
  %add306 = add i64 %sub305, %physical.2778
  %170 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool308.not = icmp eq i32 %171, 0
  br i1 %tobool308.not, label %cond.end.if.end310_crit_edge, label %if.then309

cond.end.if.end310_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end310

if.then309:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mapped_length.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bioc.i) #14
  %172 = ptrtoint ptr %bioc.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %bioc.i, align 4
  %conv.i686 = and i64 %extent_len.1.v, 4294967295
  %173 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %conv.i686, ptr %mapped_length.i, align 8
  %call.i687 = call i32 @btrfs_map_block(ptr noundef %1, i32 noundef 0, i64 noundef %166, ptr noundef nonnull %mapped_length.i, ptr noundef nonnull %bioc.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i687)
  %tobool.not.i688 = icmp eq i32 %call.i687, 0
  br i1 %tobool.not.i688, label %lor.lhs.false.i, label %if.then309.if.then.i_crit_edge

if.then309.if.then.i_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then309
  %174 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bioc.i, align 4
  %tobool1.not.i = icmp eq ptr %175, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %176 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %mapped_length.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %177, i64 %conv.i686)
  %cmp.i = icmp ult i64 %177, %conv.i686
  br i1 %cmp.i, label %lor.lhs.false2.i.if.then.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false2.i
  %stripes.i = getelementptr inbounds %struct.btrfs_io_context, ptr %175, i32 0, i32 14
  %178 = ptrtoint ptr %stripes.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %stripes.i, align 8
  %bdev.i = getelementptr inbounds %struct.btrfs_device, ptr %179, i32 0, i32 7
  %180 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bdev.i, align 8
  %tobool6.not.i = icmp eq ptr %181, null
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.if.then.i_crit_edge, label %if.end.i689

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then309.if.then.i_crit_edge
  %182 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bioc.i, align 4
  call void @btrfs_put_bioc(ptr noundef %183) #14
  br label %scrub_remap_extent.exit

if.end.i689:                                      ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #16
  %physical.i = getelementptr inbounds %struct.btrfs_io_context, ptr %175, i32 1, i32 2
  %184 = ptrtoint ptr %physical.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %physical.i, align 8
  %mirror_num.i = getelementptr inbounds %struct.btrfs_io_context, ptr %175, i32 0, i32 10
  %186 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mirror_num.i, align 8
  call void @btrfs_put_bioc(ptr noundef nonnull %175) #14
  br label %scrub_remap_extent.exit

scrub_remap_extent.exit:                          ; preds = %if.end.i689, %if.then.i
  %extent_physical.0 = phi i64 [ %add306, %if.then.i ], [ %185, %if.end.i689 ]
  %extent_dev.0 = phi ptr [ %scrub_dev, %if.then.i ], [ %179, %if.end.i689 ]
  %extent_mirror_num.0 = phi i32 [ %mirror_num.0, %if.then.i ], [ %187, %if.end.i689 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_length.i) #14
  br label %if.end310

if.end310:                                        ; preds = %scrub_remap_extent.exit, %cond.end.if.end310_crit_edge
  %extent_physical.1 = phi i64 [ %add306, %cond.end.if.end310_crit_edge ], [ %extent_physical.0, %scrub_remap_extent.exit ]
  %extent_dev.1 = phi ptr [ %scrub_dev, %cond.end.if.end310_crit_edge ], [ %extent_dev.0, %scrub_remap_extent.exit ]
  %extent_mirror_num.1 = phi i32 [ %mirror_num.0, %cond.end.if.end310_crit_edge ], [ %extent_mirror_num.0, %scrub_remap_extent.exit ]
  br i1 %tobool312.not, label %if.else7.i, label %if.then313

if.then313:                                       ; preds = %if.end310
  %conv314 = and i64 %extent_len.1.v, 4294967295
  %add315 = add i64 %166, -1
  %sub316 = add i64 %add315, %conv314
  %call317 = call i32 @btrfs_lookup_csums_range(ptr noundef %call93, i64 noundef %166, i64 noundef %sub316, ptr noundef %csum_list, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.then.i692, label %if.then313.out_crit_edge

if.then313.out_crit_edge:                         ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then.i692:                                     ; preds = %if.then313
  %188 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %logical, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %csum.i) #14
  %190 = call ptr @memset(ptr %csum.i, i32 255, i32 32)
  %191 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %map, align 8
  %and1.i = and i64 %192, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i692
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %stripe_len, align 8
  %conv.i693 = trunc i64 %194 to i32
  br label %if.end.i694

if.else.i:                                        ; preds = %if.then.i692
  call void @__sanitizer_cov_trace_pc() #16
  %195 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %fs_info1, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %196, i32 0, i32 167
  %197 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sectorsize.i, align 4
  br label %if.end.i694

if.end.i694:                                      ; preds = %if.else.i, %if.then3.i
  %blocksize.0.i = phi i32 [ %conv.i693, %if.then3.i ], [ %198, %if.else.i ]
  call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %199 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %stat.i, align 8
  %inc.i = add i64 %200, 1
  store i64 %inc.i, ptr %stat.i, align 8
  %201 = ptrtoint ptr %data_bytes_scrubbed.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %data_bytes_scrubbed.i, align 8
  %add.i = add i64 %202, %conv314
  store i64 %add.i, ptr %data_bytes_scrubbed.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %if.end48.i

if.else7.i:                                       ; preds = %if.end310
  %203 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %logical, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %csum.i) #14
  %205 = call ptr @memset(ptr %csum.i, i32 255, i32 32)
  br i1 %tobool264.not, label %if.else27.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else7.i
  %206 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %map, align 8
  %and12.i = and i64 %207, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i)
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else17.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %208 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %stripe_len, align 8
  %conv16.i = trunc i64 %209 to i32
  br label %if.end19.i

if.else17.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %fs_info1, align 8
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %211, i32 0, i32 166
  %212 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nodesize.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else17.i, %if.then14.i
  %blocksize.1.i = phi i32 [ %conv16.i, %if.then14.i ], [ %213, %if.else17.i ]
  call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %214 = ptrtoint ptr %tree_extents_scrubbed.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %tree_extents_scrubbed.i, align 8
  %inc22.i = add i64 %215, 1
  store i64 %inc22.i, ptr %tree_extents_scrubbed.i, align 8
  %conv23.i = and i64 %extent_len.1.v, 4294967295
  %216 = ptrtoint ptr %tree_bytes_scrubbed.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %tree_bytes_scrubbed.i, align 8
  %add25.i = add i64 %217, %conv23.i
  store i64 %add25.i, ptr %tree_bytes_scrubbed.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %if.end48.i

if.else27.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #16
  %218 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %fs_info1, align 8
  %sectorsize29.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %219, i32 0, i32 167
  %220 = ptrtoint ptr %sectorsize29.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %sectorsize29.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2561, i32 noundef 9, ptr noundef null) #14
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else27.i, %if.end19.i, %if.end.i694
  %.pn = phi i64 [ %189, %if.end.i694 ], [ %204, %if.end19.i ], [ %204, %if.else27.i ]
  %blocksize.2.i = phi i32 [ %blocksize.0.i, %if.end.i694 ], [ %blocksize.1.i, %if.end19.i ], [ %221, %if.else27.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extent_len.1)
  %tobool49.not126.i = icmp eq i32 %extent_len.1, 0
  br i1 %tobool49.not126.i, label %if.end48.i.scrub_extent.exit_crit_edge, label %while.body.lr.ph.i

if.end48.i.scrub_extent.exit_crit_edge:           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_extent.exit

while.body.lr.ph.i:                               ; preds = %if.end48.i
  %sub322.pn = add i64 %166, %physical.2778
  %add323724 = sub i64 %sub322.pn, %.pn
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %logical.addr.0130.i = phi i64 [ %166, %while.body.lr.ph.i ], [ %add73.i, %cleanup.i.while.body.i_crit_edge ]
  %physical_for_dev_replace.addr.0129.i = phi i64 [ %add323724, %while.body.lr.ph.i ], [ %add77.i, %cleanup.i.while.body.i_crit_edge ]
  %len.addr.0128.i = phi i32 [ %extent_len.1, %while.body.lr.ph.i ], [ %sub.i696, %cleanup.i.while.body.i_crit_edge ]
  %physical.addr.0127.i = phi i64 [ %extent_physical.1, %while.body.lr.ph.i ], [ %add75.i, %cleanup.i.while.body.i_crit_edge ]
  %222 = call i32 @llvm.umin.i32(i32 %len.addr.0128.i, i32 %blocksize.2.i) #14
  br i1 %tobool312.not, label %while.body.i.if.end61.i_crit_edge, label %if.then54.i

while.body.i.if.end61.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

if.then54.i:                                      ; preds = %while.body.i
  %call.i695 = call fastcc i32 @scrub_find_csum(ptr noundef %sctx, i64 noundef %logical.addr.0130.i, ptr noundef nonnull %csum.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i695)
  %cmp55.i = icmp eq i32 %call.i695, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.then54.i.if.end61.i_crit_edge

if.then54.i.if.end61.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16
  %223 = ptrtoint ptr %no_csum.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %no_csum.i, align 8
  %inc59.i = add i64 %224, 1
  store i64 %inc59.i, ptr %no_csum.i, align 8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then57.i, %if.then54.i.if.end61.i_crit_edge, %while.body.i.if.end61.i_crit_edge
  %225 = phi ptr [ %csum.i, %if.then54.i.if.end61.i_crit_edge ], [ null, %if.then57.i ], [ null, %while.body.i.if.end61.i_crit_edge ]
  %call68.i = call fastcc i32 @scrub_pages(ptr noundef %sctx, i64 noundef %logical.addr.0130.i, i32 noundef %222, i64 noundef %physical.addr.0127.i, ptr noundef %extent_dev.1, i64 noundef %call.i684, i64 noundef %call.i685, i32 noundef %extent_mirror_num.1, ptr noundef %225, i64 noundef %physical_for_dev_replace.addr.0129.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %cleanup.i, label %if.end61.i.scrub_extent.exit_crit_edge

if.end61.i.scrub_extent.exit_crit_edge:           ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_extent.exit

cleanup.i:                                        ; preds = %if.end61.i
  %sub.i696 = sub i32 %len.addr.0128.i, %222
  %conv72.i = zext i32 %222 to i64
  %add73.i = add i64 %logical.addr.0130.i, %conv72.i
  %add75.i = add i64 %physical.addr.0127.i, %conv72.i
  %add77.i = add i64 %physical_for_dev_replace.addr.0129.i, %conv72.i
  %tobool49.not.i = icmp eq i32 %sub.i696, 0
  br i1 %tobool49.not.i, label %cleanup.i.scrub_extent.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.scrub_extent.exit_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_extent.exit

scrub_extent.exit:                                ; preds = %cleanup.i.scrub_extent.exit_crit_edge, %if.end61.i.scrub_extent.exit_crit_edge, %if.end48.i.scrub_extent.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.end48.i.scrub_extent.exit_crit_edge ], [ 0, %cleanup.i.scrub_extent.exit_crit_edge ], [ %call68.i, %if.end61.i.scrub_extent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %csum.i) #14
  %226 = ptrtoint ptr %csum_list to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile ptr, ptr %csum_list, align 4
  %cmp.i.not4.i = icmp eq ptr %227, %csum_list
  br i1 %cmp.i.not4.i, label %scrub_extent.exit.scrub_free_csums.exit_crit_edge, label %scrub_extent.exit.while.body.i698_crit_edge

scrub_extent.exit.while.body.i698_crit_edge:      ; preds = %scrub_extent.exit
  br label %while.body.i698

scrub_extent.exit.scrub_free_csums.exit_crit_edge: ; preds = %scrub_extent.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_free_csums.exit

while.body.i698:                                  ; preds = %list_del.exit.i.while.body.i698_crit_edge, %scrub_extent.exit.while.body.i698_crit_edge
  %228 = phi ptr [ %238, %list_del.exit.i.while.body.i698_crit_edge ], [ %227, %scrub_extent.exit.while.body.i698_crit_edge ]
  %add.ptr.i697 = getelementptr i8, ptr %228, i32 -12
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %228) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i698.list_del.exit.i_crit_edge

while.body.i698.list_del.exit.i_crit_edge:        ; preds = %while.body.i698
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i698
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %prev.i.i.i, align 4
  %231 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %228, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %230, ptr %prev1.i.i.i.i, align 4
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile ptr %232, ptr %230, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i698.list_del.exit.i_crit_edge
  %235 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr inttoptr (i32 256 to ptr), ptr %228, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %228, i32 0, i32 1
  %236 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %add.ptr.i697) #14
  %237 = ptrtoint ptr %csum_list to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile ptr, ptr %csum_list, align 4
  %cmp.i.not.i = icmp eq ptr %238, %csum_list
  br i1 %cmp.i.not.i, label %list_del.exit.i.scrub_free_csums.exit_crit_edge, label %list_del.exit.i.while.body.i698_crit_edge

list_del.exit.i.while.body.i698_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i698

list_del.exit.i.scrub_free_csums.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_free_csums.exit

scrub_free_csums.exit:                            ; preds = %list_del.exit.i.scrub_free_csums.exit_crit_edge, %scrub_extent.exit.scrub_free_csums.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool325.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool325.not, label %if.end327, label %scrub_free_csums.exit.out_crit_edge

scrub_free_csums.exit.out_crit_edge:              ; preds = %scrub_free_csums.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end327:                                        ; preds = %scrub_free_csums.exit
  %239 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool329.not = icmp eq i32 %240, 0
  br i1 %tobool329.not, label %if.end327.if.end331_crit_edge, label %if.then330

if.end327.if.end331_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end331

if.then330:                                       ; preds = %if.end327
  %241 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %fs_info1, align 8
  %243 = getelementptr inbounds %struct.btrfs_fs_info, ptr %242, i32 0, i32 176
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %243, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %245)
  %cmp.i.not.i700 = icmp eq i64 %245, 0
  br i1 %cmp.i.not.i700, label %if.then330.if.end331_crit_edge, label %if.end.i703

if.then330.if.end331_crit_edge:                   ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end331

if.end.i703:                                      ; preds = %if.then330
  %246 = ptrtoint ptr %flush_all_writes111 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 1, ptr %flush_all_writes111, align 4
  call fastcc void @scrub_submit(ptr noundef %sctx) #14
  call void @mutex_lock_nested(ptr noundef %wr_lock112, i32 noundef 0) #14
  call fastcc void @scrub_wr_submit(ptr noundef %sctx) #14
  call void @mutex_unlock(ptr noundef %wr_lock112) #14
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3139) #14
  %call.i.i.i701 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %247 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp.i702 = icmp eq i32 %248, 0
  br i1 %cmp.i702, label %if.end.i703.if.end331_crit_edge, label %if.end7.i

if.end.i703.if.end331_crit_edge:                  ; preds = %if.end.i703
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end331

if.end7.i:                                        ; preds = %if.end.i703
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %249 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %call828.i = call i32 @prepare_to_wait_event(ptr noundef %list_wait131, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %call.i.i2529.i = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %250 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp1130.i = icmp eq i32 %251, 0
  br i1 %cmp1130.i, label %if.end7.i.for.end.i_crit_edge, label %if.end7.i.cleanup.i704_crit_edge

if.end7.i.cleanup.i704_crit_edge:                 ; preds = %if.end7.i
  br label %cleanup.i704

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

cleanup.i704:                                     ; preds = %cleanup.i704.cleanup.i704_crit_edge, %if.end7.i.cleanup.i704_crit_edge
  call void @schedule() #14
  %call8.i = call i32 @prepare_to_wait_event(ptr noundef %list_wait131, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %call.i.i25.i = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %252 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp11.i = icmp eq i32 %253, 0
  br i1 %cmp11.i, label %cleanup.i704.for.end.i_crit_edge, label %cleanup.i704.cleanup.i704_crit_edge

cleanup.i704.cleanup.i704_crit_edge:              ; preds = %cleanup.i704
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i704

cleanup.i704.for.end.i_crit_edge:                 ; preds = %cleanup.i704
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i704.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %list_wait131, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %if.end331

if.end331:                                        ; preds = %for.end.i, %if.end.i703.if.end331_crit_edge, %if.then330.if.end331_crit_edge, %if.end327.if.end331_crit_edge
  %conv332 = and i64 %extent_len.1.v, 4294967295
  %add333 = add i64 %conv332, %166
  %254 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %key, align 8
  %add335 = add i64 %255, %bytes.0
  call void @__sanitizer_cov_trace_cmp8(i64 %add333, i64 %add335)
  %cmp336 = icmp ult i64 %add333, %add335
  br i1 %cmp336, label %if.then338, label %if.end331.next_crit_edge

if.end331.next_crit_edge:                         ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.then338:                                       ; preds = %if.end331
  %256 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %map, align 8
  %and340 = and i64 %257, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and340)
  %tobool341.not = icmp eq i64 %and340, 0
  br i1 %tobool341.not, label %if.else359, label %if.then338.loop_crit_edge

if.then338.loop_crit_edge:                        ; preds = %if.then338
  br label %loop

loop:                                             ; preds = %if.then351.loop_crit_edge, %if.then338.loop_crit_edge
  %physical.3 = phi i64 [ %add344, %if.then351.loop_crit_edge ], [ %physical.2778, %if.then338.loop_crit_edge ]
  %258 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %stripe_len, align 8
  %add344 = add i64 %259, %physical.3
  %call345 = call fastcc i32 @get_raid56_logic_offset(i64 noundef %add344, i32 noundef %stripe_index, ptr noundef %map, ptr noundef nonnull %logical, ptr noundef nonnull %stripe_logical)
  %260 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %logical, align 8
  %add346 = add i64 %261, %4
  store i64 %add346, ptr %logical, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool347.not = icmp eq i32 %call345, 0
  br i1 %tobool347.not, label %loop.if.end363_crit_edge, label %land.lhs.true348

loop.if.end363_crit_edge:                         ; preds = %loop
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end363

land.lhs.true348:                                 ; preds = %loop
  call void @__sanitizer_cov_trace_cmp8(i64 %add344, i64 %add63)
  %cmp349 = icmp ult i64 %add344, %add63
  br i1 %cmp349, label %if.then351, label %land.lhs.true348.if.end363_crit_edge

land.lhs.true348.if.end363_crit_edge:             ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end363

if.then351:                                       ; preds = %land.lhs.true348
  %262 = ptrtoint ptr %stripe_logical to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %stripe_logical, align 8
  %add352 = add i64 %263, %4
  store i64 %add352, ptr %stripe_logical, align 8
  %add353 = add i64 %add352, %increment.0
  %call354 = call fastcc i32 @scrub_raid56_parity(ptr noundef %sctx, ptr noundef %map, ptr noundef %scrub_dev, i64 noundef %add352, i64 noundef %add353)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.then351.loop_crit_edge, label %if.then351.out_crit_edge

if.then351.out_crit_edge:                         ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then351.loop_crit_edge:                        ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #16
  br label %loop

if.else359:                                       ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #16
  %264 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %stripe_len, align 8
  %add361 = add i64 %265, %physical.2778
  %266 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %logical, align 8
  %add362 = add i64 %267, %increment.0
  store i64 %add362, ptr %logical, align 8
  br label %if.end363

if.end363:                                        ; preds = %if.else359, %land.lhs.true348.if.end363_crit_edge, %loop.if.end363_crit_edge
  %ret.3 = phi i32 [ 0, %if.else359 ], [ 0, %loop.if.end363_crit_edge ], [ 1, %land.lhs.true348.if.end363_crit_edge ]
  %physical.4 = phi i64 [ %add361, %if.else359 ], [ %add344, %land.lhs.true348.if.end363_crit_edge ], [ %add344, %loop.if.end363_crit_edge ]
  %268 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %logical, align 8
  %270 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %key, align 8
  %add365 = add i64 %271, %bytes.0
  %cmp366 = icmp ult i64 %269, %add365
  br i1 %cmp366, label %if.then368, label %if.end371

if.then368:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #16
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 3496, i32 noundef 0) #14
  %call.i705 = call i32 @__cond_resched() #14
  br label %cond.end

if.end371:                                        ; preds = %if.end363
  call void @__sanitizer_cov_trace_cmp8(i64 %physical.4, i64 %add63)
  %cmp372.not = icmp ult i64 %physical.4, %add63
  br i1 %cmp372.not, label %if.end371.next_crit_edge, label %if.end371.while.end_crit_edge

if.end371.while.end_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end371.next_crit_edge:                         ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

next:                                             ; preds = %if.end371.next_crit_edge, %if.end331.next_crit_edge, %if.then276, %if.end233.next_crit_edge, %if.end213.next_crit_edge
  %ret.4 = phi i32 [ %ret.2, %if.end233.next_crit_edge ], [ %ret.2, %if.then276 ], [ %ret.3, %if.end371.next_crit_edge ], [ %ret.2, %if.end213.next_crit_edge ], [ 0, %if.end331.next_crit_edge ]
  %physical.5 = phi i64 [ %physical.1.ph, %if.end233.next_crit_edge ], [ %physical.1.ph, %if.then276 ], [ %physical.4, %if.end371.next_crit_edge ], [ %physical.1.ph, %if.end213.next_crit_edge ], [ %physical.2778, %if.end331.next_crit_edge ]
  %272 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %slots, align 4
  %inc379 = add i32 %273, 1
  store i32 %inc379, ptr %slots, align 4
  br label %while.cond196.outer

while.end:                                        ; preds = %if.end371.while.end_crit_edge, %if.then245, %if.end208.while.end_crit_edge
  %ret.5.ph731 = phi i32 [ %call.i682, %if.end208.while.end_crit_edge ], [ %ret.2, %if.then245 ], [ %ret.3, %if.end371.while.end_crit_edge ]
  %physical.6.ph = phi i64 [ %physical.1.ph, %if.end208.while.end_crit_edge ], [ %physical.1.ph, %if.then245 ], [ %physical.4, %if.end371.while.end_crit_edge ]
  %stop_loop.3.ph = phi i32 [ 1, %if.end208.while.end_crit_edge ], [ %spec.select, %if.then245 ], [ 1, %if.end371.while.end_crit_edge ]
  call void @btrfs_release_path(ptr noundef nonnull %call53) #14
  br label %skip

skip:                                             ; preds = %while.end, %if.then157.skip_crit_edge
  %ret.6 = phi i32 [ 0, %if.then157.skip_crit_edge ], [ %ret.5.ph731, %while.end ]
  %physical.7 = phi i64 [ %physical.0780, %if.then157.skip_crit_edge ], [ %physical.6.ph, %while.end ]
  %stop_loop.4 = phi i32 [ 0, %if.then157.skip_crit_edge ], [ %stop_loop.3.ph, %while.end ]
  %274 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %logical, align 8
  %add383 = add i64 %275, %increment.0
  store i64 %add383, ptr %logical, align 8
  %276 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %stripe_len, align 8
  call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop_loop.4)
  %tobool387.not = icmp eq i32 %stop_loop.4, 0
  br i1 %tobool387.not, label %if.else394, label %if.then388

if.then388:                                       ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #16
  %278 = ptrtoint ptr %physical2 to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %physical2, align 8
  %add392 = add i64 %279, %dev_extent_len
  %280 = ptrtoint ptr %last_physical396 to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %add392, ptr %last_physical396, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %out

if.else394:                                       ; preds = %skip
  %add385 = add i64 %277, %physical.7
  %281 = ptrtoint ptr %last_physical396 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %add385, ptr %last_physical396, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  %cmp100 = icmp ult i64 %add385, %add63
  br i1 %cmp100, label %if.else394.while.body_crit_edge, label %if.else394.out_crit_edge

if.else394.out_crit_edge:                         ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else394.while.body_crit_edge:                  ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

out:                                              ; preds = %if.else394.out_crit_edge, %if.then388, %if.then351.out_crit_edge, %scrub_free_csums.exit.out_crit_edge, %if.then313.out_crit_edge, %if.end251.out_crit_edge, %if.end208.out_crit_edge, %if.then188.out_crit_edge, %if.then180.out_crit_edge, %if.end165.out_crit_edge, %if.then157.out_crit_edge, %lor.lhs.false.out_crit_edge, %while.body.out_crit_edge, %if.end99.out_crit_edge
  %ret.7 = phi i32 [ %ret.6, %if.then388 ], [ 0, %if.end99.out_crit_edge ], [ %call354, %if.then351.out_crit_edge ], [ %call317, %if.then313.out_crit_edge ], [ %retval.2.i, %scrub_free_csums.exit.out_crit_edge ], [ 0, %if.end251.out_crit_edge ], [ %call160, %if.then157.out_crit_edge ], [ %call173, %if.end165.out_crit_edge ], [ %call181, %if.then180.out_crit_edge ], [ %call189, %if.then188.out_crit_edge ], [ %ret.6, %if.else394.out_crit_edge ], [ -125, %lor.lhs.false.out_crit_edge ], [ -125, %while.body.out_crit_edge ], [ %call.i682, %if.end208.out_crit_edge ]
  call fastcc void @scrub_submit(ptr noundef %sctx)
  %wr_lock403 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %wr_lock403, i32 noundef 0) #14
  call fastcc void @scrub_wr_submit(ptr noundef %sctx)
  call void @mutex_unlock(ptr noundef %wr_lock403) #14
  call void @blk_finish_plug(ptr noundef nonnull %plug) #14
  call void @btrfs_free_path(ptr noundef nonnull %call53) #14
  %282 = ptrtoint ptr %is_dev_replace to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %is_dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool406.not = icmp ne i32 %283, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.7)
  %cmp408 = icmp sgt i32 %ret.7, -1
  %or.cond = select i1 %tobool406.not, i1 %cmp408, i1 false
  br i1 %or.cond, label %if.then410, label %out.if.end419_crit_edge

out.if.end419_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end419

if.then410:                                       ; preds = %out
  %284 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %offset, align 8
  %add411 = add i64 %285, %4
  %286 = ptrtoint ptr %physical2 to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %physical2, align 8
  %288 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %fs_info1, align 8
  %290 = getelementptr inbounds %struct.btrfs_fs_info, ptr %289, i32 0, i32 176
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %290, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %292)
  %cmp.i.not.i707 = icmp eq i64 %292, 0
  br i1 %cmp.i.not.i707, label %if.then410.sync_write_pointer_for_zoned.exit.thread_crit_edge, label %do.body2.i

if.then410.sync_write_pointer_for_zoned.exit.thread_crit_edge: ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #16
  br label %sync_write_pointer_for_zoned.exit.thread

do.body2.i:                                       ; preds = %if.then410
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 3151) #14
  %call.i.i.i709 = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %293 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %cmp.i710 = icmp eq i32 %294, 0
  br i1 %cmp.i710, label %do.body2.i.do.end17.i_crit_edge, label %if.end8.i

do.body2.i.do.end17.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17.i

if.end8.i:                                        ; preds = %do.body2.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i706) #14
  %295 = call ptr @memset(ptr %__wq_entry.i706, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i706, i32 noundef 0) #14
  %list_wait.i711 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 7
  %call945.i = call i32 @prepare_to_wait_event(ptr noundef %list_wait.i711, ptr noundef nonnull %__wq_entry.i706, i32 noundef 2) #14
  %call.i.i4246.i = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %296 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile i32, ptr %bios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp1247.i = icmp eq i32 %297, 0
  br i1 %cmp1247.i, label %if.end8.i.for.end.i713_crit_edge, label %if.end8.i.cleanup.i712_crit_edge

if.end8.i.cleanup.i712_crit_edge:                 ; preds = %if.end8.i
  br label %cleanup.i712

if.end8.i.for.end.i713_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i713

cleanup.i712:                                     ; preds = %cleanup.i712.cleanup.i712_crit_edge, %if.end8.i.cleanup.i712_crit_edge
  call void @schedule() #14
  %call9.i = call i32 @prepare_to_wait_event(ptr noundef %list_wait.i711, ptr noundef nonnull %__wq_entry.i706, i32 noundef 2) #14
  %call.i.i42.i = call zeroext i1 @__kasan_check_read(ptr noundef %bios_in_flight, i32 noundef 4) #14
  %298 = ptrtoint ptr %bios_in_flight to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load volatile i32, ptr %bios_in_flight, align 4
  %cmp12.i = icmp eq i32 %299, 0
  br i1 %cmp12.i, label %cleanup.i712.for.end.i713_crit_edge, label %cleanup.i712.cleanup.i712_crit_edge

cleanup.i712.cleanup.i712_crit_edge:              ; preds = %cleanup.i712
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i712

cleanup.i712.for.end.i713_crit_edge:              ; preds = %cleanup.i712
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i713

for.end.i713:                                     ; preds = %cleanup.i712.for.end.i713_crit_edge, %if.end8.i.for.end.i713_crit_edge
  call void @finish_wait(ptr noundef %list_wait.i711, ptr noundef nonnull %__wq_entry.i706) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i706) #14
  br label %do.end17.i

do.end17.i:                                       ; preds = %for.end.i713, %do.body2.i.do.end17.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %wr_lock403, i32 noundef 0) #14
  %write_pointer.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 15
  %300 = ptrtoint ptr %write_pointer.i to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %write_pointer.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %301, i64 %add63)
  %cmp18.i = icmp ult i64 %301, %add63
  br i1 %cmp18.i, label %if.then19.i, label %do.end17.i.if.end24.i_crit_edge

do.end17.i.if.end24.i_crit_edge:                  ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

if.then19.i:                                      ; preds = %do.end17.i
  %wr_tgtdev.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 18
  %302 = ptrtoint ptr %wr_tgtdev.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %wr_tgtdev.i, align 8
  %call21.i = call i32 @btrfs_sync_zone_write_pointer(ptr noundef %303, i64 noundef %add411, i64 noundef %287, i64 noundef %301) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i715 = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i715, label %if.then19.i.if.end24.i_crit_edge, label %if.then22.i

if.then19.i.if.end24.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %289, ptr noundef nonnull @.str.67) #17
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.then19.i.if.end24.i_crit_edge, %do.end17.i.if.end24.i_crit_edge
  %ret.0.i = phi i32 [ %call21.i, %if.then22.i ], [ 0, %if.then19.i.if.end24.i_crit_edge ], [ 0, %do.end17.i.if.end24.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %wr_lock403) #14
  %wr_tgtdev26.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 18
  %304 = ptrtoint ptr %wr_tgtdev26.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %wr_tgtdev26.i, align 8
  %zone_info1.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %305, i32 0, i32 8
  %306 = ptrtoint ptr %zone_info1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %zone_info1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %307, null
  br i1 %tobool.not.i.i.i, label %if.end24.i.sync_write_pointer_for_zoned.exit_crit_edge, label %if.else.i.i.i

if.end24.i.sync_write_pointer_for_zoned.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sync_write_pointer_for_zoned.exit

if.else.i.i.i:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %zone_size_shift.i.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %zone_size_shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %zone_size_shift.i.i.i, align 8
  %sh_prom.i.i.i = zext i8 %309 to i64
  %shr.i.i.i = lshr i64 %287, %sh_prom.i.i.i
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %empty_zones5.i.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %307, i32 0, i32 6
  %310 = ptrtoint ptr %empty_zones5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %empty_zones5.i.i.i, align 4
  call void @_clear_bit(i32 noundef %conv2.i.i.i, ptr noundef %311) #14
  br label %sync_write_pointer_for_zoned.exit

sync_write_pointer_for_zoned.exit:                ; preds = %if.else.i.i.i, %if.end24.i.sync_write_pointer_for_zoned.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool416.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool416.not, label %sync_write_pointer_for_zoned.exit.sync_write_pointer_for_zoned.exit.thread_crit_edge, label %sync_write_pointer_for_zoned.exit.if.end419_crit_edge

sync_write_pointer_for_zoned.exit.if.end419_crit_edge: ; preds = %sync_write_pointer_for_zoned.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end419

sync_write_pointer_for_zoned.exit.sync_write_pointer_for_zoned.exit.thread_crit_edge: ; preds = %sync_write_pointer_for_zoned.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sync_write_pointer_for_zoned.exit.thread

sync_write_pointer_for_zoned.exit.thread:         ; preds = %sync_write_pointer_for_zoned.exit.sync_write_pointer_for_zoned.exit.thread_crit_edge, %if.then410.sync_write_pointer_for_zoned.exit.thread_crit_edge
  br label %if.end419

if.end419:                                        ; preds = %sync_write_pointer_for_zoned.exit.thread, %sync_write_pointer_for_zoned.exit.if.end419_crit_edge, %out.if.end419_crit_edge
  %ret.9 = phi i32 [ %ret.7, %out.if.end419_crit_edge ], [ %ret.7, %sync_write_pointer_for_zoned.exit.thread ], [ %ret.0.i, %sync_write_pointer_for_zoned.exit.if.end419_crit_edge ]
  %312 = call i32 @llvm.smin.i32(i32 %ret.9, i32 0)
  br label %cleanup425

cleanup425:                                       ; preds = %if.end419, %if.end52.cleanup425_crit_edge
  %retval.0 = phi i32 [ %312, %if.end419 ], [ -12, %if.end52.cleanup425_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stripe_logical) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %logic_end) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %logical) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_raid56_logic_offset(i64 noundef %physical, i32 noundef %num, ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %offset, ptr noundef writeonly %stripe_start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_stripes.i = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_stripes.i, align 8
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %map, align 8
  %and.i.i = and i64 %3, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 7
  %6 = and i32 %5, 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %6, i32 1
  %sub.i = sub i32 %1, %retval.0.i.i
  %physical1 = getelementptr %struct.map_lookup, ptr %map, i32 0, i32 7, i32 %num, i32 1
  %7 = ptrtoint ptr %physical1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %physical1, align 8
  %sub = sub i64 %physical, %8
  %conv = sext i32 %sub.i to i64
  %mul = mul i64 %sub, %conv
  %tobool.not = icmp eq ptr %stripe_start, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %stripe_start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %mul, ptr %stripe_start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mul, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp58 = icmp sgt i32 %sub.i, 0
  br i1 %cmp58, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %stripe_len = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %j.060 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end14.for.body_crit_edge ]
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %if.end14.for.body_crit_edge ]
  %conv3 = zext i32 %i.059 to i64
  %11 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %stripe_len, align 8
  %mul4 = mul i64 %12, %conv3
  %add = add i64 %mul4, %mul
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %offset, align 8
  %14 = load i64, ptr %stripe_len, align 8
  %call6 = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %14) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call6)
  %cmp164.i.i = icmp ult i64 %call6, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !153

if.then168.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i = trunc i64 %call6 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %sub.i
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i, i64 %call6) #24, !srcloc !177
  %asmresult1.i.i.i = extractvalue { i64, i64 } %15, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %16 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_stripes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i.i)
  %cmp164.i = icmp ult i64 %dividend.addr.0.i.i, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !153

if.then168.i:                                     ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i = trunc i64 %dividend.addr.0.i.i to i32
  %rem170.i = urem i32 %conv169.i, %17
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #16
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %dividend.addr.0.i.i) #24, !srcloc !177
  %asmresult.i261.i = extractvalue { i64, i64 } %18, 0
  %shr.i.i56 = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i56 to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %add9 = add i32 %__rem.0.i, %i.059
  %rem = urem i32 %add9, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %num)
  %cmp11 = icmp eq i32 %rem, %num
  br i1 %cmp11, label %div_u64_rem.exit.cleanup_crit_edge, label %if.end14

div_u64_rem.exit.cleanup_crit_edge:               ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %num)
  %cmp15 = icmp ult i32 %rem, %num
  %inc = zext i1 %cmp15 to i32
  %spec.select = add i32 %j.060, %inc
  %inc19 = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc19, %sub.i
  br i1 %exitcond.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %if.end14.for.end_crit_edge ]
  %conv20 = sext i32 %j.0.lcssa to i64
  %stripe_len21 = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 3
  %19 = ptrtoint ptr %stripe_len21 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %stripe_len21, align 8
  %mul22 = mul i64 %20, %conv20
  %add23 = add i64 %mul22, %mul
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add23, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %div_u64_rem.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %div_u64_rem.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_extent_root(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_csum_root(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_raid56_parity(ptr noundef %sctx, ptr nocapture noundef readonly %map, ptr noundef %sdev, i64 noundef %logic_start, i64 noundef %logic_end) unnamed_addr #3 align 64 {
entry:
  %csum.i = alloca [32 x i8], align 1
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %bioc = alloca ptr, align 4
  %key = alloca %struct.btrfs_key, align 8
  %mapped_length = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %call = tail call ptr @btrfs_extent_root(ptr noundef %1, i64 noundef %logic_start) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bioc) #14
  %2 = ptrtoint ptr %bioc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bioc, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %5 = call ptr @memset(ptr %key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mapped_length) #14
  %6 = ptrtoint ptr %mapped_length to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %mapped_length, align 8, !annotation !171
  %call2 = tail call ptr @btrfs_alloc_path() #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %malloc_errors = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 10
  %7 = ptrtoint ptr %malloc_errors to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %malloc_errors, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %malloc_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %cleanup265

if.end:                                           ; preds = %entry
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call2, i32 0, i32 5
  %9 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set6 = or i8 %bf.load, 48
  store i8 %bf.set6, ptr %search_commit_root, align 2
  %stripe_len = getelementptr inbounds %struct.map_lookup, ptr %map, i32 0, i32 3
  %10 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stripe_len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp = icmp ult i64 %11, 4294967296
  br i1 %cmp, label %cond.end, label %cond.false, !prof !153

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.64, i32 noundef 2925) #20
  unreachable

cond.end:                                         ; preds = %if.end
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %12 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %13 to i64
  %shr = lshr i64 %11, %sh_prom
  %conv = trunc i64 %shr to i32
  %sub.i = add i32 %conv, 31
  %div.i = sdiv i32 %sub.i, 32
  %mul.i = shl nsw i32 %div.i, 2
  %mul = shl nsw i32 %div.i, 3
  %add = add nsw i32 %mul, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3392) #25
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end19

if.then13:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock14 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %stat_lock14) #14
  %malloc_errors16 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 10
  %14 = ptrtoint ptr %malloc_errors16 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %malloc_errors16, align 8
  %inc17 = add i64 %15, 1
  store i64 %inc17, ptr %malloc_errors16, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock14) #14
  tail call void @btrfs_free_path(ptr noundef nonnull %call2) #14
  br label %cleanup265

if.end19:                                         ; preds = %cond.end
  %16 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stripe_len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %17)
  %cmp21 = icmp ult i64 %17, 4294967296
  br i1 %cmp21, label %cond.end31, label %cond.false30, !prof !153

cond.false30:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.64, i32 noundef 2938) #20
  unreachable

cond.end31:                                       ; preds = %if.end19
  %conv33 = trunc i64 %17 to i32
  %stripe_len34 = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %stripe_len34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv33, ptr %stripe_len34, align 4
  %nsectors35 = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %nsectors35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %nsectors35, align 8
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sctx, ptr %call9.i.i, align 128
  %scrub_dev = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %scrub_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sdev, ptr %scrub_dev, align 4
  %logic_start37 = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %logic_start37 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %logic_start, ptr %logic_start37, align 8
  %logic_end38 = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %logic_end38 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %logic_end, ptr %logic_end38, align 16
  %refs = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  %24 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %refs, align 32
  %spages = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %spages to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %spages, ptr %spages, align 4
  %prev.i = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spages, ptr %prev.i, align 8
  %bitmap = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 11
  %dbitmap = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %dbitmap to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bitmap, ptr %dbitmap, align 4
  %add.ptr = getelementptr i8, ptr %bitmap, i32 %mul.i
  %ebitmap = getelementptr inbounds %struct.scrub_parity, ptr %call9.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %ebitmap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %ebitmap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %logic_start, i64 %logic_end)
  %cmp41 = icmp ult i64 %logic_start, %logic_end
  br i1 %cmp41, label %while.body, label %cond.end31.if.end258_crit_edge

cond.end31.if.end258_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end258

while.body:                                       ; preds = %cond.end31
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %29 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %incompat_flags.i.i, align 1
  %33 = and i64 %32, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool.i.not = icmp eq i64 %33, 0
  %. = select i1 %tobool.i.not, i8 -88, i8 -87
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %., ptr %3, align 8
  %35 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %logic_start, ptr %key, align 8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 -1, ptr %4, align 1
  %call47 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %while.body.if.then243_crit_edge, label %if.end51

while.body.if.then243_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then243

if.end51:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp52.not = icmp eq i32 %call47, 0
  br i1 %cmp52.not, label %if.end51.if.end69_crit_edge, label %if.then54

if.end51.if.end69_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then54:                                        ; preds = %if.end51
  %call55 = call i32 @btrfs_previous_extent_item(ptr noundef %call, ptr noundef nonnull %call2, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then54.if.then243_crit_edge, label %if.end59

if.then54.if.then243_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then243

if.end59:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp60.not = icmp eq i32 %call55, 0
  br i1 %cmp60.not, label %if.end59.if.end69_crit_edge, label %if.then62

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then62:                                        ; preds = %if.end59
  call void @btrfs_release_path(ptr noundef nonnull %call2) #14
  %call63 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then62.if.then243_crit_edge, label %if.then62.if.end69_crit_edge

if.then62.if.end69_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then62.if.then243_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then243

if.end69:                                         ; preds = %if.then62.if.end69_crit_edge, %if.end59.if.end69_crit_edge, %if.end51.if.end69_crit_edge
  %ret.1 = phi i32 [ %call63, %if.then62.if.end69_crit_edge ], [ 0, %if.end59.if.end69_crit_edge ], [ 0, %if.end51.if.end69_crit_edge ]
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call2, i32 0, i32 1
  %37 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %stat_lock143 = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 21
  %uncorrectable_errors = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 11
  %csum_list = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 8
  br label %while.cond70.outer

while.cond70.outer:                               ; preds = %next, %if.end69
  %logic_start.addr.1.ph = phi i64 [ %logic_start.addr.4, %next ], [ %logic_start, %if.end69 ]
  %ret.2.ph = phi i32 [ %ret.4, %next ], [ %ret.1, %if.end69 ]
  br label %while.cond70

while.cond70:                                     ; preds = %if.then76.while.cond70_crit_edge, %while.cond70.outer
  %ret.2 = phi i32 [ 0, %if.then76.while.cond70_crit_edge ], [ %ret.2.ph, %while.cond70.outer ]
  %39 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call2, align 4
  %41 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %40, i32 0, i32 12
  %43 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %44) #14
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %40, align 8
  %conv.i = trunc i64 %46 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %47 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %nritems.i, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %49)
  %cmp74.not = icmp ult i32 %42, %49
  br i1 %cmp74.not, label %if.end86, label %if.then76

if.then76:                                        ; preds = %while.cond70
  %call.i427 = call i32 @btrfs_next_old_leaf(ptr noundef %call, ptr noundef nonnull %call2, i64 noundef 0) #14
  %cmp78 = icmp eq i32 %call.i427, 0
  br i1 %cmp78, label %if.then76.while.cond70_crit_edge, label %if.end81

if.then76.while.cond70_crit_edge:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond70

if.end81:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i427)
  %cmp82 = icmp slt i32 %call.i427, 0
  br i1 %cmp82, label %if.end81.if.then243_crit_edge, label %while.end234

if.end81.if.then243_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then243

if.end86:                                         ; preds = %while.cond70
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %mul.i.i.i.i = mul i32 %42, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %50 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %40, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %51 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %38, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52) #14
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %4, align 1
  %55 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %37, align 8
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %3, align 8
  %58 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %disk_key.i, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #14
  %61 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  %62 = and i8 %56, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %62)
  %switch = icmp eq i8 %62, -88
  br i1 %switch, label %if.end96, label %if.end86.next_crit_edge

if.end86.next_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.end96:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %56)
  %cmp99 = icmp eq i8 %56, -87
  br i1 %cmp99, label %if.then101, label %if.end96.if.end105_crit_edge

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nodesize, align 8
  %conv102 = zext i32 %64 to i64
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.end96.if.end105_crit_edge
  %bytes.0 = phi i64 [ %conv102, %if.then101 ], [ %53, %if.end96.if.end105_crit_edge ]
  %add107 = add i64 %bytes.0, %60
  call void @__sanitizer_cov_trace_cmp8(i64 %add107, i64 %logic_start.addr.1.ph)
  %cmp108.not = icmp ugt i64 %add107, %logic_start.addr.1.ph
  br i1 %cmp108.not, label %if.end111, label %if.end105.next_crit_edge

if.end105.next_crit_edge:                         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %logic_end)
  %cmp113.not = icmp ult i64 %60, %logic_end
  br i1 %cmp113.not, label %while.cond117.preheader, label %if.end111.while.end234.thread_crit_edge

if.end111.while.end234.thread_crit_edge:          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end234.thread

while.cond117.preheader:                          ; preds = %if.end111
  %65 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %stripe_len, align 8
  br label %while.cond117

while.cond117:                                    ; preds = %while.cond117.while.cond117_crit_edge, %while.cond117.preheader
  %logic_start.addr.2 = phi i64 [ %add120, %while.cond117.while.cond117_crit_edge ], [ %logic_start.addr.1.ph, %while.cond117.preheader ]
  %add120 = add i64 %66, %logic_start.addr.2
  %cmp121.not = icmp ult i64 %60, %add120
  br i1 %cmp121.not, label %while.end, label %while.cond117.while.cond117_crit_edge

while.cond117.while.cond117_crit_edge:            ; preds = %while.cond117
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond117

while.end:                                        ; preds = %while.cond117
  %67 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %40, ptr noundef %67, i32 noundef 17) #14
  %add127 = add i32 %call.i.i, 101
  %68 = inttoptr i32 %add127 to ptr
  %call.i428 = call i64 @btrfs_get_64(ptr noundef %40, ptr noundef %68, i32 noundef 16) #14
  %call.i429 = call i64 @btrfs_get_64(ptr noundef %40, ptr noundef %68, i32 noundef 8) #14
  %and = and i64 %call.i428, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool130.not = icmp eq i64 %and, 0
  br i1 %tobool130.not, label %while.end.if.end147_crit_edge, label %land.lhs.true131

while.end.if.end147_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

land.lhs.true131:                                 ; preds = %while.end
  %69 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %logic_start.addr.2)
  %cmp133 = icmp ult i64 %70, %logic_start.addr.2
  br i1 %cmp133, label %land.lhs.true131.if.then141_crit_edge, label %lor.lhs.false

land.lhs.true131.if.then141_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then141

lor.lhs.false:                                    ; preds = %land.lhs.true131
  %add136 = add i64 %70, %bytes.0
  %71 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %stripe_len, align 8
  %add138 = add i64 %72, %logic_start.addr.2
  call void @__sanitizer_cov_trace_cmp8(i64 %add136, i64 %add138)
  %cmp139 = icmp ugt i64 %add136, %add138
  br i1 %cmp139, label %lor.lhs.false.if.then141_crit_edge, label %lor.lhs.false.if.end147_crit_edge

lor.lhs.false.if.end147_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

lor.lhs.false.if.then141_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then141

if.then141:                                       ; preds = %lor.lhs.false.if.then141_crit_edge, %land.lhs.true131.if.then141_crit_edge
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.62, i64 noundef %70, i64 noundef %logic_start.addr.2) #17
  call void @_raw_spin_lock(ptr noundef %stat_lock143) #14
  %73 = ptrtoint ptr %uncorrectable_errors to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %uncorrectable_errors, align 8
  %inc145 = add i64 %74, 1
  store i64 %inc145, ptr %uncorrectable_errors, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock143) #14
  br label %next

if.end147:                                        ; preds = %lor.lhs.false.if.end147_crit_edge, %while.end.if.end147_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes.0)
  %cmp149 = icmp ult i64 %bytes.0, 4294967296
  br i1 %cmp149, label %cond.end159.lr.ph, label %cond.false158, !prof !153

cond.end159.lr.ph:                                ; preds = %if.end147
  %and.i430 = and i64 %call.i428, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i430)
  %tobool2.not.i = icmp eq i64 %and.i430, 0
  br label %cond.end159

cond.false158:                                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.63, i32 noundef 3033) #20
  unreachable

cond.end159:                                      ; preds = %if.then227, %cond.end159.lr.ph
  %logic_start.addr.3514 = phi i64 [ %logic_start.addr.2, %cond.end159.lr.ph ], [ %add218, %if.then227 ]
  %75 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %key, align 8
  %77 = call i64 @llvm.umax.i64(i64 %76, i64 %logic_start.addr.3514)
  %78 = call i64 @llvm.usub.sat.i64(i64 %logic_start.addr.3514, i64 %76)
  %extent_len.0.v = sub i64 %bytes.0, %78
  %conv168 = and i64 %extent_len.0.v, 4294967295
  %add169 = add i64 %conv168, %77
  %79 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %stripe_len, align 8
  %add171 = add i64 %80, %logic_start.addr.3514
  call void @__sanitizer_cov_trace_cmp8(i64 %add169, i64 %add171)
  %cmp172 = icmp ugt i64 %add169, %add171
  %sub177 = sub i64 %add171, %77
  %extent_len.1.v = select i1 %cmp172, i64 %sub177, i64 %extent_len.0.v
  %extent_len.1 = trunc i64 %extent_len.1.v to i32
  %81 = ptrtoint ptr %dbitmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dbitmap, align 4
  call fastcc void @__scrub_mark_bitmap(ptr noundef nonnull %call9.i.i, ptr noundef %82, i64 noundef %77, i32 noundef %extent_len.1) #14
  %conv180 = and i64 %extent_len.1.v, 4294967295
  %83 = ptrtoint ptr %mapped_length to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv180, ptr %mapped_length, align 8
  %84 = ptrtoint ptr %bioc to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %bioc, align 4
  %call181 = call i32 @btrfs_map_block(ptr noundef %1, i32 noundef 0, i64 noundef %77, ptr noundef nonnull %mapped_length, ptr noundef nonnull %bioc, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then183, label %cond.end159.if.then193_crit_edge

cond.end159.if.then193_crit_edge:                 ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then193

if.then183:                                       ; preds = %cond.end159
  %85 = ptrtoint ptr %bioc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bioc, align 4
  %tobool184.not = icmp eq ptr %86, null
  br i1 %tobool184.not, label %if.then183.if.then193_crit_edge, label %lor.lhs.false185

if.then183.if.then193_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then193

lor.lhs.false185:                                 ; preds = %if.then183
  %87 = ptrtoint ptr %mapped_length to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %mapped_length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %conv180)
  %cmp187 = icmp ult i64 %88, %conv180
  br i1 %cmp187, label %lor.lhs.false185.if.then193_crit_edge, label %if.end194

lor.lhs.false185.if.then193_crit_edge:            ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then193

if.then193:                                       ; preds = %lor.lhs.false185.if.then193_crit_edge, %if.then183.if.then193_crit_edge, %cond.end159.if.then193_crit_edge
  %ret.3.ph = phi i32 [ %call181, %cond.end159.if.then193_crit_edge ], [ -5, %lor.lhs.false185.if.then193_crit_edge ], [ -5, %if.then183.if.then193_crit_edge ]
  %89 = ptrtoint ptr %bioc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bioc, align 4
  call void @btrfs_put_bioc(ptr noundef %90) #14
  br label %out

if.end194:                                        ; preds = %lor.lhs.false185
  %91 = ptrtoint ptr %bioc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bioc, align 4
  %stripes = getelementptr inbounds %struct.btrfs_io_context, ptr %92, i32 0, i32 14
  %physical = getelementptr inbounds %struct.btrfs_io_context, ptr %92, i32 1, i32 2
  %93 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %physical, align 8
  %mirror_num = getelementptr inbounds %struct.btrfs_io_context, ptr %92, i32 0, i32 10
  %95 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mirror_num, align 8
  %97 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %stripes, align 8
  call void @btrfs_put_bioc(ptr noundef %92) #14
  %call198 = call ptr @btrfs_csum_root(ptr noundef %1, i64 noundef %77) #14
  %add200 = add i64 %conv180, %77
  %sub201 = add i64 %add200, -1
  %call202 = call i32 @btrfs_lookup_csums_range(ptr noundef %call198, i64 noundef %77, i64 noundef %sub201, ptr noundef %csum_list, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %if.end194.out_crit_edge

if.end194.out_crit_edge:                          ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end205:                                        ; preds = %if.end194
  %99 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call9.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %csum.i) #14
  %dev_state.i = getelementptr inbounds %struct.btrfs_device, ptr %98, i32 0, i32 10
  %101 = call ptr @memset(ptr %csum.i, i32 255, i32 32)
  %102 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %dev_state.i, align 4
  %104 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #16
  %105 = ptrtoint ptr %ebitmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ebitmap, align 8
  call fastcc void @__scrub_mark_bitmap(ptr noundef nonnull %call9.i.i, ptr noundef %106, i64 noundef %77, i32 noundef %extent_len.1) #14
  br label %scrub_extent_for_parity.exit

if.end.i:                                         ; preds = %if.end205
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %stripe_len34 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %stripe_len34, align 4
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool130.not, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %stripe_len34 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %stripe_len34, align 4
  br label %if.end27.i

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.scrub_ctx, ptr %100, i32 0, i32 1
  %111 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fs_info.i, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %112, i32 0, i32 167
  %113 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sectorsize.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2697, i32 noundef 9, ptr noundef null) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else8.i, %if.then6.i, %if.then3.i
  %blocksize.0.i = phi i32 [ %108, %if.then3.i ], [ %110, %if.then6.i ], [ %114, %if.else8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extent_len.1)
  %tobool28.not95.i = icmp eq i32 %extent_len.1, 0
  br i1 %tobool28.not95.i, label %if.end27.i.scrub_extent_for_parity.exit_crit_edge, label %while.body.lr.ph.i

if.end27.i.scrub_extent_for_parity.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_extent_for_parity.exit

while.body.lr.ph.i:                               ; preds = %if.end27.i
  %conv.i.i = trunc i32 %96 to i8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %logical.addr.0100.i = phi i64 [ %77, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %len.addr.099.i = phi i32 [ %extent_len.1, %while.body.lr.ph.i ], [ %sub.i434, %cleanup.i.while.body.i_crit_edge ]
  %physical.addr.096.i = phi i64 [ %94, %while.body.lr.ph.i ], [ %add49.i, %cleanup.i.while.body.i_crit_edge ]
  %115 = call i32 @llvm.umin.i32(i32 %len.addr.099.i, i32 %blocksize.0.i) #14
  br i1 %tobool2.not.i, label %while.body.i.if.end37.i_crit_edge, label %if.then32.i

while.body.i.if.end37.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then32.i:                                      ; preds = %while.body.i
  %call33.i = call fastcc i32 @scrub_find_csum(ptr noundef %100, i64 noundef %logical.addr.0100.i, ptr noundef nonnull %csum.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp eq i32 %call33.i, 0
  br i1 %cmp34.i, label %if.then32.i.cleanup.i_crit_edge, label %if.then32.i.if.end37.i_crit_edge

if.then32.i.if.end37.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then32.i.cleanup.i_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end37.i:                                       ; preds = %if.then32.i.if.end37.i_crit_edge, %while.body.i.if.end37.i_crit_edge
  %cond43.i = phi ptr [ %csum.i, %if.then32.i.if.end37.i_crit_edge ], [ null, %while.body.i.if.end37.i_crit_edge ]
  %116 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call9.i.i, align 128
  %fs_info.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fs_info.i.i, align 8
  %sectorsize2.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %119, i32 0, i32 167
  %120 = ptrtoint ptr %sectorsize2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sectorsize2.i.i, align 4
  %sub.i.i = add i32 %121, -1
  %and.i.i = and i32 %sub.i.i, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i431 = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i431, label %cond.end.i.i, label %cond.false.i.i, !prof !153

cond.false.i.i:                                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.66, i32 noundef 2597) #22
  unreachable

cond.end.i.i:                                     ; preds = %if.end37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %122 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3520, i32 noundef 160) #19
  %tobool4.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then.i.i432, label %if.end.i.i433

if.then.i.i432:                                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %stat_lock.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %117, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock.i.i) #14
  %malloc_errors.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %117, i32 0, i32 20, i32 10
  %123 = ptrtoint ptr %malloc_errors.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %malloc_errors.i.i, align 8
  %inc.i.i = add i64 %124, 1
  store i64 %inc.i.i, ptr %malloc_errors.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i.i) #14
  br label %scrub_extent_for_parity.exit

if.end.i.i433:                                    ; preds = %cond.end.i.i
  %refs.i.i = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #14
  %125 = ptrtoint ptr %refs.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 1, ptr %refs.i.i, align 8
  %sctx6.i.i = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i.i.i, i32 0, i32 4
  %126 = ptrtoint ptr %sctx6.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %117, ptr %sctx6.i.i, align 4
  %127 = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i.i.i, i32 0, i32 6
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i.i = load i8, ptr %127, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 32
  store i8 %bf.set.i.i, ptr %127, align 4
  %sparity7.i.i = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %sparity7.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call9.i.i, ptr %sparity7.i.i, align 8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %130 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i433.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !154

if.end.i.i433.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i433
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i433
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %131 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %.not.i.i.i.i.i.i = icmp sgt i32 %131, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.scrub_parity_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.scrub_parity_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_parity_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i433.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i433.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %scrub_parity_get.exit.i.i

scrub_parity_get.exit.i.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.scrub_parity_get.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp8.not180.i.i = icmp eq i32 %115, 0
  br i1 %cmp8.not180.i.i, label %scrub_parity_get.exit.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

scrub_parity_get.exit.i.i.for.end.i.i_crit_edge:  ; preds = %scrub_parity_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %scrub_parity_get.exit.i.i
  %tobool34.not.i.i = icmp eq ptr %cond43.i, null
  %page_count.i.i = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i.i.i, i32 0, i32 1
  %conv53.i.i = zext i32 %121 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %logical.addr.0184.i.i = phi i64 [ %logical.addr.0100.i, %for.body.lr.ph.i.i ], [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %index.0183.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc56.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %len.addr.0182.i.i = phi i32 [ %115, %for.body.lr.ph.i.i ], [ %sub52.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %physical.addr.0181.i.i = phi i64 [ %physical.addr.096.i, %for.body.lr.ph.i.i ], [ %add55.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %132 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i166.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 3520, i32 noundef 112) #19
  %tobool10.not.i.i = icmp eq ptr %call7.i.i166.i.i, null
  br i1 %tobool10.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end17.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.end17.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index.0183.i.i)
  %exitcond.not.i.i = icmp eq i32 %index.0183.i.i, 16
  br i1 %exitcond.not.i.i, label %cond.false26.i.i, label %cond.end27.i.i, !prof !154

cond.false26.i.i:                                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.54, i32 noundef 2627) #22
  unreachable

cond.end27.i.i:                                   ; preds = %if.end17.i.i
  %refs.i167.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 9
  %call.i.i.i168.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i167.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i167.i.i, i32 1, i32 3, i32 1) #14
  %133 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i167.i.i, ptr %refs.i167.i.i, i32 1, ptr elementtype(i32) %refs.i167.i.i) #14, !srcloc !151
  %arrayidx.i.i = getelementptr [16 x ptr], ptr %call7.i.i.i.i, i32 0, i32 %index.0183.i.i
  %134 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call7.i.i166.i.i, ptr %arrayidx.i.i, align 4
  %call.i.i.i170.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i167.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i167.i.i, i32 1, i32 3, i32 1) #14
  %135 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i167.i.i, ptr %refs.i167.i.i, i32 1, ptr elementtype(i32) %refs.i167.i.i) #14, !srcloc !151
  %list.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 3
  %136 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i, align 8
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %137, ptr noundef %spages) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %cond.end27.i.i.list_add_tail.exit.i.i_crit_edge

cond.end27.i.i.list_add_tail.exit.i.i_crit_edge:  ; preds = %cond.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %cond.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %138 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %list.i.i, ptr %prev.i, align 8
  %139 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %spages, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 3, i32 1
  %140 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev3.i.i.i.i, align 8
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %list.i.i, ptr %137, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %cond.end27.i.i.list_add_tail.exit.i.i_crit_edge
  %142 = ptrtoint ptr %call7.i.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i.i.i, ptr %call7.i.i166.i.i, align 8
  %dev29.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %dev29.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %98, ptr %dev29.i.i, align 8
  %flags30.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 4
  %144 = ptrtoint ptr %flags30.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %call.i428, ptr %flags30.i.i, align 8
  %generation.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 5
  %145 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %call.i429, ptr %generation.i.i, align 8
  %logical31.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 6
  %146 = ptrtoint ptr %logical31.i.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %logical.addr.0184.i.i, ptr %logical31.i.i, align 8
  %physical32.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 7
  %147 = ptrtoint ptr %physical32.i.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %physical.addr.0181.i.i, ptr %physical32.i.i, align 8
  %mirror_num33.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 10
  %148 = ptrtoint ptr %mirror_num33.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv.i.i, ptr %mirror_num33.i.i, align 4
  %have_csum41.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 11
  %149 = ptrtoint ptr %have_csum41.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load42.i.i = load i8, ptr %have_csum41.i.i, align 1
  br i1 %tobool34.not.i.i, label %if.else.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set38.i.i = or i8 %bf.load42.i.i, -128
  %150 = ptrtoint ptr %have_csum41.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %bf.set38.i.i, ptr %have_csum41.i.i, align 1
  %csum39.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 12
  %151 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fs_info.i.i, align 8
  %csum_size.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %152, i32 0, i32 169
  %153 = ptrtoint ptr %csum_size.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %csum_size.i.i, align 4
  %155 = call ptr @memcpy(ptr %csum39.i.i, ptr %cond43.i, i32 %154)
  br label %if.end45.i.i

if.else.i.i:                                      ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear43.i.i = and i8 %bf.load42.i.i, 127
  %156 = ptrtoint ptr %have_csum41.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %bf.clear43.i.i, ptr %have_csum41.i.i, align 1
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.else.i.i, %if.then35.i.i
  %157 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %page_count.i.i, align 8
  %inc46.i.i = add i32 %158, 1
  store i32 %inc46.i.i, ptr %page_count.i.i, align 8
  %call38.i.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %page.i.i = getelementptr inbounds %struct.scrub_page, ptr %call7.i.i166.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call38.i.i.i.i.i, ptr %page.i.i, align 4
  %tobool49.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool49.not.i.i, label %if.end45.i.i.cleanup.i.i_crit_edge, label %for.inc.i.i

if.end45.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end45.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %stat_lock12.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %117, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %stat_lock12.i.i) #14
  %malloc_errors14.i.i = getelementptr inbounds %struct.scrub_ctx, ptr %117, i32 0, i32 20, i32 10
  %160 = ptrtoint ptr %malloc_errors14.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %malloc_errors14.i.i, align 8
  %inc15.i.i = add i64 %161, 1
  store i64 %inc15.i.i, ptr %malloc_errors14.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock12.i.i) #14
  call fastcc void @scrub_block_put(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %scrub_extent_for_parity.exit

for.inc.i.i:                                      ; preds = %if.end45.i.i
  %sub52.i.i = sub i32 %len.addr.0182.i.i, %121
  %add.i.i = add i64 %logical.addr.0184.i.i, %conv53.i.i
  %add55.i.i = add i64 %physical.addr.0181.i.i, %conv53.i.i
  %inc56.i.i = add nuw nsw i32 %index.0183.i.i, 1
  %cmp8.not.i.i = icmp eq i32 %sub52.i.i, 0
  br i1 %cmp8.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %scrub_parity_get.exit.i.i.for.end.i.i_crit_edge
  %page_count57.i.i = getelementptr inbounds %struct.scrub_block, ptr %call7.i.i.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %page_count57.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %page_count57.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp58.i.i = icmp eq i32 %163, 0
  br i1 %cmp58.i.i, label %do.end.i.i, label %for.end.i.i.if.end78.i.i_crit_edge, !prof !154

for.end.i.i.if.end78.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2659, i32 noundef 9, ptr noundef null) #14
  %164 = ptrtoint ptr %page_count57.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %.pr.i.i = load i32, ptr %page_count57.i.i, align 8
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %do.end.i.i, %for.end.i.i.if.end78.i.i_crit_edge
  %165 = phi i32 [ %.pr.i.i, %do.end.i.i ], [ %163, %for.end.i.i.if.end78.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp87185.i.i = icmp sgt i32 %165, 0
  br i1 %cmp87185.i.i, label %if.end78.i.i.for.body89.i.i_crit_edge, label %if.end78.i.i.scrub_pages_for_parity.exit.i_crit_edge

if.end78.i.i.scrub_pages_for_parity.exit.i_crit_edge: ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_pages_for_parity.exit.i

if.end78.i.i.for.body89.i.i_crit_edge:            ; preds = %if.end78.i.i
  br label %for.body89.i.i

for.cond85.i.i:                                   ; preds = %for.body89.i.i
  %inc102.i.i = add nuw nsw i32 %index.1186.i.i, 1
  %166 = ptrtoint ptr %page_count57.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %page_count57.i.i, align 8
  %cmp87.i.i = icmp slt i32 %inc102.i.i, %167
  br i1 %cmp87.i.i, label %for.cond85.i.i.for.body89.i.i_crit_edge, label %for.cond85.i.i.scrub_pages_for_parity.exit.i_crit_edge

for.cond85.i.i.scrub_pages_for_parity.exit.i_crit_edge: ; preds = %for.cond85.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_pages_for_parity.exit.i

for.cond85.i.i.for.body89.i.i_crit_edge:          ; preds = %for.cond85.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body89.i.i

for.body89.i.i:                                   ; preds = %for.cond85.i.i.for.body89.i.i_crit_edge, %if.end78.i.i.for.body89.i.i_crit_edge
  %index.1186.i.i = phi i32 [ %inc102.i.i, %for.cond85.i.i.for.body89.i.i_crit_edge ], [ 0, %if.end78.i.i.for.body89.i.i_crit_edge ]
  %arrayidx92.i.i = getelementptr [16 x ptr], ptr %call7.i.i.i.i, i32 0, i32 %index.1186.i.i
  %168 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx92.i.i, align 4
  %call93.i.i = call fastcc i32 @scrub_add_page_to_rd_bio(ptr noundef %117, ptr noundef %169) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i.i)
  %tobool94.not.i.i = icmp eq i32 %call93.i.i, 0
  br i1 %tobool94.not.i.i, label %for.cond85.i.i, label %cleanup97.i.i

cleanup97.i.i:                                    ; preds = %for.body89.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @scrub_block_put(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %scrub_extent_for_parity.exit

scrub_pages_for_parity.exit.i:                    ; preds = %for.cond85.i.i.scrub_pages_for_parity.exit.i_crit_edge, %if.end78.i.i.scrub_pages_for_parity.exit.i_crit_edge
  call fastcc void @scrub_block_put(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %scrub_pages_for_parity.exit.i, %if.then32.i.cleanup.i_crit_edge
  %sub.i434 = sub i32 %len.addr.099.i, %115
  %conv.i435 = zext i32 %115 to i64
  %add.i = add i64 %logical.addr.0100.i, %conv.i435
  %add49.i = add i64 %physical.addr.096.i, %conv.i435
  %tobool28.not.i = icmp eq i32 %sub.i434, 0
  br i1 %tobool28.not.i, label %cleanup.i.scrub_extent_for_parity.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.scrub_extent_for_parity.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_extent_for_parity.exit

scrub_extent_for_parity.exit:                     ; preds = %cleanup.i.scrub_extent_for_parity.exit_crit_edge, %cleanup97.i.i, %cleanup.i.i, %if.then.i.i432, %if.end27.i.scrub_extent_for_parity.exit_crit_edge, %if.then.i
  %retval.2.i = phi i32 [ 0, %if.then.i ], [ -12, %if.then.i.i432 ], [ %call93.i.i, %cleanup97.i.i ], [ -12, %cleanup.i.i ], [ 0, %if.end27.i.scrub_extent_for_parity.exit_crit_edge ], [ 0, %cleanup.i.scrub_extent_for_parity.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %csum.i) #14
  %170 = ptrtoint ptr %csum_list to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile ptr, ptr %csum_list, align 4
  %cmp.i.not4.i = icmp eq ptr %171, %csum_list
  br i1 %cmp.i.not4.i, label %scrub_extent_for_parity.exit.scrub_free_csums.exit_crit_edge, label %scrub_extent_for_parity.exit.while.body.i438_crit_edge

scrub_extent_for_parity.exit.while.body.i438_crit_edge: ; preds = %scrub_extent_for_parity.exit
  br label %while.body.i438

scrub_extent_for_parity.exit.scrub_free_csums.exit_crit_edge: ; preds = %scrub_extent_for_parity.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_free_csums.exit

while.body.i438:                                  ; preds = %list_del.exit.i.while.body.i438_crit_edge, %scrub_extent_for_parity.exit.while.body.i438_crit_edge
  %172 = phi ptr [ %182, %list_del.exit.i.while.body.i438_crit_edge ], [ %171, %scrub_extent_for_parity.exit.while.body.i438_crit_edge ]
  %add.ptr.i436 = getelementptr i8, ptr %172, i32 -12
  %call.i.i.i437 = call zeroext i1 @__list_del_entry_valid(ptr noundef %172) #14
  br i1 %call.i.i.i437, label %if.end.i.i.i440, label %while.body.i438.list_del.exit.i_crit_edge

while.body.i438.list_del.exit.i_crit_edge:        ; preds = %while.body.i438
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i440:                                  ; preds = %while.body.i438
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i439 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i.i439 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i.i439, align 4
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %172, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i.i, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i440, %while.body.i438.list_del.exit.i_crit_edge
  %179 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr inttoptr (i32 256 to ptr), ptr %172, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %180 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %add.ptr.i436) #14
  %181 = ptrtoint ptr %csum_list to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %csum_list, align 4
  %cmp.i.not.i = icmp eq ptr %182, %csum_list
  br i1 %cmp.i.not.i, label %list_del.exit.i.scrub_free_csums.exit_crit_edge, label %list_del.exit.i.while.body.i438_crit_edge

list_del.exit.i.while.body.i438_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i438

list_del.exit.i.scrub_free_csums.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scrub_free_csums.exit

scrub_free_csums.exit:                            ; preds = %list_del.exit.i.scrub_free_csums.exit_crit_edge, %scrub_extent_for_parity.exit.scrub_free_csums.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool207.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool207.not, label %if.end209, label %scrub_free_csums.exit.out_crit_edge

scrub_free_csums.exit.out_crit_edge:              ; preds = %scrub_free_csums.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end209:                                        ; preds = %scrub_free_csums.exit
  %183 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %key, align 8
  %add213 = add i64 %184, %bytes.0
  call void @__sanitizer_cov_trace_cmp8(i64 %add200, i64 %add213)
  %cmp214 = icmp ult i64 %add200, %add213
  br i1 %cmp214, label %if.then216, label %if.end209.next_crit_edge

if.end209.next_crit_edge:                         ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.then216:                                       ; preds = %if.end209
  %185 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %stripe_len, align 8
  %add218 = add i64 %186, %logic_start.addr.3514
  call void @__sanitizer_cov_trace_cmp8(i64 %add218, i64 %logic_end)
  %cmp219.not = icmp ult i64 %add218, %logic_end
  br i1 %cmp219.not, label %if.end222, label %if.then216.while.end234.thread_crit_edge

if.then216.while.end234.thread_crit_edge:         ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end234.thread

if.end222:                                        ; preds = %if.then216
  %cmp225 = icmp ult i64 %add218, %add213
  br i1 %cmp225, label %if.then227, label %if.end222.next_crit_edge

if.end222.next_crit_edge:                         ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  br label %next

if.then227:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 3097, i32 noundef 0) #14
  %call.i441 = call i32 @__cond_resched() #14
  br label %cond.end159

next:                                             ; preds = %if.end222.next_crit_edge, %if.end209.next_crit_edge, %if.then141, %if.end105.next_crit_edge, %if.end86.next_crit_edge
  %logic_start.addr.4 = phi i64 [ %logic_start.addr.1.ph, %if.end105.next_crit_edge ], [ %logic_start.addr.2, %if.then141 ], [ %logic_start.addr.1.ph, %if.end86.next_crit_edge ], [ %logic_start.addr.3514, %if.end209.next_crit_edge ], [ %add218, %if.end222.next_crit_edge ]
  %ret.4 = phi i32 [ %ret.2, %if.end105.next_crit_edge ], [ %ret.2, %if.then141 ], [ %ret.2, %if.end86.next_crit_edge ], [ 0, %if.end222.next_crit_edge ], [ 0, %if.end209.next_crit_edge ]
  %187 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %slots, align 4
  %inc233 = add i32 %188, 1
  store i32 %inc233, ptr %slots, align 4
  br label %while.cond70.outer

while.end234.thread:                              ; preds = %if.then216.while.end234.thread_crit_edge, %if.end111.while.end234.thread_crit_edge
  %logic_start.addr.5.ph453.ph = phi i64 [ %add218, %if.then216.while.end234.thread_crit_edge ], [ %logic_start.addr.1.ph, %if.end111.while.end234.thread_crit_edge ]
  %ret.5.ph454.ph = phi i32 [ 0, %if.then216.while.end234.thread_crit_edge ], [ %ret.2, %if.end111.while.end234.thread_crit_edge ]
  call void @btrfs_release_path(ptr noundef nonnull %call2) #14
  br label %out

while.end234:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef nonnull %call2) #14
  br label %if.end258

out:                                              ; preds = %while.end234.thread, %scrub_free_csums.exit.out_crit_edge, %if.end194.out_crit_edge, %if.then193
  %logic_start.addr.6 = phi i64 [ %logic_start.addr.5.ph453.ph, %while.end234.thread ], [ %logic_start.addr.3514, %if.then193 ], [ %logic_start.addr.3514, %if.end194.out_crit_edge ], [ %logic_start.addr.3514, %scrub_free_csums.exit.out_crit_edge ]
  %ret.6 = phi i32 [ %ret.5.ph454.ph, %while.end234.thread ], [ %ret.3.ph, %if.then193 ], [ %retval.2.i, %scrub_free_csums.exit.out_crit_edge ], [ %call202, %if.end194.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6)
  %cmp241 = icmp slt i32 %ret.6, 0
  br i1 %cmp241, label %out.if.then243_crit_edge, label %out.if.end258_crit_edge

out.if.end258_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end258

out.if.then243_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then243

if.then243:                                       ; preds = %out.if.then243_crit_edge, %if.end81.if.then243_crit_edge, %if.then62.if.then243_crit_edge, %if.then54.if.then243_crit_edge, %while.body.if.then243_crit_edge
  %ret.6472 = phi i32 [ %ret.6, %out.if.then243_crit_edge ], [ %call.i427, %if.end81.if.then243_crit_edge ], [ %call63, %if.then62.if.then243_crit_edge ], [ %call55, %if.then54.if.then243_crit_edge ], [ %call47, %while.body.if.then243_crit_edge ]
  %logic_start.addr.6470 = phi i64 [ %logic_start.addr.6, %out.if.then243_crit_edge ], [ %logic_start.addr.1.ph, %if.end81.if.then243_crit_edge ], [ %logic_start, %if.then62.if.then243_crit_edge ], [ %logic_start, %if.then54.if.then243_crit_edge ], [ %logic_start, %while.body.if.then243_crit_edge ]
  %sub244 = sub i64 %logic_end, %logic_start.addr.6470
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub244)
  %cmp245 = icmp ult i64 %sub244, 4294967296
  br i1 %cmp245, label %cond.end255, label %cond.false254, !prof !153

cond.false254:                                    ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.65, i32 noundef 3114) #20
  unreachable

cond.end255:                                      ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #16
  %conv257 = trunc i64 %sub244 to i32
  %189 = ptrtoint ptr %ebitmap to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ebitmap, align 8
  call fastcc void @__scrub_mark_bitmap(ptr noundef nonnull %call9.i.i, ptr noundef %190, i64 noundef %logic_start.addr.6470, i32 noundef %conv257) #14
  br label %if.end258

if.end258:                                        ; preds = %cond.end255, %out.if.end258_crit_edge, %while.end234, %cond.end31.if.end258_crit_edge
  %cmp241473 = phi i32 [ %ret.6472, %cond.end255 ], [ 0, %out.if.end258_crit_edge ], [ 0, %while.end234 ], [ 0, %cond.end31.if.end258_crit_edge ]
  call fastcc void @scrub_parity_put(ptr noundef nonnull %call9.i.i)
  call fastcc void @scrub_submit(ptr noundef %sctx)
  %wr_lock = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %wr_lock, i32 noundef 0) #14
  call fastcc void @scrub_wr_submit(ptr noundef %sctx)
  call void @mutex_unlock(ptr noundef %wr_lock) #14
  call void @btrfs_free_path(ptr noundef nonnull %call2) #14
  br label %cleanup265

cleanup265:                                       ; preds = %if.end258, %if.then13, %if.then
  %retval.0 = phi i32 [ %cmp241473, %if.end258 ], [ -12, %if.then13 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_length) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_previous_extent_item(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_lookup_csums_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_map_block(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scrub_find_csum(ptr noundef %sctx, i64 noundef %logical, ptr nocapture noundef writeonly %csum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_list = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 8
  %0 = ptrtoint ptr %csum_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %csum_list, align 4
  %cmp.i.not72 = icmp eq ptr %1, %csum_list
  br i1 %cmp.i.not72, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %fs_info.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 1
  %csum_discards.i = getelementptr inbounds %struct.scrub_ctx, ptr %sctx, i32 0, i32 20, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %47, %cleanup.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %logical)
  %cmp = icmp ugt i64 %4, %logical
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %len = getelementptr i8, ptr %2, i32 -4
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 8
  %conv = sext i32 %6 to i64
  %add = add i64 %4, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %logical)
  %cmp3.not = icmp ugt i64 %add, %logical
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 8
  %9 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info.i, align 8
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 168
  %11 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectorsize_bits.i, align 8
  %shr.i = ashr i32 %8, %12
  %conv.i49 = sext i32 %shr.i to i64
  %13 = ptrtoint ptr %csum_discards.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %csum_discards.i, align 8
  %add.i = add i64 %14, %conv.i49
  store i64 %add.i, ptr %csum_discards.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %2, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sub = sub i64 %logical, %4
  %21 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fs_info.i, align 8
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %22, i32 0, i32 168
  %23 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %24 to i64
  %shr = lshr i64 %sub, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %shr12 = ashr i32 %6, %24
  %sums = getelementptr i8, ptr %2, i32 8
  %csum_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %22, i32 0, i32 169
  %25 = ptrtoint ptr %csum_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %csum_size, align 4
  %mul = mul i32 %26, %conv8
  %add.ptr14 = getelementptr i8, ptr %sums, i32 %mul
  %27 = call ptr @memcpy(ptr %csum, ptr %add.ptr14, i32 %26)
  %sub17 = add i32 %shr12, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %conv8)
  %cmp18 = icmp eq i32 %sub17, %conv8
  br i1 %cmp18, label %if.then20, label %if.end6.while.end_crit_edge

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then20:                                        ; preds = %if.end6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 8
  %30 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs_info.i, align 8
  %sectorsize_bits.i52 = getelementptr inbounds %struct.btrfs_fs_info, ptr %31, i32 0, i32 168
  %32 = ptrtoint ptr %sectorsize_bits.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sectorsize_bits.i52, align 8
  %shr.i53 = ashr i32 %29, %33
  %conv.i54 = sext i32 %shr.i53 to i64
  %34 = ptrtoint ptr %csum_discards.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %csum_discards.i, align 8
  %add.i56 = add i64 %35, %conv.i54
  store i64 %add.i56, ptr %csum_discards.i, align 8
  %call.i.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #14
  br i1 %call.i.i.i58, label %if.end.i.i.i61, label %if.then20.drop_csum_range.exit63_crit_edge

if.then20.drop_csum_range.exit63_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop_csum_range.exit63

if.end.i.i.i61:                                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i59 = getelementptr i8, ptr %2, i32 4
  %36 = ptrtoint ptr %prev.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i59, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i60, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %drop_csum_range.exit63

drop_csum_range.exit63:                           ; preds = %if.end.i.i.i61, %if.then20.drop_csum_range.exit63_crit_edge
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i62 = getelementptr i8, ptr %2, i32 4
  %43 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i62, align 4
  tail call void @kfree(ptr noundef %add.ptr) #14
  br label %while.end

cleanup:                                          ; preds = %if.end.i.i.i, %if.then5.cleanup_crit_edge
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr i8, ptr %2, i32 4
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #14
  %46 = ptrtoint ptr %csum_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %csum_list, align 4
  %cmp.i.not = icmp eq ptr %47, %csum_list
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %drop_csum_range.exit63, %if.end6.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %48 = phi i32 [ 1, %drop_csum_range.exit63 ], [ 1, %if.end6.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_sync_zone_write_pointer(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold noreturn }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind readnone }
attributes #25 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !70, !72, !74, !76, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.named.register.sp = !{!140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/scrub.c", i32 4053, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/scrub.c", i32 4067, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/scrub.c", i32 4097, i32 3}
!6 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/scrub.c", i32 4148, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/scrub.c", i32 4172, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @scrub_setup_ctx.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/btrfs/scrub.c", i32 603, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @scrub_setup_ctx.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/btrfs/scrub.c", i32 604, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scrub_setup_ctx.__key.12, !22, !"__key", i1 false, i1 false}
!22 = !{!"../fs/btrfs/scrub.c", i32 605, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @scrub_setup_ctx.__key.14, !25, !"__key", i1 false, i1 false}
!25 = !{!"../fs/btrfs/scrub.c", i32 609, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/scrub.c", i32 2365, i32 2}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @assertfail._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @assertfail._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/scrub.c", i32 2463, i32 3}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/scrub.c", i32 824, i32 9}
!39 = !{ptr @scrub_handle_errored_block.rs, !38, !"rs", i1 false, i1 false}
!40 = !{ptr @__func__.scrub_handle_errored_block, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/scrub.c", i32 961, i32 7}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/scrub.c", i32 962, i32 24}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/scrub.c", i32 969, i32 24}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/scrub.c", i32 977, i32 24}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/btrfs/scrub.c", i32 988, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/scrub.c", i32 1030, i32 4}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/scrub.c", i32 1168, i32 4}
!54 = !{ptr @scrub_handle_errored_block._rs, !53, !"_rs", i1 false, i1 false}
!55 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!57 = !{ptr @scrub_handle_errored_block._rs.29, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../fs/btrfs/scrub.c", i32 1177, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/scrub.c", i32 424, i32 3}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/btrfs/scrub.c", i32 390, i32 2}
!65 = !{ptr @insert_full_stripe_lock.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../fs/btrfs/scrub.c", i32 342, i32 2}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/btrfs/scrub.c", i32 1309, i32 3}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/btrfs/scrub.c", i32 1414, i32 2}
!74 = !{ptr @init_completion.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../include/linux/completion.h", i32 87, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/btrfs/scrub.c", i32 1858, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/btrfs/scrub.c", i32 761, i32 4}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/scrub.c", i32 689, i32 3}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/btrfs/scrub.c", i32 703, i32 2}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = !{ptr @scrub_repair_page_from_good_copy._rs, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../fs/btrfs/scrub.c", i32 1552, i32 4}
!92 = !{ptr @__func__.scrub_repair_page_from_good_copy, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/btrfs/scrub.c", i32 496, i32 3}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/btrfs/scrub.c", i32 3993, i32 49}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/btrfs/scrub.c", i32 3998, i32 49}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/scrub.c", i32 4003, i32 48}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/btrfs/scrub.c", i32 4010, i32 3}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/btrfs/scrub.c", i32 2293, i32 3}
!113 = !{ptr @scrub_missing_raid56_worker._rs, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../fs/btrfs/scrub.c", i32 2168, i32 3}
!115 = !{ptr @__func__.scrub_missing_raid56_worker, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!118 = !{ptr @scrub_missing_raid56_worker._rs.56, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../fs/btrfs/scrub.c", i32 2175, i32 3}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/btrfs/scrub.c", i32 3792, i32 4}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/btrfs/scrub.c", i32 3799, i32 4}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/btrfs/scrub.c", i32 3825, i32 3}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/btrfs/scrub.c", i32 3407, i32 5}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/btrfs/scrub.c", i32 3418, i32 4}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/btrfs/scrub.c", i32 2925, i32 2}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/btrfs/scrub.c", i32 3114, i32 3}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/btrfs/scrub.c", i32 2597, i32 2}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/btrfs/scrub.c", i32 3159, i32 4}
!140 = !{!"sp"}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2149400497}
!151 = !{i64 2148572983, i64 2148573009, i64 2148573038, i64 2148573072, i64 2148573103, i64 2148573126}
!152 = !{i64 2148575448, i64 2148575474, i64 2148575503, i64 2148575537, i64 2148575568, i64 2148575591}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{i64 1058496, i64 1058520, i64 1058541, i64 1058558, i64 1058575}
!156 = !{i64 2148574513, i64 2148574545, i64 2148574574, i64 2148574608, i64 2148574639, i64 2148574662}
!157 = !{i64 2149400763}
!158 = !{i64 2148662514}
!159 = !{i64 2148576978, i64 2148577010, i64 2148577039, i64 2148577073, i64 2148577104, i64 2148577127}
!160 = !{i64 2149708484}
!161 = !{i64 2148661435}
!162 = !{i64 2148576168, i64 2148576200, i64 2148576229, i64 2148576263, i64 2148576294, i64 2148576317}
!163 = !{i64 2148661664}
!164 = !{i64 2158798100, i64 2158798582, i64 2158798137, i64 2158798193, i64 2158798227, i64 2158798251, i64 2158798292, i64 2158798313, i64 2158798341, i64 2158798375}
!165 = !{i8 0, i8 2}
!166 = !{i64 2158493187, i64 2158493669, i64 2158493224, i64 2158493280, i64 2158493314, i64 2158493338, i64 2158493379, i64 2158493400, i64 2158493428, i64 2158493462}
!167 = !{i64 2158755812, i64 2158756293, i64 2158755849, i64 2158755905, i64 2158755939, i64 2158755963, i64 2158756004, i64 2158756025, i64 2158756053, i64 2158756087}
!168 = !{i64 2158757454, i64 2158757935, i64 2158757491, i64 2158757547, i64 2158757581, i64 2158757605, i64 2158757646, i64 2158757667, i64 2158757695, i64 2158757729}
!169 = !{i64 2158776945, i64 2158777427, i64 2158776982, i64 2158777038, i64 2158777072, i64 2158777096, i64 2158777137, i64 2158777158, i64 2158777186, i64 2158777220}
!170 = !{i64 2158759273, i64 2158759754, i64 2158759310, i64 2158759366, i64 2158759400, i64 2158759424, i64 2158759465, i64 2158759486, i64 2158759514, i64 2158759548}
!171 = !{!"auto-init"}
!172 = !{i64 2158788808, i64 2158789290, i64 2158788845, i64 2158788901, i64 2158788935, i64 2158788959, i64 2158789000, i64 2158789021, i64 2158789049, i64 2158789083}
!173 = !{i64 2158784393, i64 2158784875, i64 2158784430, i64 2158784486, i64 2158784520, i64 2158784544, i64 2158784585, i64 2158784606, i64 2158784634, i64 2158784668}
!174 = !{i64 2158786017, i64 2158786499, i64 2158786054, i64 2158786110, i64 2158786144, i64 2158786168, i64 2158786209, i64 2158786230, i64 2158786258, i64 2158786292}
!175 = !{i64 2158794012, i64 2158794494, i64 2158794049, i64 2158794105, i64 2158794139, i64 2158794163, i64 2158794204, i64 2158794225, i64 2158794253, i64 2158794287}
!176 = !{i64 2158795943, i64 2158796425, i64 2158795980, i64 2158796036, i64 2158796070, i64 2158796094, i64 2158796135, i64 2158796156, i64 2158796184, i64 2158796218}
!177 = !{i64 2148411563, i64 2148411843, i64 2148412177, i64 2148412511}
!178 = !{i64 925732, i64 925759}
!179 = !{i64 926427, i64 926454, i64 926487, i64 926508, i64 926535, i64 926561}
!180 = !{i64 926019, i64 926046, i64 926068, i64 926096}
