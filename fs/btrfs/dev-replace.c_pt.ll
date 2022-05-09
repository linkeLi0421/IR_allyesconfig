; ModuleID = '/llk/IR_all_yes/fs/btrfs/dev-replace.c_pt.bc'
source_filename = "../fs/btrfs/dev-replace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_dev_lookup_args = type { i64, ptr, ptr, i8 }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_ioctl_dev_replace_args = type { i64, i64, %union.anon.87, [64 x i64] }
%union.anon.87 = type { %struct.btrfs_ioctl_dev_replace_start_params }
%struct.btrfs_ioctl_dev_replace_start_params = type { i64, i64, [1025 x i8], [1025 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rcu_string = type { %struct.callback_head, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013found replace target device without a valid replace item\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014dev_replace entry found has unexpected size, ignore entry\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013replace devid present without an active replace item\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014cannot mount because device replace operation is ongoing and\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014srcdev (devid %llu) is missing, need to run 'btrfs dev scan'?\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014tgtdev (devid %llu) is missing, need to run 'btrfs dev scan'?\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/dev-replace.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014error %d while searching for dev_replace item!\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014delete too small dev_replace item failed %d!\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014insert dev_replace item failed %d!\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"!IS_ERR(em)\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016dev_replace from %s (devid %llu) to %s canceled\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ret != -ENOTCONN\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016suspended dev_replace from %s (devid %llu) to %s canceled\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016suspending dev_replace for unmount\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016cannot continue dev_replace, tgtdev is missing\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016you may cancel the operation after 'mount -o degraded'\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016cannot resume dev-replace, other exclusive operation running\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"btrfs-devrepl\00", [18 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014cannot replace device %s (devid %llu) due to active swapfile\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016dev_replace from %s (devid %llu) to %s started\00", [47 x i8] zeroinitializer }, align 32
@btrfs_dev_replace_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013kobj add dev failed %d\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013the filesystem is a seed filesystem!\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013target device %s is invalid!\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dev-replace: zoned type of target device mismatch with filesystem\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013target device is in the filesystem!\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013target device is smaller than source device!\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013btrfs_scrub_dev(%s, %llu, %s) failed %d\00", [54 x i8] zeroinitializer }, align 32
@btrfs_dev_replace_finishing.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016dev_replace from %s (devid %llu) to %s finished\00", [46 x i8] zeroinitializer }, align 32
@btrfs_dev_replace_finishing.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"<missing disk>\00", [17 x i8] zeroinitializer }, align 32
@btrfs_dev_name.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016continuing dev_replace from %s (devid %llu) to target %s @%u%%\00", [63 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@switch.table.btrfs_dev_replace_is_ongoing = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 64, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 64, i64 1, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 64, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 64, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 64, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 105, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 135, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 167, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 188, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 190, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 199, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 219, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 377, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 398, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 412, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 610, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1124, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1149, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1159, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1194, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1224, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1226, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1245, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1250, i32 9 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 3491, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 659, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 695, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 705, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 729, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 254, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 261, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 266, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 276, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 285, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 958, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 976, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 271, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 695, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 458, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 723, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [26 x i8] c"../fs/btrfs/dev-replace.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1263, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [42 x i8] c"switch.table.btrfs_dev_replace_is_ongoing\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switch.table.btrfs_dev_replace_is_ongoing], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_dev_replace_is_ongoing to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_init_dev_replace(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.btrfs_dev_lookup_args, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #14
  %0 = call ptr @memset(ptr %args, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %dev_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 4
  %3 = call ptr @memset(ptr %key, i32 255, i32 17)
  %4 = ptrtoint ptr %dev_root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_root1, align 4
  %dev_replace2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @btrfs_alloc_path() #14
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %key, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -6, ptr %1, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %2, align 1
  %call6 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %if.end5.no_valid_dev_replace_entry_found_crit_edge

if.end5.no_valid_dev_replace_entry_found_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_valid_dev_replace_entry_found

no_valid_dev_replace_entry_found:                 ; preds = %if.then17, %if.end5.no_valid_dev_replace_entry_found_crit_edge
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %9 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_devices, align 8
  %call9 = call ptr @btrfs_find_device(ptr noundef %10, ptr noundef nonnull %args) #14
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %no_valid_dev_replace_entry_found
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str) #17
  br label %out

if.end12:                                         ; preds = %no_valid_dev_replace_entry_found
  call void @__sanitizer_cov_trace_pc() #16
  %cont_reading_from_srcdev_mode = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 9
  %11 = ptrtoint ptr %cont_reading_from_srcdev_mode to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %cont_reading_from_srcdev_mode, align 8
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 3
  %12 = call ptr @memset(ptr %dev_replace2, i32 0, i32 24)
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %num_write_errors, i64 noundef 0) #14
  %num_uncorrectable_read_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 4
  %call.i.i236 = call zeroext i1 @__kasan_check_write(ptr noundef %num_uncorrectable_read_errors, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %num_uncorrectable_read_errors, i64 noundef 0) #14
  %cursor_left = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 5
  %is_valid = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 10
  %13 = call ptr @memset(ptr %cursor_left, i32 0, i32 32)
  %14 = call ptr @memset(ptr %is_valid, i32 0, i32 16)
  br label %out

if.end13:                                         ; preds = %if.end5
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slots, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %mul.i.i.i = mul i32 %16, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %19 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i239 = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %19, i32 noundef 21) #14
  %call.i.i242 = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %19, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %call.i.i239)
  %cmp.not = icmp eq i32 %call.i.i239, 72
  br i1 %cmp.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.1) #17
  br label %no_valid_dev_replace_entry_found

if.end18:                                         ; preds = %if.end13
  %add = add i32 %call.i.i242, 101
  %20 = inttoptr i32 %add to ptr
  %call.i = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 0) #14
  %call.i243 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 24) #14
  %cont_reading_from_srcdev_mode21 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 9
  %21 = ptrtoint ptr %cont_reading_from_srcdev_mode21 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i243, ptr %cont_reading_from_srcdev_mode21, align 8
  %call.i244 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 32) #14
  %22 = ptrtoint ptr %dev_replace2 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i244, ptr %dev_replace2, align 8
  %call.i245 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 40) #14
  %time_started25 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 1
  %23 = ptrtoint ptr %time_started25 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i245, ptr %time_started25, align 8
  %call.i246 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 48) #14
  %time_stopped27 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 2
  %24 = ptrtoint ptr %time_stopped27 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i246, ptr %time_stopped27, align 8
  %num_write_errors28 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 3
  %call.i247 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 56) #14
  %call.i.i237 = call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors28, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %num_write_errors28, i64 noundef %call.i247) #14
  %num_uncorrectable_read_errors30 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 4
  %call.i248 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 64) #14
  %call.i.i238 = call zeroext i1 @__kasan_check_write(ptr noundef %num_uncorrectable_read_errors30, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %num_uncorrectable_read_errors30, i64 noundef %call.i248) #14
  %call.i249 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 8) #14
  %cursor_left33 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 5
  %25 = ptrtoint ptr %cursor_left33 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call.i249, ptr %cursor_left33, align 8
  %committed_cursor_left35 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 6
  %26 = ptrtoint ptr %committed_cursor_left35 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i249, ptr %committed_cursor_left35, align 8
  %cursor_left_last_write_of_item37 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 7
  %27 = ptrtoint ptr %cursor_left_last_write_of_item37 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i249, ptr %cursor_left_last_write_of_item37, align 8
  %call.i250 = call i64 @btrfs_get_64(ptr noundef %18, ptr noundef %20, i32 noundef 16) #14
  %cursor_right39 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 8
  %28 = ptrtoint ptr %cursor_right39 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i250, ptr %cursor_right39, align 8
  %is_valid40 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 10
  %29 = ptrtoint ptr %is_valid40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %is_valid40, align 8
  %item_needs_writeback41 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 11
  %30 = ptrtoint ptr %item_needs_writeback41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %item_needs_writeback41, align 4
  %31 = ptrtoint ptr %dev_replace2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dev_replace2, align 8
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i64 %32, label %if.end18.out_crit_edge [
    i64 0, label %if.end18.sw.bb_crit_edge
    i64 2, label %if.end18.sw.bb_crit_edge254
    i64 3, label %if.end18.sw.bb_crit_edge255
    i64 1, label %if.end18.sw.bb50_crit_edge
    i64 4, label %if.end18.sw.bb50_crit_edge256
  ]

if.end18.sw.bb50_crit_edge256:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

if.end18.sw.bb50_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb50

if.end18.sw.bb_crit_edge255:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end18.sw.bb_crit_edge254:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge254, %if.end18.sw.bb_crit_edge255
  %fs_devices43 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %33 = ptrtoint ptr %fs_devices43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_devices43, align 8
  %call44 = call ptr @btrfs_find_device(ptr noundef %34, ptr noundef nonnull %args) #14
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.2) #17
  br label %out

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %srcdev47 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %35 = ptrtoint ptr %srcdev47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %srcdev47, align 8
  %tgtdev48 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %36 = ptrtoint ptr %tgtdev48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %tgtdev48, align 4
  br label %out

sw.bb50:                                          ; preds = %if.end18.sw.bb50_crit_edge, %if.end18.sw.bb50_crit_edge256
  %fs_devices51 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %37 = ptrtoint ptr %fs_devices51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_devices51, align 8
  %call52 = call ptr @btrfs_find_device(ptr noundef %38, ptr noundef nonnull %args) #14
  %tgtdev53 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %39 = ptrtoint ptr %tgtdev53 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call52, ptr %tgtdev53, align 4
  %40 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call.i, ptr %args, align 8
  %41 = ptrtoint ptr %fs_devices51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fs_devices51, align 8
  %call55 = call ptr @btrfs_find_device(ptr noundef %42, ptr noundef nonnull %args) #14
  %srcdev56 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %43 = ptrtoint ptr %srcdev56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call55, ptr %srcdev56, align 8
  %tobool58.not = icmp eq ptr %call55, null
  br i1 %tobool58.not, label %land.lhs.true, label %sw.bb50.if.end61_crit_edge

sw.bb50.if.end61_crit_edge:                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

land.lhs.true:                                    ; preds = %sw.bb50
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %44 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mount_opt, align 8
  %and = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.then60, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.3) #17
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.4, i64 noundef %call.i) #17
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true.if.end61_crit_edge, %sw.bb50.if.end61_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb50.if.end61_crit_edge ], [ 0, %land.lhs.true.if.end61_crit_edge ], [ -5, %if.then60 ]
  %46 = ptrtoint ptr %tgtdev53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tgtdev53, align 4
  %tobool63.not = icmp eq ptr %47, null
  br i1 %tobool63.not, label %land.lhs.true64, label %if.end61.if.then72_crit_edge

if.end61.if.then72_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then72

land.lhs.true64:                                  ; preds = %if.end61
  %mount_opt65 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %48 = ptrtoint ptr %mount_opt65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mount_opt65, align 8
  %and66 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then68, label %land.lhs.true64.if.end69_crit_edge

land.lhs.true64.if.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then68:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.3) #17
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.5, i64 noundef 0) #17
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.lhs.true64.if.end69_crit_edge
  %ret.1.ph = phi i32 [ -5, %if.then68 ], [ %ret.0, %land.lhs.true64.if.end69_crit_edge ]
  %50 = ptrtoint ptr %tgtdev53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load ptr, ptr %tgtdev53, align 4
  %tobool71.not = icmp eq ptr %.pr, null
  br i1 %tobool71.not, label %if.end69.out_crit_edge, label %if.end69.if.then72_crit_edge

if.end69.if.then72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then72

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then72:                                        ; preds = %if.end69.if.then72_crit_edge, %if.end61.if.then72_crit_edge
  %ret.1253 = phi i32 [ %ret.1.ph, %if.end69.if.then72_crit_edge ], [ %ret.0, %if.end61.if.then72_crit_edge ]
  %51 = phi ptr [ %.pr, %if.end69.if.then72_crit_edge ], [ %47, %if.end61.if.then72_crit_edge ]
  %52 = ptrtoint ptr %srcdev56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %srcdev56, align 8
  %tobool74.not = icmp eq ptr %53, null
  br i1 %tobool74.not, label %if.then72.if.end91_crit_edge, label %if.then75

if.then72.if.end91_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  %total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %total_bytes, align 8
  %total_bytes78 = getelementptr inbounds %struct.btrfs_device, ptr %51, i32 0, i32 14
  %56 = ptrtoint ptr %total_bytes78 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %total_bytes78, align 8
  %57 = ptrtoint ptr %srcdev56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %srcdev56, align 8
  %disk_total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %disk_total_bytes to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %disk_total_bytes, align 8
  %61 = ptrtoint ptr %tgtdev53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tgtdev53, align 4
  %disk_total_bytes81 = getelementptr inbounds %struct.btrfs_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %disk_total_bytes81 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %60, ptr %disk_total_bytes81, align 8
  %64 = load ptr, ptr %srcdev56, align 8
  %commit_total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %64, i32 0, i32 22
  %65 = ptrtoint ptr %commit_total_bytes to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %commit_total_bytes, align 8
  %67 = load ptr, ptr %tgtdev53, align 4
  %commit_total_bytes84 = getelementptr inbounds %struct.btrfs_device, ptr %67, i32 0, i32 22
  %68 = ptrtoint ptr %commit_total_bytes84 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %66, ptr %commit_total_bytes84, align 8
  %69 = load ptr, ptr %srcdev56, align 8
  %bytes_used = getelementptr inbounds %struct.btrfs_device, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %bytes_used, align 8
  %72 = load ptr, ptr %tgtdev53, align 4
  %bytes_used87 = getelementptr inbounds %struct.btrfs_device, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %bytes_used87 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %71, ptr %bytes_used87, align 8
  %74 = load ptr, ptr %srcdev56, align 8
  %commit_bytes_used = getelementptr inbounds %struct.btrfs_device, ptr %74, i32 0, i32 23
  %75 = ptrtoint ptr %commit_bytes_used to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %commit_bytes_used, align 8
  %77 = load ptr, ptr %tgtdev53, align 4
  %commit_bytes_used90 = getelementptr inbounds %struct.btrfs_device, ptr %77, i32 0, i32 23
  %78 = ptrtoint ptr %commit_bytes_used90 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %76, ptr %commit_bytes_used90, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then75, %if.then72.if.end91_crit_edge
  %79 = ptrtoint ptr %tgtdev53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tgtdev53, align 4
  %dev_state = getelementptr inbounds %struct.btrfs_device, ptr %80, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %dev_state) #14
  %81 = ptrtoint ptr %fs_devices51 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fs_devices51, align 8
  %rw_devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %rw_devices to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %rw_devices, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %cmp94 = icmp eq i64 %84, 0
  br i1 %cmp94, label %do.end, label %if.end91.if.end109_crit_edge, !prof !96

if.end91.if.end109_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

do.end:                                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 219, i32 noundef 9, ptr noundef null) #14
  br label %if.end109

if.end109:                                        ; preds = %do.end, %if.end91.if.end109_crit_edge
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %85 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sectorsize, align 4
  %87 = ptrtoint ptr %tgtdev53 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tgtdev53, align 4
  %io_width = getelementptr inbounds %struct.btrfs_device, ptr %88, i32 0, i32 18
  %89 = ptrtoint ptr %io_width to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %io_width, align 4
  %90 = load i32, ptr %sectorsize, align 4
  %91 = load ptr, ptr %tgtdev53, align 4
  %io_align = getelementptr inbounds %struct.btrfs_device, ptr %91, i32 0, i32 17
  %92 = ptrtoint ptr %io_align to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %90, ptr %io_align, align 8
  %93 = load i32, ptr %sectorsize, align 4
  %94 = load ptr, ptr %tgtdev53, align 4
  %sector_size = getelementptr inbounds %struct.btrfs_device, ptr %94, i32 0, i32 20
  %95 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %93, ptr %sector_size, align 8
  %96 = load ptr, ptr %tgtdev53, align 4
  %fs_info122 = getelementptr inbounds %struct.btrfs_device, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %fs_info122 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %fs_info, ptr %fs_info122, align 4
  %98 = load ptr, ptr %tgtdev53, align 4
  %dev_state124 = getelementptr inbounds %struct.btrfs_device, ptr %98, i32 0, i32 10
  call void @_set_bit(i32 noundef 1, ptr noundef %dev_state124) #14
  br label %out

out:                                              ; preds = %if.end109, %if.end69.out_crit_edge, %if.else, %if.then46, %if.end18.out_crit_edge, %if.end12, %if.then11, %if.end.out_crit_edge
  %ret.2 = phi i32 [ -117, %if.then11 ], [ 0, %if.end12 ], [ 0, %if.end18.out_crit_edge ], [ %ret.1253, %if.end109 ], [ %ret.1.ph, %if.end69.out_crit_edge ], [ -117, %if.then46 ], [ 0, %if.else ], [ -12, %if.end.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_run_dev_replace(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %dev_root2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_root2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_root2, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %dev_replace3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 15
  tail call void @down_read(ptr noundef %rwsem) #14
  %is_valid = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 10
  %6 = ptrtoint ptr %is_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %item_needs_writeback = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 11
  %8 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %item_needs_writeback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @up_read(ptr noundef %rwsem) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @up_read(ptr noundef %rwsem) #14
  %10 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %key, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -6, ptr %4, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %5, align 1
  %call = tail call ptr @btrfs_alloc_path() #14
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %call10) #17
  br label %out

if.end12:                                         ; preds = %if.end9
  %13 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call10, label %if.end12.if.end29_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %if.end12.if.then24_crit_edge
  ]

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end12
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %17, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %18 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i119 = call i32 @btrfs_get_32(ptr noundef %15, ptr noundef %18, i32 noundef 21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %call.i.i119)
  %cmp16 = icmp ult i32 %call.i.i119, 72
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then17:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots, align 4
  %call.i120 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call, i32 noundef %20, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp19.not = icmp eq i32 %call.i120, 0
  br i1 %cmp19.not, label %if.then17.if.then24_crit_edge, label %if.then20

if.then17.if.then24_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %call.i120) #17
  br label %out

if.then24:                                        ; preds = %if.then17.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %21 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 72, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #14
  %22 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %25 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %key, ptr %batch.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %data_size.addr.i, ptr %22, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 72, ptr %23, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %24, align 4
  %call.i121 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp26 = icmp slt i32 %call.i121, 0
  br i1 %cmp26, label %if.then27, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %call.i121) #17
  br label %out

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %ret.1 = phi i32 [ %call.i121, %if.then24.if.end29_crit_edge ], [ 0, %land.lhs.true.if.end29_crit_edge ], [ %call10, %if.end12.if.end29_crit_edge ]
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %slots32 = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %slots32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slots32, align 4
  %mul.i.i.i122 = mul i32 %32, 25
  %add.i.i.i123 = add i32 %mul.i.i.i122, 101
  %33 = inttoptr i32 %add.i.i.i123 to ptr
  %call.i.i124 = call i32 @btrfs_get_32(ptr noundef %30, ptr noundef %33, i32 noundef 17) #14
  %add = add i32 %call.i.i124, 101
  %34 = inttoptr i32 %add to ptr
  call void @down_write(ptr noundef %rwsem) #14
  %srcdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 12
  %35 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %srcdev, align 8
  %tobool36.not = icmp eq ptr %36, null
  br i1 %tobool36.not, label %if.end29.if.end39_crit_edge, label %if.then37

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %devid, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end29.if.end39_crit_edge
  %.sink = phi i64 [ %38, %if.then37 ], [ -1, %if.end29.if.end39_crit_edge ]
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 0, i64 noundef %.sink) #14
  %cont_reading_from_srcdev_mode = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 9
  %39 = ptrtoint ptr %cont_reading_from_srcdev_mode to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %cont_reading_from_srcdev_mode, align 8
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 24, i64 noundef %40) #14
  %41 = ptrtoint ptr %dev_replace3 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dev_replace3, align 8
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 32, i64 noundef %42) #14
  %time_started = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 1
  %43 = ptrtoint ptr %time_started to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %time_started, align 8
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 40, i64 noundef %44) #14
  %time_stopped = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 2
  %45 = ptrtoint ptr %time_stopped to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %time_stopped, align 8
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 48, i64 noundef %46) #14
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %num_write_errors, i32 noundef 8) #14
  %call.i = call i64 @generic_atomic64_read(ptr noundef %num_write_errors) #14
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 56, i64 noundef %call.i) #14
  %num_uncorrectable_read_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 4
  %call.i.i117 = call zeroext i1 @__kasan_check_read(ptr noundef %num_uncorrectable_read_errors, i32 noundef 8) #14
  %call.i118 = call i64 @generic_atomic64_read(ptr noundef %num_uncorrectable_read_errors) #14
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 64, i64 noundef %call.i118) #14
  %cursor_left = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 5
  %47 = ptrtoint ptr %cursor_left to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %cursor_left, align 8
  %cursor_left_last_write_of_item = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 7
  %49 = ptrtoint ptr %cursor_left_last_write_of_item to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %cursor_left_last_write_of_item, align 8
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 8, i64 noundef %48) #14
  %cursor_right = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 8
  %50 = ptrtoint ptr %cursor_right to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cursor_right, align 8
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %34, i32 noundef 16, i64 noundef %51) #14
  %52 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %item_needs_writeback, align 4
  call void @up_write(ptr noundef %rwsem) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %30) #14
  br label %out

out:                                              ; preds = %if.end39, %if.then27, %if.then20, %if.then11, %if.end.out_crit_edge
  %ret.2 = phi i32 [ %call10, %if.then11 ], [ %call.i120, %if.then20 ], [ %call.i121, %if.then27 ], [ %ret.1, %if.end39 ], [ -12, %if.end.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_finish_block_group_to_copy(ptr noundef readnone %srcdev, ptr noundef %cache, i64 noundef %physical) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.not = icmp eq i64 %6, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 17
  %7 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %removed, align 8
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @btrfs_get_chunk_map(ptr noundef %1, i64 noundef %3, i64 noundef 1) #14
  %cmp.i54 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %cond.false, label %cond.end, !prof !96

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 610) #18
  unreachable

cond.end:                                         ; preds = %if.end4
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call6, i32 0, i32 12
  %9 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_lookup, align 4
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp55 = icmp sgt i32 %12, 0
  br i1 %cmp55, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.058 = phi i32 [ %inc20, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %cur_extent.057 = phi i32 [ %cur_extent.1, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %num_extents.056 = phi i32 [ %num_extents.1, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.map_lookup, ptr %10, i32 0, i32 7, i32 %i.058
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %cmp11.not = icmp eq ptr %14, %srcdev
  br i1 %cmp11.not, label %if.end13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %num_extents.056, 1
  %physical16 = getelementptr %struct.map_lookup, ptr %10, i32 0, i32 7, i32 %i.058, i32 1
  %15 = ptrtoint ptr %physical16 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %physical16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %physical)
  %cmp17 = icmp eq i64 %16, %physical
  %spec.select = select i1 %cmp17, i32 %i.058, i32 %cur_extent.057
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body.for.inc_crit_edge
  %num_extents.1 = phi i32 [ %num_extents.056, %for.body.for.inc_crit_edge ], [ %inc, %if.end13 ]
  %cur_extent.1 = phi i32 [ %cur_extent.057, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end13 ]
  %inc20 = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc20, %12
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %num_extents.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %num_extents.1, %for.inc.for.end_crit_edge ]
  %cur_extent.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %cur_extent.1, %for.inc.for.end_crit_edge ]
  tail call void @free_extent_map(ptr noundef %call6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_extents.0.lcssa)
  %cmp21 = icmp sgt i32 %num_extents.0.lcssa, 1
  %sub = add i32 %num_extents.0.lcssa, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_extent.0.lcssa, i32 %sub)
  %cmp22 = icmp slt i32 %cur_extent.0.lcssa, %sub
  %or.cond = select i1 %cmp21, i1 %cmp22, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %17 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load26 = load i8, ptr %removed, align 8
  %bf.clear27 = and i8 %bf.load26, -17
  store i8 %bf.clear27, ptr %removed, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end24 ], [ true, %entry.cleanup_crit_edge ], [ false, %for.end.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_chunk_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %expr, ptr noundef nonnull @.str.6, i32 noundef %line) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #14, !srcloc !97
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_dev_replace_by_ioctl(ptr noundef %fs_info, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i.i = alloca %struct.btrfs_key, align 8
  %devid.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cont_reading_from_srcdev_mode = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %cont_reading_from_srcdev_mode to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cont_reading_from_srcdev_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %1)
  %switch = icmp ult i64 %1, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.lor.lhs.false_crit_edge

sw.epilog.lor.lhs.false_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.epilog
  %srcdev_name = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %srcdev_name to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %srcdev_name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1 = icmp eq i8 %6, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %sw.epilog.lor.lhs.false_crit_edge
  %tgtdev_name = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 3
  %7 = ptrtoint ptr %tgtdev_name to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tgtdev_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp5 = icmp eq i8 %8, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %srcdev_name9 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 2
  %dev_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 4
  %9 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_root.i, align 4
  %dev_replace1.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %call.i = tail call ptr @btrfs_find_device_by_devspec(ptr noundef %fs_info, i64 noundef %4, ptr noundef %srcdev_name9) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call.i to i32
  br label %btrfs_dev_replace_start.exit

if.end.i:                                         ; preds = %if.end
  %call4.i = tail call zeroext i1 @btrfs_pinned_by_swapfile(ptr noundef %fs_info, ptr noundef %call.i) #14
  br i1 %call4.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %do.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.body.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.body.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.body.i.rcu_read_lock.exit.i_crit_edge
  %tobool.not.i182.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i182.i, label %rcu_read_lock.exit.i.btrfs_dev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

rcu_read_lock.exit.i.btrfs_dev_name.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i
  %dev_state.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dev_state.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.btrfs_dev_name.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_dev_name.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_name.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %name.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %name.i.i, align 8
  %call3.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i183.i, label %if.else.i.i.do.end11.i.i_crit_edge

if.else.i.i.do.end11.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i.i

land.lhs.true.i183.i:                             ; preds = %if.else.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i183.i.do.end11.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i183.i.do.end11.i.i_crit_edge:      ; preds = %land.lhs.true.i183.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i183.i
  %.b16.i.i = load i1, ptr @btrfs_dev_name.__warned, align 1
  br i1 %.b16.i.i, label %land.lhs.true7.i.i.do.end11.i.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.do.end11.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 460, ptr noundef nonnull @.str.25) #14
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.do.end11.i.i_crit_edge, %land.lhs.true.i183.i.do.end11.i.i_crit_edge, %if.else.i.i.do.end11.i.i_crit_edge
  %str.i.i = getelementptr inbounds %struct.rcu_string, ptr %20, i32 0, i32 1
  br label %btrfs_dev_name.exit.i

btrfs_dev_name.exit.i:                            ; preds = %do.end11.i.i, %lor.lhs.false.i.i.btrfs_dev_name.exit.i_crit_edge, %rcu_read_lock.exit.i.btrfs_dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %str.i.i, %do.end11.i.i ], [ @.str.38, %lor.lhs.false.i.i.btrfs_dev_name.exit.i_crit_edge ], [ @.str.38, %rcu_read_lock.exit.i.btrfs_dev_name.exit.i_crit_edge ]
  %devid.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %devid.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %devid.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i, i64 noundef %22) #17
  %call.i184.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i184.i, label %btrfs_dev_name.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i187.i

btrfs_dev_name.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %btrfs_dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i187.i:                             ; preds = %btrfs_dev_name.exit.i
  %call1.i185.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185.i)
  %tobool.not.i186.i = icmp eq i32 %call1.i185.i, 0
  br i1 %tobool.not.i186.i, label %land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i189.i

land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i189.i:                            ; preds = %land.lhs.true.i187.i
  %.b4.i188.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i188.i, label %land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i190.i

land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i189.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i190.i:                                   ; preds = %land.lhs.true2.i189.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i190.i, %land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge, %btrfs_dev_name.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  %23 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i191.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i191.i to ptr
  %preempt_count.i.i.i.i192.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i192.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i192.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %btrfs_dev_replace_start.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @btrfs_attach_transaction(ptr noundef %10) #14
  %cmp.i193.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  %call11.i = tail call i32 @btrfs_commit_transaction(ptr noundef %call8.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.then10.i.if.end18.i_crit_edge, label %if.then10.i.btrfs_dev_replace_start.exit_crit_edge

if.then10.i.btrfs_dev_replace_start.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_replace_start.exit

if.then10.i.if.end18.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end7.i
  %27 = ptrtoint ptr %call8.i to i32
  %cmp.not.i = icmp eq ptr %call8.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i, label %if.else.i.if.end18.i_crit_edge, label %if.else.i.btrfs_dev_replace_start.exit_crit_edge

if.else.i.btrfs_dev_replace_start.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_replace_start.exit

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.then10.i.if.end18.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %devid.i.i) #14
  %28 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %devid.i.i, align 8
  %fs_devices.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %fs_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_devices.i.i, align 8
  %seeding.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %seeding.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %seeding.i.i, align 8, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i194.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i194.i, label %if.end.i.i, label %btrfs_init_dev_replace_tgtdev.exit.thread218.i

btrfs_init_dev_replace_tgtdev.exit.thread218.i:   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.27) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devid.i.i) #14
  br label %btrfs_dev_replace_start.exit.thread

if.end.i.i:                                       ; preds = %if.end18.i
  %bdev_holder.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 122
  %33 = ptrtoint ptr %bdev_holder.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev_holder.i.i, align 4
  %call.i196.i = tail call ptr @blkdev_get_by_path(ptr noundef %tgtdev_name, i32 noundef 130, ptr noundef %34) #14
  %cmp.i.i.i = icmp ugt ptr %call.i196.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then2.i.i, label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.28, ptr noundef %tgtdev_name) #17
  %35 = ptrtoint ptr %call.i196.i to i32
  br label %btrfs_init_dev_replace_tgtdev.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %36 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp.i.not.i.i.i = icmp eq i64 %38, 0
  %bd_queue.i.i14.i.i.i = getelementptr inbounds %struct.block_device, ptr %call.i196.i, i32 0, i32 18
  %39 = ptrtoint ptr %bd_queue.i.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_queue.i.i14.i.i.i, align 4
  %tobool.not.i15.i.i.i = icmp eq ptr %40, null
  br i1 %cmp.i.not.i.i.i, label %if.end4.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end4.i.i
  br i1 %tobool.not.i15.i.i.i, label %if.then.i.i.i.if.end7.i.i_crit_edge, label %bdev_is_zoned.exit.i.i.i

if.then.i.i.i.if.end7.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

bdev_is_zoned.exit.i.i.i:                         ; preds = %if.then.i.i.i
  %zoned.i.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 27
  %41 = ptrtoint ptr %zoned.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %zoned.i.i.i.i.i.i, align 4
  %call.off.i.i.i.i.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i.i)
  %switch.i.i.i.i.i = icmp ult i32 %call.off.i.i.i.i.i, 2
  br i1 %switch.i.i.i.i.i, label %bdev_zone_sectors.exit.i.i.i, label %bdev_is_zoned.exit.i.i.i.if.end7.i.i_crit_edge

bdev_is_zoned.exit.i.i.i.if.end7.i.i_crit_edge:   ; preds = %bdev_is_zoned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

bdev_zone_sectors.exit.i.i.i:                     ; preds = %bdev_is_zoned.exit.i.i.i
  %chunk_sectors.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 5
  %43 = ptrtoint ptr %chunk_sectors.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chunk_sectors.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i32 %44 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i.i.i, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %shl.i.i.i)
  %cmp.i165.i.i = icmp eq i64 %38, %shl.i.i.i
  br i1 %cmp.i165.i.i, label %bdev_zone_sectors.exit.i.i.i.if.end7.i.i_crit_edge, label %bdev_zone_sectors.exit.i.i.i.if.then6.i.i_crit_edge

bdev_zone_sectors.exit.i.i.i.if.then6.i.i_crit_edge: ; preds = %bdev_zone_sectors.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i.i

bdev_zone_sectors.exit.i.i.i.if.end7.i.i_crit_edge: ; preds = %bdev_zone_sectors.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

if.end4.i.i.i:                                    ; preds = %if.end4.i.i
  br i1 %tobool.not.i15.i.i.i, label %if.end4.i.i.i.if.end7.i.i_crit_edge, label %btrfs_check_device_zone_type.exit.i.i

if.end4.i.i.i.if.end7.i.i_crit_edge:              ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

btrfs_check_device_zone_type.exit.i.i:            ; preds = %if.end4.i.i.i
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 27
  %45 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %zoned.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %phi.cmp.i.not.i.i = icmp eq i32 %46, 2
  br i1 %phi.cmp.i.not.i.i, label %btrfs_check_device_zone_type.exit.i.i.if.then6.i.i_crit_edge, label %btrfs_check_device_zone_type.exit.i.i.if.end7.i.i_crit_edge

btrfs_check_device_zone_type.exit.i.i.if.end7.i.i_crit_edge: ; preds = %btrfs_check_device_zone_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

btrfs_check_device_zone_type.exit.i.i.if.then6.i.i_crit_edge: ; preds = %btrfs_check_device_zone_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %btrfs_check_device_zone_type.exit.i.i.if.then6.i.i_crit_edge, %bdev_zone_sectors.exit.i.i.i.if.then6.i.i_crit_edge
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.29) #17
  br label %error.i.i

if.end7.i.i:                                      ; preds = %btrfs_check_device_zone_type.exit.i.i.if.end7.i.i_crit_edge, %if.end4.i.i.i.if.end7.i.i_crit_edge, %bdev_zone_sectors.exit.i.i.i.if.end7.i.i_crit_edge, %bdev_is_zoned.exit.i.i.i.if.end7.i.i_crit_edge, %if.then.i.i.i.if.end7.i.i_crit_edge
  %call8.i.i = tail call i32 @sync_blockdev(ptr noundef %call.i196.i) #14
  %fs_devices9.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %47 = ptrtoint ptr %fs_devices9.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fs_devices9.i.i, align 8
  %devices.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %48, i32 0, i32 13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end7.i.i
  %device.0.in.i.i = phi ptr [ %devices.i.i, %if.end7.i.i ], [ %device.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %49 = ptrtoint ptr %device.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %device.0.i.i = load ptr, ptr %device.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %device.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bdev12.i.i = getelementptr inbounds %struct.btrfs_device, ptr %device.0.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %bdev12.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev12.i.i, align 8
  %cmp13.i.i = icmp eq ptr %51, %call.i196.i
  br i1 %cmp13.i.i, label %if.then14.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.30) #17
  br label %error.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %call.i196.i, i32 0, i32 1
  %52 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  %data_seqcount.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 12
  %total_bytes.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %while.end.i.i.i.do.body.i.i.i_crit_edge, %for.end.i.i
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount.i.i.i) #14
  %54 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and28.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i.i)
  %tobool.not29.i.i.i = icmp eq i32 %and28.i.i.i, 0
  br i1 %tobool.not29.i.i.i, label %do.body.i.i.i.while.end.i.i.i_crit_edge, label %do.body.i.i.i.do.end.i.i.i_crit_edge

do.body.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  br label %do.end.i.i.i

do.body.i.i.i.while.end.i.i.i_crit_edge:          ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %do.body.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !101
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !102
  %56 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and.i.i.i = and i32 %57, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.while.end.i.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i.i

do.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end.i.i.i.while.end.i.i.i_crit_edge, %do.body.i.i.i.while.end.i.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %55, %do.body.i.i.i.while.end.i.i.i_crit_edge ], [ %57, %do.end.i.i.i.while.end.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %58 = ptrtoint ptr %total_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %total_bytes.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %60 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq i32 %61, %.lcssa.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %btrfs_device_get_total_bytes.exit.i.i, label %while.end.i.i.i.do.body.i.i.i_crit_edge

while.end.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

btrfs_device_get_total_bytes.exit.i.i:            ; preds = %while.end.i.i.i
  %shl.i166.i.i = shl i64 %53, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i166.i.i, i64 %59)
  %cmp23.i.i = icmp ult i64 %shl.i166.i.i, %59
  br i1 %cmp23.i.i, label %if.then24.i.i, label %if.end25.i.i

if.then24.i.i:                                    ; preds = %btrfs_device_get_total_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.31) #17
  br label %error.i.i

if.end25.i.i:                                     ; preds = %btrfs_device_get_total_bytes.exit.i.i
  %call26.i.i = call ptr @btrfs_alloc_device(ptr noundef null, ptr noundef nonnull %devid.i.i, ptr noundef null) #14
  %cmp.i167.i.i = icmp ugt ptr %call26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.i.i, label %if.then28.i.i, label %if.end30.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %call26.i.i to i32
  br label %error.i.i

if.end30.i.i:                                     ; preds = %if.end25.i.i
  %call.i.i197.i = call i32 @strlen(ptr noundef %tgtdev_name) #19
  %add1.i.i.i = add i32 %call.i.i197.i, 9
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i.i.i, i32 noundef 3520) #20
  %tobool.not.i168.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i168.i.i, label %if.then33.i.i, label %do.body.i.i

if.then33.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_free_device(ptr noundef %call26.i.i) #14
  br label %error.i.i

do.body.i.i:                                      ; preds = %if.end30.i.i
  %add.i.i.i = add i32 %call.i.i197.i, 1
  %str.i.i.i = getelementptr inbounds %struct.rcu_string, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %call3.i.i.i = call ptr @strncpy(ptr noundef %str.i.i.i, ptr noundef %tgtdev_name, i32 noundef %add.i.i.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  %name58.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %name58.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call9.i.i.i.i.i, ptr %name58.i.i, align 8
  %dev_state.i198.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 10
  call void @_set_bit(i32 noundef 0, ptr noundef %dev_state.i198.i) #14
  %generation.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 6
  %64 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %generation.i.i, align 8
  %sectorsize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %65 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sectorsize.i.i, align 4
  %io_width.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 18
  %67 = ptrtoint ptr %io_width.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %io_width.i.i, align 4
  %68 = load i32, ptr %sectorsize.i.i, align 4
  %io_align.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %io_align.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %io_align.i.i, align 8
  %70 = load i32, ptr %sectorsize.i.i, align 4
  %sector_size.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 20
  %71 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sector_size.i.i, align 8
  br label %do.body.i173.i.i

do.body.i173.i.i:                                 ; preds = %while.end.i179.i.i.do.body.i173.i.i_crit_edge, %do.body.i.i
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount.i.i.i) #14
  %72 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and28.i171.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i171.i.i)
  %tobool.not29.i172.i.i = icmp eq i32 %and28.i171.i.i, 0
  br i1 %tobool.not29.i172.i.i, label %do.body.i173.i.i.while.end.i179.i.i_crit_edge, label %do.body.i173.i.i.do.end.i176.i.i_crit_edge

do.body.i173.i.i.do.end.i176.i.i_crit_edge:       ; preds = %do.body.i173.i.i
  br label %do.end.i176.i.i

do.body.i173.i.i.while.end.i179.i.i_crit_edge:    ; preds = %do.body.i173.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i179.i.i

do.end.i176.i.i:                                  ; preds = %do.end.i176.i.i.do.end.i176.i.i_crit_edge, %do.body.i173.i.i.do.end.i176.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !101
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !102
  %74 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and.i174.i.i = and i32 %75, 1
  %tobool.not.i175.i.i = icmp eq i32 %and.i174.i.i, 0
  br i1 %tobool.not.i175.i.i, label %do.end.i176.i.i.while.end.i179.i.i_crit_edge, label %do.end.i176.i.i.do.end.i176.i.i_crit_edge

do.end.i176.i.i.do.end.i176.i.i_crit_edge:        ; preds = %do.end.i176.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i176.i.i

do.end.i176.i.i.while.end.i179.i.i_crit_edge:     ; preds = %do.end.i176.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i179.i.i

while.end.i179.i.i:                               ; preds = %do.end.i176.i.i.while.end.i179.i.i_crit_edge, %do.body.i173.i.i.while.end.i179.i.i_crit_edge
  %.lcssa.i177.i.i = phi i32 [ %73, %do.body.i173.i.i.while.end.i179.i.i_crit_edge ], [ %75, %do.end.i176.i.i.while.end.i179.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %76 = ptrtoint ptr %total_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %total_bytes.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %78 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %cmp.i.i.not.i178.i.i = icmp eq i32 %79, %.lcssa.i177.i.i
  br i1 %cmp.i.i.not.i178.i.i, label %btrfs_device_get_total_bytes.exit180.i.i, label %while.end.i179.i.i.do.body.i173.i.i_crit_edge

while.end.i179.i.i.do.body.i173.i.i_crit_edge:    ; preds = %while.end.i179.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i173.i.i

btrfs_device_get_total_bytes.exit180.i.i:         ; preds = %while.end.i179.i.i
  %total_bytes.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 14
  %80 = ptrtoint ptr %total_bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %77, ptr %total_bytes.i.i, align 8
  %disk_total_bytes.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 15
  br label %do.body.i184.i.i

do.body.i184.i.i:                                 ; preds = %while.end.i190.i.i.do.body.i184.i.i_crit_edge, %btrfs_device_get_total_bytes.exit180.i.i
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount.i.i.i) #14
  %81 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and28.i182.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i182.i.i)
  %tobool.not29.i183.i.i = icmp eq i32 %and28.i182.i.i, 0
  br i1 %tobool.not29.i183.i.i, label %do.body.i184.i.i.while.end.i190.i.i_crit_edge, label %do.body.i184.i.i.do.end.i187.i.i_crit_edge

do.body.i184.i.i.do.end.i187.i.i_crit_edge:       ; preds = %do.body.i184.i.i
  br label %do.end.i187.i.i

do.body.i184.i.i.while.end.i190.i.i_crit_edge:    ; preds = %do.body.i184.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i190.i.i

do.end.i187.i.i:                                  ; preds = %do.end.i187.i.i.do.end.i187.i.i_crit_edge, %do.body.i184.i.i.do.end.i187.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !106
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !107
  %83 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and.i185.i.i = and i32 %84, 1
  %tobool.not.i186.i.i = icmp eq i32 %and.i185.i.i, 0
  br i1 %tobool.not.i186.i.i, label %do.end.i187.i.i.while.end.i190.i.i_crit_edge, label %do.end.i187.i.i.do.end.i187.i.i_crit_edge

do.end.i187.i.i.do.end.i187.i.i_crit_edge:        ; preds = %do.end.i187.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i187.i.i

do.end.i187.i.i.while.end.i190.i.i_crit_edge:     ; preds = %do.end.i187.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i190.i.i

while.end.i190.i.i:                               ; preds = %do.end.i187.i.i.while.end.i190.i.i_crit_edge, %do.body.i184.i.i.while.end.i190.i.i_crit_edge
  %.lcssa.i188.i.i = phi i32 [ %82, %do.body.i184.i.i.while.end.i190.i.i_crit_edge ], [ %84, %do.end.i187.i.i.while.end.i190.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  %85 = ptrtoint ptr %disk_total_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %disk_total_bytes.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %87 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %cmp.i.i.not.i189.i.i = icmp eq i32 %88, %.lcssa.i188.i.i
  br i1 %cmp.i.i.not.i189.i.i, label %btrfs_device_get_disk_total_bytes.exit.i.i, label %while.end.i190.i.i.do.body.i184.i.i_crit_edge

while.end.i190.i.i.do.body.i184.i.i_crit_edge:    ; preds = %while.end.i190.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i184.i.i

btrfs_device_get_disk_total_bytes.exit.i.i:       ; preds = %while.end.i190.i.i
  %disk_total_bytes.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 15
  %89 = ptrtoint ptr %disk_total_bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %86, ptr %disk_total_bytes.i.i, align 8
  %bytes_used.i.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 16
  br label %do.body.i194.i.i

do.body.i194.i.i:                                 ; preds = %while.end.i200.i.i.do.body.i194.i.i_crit_edge, %btrfs_device_get_disk_total_bytes.exit.i.i
  call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount.i.i.i) #14
  %90 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and28.i192.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i192.i.i)
  %tobool.not29.i193.i.i = icmp eq i32 %and28.i192.i.i, 0
  br i1 %tobool.not29.i193.i.i, label %do.body.i194.i.i.while.end.i200.i.i_crit_edge, label %do.body.i194.i.i.do.end.i197.i.i_crit_edge

do.body.i194.i.i.do.end.i197.i.i_crit_edge:       ; preds = %do.body.i194.i.i
  br label %do.end.i197.i.i

do.body.i194.i.i.while.end.i200.i.i_crit_edge:    ; preds = %do.body.i194.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i200.i.i

do.end.i197.i.i:                                  ; preds = %do.end.i197.i.i.do.end.i197.i.i_crit_edge, %do.body.i194.i.i.do.end.i197.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !110
  %92 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %and.i195.i.i = and i32 %93, 1
  %tobool.not.i196.i.i = icmp eq i32 %and.i195.i.i, 0
  br i1 %tobool.not.i196.i.i, label %do.end.i197.i.i.while.end.i200.i.i_crit_edge, label %do.end.i197.i.i.do.end.i197.i.i_crit_edge

do.end.i197.i.i.do.end.i197.i.i_crit_edge:        ; preds = %do.end.i197.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i197.i.i

do.end.i197.i.i.while.end.i200.i.i_crit_edge:     ; preds = %do.end.i197.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i200.i.i

while.end.i200.i.i:                               ; preds = %do.end.i197.i.i.while.end.i200.i.i_crit_edge, %do.body.i194.i.i.while.end.i200.i.i_crit_edge
  %.lcssa.i198.i.i = phi i32 [ %91, %do.body.i194.i.i.while.end.i200.i.i_crit_edge ], [ %93, %do.end.i197.i.i.while.end.i200.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %94 = ptrtoint ptr %bytes_used.i.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %bytes_used.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %96 = ptrtoint ptr %data_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %data_seqcount.i.i.i, align 4
  %cmp.i.i.not.i199.i.i = icmp eq i32 %97, %.lcssa.i198.i.i
  br i1 %cmp.i.i.not.i199.i.i, label %btrfs_device_get_bytes_used.exit.i.i, label %while.end.i200.i.i.do.body.i194.i.i_crit_edge

while.end.i200.i.i.do.body.i194.i.i_crit_edge:    ; preds = %while.end.i200.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i194.i.i

btrfs_device_get_bytes_used.exit.i.i:             ; preds = %while.end.i200.i.i
  %bytes_used.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 16
  %98 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %95, ptr %bytes_used.i.i, align 8
  %commit_total_bytes.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 22
  %99 = ptrtoint ptr %commit_total_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %commit_total_bytes.i.i, align 8
  %commit_total_bytes75.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 22
  %101 = ptrtoint ptr %commit_total_bytes75.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %commit_total_bytes75.i.i, align 8
  %commit_bytes_used.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 23
  %102 = ptrtoint ptr %commit_bytes_used.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %95, ptr %commit_bytes_used.i.i, align 8
  %fs_info77.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 4
  %103 = ptrtoint ptr %fs_info77.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %fs_info, ptr %fs_info77.i.i, align 4
  %bdev78.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 7
  %104 = ptrtoint ptr %bdev78.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i196.i, ptr %bdev78.i.i, align 8
  call void @_set_bit(i32 noundef 1, ptr noundef %dev_state.i198.i) #14
  call void @_set_bit(i32 noundef 3, ptr noundef %dev_state.i198.i) #14
  %mode.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 9
  %105 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 128, ptr %mode.i.i, align 8
  %dev_stats_valid.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 27
  %106 = ptrtoint ptr %dev_stats_valid.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %dev_stats_valid.i.i, align 8
  %107 = ptrtoint ptr %bdev78.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bdev78.i.i, align 8
  %call82.i.i = call i32 @set_blocksize(ptr noundef %108, i32 noundef 4096) #14
  %109 = ptrtoint ptr %fs_devices9.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fs_devices9.i.i, align 8
  %fs_devices84.i.i = getelementptr inbounds %struct.btrfs_device, ptr %call26.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %fs_devices84.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %fs_devices84.i.i, align 8
  %call85.i.i = call i32 @btrfs_get_dev_zone_info(ptr noundef %call26.i.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i.i)
  %tobool86.not.i.i = icmp eq i32 %call85.i.i, 0
  br i1 %tobool86.not.i.i, label %if.end88.i.i, label %btrfs_device_get_bytes_used.exit.i.i.error.i.i_crit_edge

btrfs_device_get_bytes_used.exit.i.i.error.i.i_crit_edge: ; preds = %btrfs_device_get_bytes_used.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error.i.i

if.end88.i.i:                                     ; preds = %btrfs_device_get_bytes_used.exit.i.i
  %112 = ptrtoint ptr %fs_devices9.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fs_devices9.i.i, align 8
  %device_list_mutex.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %113, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %device_list_mutex.i.i, i32 noundef 0) #14
  %114 = ptrtoint ptr %fs_devices9.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fs_devices9.i.i, align 8
  %devices92.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %115, i32 0, i32 13
  %116 = ptrtoint ptr %devices92.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %devices92.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call26.i.i, ptr noundef %devices92.i.i, ptr noundef %117) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end88.i.i.btrfs_init_dev_replace_tgtdev.exit.thread.i_crit_edge

if.end88.i.i.btrfs_init_dev_replace_tgtdev.exit.thread.i_crit_edge: ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_init_dev_replace_tgtdev.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call26.i.i, ptr %prev1.i.i.i.i, align 4
  %119 = ptrtoint ptr %call26.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %call26.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call26.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %devices92.i.i, ptr %prev3.i.i.i.i, align 4
  %121 = ptrtoint ptr %devices92.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %call26.i.i, ptr %devices92.i.i, align 4
  br label %btrfs_init_dev_replace_tgtdev.exit.thread.i

btrfs_init_dev_replace_tgtdev.exit.thread.i:      ; preds = %if.end.i.i.i.i, %if.end88.i.i.btrfs_init_dev_replace_tgtdev.exit.thread.i_crit_edge
  %122 = ptrtoint ptr %fs_devices9.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fs_devices9.i.i, align 8
  %num_devices.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %num_devices.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %num_devices.i.i, align 8
  %inc.i.i = add i64 %125, 1
  store i64 %inc.i.i, ptr %num_devices.i.i, align 8
  %126 = load ptr, ptr %fs_devices9.i.i, align 8
  %open_devices.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %open_devices.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %open_devices.i.i, align 8
  %inc95.i.i = add i64 %128, 1
  store i64 %inc95.i.i, ptr %open_devices.i.i, align 8
  %129 = load ptr, ptr %fs_devices9.i.i, align 8
  %device_list_mutex97.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %129, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex97.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devid.i.i) #14
  br label %if.end22.i

error.i.i:                                        ; preds = %btrfs_device_get_bytes_used.exit.i.i.error.i.i_crit_edge, %if.then33.i.i, %if.then28.i.i, %if.then24.i.i, %if.then14.i.i, %if.then6.i.i
  %ret.0.i.i = phi i32 [ -17, %if.then14.i.i ], [ -22, %if.then24.i.i ], [ %62, %if.then28.i.i ], [ %call85.i.i, %btrfs_device_get_bytes_used.exit.i.i.error.i.i_crit_edge ], [ -12, %if.then33.i.i ], [ -22, %if.then6.i.i ]
  call void @blkdev_put(ptr noundef %call.i196.i, i32 noundef 128) #14
  br label %btrfs_init_dev_replace_tgtdev.exit.i

btrfs_init_dev_replace_tgtdev.exit.i:             ; preds = %error.i.i, %if.then2.i.i
  %retval.0.i199.i = phi i32 [ %35, %if.then2.i.i ], [ %ret.0.i.i, %error.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devid.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i199.i)
  %tobool20.not.i = icmp eq i32 %retval.0.i199.i, 0
  br i1 %tobool20.not.i, label %btrfs_init_dev_replace_tgtdev.exit.i.if.end22.i_crit_edge, label %btrfs_init_dev_replace_tgtdev.exit.i.btrfs_dev_replace_start.exit_crit_edge

btrfs_init_dev_replace_tgtdev.exit.i.btrfs_dev_replace_start.exit_crit_edge: ; preds = %btrfs_init_dev_replace_tgtdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_replace_start.exit

btrfs_init_dev_replace_tgtdev.exit.i.if.end22.i_crit_edge: ; preds = %btrfs_init_dev_replace_tgtdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.end22.i:                                       ; preds = %btrfs_init_dev_replace_tgtdev.exit.i.if.end22.i_crit_edge, %btrfs_init_dev_replace_tgtdev.exit.thread.i
  %tgt_device.0217.i = phi ptr [ %call26.i.i, %btrfs_init_dev_replace_tgtdev.exit.thread.i ], [ null, %btrfs_init_dev_replace_tgtdev.exit.i.if.end22.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i) #14
  %130 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i, i32 0, i32 1
  %131 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i, i32 0, i32 2
  %132 = call ptr @memset(ptr %key.i.i, i32 255, i32 17)
  %133 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_root.i, align 4
  %135 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %135, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %137)
  %cmp.i.not.i.i = icmp eq i64 %137, 0
  br i1 %cmp.i.not.i.i, label %mark_block_group_to_copy.exit.thread.i, label %if.end.i200.i

mark_block_group_to_copy.exit.thread.i:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #14
  br label %if.end26.i

if.end.i200.i:                                    ; preds = %if.end22.i
  %chunk_mutex.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 50
  call void @mutex_lock_nested(ptr noundef %chunk_mutex.i.i, i32 noundef 0) #14
  %trans_lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 57
  call void @_raw_spin_lock(ptr noundef %trans_lock.i.i) #14
  %running_transaction.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 37
  %138 = ptrtoint ptr %running_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %running_transaction.i.i, align 8
  %tobool.not159.i.i = icmp eq ptr %139, null
  br i1 %tobool.not159.i.i, label %if.end.i200.i.while.end.i.i_crit_edge, label %if.end.i200.i.land.rhs.i.i_crit_edge

if.end.i200.i.land.rhs.i.i_crit_edge:             ; preds = %if.end.i200.i
  br label %land.rhs.i.i

if.end.i200.i.while.end.i.i_crit_edge:            ; preds = %if.end.i200.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %while.cond.backedge.i.i.land.rhs.i.i_crit_edge, %if.end.i200.i.land.rhs.i.i_crit_edge
  %140 = phi ptr [ %144, %while.cond.backedge.i.i.land.rhs.i.i_crit_edge ], [ %139, %if.end.i200.i.land.rhs.i.i_crit_edge ]
  %dev_update_list.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %140, i32 0, i32 13
  %141 = ptrtoint ptr %dev_update_list.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %dev_update_list.i.i, align 4
  %cmp.i147.not.i.i = icmp eq ptr %142, %dev_update_list.i.i
  br i1 %cmp.i147.not.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge, label %while.body.i.i

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @_raw_spin_unlock(ptr noundef %trans_lock.i.i) #14
  call void @mutex_unlock(ptr noundef %chunk_mutex.i.i) #14
  %call6.i.i = call ptr @btrfs_attach_transaction(ptr noundef %134) #14
  %cmp.i148.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148.i.i, label %if.then8.i.i, label %if.end13.i.i

if.then8.i.i:                                     ; preds = %while.body.i.i
  call void @mutex_lock_nested(ptr noundef %chunk_mutex.i.i, i32 noundef 0) #14
  %cmp.i201.i = icmp eq ptr %call6.i.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i201.i, label %if.then8.i.i.while.cond.backedge.i.i_crit_edge, label %unlock.loopexit.split.loop.exit.i.i

if.then8.i.i.while.cond.backedge.i.i_crit_edge:   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end13.i.i.while.cond.backedge.i.i_crit_edge, %if.then8.i.i.while.cond.backedge.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %trans_lock.i.i) #14
  %143 = ptrtoint ptr %running_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %running_transaction.i.i, align 8
  %tobool.not.i202.i = icmp eq ptr %144, null
  br i1 %tobool.not.i202.i, label %while.cond.backedge.i.i.while.end.i.i_crit_edge, label %while.cond.backedge.i.i.land.rhs.i.i_crit_edge

while.cond.backedge.i.i.land.rhs.i.i_crit_edge:   ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

while.cond.backedge.i.i.while.end.i.i_crit_edge:  ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

if.end13.i.i:                                     ; preds = %while.body.i.i
  %call14.i.i = call i32 @btrfs_commit_transaction(ptr noundef %call6.i.i) #14
  call void @mutex_lock_nested(ptr noundef %chunk_mutex.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool16.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end13.i.i.while.cond.backedge.i.i_crit_edge, label %if.end13.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge

if.end13.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mark_block_group_to_copy.exit.thread224.i

if.end13.i.i.while.cond.backedge.i.i_crit_edge:   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i.i

while.end.i.i:                                    ; preds = %while.cond.backedge.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge, %if.end.i200.i.while.end.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %trans_lock.i.i) #14
  %call21.i.i = call ptr @btrfs_alloc_path() #14
  %tobool22.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool22.not.i.i, label %while.end.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge, label %if.end24.i.i

while.end.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mark_block_group_to_copy.exit.thread224.i

if.end24.i.i:                                     ; preds = %while.end.i.i
  %reada.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call21.i.i, i32 0, i32 3
  %145 = ptrtoint ptr %reada.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 2, ptr %reada.i.i, align 4
  %search_commit_root.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call21.i.i, i32 0, i32 5
  %146 = ptrtoint ptr %search_commit_root.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load.i.i = load i8, ptr %search_commit_root.i.i, align 2
  %bf.set27.i.i = or i8 %bf.load.i.i, 48
  store i8 %bf.set27.i.i, ptr %search_commit_root.i.i, align 2
  %devid.i203.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 13
  %147 = ptrtoint ptr %devid.i203.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %devid.i203.i, align 8
  %149 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %key.i.i, align 8
  %150 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -52, ptr %130, align 8
  %151 = ptrtoint ptr %131 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 0, ptr %131, align 1
  %call28.i.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %134, ptr noundef nonnull %key.i.i, ptr noundef nonnull %call21.i.i, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp29.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp29.i.i, label %if.end24.i.i.free_path.i.i_crit_edge, label %if.end31.i.i

if.end24.i.i.free_path.i.i_crit_edge:             ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_path.i.i

if.end31.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp32.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %cmp32.not.i.i, label %if.end31.i.i.if.end47.i.i_crit_edge, label %if.then33.i206.i

if.end31.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47.i.i

if.then33.i206.i:                                 ; preds = %if.end31.i.i
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call21.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %slots.i.i, align 4
  %154 = ptrtoint ptr %call21.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call21.i.i, align 4
  %pages.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %155, i32 0, i32 12
  %156 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pages.i.i.i, align 4
  %call.i.i204.i = call ptr @page_address(ptr noundef %157) #14
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %155, align 8
  %conv.i149.i.i = trunc i64 %159 to i32
  %and.i.i205.i = and i32 %conv.i149.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i204.i, i32 %and.i.i205.i
  %nritems.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 7
  %160 = ptrtoint ptr %nritems.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %nritems.i.i.i, align 1
  %162 = call i32 @llvm.bswap.i32(i32 %161) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %162)
  %cmp36.not.i.i = icmp ult i32 %153, %162
  br i1 %cmp36.not.i.i, label %if.then33.i206.i.if.end47.i.i_crit_edge, label %if.then37.i.i

if.then33.i206.i.if.end47.i.i_crit_edge:          ; preds = %if.then33.i206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47.i.i

if.then37.i.i:                                    ; preds = %if.then33.i206.i
  %call.i150.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %134, ptr noundef nonnull %call21.i.i, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i.i)
  %cmp39.i.i = icmp slt i32 %call.i150.i.i, 0
  br i1 %cmp39.i.i, label %if.then37.i.i.free_path.i.i_crit_edge, label %if.end41.i.i

if.then37.i.i.free_path.i.i_crit_edge:            ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_path.i.i

if.end41.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i.i)
  %cmp42.not.i.i = icmp eq i32 %call.i150.i.i, 0
  br i1 %cmp42.not.i.i, label %if.end41.i.i.if.end47.i.i_crit_edge, label %if.end41.i.i.free_path.i.i_crit_edge

if.end41.i.i.free_path.i.i_crit_edge:             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_path.i.i

if.end41.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.end41.i.i.if.end47.i.i_crit_edge, %if.then33.i206.i.if.end47.i.i_crit_edge, %if.end31.i.i.if.end47.i.i_crit_edge
  %slots52.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call21.i.i, i32 0, i32 1
  %163 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 1
  %164 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 2
  br label %while.cond48.i.i

while.cond48.i.i:                                 ; preds = %while.cond48.i.i.backedge, %if.end47.i.i
  %165 = ptrtoint ptr %call21.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %call21.i.i, align 4
  %167 = ptrtoint ptr %slots52.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %slots52.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i.i) #14
  %mul.i.i.i.i.i.i = mul i32 %168, 25
  %add.i.i.i.i.i.i = add i32 %mul.i.i.i.i.i.i, 101
  %169 = call ptr @memset(ptr %disk_key.i.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %166, ptr noundef nonnull %disk_key.i.i.i, i32 noundef %add.i.i.i.i.i.i, i32 noundef 17) #14
  %170 = ptrtoint ptr %164 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 8)
  %171 = load i64, ptr %164, align 1
  %172 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %163, align 8
  %174 = ptrtoint ptr %disk_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %disk_key.i.i.i, align 8
  %176 = call i64 @llvm.bswap.i64(i64 %175) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i.i) #14
  %177 = ptrtoint ptr %devid.i203.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %devid.i203.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %176, i64 %178)
  %cmp56.not.i.i = icmp eq i64 %176, %178
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %173)
  %cmp60.not.i.i = icmp eq i8 %173, -52
  %or.cond.i.i = select i1 %cmp56.not.i.i, i1 %cmp60.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end63.i.i, label %while.cond48.i.i.free_path.i.i_crit_edge

while.cond48.i.i.free_path.i.i_crit_edge:         ; preds = %while.cond48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_path.i.i

if.end63.i.i:                                     ; preds = %while.cond48.i.i
  %179 = call i64 @llvm.bswap.i64(i64 %171) #14
  %180 = ptrtoint ptr %131 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 8)
  %181 = load i64, ptr %131, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %179, i64 %181)
  %cmp66.i.i = icmp ult i64 %179, %181
  br i1 %cmp66.i.i, label %if.end63.i.i.free_path.i.i_crit_edge, label %if.end69.i.i

if.end63.i.i.free_path.i.i_crit_edge:             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_path.i.i

if.end69.i.i:                                     ; preds = %if.end63.i.i
  %182 = inttoptr i32 %add.i.i.i.i.i.i to ptr
  %call.i.i.i207.i = call i32 @btrfs_get_32(ptr noundef %166, ptr noundef %182, i32 noundef 17) #14
  %add.i.i = add i32 %call.i.i.i207.i, 101
  %183 = inttoptr i32 %add.i.i to ptr
  %call.i151.i.i = call i64 @btrfs_get_64(ptr noundef %166, ptr noundef %183, i32 noundef 16) #14
  %call72.i.i = call ptr @btrfs_lookup_block_group(ptr noundef %fs_info, i64 noundef %call.i151.i.i) #14
  %tobool73.not.i.i = icmp eq ptr %call72.i.i, null
  br i1 %tobool73.not.i.i, label %if.end69.i.i.skip.i.i_crit_edge, label %if.end75.i.i

if.end69.i.i.skip.i.i_crit_edge:                  ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip.i.i

if.end75.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %lock.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call72.i.i, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #14
  %to_copy.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call72.i.i, i32 0, i32 17
  %184 = ptrtoint ptr %to_copy.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %bf.load76.i.i = load i8, ptr %to_copy.i.i, align 8
  %bf.set78.i.i = or i8 %bf.load76.i.i, 16
  store i8 %bf.set78.i.i, ptr %to_copy.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #14
  call void @btrfs_put_block_group(ptr noundef nonnull %call72.i.i) #14
  br label %skip.i.i

skip.i.i:                                         ; preds = %if.end75.i.i, %if.end69.i.i.skip.i.i_crit_edge
  %185 = ptrtoint ptr %slots52.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %slots52.i.i, align 4
  %inc.i.i.i.i = add i32 %186, 1
  store i32 %inc.i.i.i.i, ptr %slots52.i.i, align 4
  %187 = ptrtoint ptr %call21.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call21.i.i, align 4
  %pages.i.i.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %188, i32 0, i32 12
  %189 = ptrtoint ptr %pages.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pages.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call ptr @page_address(ptr noundef %190) #14
  %191 = ptrtoint ptr %188 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %188, align 8
  %conv.i.i.i.i208.i = trunc i64 %192 to i32
  %and.i.i.i.i.i = and i32 %conv.i.i.i.i208.i, 4095
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 %and.i.i.i.i.i
  %nritems.i.i.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i.i, i32 0, i32 7
  %193 = ptrtoint ptr %nritems.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %nritems.i.i.i.i.i, align 1
  %195 = call i32 @llvm.bswap.i32(i32 %194) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %195)
  %cmp.not.i.i.i.i = icmp ult i32 %inc.i.i.i.i, %195
  br i1 %cmp.not.i.i.i.i, label %skip.i.i.while.cond48.i.i.backedge_crit_edge, label %btrfs_next_item.exit.i.i

skip.i.i.while.cond48.i.i.backedge_crit_edge:     ; preds = %skip.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond48.i.i.backedge

btrfs_next_item.exit.i.i:                         ; preds = %skip.i.i
  %call4.i.i.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %134, ptr noundef nonnull %call21.i.i, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp81.not.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %cmp81.not.i.i, label %btrfs_next_item.exit.i.i.while.cond48.i.i.backedge_crit_edge, label %if.then83.i.i

btrfs_next_item.exit.i.i.while.cond48.i.i.backedge_crit_edge: ; preds = %btrfs_next_item.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond48.i.i.backedge

while.cond48.i.i.backedge:                        ; preds = %btrfs_next_item.exit.i.i.while.cond48.i.i.backedge_crit_edge, %skip.i.i.while.cond48.i.i.backedge_crit_edge
  br label %while.cond48.i.i

if.then83.i.i:                                    ; preds = %btrfs_next_item.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %196 = call i32 @llvm.smin.i32(i32 %call4.i.i.i.i, i32 0) #14
  br label %free_path.i.i

free_path.i.i:                                    ; preds = %if.then83.i.i, %if.end63.i.i.free_path.i.i_crit_edge, %while.cond48.i.i.free_path.i.i_crit_edge, %if.end41.i.i.free_path.i.i_crit_edge, %if.then37.i.i.free_path.i.i_crit_edge, %if.end24.i.i.free_path.i.i_crit_edge
  %ret.4.i.i = phi i32 [ %call28.i.i, %if.end24.i.i.free_path.i.i_crit_edge ], [ %call.i150.i.i, %if.then37.i.i.free_path.i.i_crit_edge ], [ 0, %if.end41.i.i.free_path.i.i_crit_edge ], [ %196, %if.then83.i.i ], [ 0, %while.cond48.i.i.free_path.i.i_crit_edge ], [ 0, %if.end63.i.i.free_path.i.i_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call21.i.i) #14
  br label %mark_block_group_to_copy.exit.i

unlock.loopexit.split.loop.exit.i.i:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %197 = ptrtoint ptr %call6.i.i to i32
  br label %mark_block_group_to_copy.exit.i

mark_block_group_to_copy.exit.thread224.i:        ; preds = %while.end.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge, %if.end13.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge
  %ret.5.i.ph.i = phi i32 [ -12, %while.end.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge ], [ %call14.i.i, %if.end13.i.i.mark_block_group_to_copy.exit.thread224.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %chunk_mutex.i.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #14
  br label %btrfs_dev_replace_start.exit

mark_block_group_to_copy.exit.i:                  ; preds = %unlock.loopexit.split.loop.exit.i.i, %free_path.i.i
  %ret.5.i.i = phi i32 [ %ret.4.i.i, %free_path.i.i ], [ %197, %unlock.loopexit.split.loop.exit.i.i ]
  call void @mutex_unlock(ptr noundef %chunk_mutex.i.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.i.i)
  %tobool24.not.i = icmp eq i32 %ret.5.i.i, 0
  br i1 %tobool24.not.i, label %mark_block_group_to_copy.exit.i.if.end26.i_crit_edge, label %mark_block_group_to_copy.exit.i.btrfs_dev_replace_start.exit_crit_edge

mark_block_group_to_copy.exit.i.btrfs_dev_replace_start.exit_crit_edge: ; preds = %mark_block_group_to_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_replace_start.exit

mark_block_group_to_copy.exit.i.if.end26.i_crit_edge: ; preds = %mark_block_group_to_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end26.i:                                       ; preds = %mark_block_group_to_copy.exit.i.if.end26.i_crit_edge, %mark_block_group_to_copy.exit.thread.i
  %rwsem.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  call void @down_write(ptr noundef %rwsem.i) #14
  %198 = ptrtoint ptr %dev_replace1.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %dev_replace1.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.42)
  switch i64 %199, label %sw.epilog.i [
    i64 4, label %if.end26.i.sw.bb27.i_crit_edge
    i64 1, label %if.end26.i.sw.bb27.i_crit_edge88
  ]

if.end26.i.sw.bb27.i_crit_edge88:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb27.i

if.end26.i.sw.bb27.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb27.i

sw.bb27.i:                                        ; preds = %if.end26.i.sw.bb27.i_crit_edge, %if.end26.i.sw.bb27.i_crit_edge88
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.23, i32 noundef 695) #21
  unreachable

sw.epilog.i:                                      ; preds = %if.end26.i
  %200 = shl i64 %1, 32
  %conv.i = ashr exact i64 %200, 32
  %cont_reading_from_srcdev_mode.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 9
  %201 = ptrtoint ptr %cont_reading_from_srcdev_mode.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %conv.i, ptr %cont_reading_from_srcdev_mode.i, align 8
  %srcdev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %202 = ptrtoint ptr %srcdev.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call.i, ptr %srcdev.i, align 8
  %tgtdev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %203 = ptrtoint ptr %tgtdev.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %tgt_device.0217.i, ptr %tgtdev.i, align 4
  %204 = call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i170.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i.i170.i to ptr
  %preempt_count.i.i.i.i171.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %preempt_count.i.i.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %preempt_count.i.i.i.i171.i, align 4
  %add.i.i.i172.i = add i32 %207, 1
  store volatile i32 %add.i.i.i172.i, ptr %preempt_count.i.i.i.i171.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i173.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i173.i, label %sw.epilog.i.rcu_read_lock.exit180.i_crit_edge, label %land.lhs.true.i176.i

sw.epilog.i.rcu_read_lock.exit180.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit180.i

land.lhs.true.i176.i:                             ; preds = %sw.epilog.i
  %call1.i174.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174.i)
  %tobool.not.i175.i = icmp eq i32 %call1.i174.i, 0
  br i1 %tobool.not.i175.i, label %land.lhs.true.i176.i.rcu_read_lock.exit180.i_crit_edge, label %land.lhs.true2.i178.i

land.lhs.true.i176.i.rcu_read_lock.exit180.i_crit_edge: ; preds = %land.lhs.true.i176.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit180.i

land.lhs.true2.i178.i:                            ; preds = %land.lhs.true.i176.i
  %.b4.i177.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i177.i, label %land.lhs.true2.i178.i.rcu_read_lock.exit180.i_crit_edge, label %if.then.i179.i

land.lhs.true2.i178.i.rcu_read_lock.exit180.i_crit_edge: ; preds = %land.lhs.true2.i178.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit180.i

if.then.i179.i:                                   ; preds = %land.lhs.true2.i178.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit180.i

rcu_read_lock.exit180.i:                          ; preds = %if.then.i179.i, %land.lhs.true2.i178.i.rcu_read_lock.exit180.i_crit_edge, %land.lhs.true.i176.i.rcu_read_lock.exit180.i_crit_edge, %sw.epilog.i.rcu_read_lock.exit180.i_crit_edge
  %call29.i = call fastcc ptr @btrfs_dev_name(ptr noundef %call.i) #14
  %devid30.i = getelementptr inbounds %struct.btrfs_device, ptr %call.i, i32 0, i32 13
  %208 = ptrtoint ptr %devid30.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %devid30.i, align 8
  %name.i = getelementptr inbounds %struct.btrfs_device, ptr %tgt_device.0217.i, i32 0, i32 5
  %210 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile ptr, ptr %name.i, align 8
  %call35.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit180.i.do.end44.i_crit_edge

rcu_read_lock.exit180.i.do.end44.i_crit_edge:     ; preds = %rcu_read_lock.exit180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit180.i
  %call37.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true.i.do.end44.i_crit_edge, label %land.lhs.true39.i

land.lhs.true.i.do.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44.i

land.lhs.true39.i:                                ; preds = %land.lhs.true.i
  %.b169.i = load i1, ptr @btrfs_dev_replace_start.__warned, align 1
  br i1 %.b169.i, label %land.lhs.true39.i.do.end44.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_replace_start.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 709, ptr noundef nonnull @.str.25) #14
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true39.i.do.end44.i_crit_edge, %land.lhs.true.i.do.end44.i_crit_edge, %rcu_read_lock.exit180.i.do.end44.i_crit_edge
  %str.i = getelementptr inbounds %struct.rcu_string, ptr %211, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.24, ptr noundef %call29.i, i64 noundef %209, ptr noundef %str.i) #17
  call fastcc void @rcu_read_unlock() #14
  %212 = ptrtoint ptr %dev_replace1.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 1, ptr %dev_replace1.i, align 8
  %call50.i = call i64 @ktime_get_real_seconds() #14
  %time_started.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 1
  %213 = ptrtoint ptr %time_started.i to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %call50.i, ptr %time_started.i, align 8
  %cursor_left.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 5
  %is_valid.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 10
  %214 = call ptr @memset(ptr %cursor_left.i, i32 0, i32 32)
  %215 = ptrtoint ptr %is_valid.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 1, ptr %is_valid.i, align 8
  %item_needs_writeback.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 11
  %216 = ptrtoint ptr %item_needs_writeback.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %item_needs_writeback.i, align 4
  %num_write_errors.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_write_errors.i, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %num_write_errors.i, i64 noundef 0) #14
  %num_uncorrectable_read_errors.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 4
  %call.i.i181.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_uncorrectable_read_errors.i, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %num_uncorrectable_read_errors.i, i64 noundef 0) #14
  call void @up_write(ptr noundef %rwsem.i) #14
  %call52.i = call i32 @btrfs_sysfs_add_device(ptr noundef %tgt_device.0217.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %do.end44.i.if.end55.i_crit_edge, label %if.then54.i

do.end44.i.if.end55.i_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then54.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.26, i32 noundef %call52.i) #17
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %do.end44.i.if.end55.i_crit_edge
  call void @btrfs_wait_ordered_roots(ptr noundef %fs_info, i64 noundef -1, i64 noundef 0, i64 noundef -1) #14
  %call56.i = call ptr @btrfs_start_transaction(ptr noundef %10, i32 noundef 1) #14
  %cmp.i210.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.i, label %if.then58.i, label %if.end65.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  %217 = ptrtoint ptr %call56.i to i32
  call void @down_write(ptr noundef %rwsem.i) #14
  %218 = ptrtoint ptr %dev_replace1.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 0, ptr %dev_replace1.i, align 8
  %219 = ptrtoint ptr %srcdev.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %srcdev.i, align 8
  %220 = ptrtoint ptr %tgtdev.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %tgtdev.i, align 4
  call void @up_write(ptr noundef %rwsem.i) #14
  call void @btrfs_destroy_dev_replace_tgtdev(ptr noundef %tgt_device.0217.i) #14
  br label %btrfs_dev_replace_start.exit

if.end65.i:                                       ; preds = %if.end55.i
  %call66.i = call i32 @btrfs_commit_transaction(ptr noundef %call56.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end65.i.if.end85.i_crit_edge, label %do.end79.i, !prof !112

if.end65.i.if.end85.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i

do.end79.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 747, i32 noundef 9, ptr noundef null) #14
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end79.i, %if.end65.i.if.end85.i_crit_edge
  %221 = ptrtoint ptr %devid30.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %devid30.i, align 8
  %call94.i = call fastcc i64 @btrfs_device_get_total_bytes(ptr noundef %call.i) #14
  %scrub_progress.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 16
  %call95.i = call i32 @btrfs_scrub_dev(ptr noundef %fs_info, i64 noundef %222, i64 noundef 0, i64 noundef %call94.i, ptr noundef %scrub_progress.i, i32 noundef 0, i32 noundef 1) #14
  %call96.i = call fastcc i32 @btrfs_dev_replace_finishing(ptr noundef %fs_info, i32 noundef %call95.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call96.i)
  %cmp97.i = icmp eq i32 %call96.i, -115
  br i1 %cmp97.i, label %btrfs_dev_replace_start.exit.thread36, label %if.end85.i.btrfs_dev_replace_start.exit_crit_edge

if.end85.i.btrfs_dev_replace_start.exit_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_replace_start.exit

btrfs_dev_replace_start.exit.thread36:            ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  %result39 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 1
  %223 = ptrtoint ptr %result39 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 3, ptr %result39, align 8
  br label %cleanup

btrfs_dev_replace_start.exit.thread:              ; preds = %btrfs_init_dev_replace_tgtdev.exit.thread218.i, %rcu_read_unlock.exit.i
  %retval.0.i.ph = phi i32 [ -22, %btrfs_init_dev_replace_tgtdev.exit.thread218.i ], [ -26, %rcu_read_unlock.exit.i ]
  %conv1333 = sext i32 %retval.0.i.ph to i64
  %result34 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 1
  %224 = ptrtoint ptr %result34 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv1333, ptr %result34, align 8
  br label %if.end20

btrfs_dev_replace_start.exit:                     ; preds = %if.end85.i.btrfs_dev_replace_start.exit_crit_edge, %if.then58.i, %mark_block_group_to_copy.exit.i.btrfs_dev_replace_start.exit_crit_edge, %mark_block_group_to_copy.exit.thread224.i, %btrfs_init_dev_replace_tgtdev.exit.i.btrfs_dev_replace_start.exit_crit_edge, %if.else.i.btrfs_dev_replace_start.exit_crit_edge, %if.then10.i.btrfs_dev_replace_start.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ %217, %if.then58.i ], [ %call96.i, %if.end85.i.btrfs_dev_replace_start.exit_crit_edge ], [ %call11.i, %if.then10.i.btrfs_dev_replace_start.exit_crit_edge ], [ %retval.0.i199.i, %btrfs_init_dev_replace_tgtdev.exit.i.btrfs_dev_replace_start.exit_crit_edge ], [ %ret.5.i.i, %mark_block_group_to_copy.exit.i.btrfs_dev_replace_start.exit_crit_edge ], [ %27, %if.else.i.btrfs_dev_replace_start.exit_crit_edge ], [ %ret.5.i.ph.i, %mark_block_group_to_copy.exit.thread224.i ]
  %conv13 = sext i32 %retval.0.i to i64
  %result = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 1
  %225 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %conv13, ptr %result, align 8
  %226 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %retval.0.i, label %btrfs_dev_replace_start.exit.if.end20_crit_edge [
    i32 3, label %btrfs_dev_replace_start.exit.cleanup_crit_edge
    i32 0, label %btrfs_dev_replace_start.exit.cleanup_crit_edge89
  ]

btrfs_dev_replace_start.exit.cleanup_crit_edge89: ; preds = %btrfs_dev_replace_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

btrfs_dev_replace_start.exit.cleanup_crit_edge:   ; preds = %btrfs_dev_replace_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

btrfs_dev_replace_start.exit.if.end20_crit_edge:  ; preds = %btrfs_dev_replace_start.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %btrfs_dev_replace_start.exit.if.end20_crit_edge, %btrfs_dev_replace_start.exit.thread
  %retval.0.i35 = phi i32 [ %retval.0.i.ph, %btrfs_dev_replace_start.exit.thread ], [ %retval.0.i, %btrfs_dev_replace_start.exit.if.end20_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %btrfs_dev_replace_start.exit.cleanup_crit_edge, %btrfs_dev_replace_start.exit.cleanup_crit_edge89, %btrfs_dev_replace_start.exit.thread36, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i35, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %btrfs_dev_replace_start.exit.cleanup_crit_edge ], [ 0, %btrfs_dev_replace_start.exit.cleanup_crit_edge89 ], [ 0, %btrfs_dev_replace_start.exit.thread36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dev_replace_status(ptr noundef %fs_info, ptr nocapture noundef writeonly %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_replace1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  tail call void @down_read(ptr noundef %rwsem) #14
  %result = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %result, align 8
  %1 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %dev_replace1, align 8
  %3 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %2, ptr %3, align 8
  %time_started = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 1
  %5 = ptrtoint ptr %time_started to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %time_started, align 8
  %time_started3 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %time_started3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %time_started3, align 8
  %time_stopped = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 2
  %8 = ptrtoint ptr %time_stopped to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %time_stopped, align 8
  %time_stopped4 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 2, i32 8
  %10 = ptrtoint ptr %time_stopped4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %time_stopped4, align 8
  %num_write_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_write_errors, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %num_write_errors) #14
  %num_write_errors5 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 2, i32 16
  %11 = ptrtoint ptr %num_write_errors5 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %num_write_errors5, align 8
  %num_uncorrectable_read_errors = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 4
  %call.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_uncorrectable_read_errors, i32 noundef 8) #14
  %call.i24 = tail call i64 @generic_atomic64_read(ptr noundef %num_uncorrectable_read_errors) #14
  %num_uncorrectable_read_errors7 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 2, i32 24
  %12 = ptrtoint ptr %num_uncorrectable_read_errors7 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i24, ptr %num_uncorrectable_read_errors7, align 8
  %call8 = tail call fastcc i64 @btrfs_dev_replace_progress(ptr noundef %fs_info)
  %progress_1000 = getelementptr inbounds %struct.btrfs_ioctl_dev_replace_args, ptr %args, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %progress_1000 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call8, ptr %progress_1000, align 8
  tail call void @up_read(ptr noundef %rwsem) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @btrfs_dev_replace_progress(ptr nocapture noundef readonly %fs_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_replace1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %0 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_replace1, align 8
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i64 %1, label %entry.sw.epilog_crit_edge [
    i64 4, label %entry.sw.bb3_crit_edge
    i64 1, label %entry.sw.bb3_crit_edge15
    i64 2, label %sw.bb2
  ]

entry.sw.bb3_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge15
  %cursor_left = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 5
  %2 = ptrtoint ptr %cursor_left to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cursor_left, align 8
  %srcdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %4 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %srcdev, align 8
  %data_seqcount.i = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 12
  %total_bytes.i = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %sw.bb3
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount.i) #14
  %6 = ptrtoint ptr %data_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %data_seqcount.i, align 4
  %and28.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool.not29.i = icmp eq i32 %and28.i, 0
  br i1 %tobool.not29.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !101
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !102
  %8 = ptrtoint ptr %data_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %data_seqcount.i, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %7, %do.body.i.while.end.i_crit_edge ], [ %9, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %10 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %total_bytes.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %12 = ptrtoint ptr %data_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %data_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %13, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %btrfs_device_get_total_bytes.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

btrfs_device_get_total_bytes.exit:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #22, !srcloc !113
  %asmresult.i.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #22, !srcloc !114
  %asmresult10.i.i.i = extractvalue { i64, i32 } %15, 0
  %div158.i.i8 = lshr i64 %asmresult10.i.i.i, 9
  %call5 = tail call i64 @div64_u64(i64 noundef %3, i64 noundef %div158.i.i8) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %btrfs_device_get_total_bytes.exit, %sw.bb2, %entry.sw.epilog_crit_edge
  %ret.0 = phi i64 [ %call5, %btrfs_device_get_total_bytes.exit ], [ 1000, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i64 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_dev_replace_cancel(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_replace1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root, align 4
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 45
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_finishing_cancel_unmount = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock_finishing_cancel_unmount, i32 noundef 0) #14
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  tail call void @down_write(ptr noundef %rwsem) #14
  %6 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dev_replace1, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.45)
  switch i64 %7, label %sw.default [
    i64 0, label %if.end.sw.bb_crit_edge
    i64 2, label %if.end.sw.bb_crit_edge119
    i64 3, label %if.end.sw.bb_crit_edge120
    i64 1, label %sw.bb3
    i64 4, label %sw.bb10
  ]

if.end.sw.bb_crit_edge120:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge119:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge119, %if.end.sw.bb_crit_edge120
  tail call void @up_write(ptr noundef %rwsem) #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %tgtdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %8 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tgtdev, align 4
  %srcdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %10 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srcdev, align 8
  tail call void @up_write(ptr noundef %rwsem) #14
  %call5 = tail call i32 @btrfs_scrub_cancel(ptr noundef %fs_info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %sw.bb3.sw.epilog_crit_edge, label %if.else

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb3
  %12 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %call7 = tail call fastcc ptr @btrfs_dev_name(ptr noundef %11)
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %11, i32 0, i32 13
  %16 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %devid, align 8
  %call8 = tail call fastcc ptr @btrfs_dev_name(ptr noundef %9)
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.11, ptr noundef %call7, i64 noundef %17, ptr noundef %call8) #17
  tail call fastcc void @rcu_read_unlock()
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %tgtdev11 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %18 = ptrtoint ptr %tgtdev11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tgtdev11, align 4
  %srcdev12 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %20 = ptrtoint ptr %srcdev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %srcdev12, align 8
  store ptr null, ptr %tgtdev11, align 4
  store ptr null, ptr %srcdev12, align 8
  %22 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 3, ptr %dev_replace1, align 8
  %call16 = tail call i64 @ktime_get_real_seconds() #14
  %time_stopped = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 2
  %23 = ptrtoint ptr %time_stopped to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call16, ptr %time_stopped, align 8
  %item_needs_writeback = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 11
  %24 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %item_needs_writeback, align 4
  tail call void @up_write(ptr noundef %rwsem) #14
  %call18 = tail call i32 @btrfs_scrub_cancel(ptr noundef %fs_info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -107, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, -107
  br i1 %cmp19.not, label %cond.false, label %cond.end, !prof !96

cond.false:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 1149) #18
  unreachable

cond.end:                                         ; preds = %sw.bb10
  %call21 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  %25 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end26:                                         ; preds = %cond.end
  %call27 = tail call i32 @btrfs_commit_transaction(ptr noundef %call21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.if.end50_crit_edge, label %do.end44, !prof !112

if.end26.if.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

do.end44:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1157, i32 noundef 9, ptr noundef null) #14
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end26.if.end50_crit_edge
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i108 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %add.i.i.i110 = add i32 %29, 1
  store volatile i32 %add.i.i.i110, ptr %preempt_count.i.i.i.i109, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i111 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i111, label %if.end50.rcu_read_lock.exit118_crit_edge, label %land.lhs.true.i114

if.end50.rcu_read_lock.exit118_crit_edge:         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit118

land.lhs.true.i114:                               ; preds = %if.end50
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_lock.exit118_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_lock.exit118_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit118

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_lock.exit118_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_lock.exit118_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit118

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit118

rcu_read_lock.exit118:                            ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_lock.exit118_crit_edge, %land.lhs.true.i114.rcu_read_lock.exit118_crit_edge, %if.end50.rcu_read_lock.exit118_crit_edge
  %call58 = tail call fastcc ptr @btrfs_dev_name(ptr noundef %21)
  %devid59 = getelementptr inbounds %struct.btrfs_device, ptr %21, i32 0, i32 13
  %30 = ptrtoint ptr %devid59 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %devid59, align 8
  %call60 = tail call fastcc ptr @btrfs_dev_name(ptr noundef %19)
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.13, ptr noundef %call58, i64 noundef %31, ptr noundef %call60) #17
  tail call fastcc void @rcu_read_unlock()
  %tobool63.not = icmp eq ptr %19, null
  br i1 %tobool63.not, label %rcu_read_lock.exit118.sw.epilog_crit_edge, label %if.then64

rcu_read_lock.exit118.sw.epilog_crit_edge:        ; preds = %rcu_read_lock.exit118
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then64:                                        ; preds = %rcu_read_lock.exit118
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_destroy_dev_replace_tgtdev(ptr noundef nonnull %19) #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @up_write(ptr noundef %rwsem) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then64, %rcu_read_lock.exit118.sw.epilog_crit_edge, %rcu_read_lock.exit, %sw.bb3.sw.epilog_crit_edge, %sw.bb
  %result.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then64 ], [ 0, %rcu_read_lock.exit118.sw.epilog_crit_edge ], [ 0, %rcu_read_lock.exit ], [ 1, %sw.bb ], [ 1, %sw.bb3.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %sw.epilog ], [ %25, %if.then23 ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_scrub_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfs_dev_name(ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %device, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %dev_state = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 10
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %name, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.else.do.end11_crit_edge

if.else.do.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

land.lhs.true:                                    ; preds = %if.else
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @btrfs_dev_name.__warned, align 1
  br i1 %.b16, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 460, ptr noundef nonnull @.str.25) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.else.do.end11_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %4, i32 0, i32 1
  br label %return

return:                                           ; preds = %do.end11, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %str, %do.end11 ], [ @.str.38, %lor.lhs.false.return_crit_edge ], [ @.str.38, %entry.return_crit_edge ]
  ret ptr %retval.0
}

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.39) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #14
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
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_commit_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_destroy_dev_replace_tgtdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dev_replace_suspend_for_unmount(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_replace1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %lock_finishing_cancel_unmount = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock_finishing_cancel_unmount, i32 noundef 0) #14
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  tail call void @down_write(ptr noundef %rwsem) #14
  %0 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_replace1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %1)
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %sw.bb2, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4, ptr %dev_replace1, align 8
  %call = tail call i64 @ktime_get_real_seconds() #14
  %time_stopped = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 2
  %3 = ptrtoint ptr %time_stopped to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call, ptr %time_stopped, align 8
  %item_needs_writeback = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 11
  %4 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %item_needs_writeback, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.14) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #14
  tail call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_resume_dev_replace_async(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_replace1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  tail call void @down_write(ptr noundef %rwsem) #14
  %0 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_replace1, align 8
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.46)
  switch i64 %1, label %entry.sw.epilog_crit_edge [
    i64 0, label %entry.sw.bb_crit_edge
    i64 2, label %entry.sw.bb_crit_edge40
    i64 3, label %entry.sw.bb_crit_edge41
    i64 4, label %sw.bb3
  ]

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41
  tail call void @up_write(ptr noundef %rwsem) #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %dev_replace1, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %tgtdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %3 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tgtdev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.epilog.if.then_crit_edge, label %lor.lhs.false

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.15) #17
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.16) #17
  %7 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4, ptr %dev_replace1, align 8
  tail call void @up_write(ptr noundef %rwsem) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @up_write(ptr noundef %rwsem) #14
  %call = tail call zeroext i1 @btrfs_exclop_start(ptr noundef %fs_info, i32 noundef 5) #14
  br i1 %call, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @down_write(ptr noundef %rwsem) #14
  %8 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4, ptr %dev_replace1, align 8
  tail call void @up_write(ptr noundef %rwsem) #14
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.17) #17
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @btrfs_dev_replace_kthread, ptr noundef %fs_info, i32 noundef -1, ptr noundef nonnull @.str.18) #14
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call i32 @wake_up_process(ptr noundef %call15) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %9 = ptrtoint ptr %call15 to i32
  %spec.select.i = select i1 %cmp.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then10, %if.then, %sw.bb
  %retval.0 = phi i32 [ %spec.select.i, %if.end19 ], [ 0, %if.then10 ], [ 0, %if.then ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_exclop_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_dev_replace_kthread(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @btrfs_dev_replace_progress(ptr noundef %data)
  %div79.i.i80 = lshr i64 %call, 1
  %0 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i80, i64 3689348814741910323) #22, !srcloc !115
  %1 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i80, i64 %0) #22, !srcloc !116
  %2 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %srcdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %data, i32 0, i32 154, i32 12
  %6 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srcdev, align 8
  %tobool.not.i50 = icmp eq ptr %7, null
  br i1 %tobool.not.i50, label %rcu_read_lock.exit.btrfs_dev_name.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.btrfs_dev_name.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_name.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %dev_state.i = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dev_state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.btrfs_dev_name.exit_crit_edge

lor.lhs.false.i.btrfs_dev_name.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_name.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %name.i = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %name.i, align 8
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i51, label %if.else.i.do.end11.i_crit_edge

if.else.i.do.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

land.lhs.true.i51:                                ; preds = %if.else.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i51.do.end11.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i51.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i51
  %.b16.i = load i1, ptr @btrfs_dev_name.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true7.i.do.end11.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 460, ptr noundef nonnull @.str.25) #14
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end11.i_crit_edge, %land.lhs.true.i51.do.end11.i_crit_edge, %if.else.i.do.end11.i_crit_edge
  %str.i = getelementptr inbounds %struct.rcu_string, ptr %12, i32 0, i32 1
  br label %btrfs_dev_name.exit

btrfs_dev_name.exit:                              ; preds = %do.end11.i, %lor.lhs.false.i.btrfs_dev_name.exit_crit_edge, %rcu_read_lock.exit.btrfs_dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %str.i, %do.end11.i ], [ @.str.38, %lor.lhs.false.i.btrfs_dev_name.exit_crit_edge ], [ @.str.38, %rcu_read_lock.exit.btrfs_dev_name.exit_crit_edge ]
  %13 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srcdev, align 8
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %devid, align 8
  %tgtdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %data, i32 0, i32 154, i32 13
  %17 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tgtdev, align 4
  %tobool.not.i52 = icmp eq ptr %18, null
  br i1 %tobool.not.i52, label %btrfs_dev_name.exit.btrfs_dev_name.exit69_crit_edge, label %lor.lhs.false.i55

btrfs_dev_name.exit.btrfs_dev_name.exit69_crit_edge: ; preds = %btrfs_dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_name.exit69

lor.lhs.false.i55:                                ; preds = %btrfs_dev_name.exit
  %dev_state.i53 = getelementptr inbounds %struct.btrfs_device, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %dev_state.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dev_state.i53, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i54 = icmp eq i32 %21, 0
  br i1 %tobool1.not.i54, label %if.else.i59, label %lor.lhs.false.i55.btrfs_dev_name.exit69_crit_edge

lor.lhs.false.i55.btrfs_dev_name.exit69_crit_edge: ; preds = %lor.lhs.false.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_dev_name.exit69

if.else.i59:                                      ; preds = %lor.lhs.false.i55
  %name.i56 = getelementptr inbounds %struct.btrfs_device, ptr %18, i32 0, i32 5
  %22 = ptrtoint ptr %name.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %name.i56, align 8
  %call3.i57 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i57)
  %tobool4.not.i58 = icmp eq i32 %call3.i57, 0
  br i1 %tobool4.not.i58, label %land.lhs.true.i62, label %if.else.i59.do.end11.i67_crit_edge

if.else.i59.do.end11.i67_crit_edge:               ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i67

land.lhs.true.i62:                                ; preds = %if.else.i59
  %call5.i60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i60)
  %tobool6.not.i61 = icmp eq i32 %call5.i60, 0
  br i1 %tobool6.not.i61, label %land.lhs.true.i62.do.end11.i67_crit_edge, label %land.lhs.true7.i64

land.lhs.true.i62.do.end11.i67_crit_edge:         ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i67

land.lhs.true7.i64:                               ; preds = %land.lhs.true.i62
  %.b16.i63 = load i1, ptr @btrfs_dev_name.__warned, align 1
  br i1 %.b16.i63, label %land.lhs.true7.i64.do.end11.i67_crit_edge, label %if.then9.i65

land.lhs.true7.i64.do.end11.i67_crit_edge:        ; preds = %land.lhs.true7.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i67

if.then9.i65:                                     ; preds = %land.lhs.true7.i64
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 460, ptr noundef nonnull @.str.25) #14
  br label %do.end11.i67

do.end11.i67:                                     ; preds = %if.then9.i65, %land.lhs.true7.i64.do.end11.i67_crit_edge, %land.lhs.true.i62.do.end11.i67_crit_edge, %if.else.i59.do.end11.i67_crit_edge
  %str.i66 = getelementptr inbounds %struct.rcu_string, ptr %23, i32 0, i32 1
  br label %btrfs_dev_name.exit69

btrfs_dev_name.exit69:                            ; preds = %do.end11.i67, %lor.lhs.false.i55.btrfs_dev_name.exit69_crit_edge, %btrfs_dev_name.exit.btrfs_dev_name.exit69_crit_edge
  %retval.0.i68 = phi ptr [ %str.i66, %do.end11.i67 ], [ @.str.38, %lor.lhs.false.i55.btrfs_dev_name.exit69_crit_edge ], [ @.str.38, %btrfs_dev_name.exit.btrfs_dev_name.exit69_crit_edge ]
  %conv = trunc i64 %1 to i32
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %data, ptr noundef nonnull @.str.40, ptr noundef %retval.0.i, i64 noundef %16, ptr noundef %retval.0.i68, i32 noundef %conv) #17
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i70, label %btrfs_dev_name.exit69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i73

btrfs_dev_name.exit69.rcu_read_unlock.exit_crit_edge: ; preds = %btrfs_dev_name.exit69
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i73:                                ; preds = %btrfs_dev_name.exit69
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.39) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, %btrfs_dev_name.exit69.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  %24 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %28 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srcdev, align 8
  %devid7 = getelementptr inbounds %struct.btrfs_device, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %devid7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %devid7, align 8
  %committed_cursor_left = getelementptr inbounds %struct.btrfs_fs_info, ptr %data, i32 0, i32 154, i32 6
  %32 = ptrtoint ptr %committed_cursor_left to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %committed_cursor_left, align 8
  %data_seqcount.i = getelementptr inbounds %struct.btrfs_device, ptr %29, i32 0, i32 12
  %total_bytes.i = getelementptr inbounds %struct.btrfs_device, ptr %29, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %rcu_read_unlock.exit
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount.i) #14
  %34 = ptrtoint ptr %data_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %data_seqcount.i, align 4
  %and28.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool.not29.i = icmp eq i32 %and28.i, 0
  br i1 %tobool.not29.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !101
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !102
  %36 = ptrtoint ptr %data_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %data_seqcount.i, align 4
  %and.i = and i32 %37, 1
  %tobool.not.i79 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i79, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %35, %do.body.i.while.end.i_crit_edge ], [ %37, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %38 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %total_bytes.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %40 = ptrtoint ptr %data_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %data_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %41, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %btrfs_device_get_total_bytes.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

btrfs_device_get_total_bytes.exit:                ; preds = %while.end.i
  %scrub_progress = getelementptr inbounds %struct.btrfs_fs_info, ptr %data, i32 0, i32 154, i32 16
  %call10 = tail call i32 @btrfs_scrub_dev(ptr noundef %data, i64 noundef %31, i64 noundef %33, i64 noundef %39, ptr noundef %scrub_progress, i32 noundef 0, i32 noundef 1) #14
  %call11 = tail call fastcc i32 @btrfs_dev_replace_finishing(ptr noundef %data, i32 noundef %call10)
  %42 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call11, label %do.end23 [
    i32 -125, label %btrfs_device_get_total_bytes.exit.if.end_crit_edge
    i32 0, label %btrfs_device_get_total_bytes.exit.if.end_crit_edge87
  ]

btrfs_device_get_total_bytes.exit.if.end_crit_edge87: ; preds = %btrfs_device_get_total_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

btrfs_device_get_total_bytes.exit.if.end_crit_edge: ; preds = %btrfs_device_get_total_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end23:                                         ; preds = %btrfs_device_get_total_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1275, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end23, %btrfs_device_get_total_bytes.exit.if.end_crit_edge, %btrfs_device_get_total_bytes.exit.if.end_crit_edge87
  tail call void @btrfs_exclop_finish(ptr noundef %data) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @btrfs_dev_replace_is_ongoing(ptr nocapture noundef readonly %dev_replace) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_valid = getelementptr inbounds %struct.btrfs_dev_replace, ptr %dev_replace, i32 0, i32 10
  %0 = ptrtoint ptr %is_valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev_replace to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dev_replace, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %3)
  %4 = icmp ult i64 %3, 4
  br i1 %4, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = trunc i64 %3 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.btrfs_dev_replace_is_ongoing, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_bio_counter_inc_noblocked(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_counter = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %0 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bio_counter, i64 noundef 1, i32 noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_bio_counter_sub(ptr noundef %fs_info, i64 noundef %amount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_counter = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 17
  %sub.i = sub i64 0, %amount
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %0 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bio_counter, i64 noundef %sub.i, i32 noundef %0) #14
  %head.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18, i32 1
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %2, %head.i.i
  br i1 %cmp.i.i.not.i, label %entry.cond_wake_up_nomb.exit_crit_edge, label %if.then.i

entry.cond_wake_up_nomb.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond_wake_up_nomb.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %replace_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18
  tail call void @__wake_up(ptr noundef %replace_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cond_wake_up_nomb.exit

cond_wake_up_nomb.exit:                           ; preds = %if.then.i, %entry.cond_wake_up_nomb.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_bio_counter_inc_blocked(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_counter = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %0 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %bio_counter, i64 noundef 1, i32 noundef %0) #14
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %1 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %fs_state, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not36 = icmp eq i32 %3, 0
  br i1 %tobool.not36, label %entry.while.end_crit_edge, label %if.end.lr.ph, !prof !112

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %replace_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18
  br label %if.end

if.end:                                           ; preds = %do.end21.if.end_crit_edge, %if.end.lr.ph
  call fastcc void @btrfs_bio_counter_dec(ptr noundef %fs_info)
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1330) #14
  %4 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fs_state, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end.do.end21_crit_edge, label %if.end11

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call1334 = call i32 @prepare_to_wait_event(ptr noundef %replace_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %8 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %fs_state, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not35 = icmp eq i32 %10, 0
  br i1 %tobool16.not35, label %if.end11.for.end_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  br label %cleanup

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  call void @schedule() #14
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %replace_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %11 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fs_state, align 4
  %13 = and i32 %12, 16
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @finish_wait(ptr noundef %replace_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end21

do.end21:                                         ; preds = %for.end, %if.end.do.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %14 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %bio_counter, i64 noundef 1, i32 noundef %14) #14
  %15 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %fs_state, align 4
  %17 = and i32 %16, 16
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.end21.while.end_crit_edge, label %do.end21.if.end_crit_edge, !prof !112

do.end21.if.end_crit_edge:                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end21.while.end_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end21.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_bio_counter_dec(ptr noundef %fs_info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %bio_counter.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %0 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %bio_counter.i, i64 noundef -1, i32 noundef %0) #14
  %head.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18, i32 1
  %1 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %2, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %entry.btrfs_bio_counter_sub.exit_crit_edge, label %if.then.i.i

entry.btrfs_bio_counter_sub.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_bio_counter_sub.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %replace_wait.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18
  tail call void @__wake_up(ptr noundef %replace_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %btrfs_bio_counter_sub.exit

btrfs_bio_counter_sub.exit:                       ; preds = %if.then.i.i, %entry.btrfs_bio_counter_sub.exit_crit_edge
  ret void
}

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
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_device_by_devspec(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_pinned_by_swapfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_attach_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_sysfs_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_ordered_roots(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_scrub_dev(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @btrfs_device_get_total_bytes(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %data_seqcount = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12
  %total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %data_seqcount)
  %0 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %data_seqcount, align 4
  %and28 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not29 = icmp eq i32 %and28, 0
  br i1 %tobool.not29, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !101
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !102
  %2 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %data_seqcount, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body.while.end_crit_edge ], [ %3, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %4 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %6 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %data_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %7, %.lcssa
  br i1 %cmp.i.i.not, label %do.end23, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end23:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_dev_replace_finishing(ptr noundef %fs_info, i32 noundef %scrub_ret) unnamed_addr #0 align 64 {
entry:
  %cached_state.i = alloca ptr, align 4
  %found_start.i = alloca i64, align 8
  %found_end.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_replace1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root, align 4
  %lock_finishing_cancel_unmount = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock_finishing_cancel_unmount, i32 noundef 0) #14
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 15
  tail call void @down_read(ptr noundef %rwsem) #14
  %2 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dev_replace1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %3)
  %cmp.not = icmp eq i64 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @up_read(ptr noundef %rwsem) #14
  tail call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tgtdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 13
  %4 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgtdev, align 4
  %srcdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 12
  %6 = ptrtoint ptr %srcdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srcdev, align 8
  tail call void @up_read(ptr noundef %rwsem) #14
  %call = tail call i32 @btrfs_start_delalloc_roots(ptr noundef %fs_info, i32 noundef 2147483647, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @btrfs_wait_ordered_roots(ptr noundef %fs_info, i64 noundef -1, i64 noundef 0, i64 noundef -1) #14
  %call8287 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #14
  %cmp.i288 = icmp ugt ptr %call8287, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.end7.if.then10_crit_edge, label %if.end13.lr.ph

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.end13.lr.ph:                                   ; preds = %if.end7
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %chunk_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 50
  %post_commit_list = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 2
  br label %if.end13

if.then10:                                        ; preds = %if.then39.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %call8.lcssa = phi ptr [ %call8287, %if.end7.if.then10_crit_edge ], [ %call8, %if.then39.if.then10_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  %8 = ptrtoint ptr %call8.lcssa to i32
  br label %cleanup

if.end13:                                         ; preds = %if.then39.if.end13_crit_edge, %if.end13.lr.ph
  %call8289 = phi ptr [ %call8287, %if.end13.lr.ph ], [ %call8, %if.then39.if.end13_crit_edge ]
  %call14 = tail call i32 @btrfs_commit_transaction(ptr noundef %call8289) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end30_crit_edge, label %do.end, !prof !112

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 921, i32 noundef 9, ptr noundef null) #14
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end13.if.end30_crit_edge
  %9 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex = getelementptr inbounds %struct.btrfs_fs_devices, ptr %10, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %device_list_mutex, i32 noundef 0) #14
  tail call void @mutex_lock_nested(ptr noundef %chunk_mutex, i32 noundef 0) #14
  %11 = ptrtoint ptr %post_commit_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %post_commit_list, align 4
  %cmp.i278.not = icmp eq ptr %12, %post_commit_list
  br i1 %cmp.i278.not, label %while.end, label %if.then39

if.then39:                                        ; preds = %if.end30
  %13 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex41 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %14, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %device_list_mutex41) #14
  tail call void @mutex_unlock(ptr noundef %chunk_mutex) #14
  %call8 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39.if.then10_crit_edge, label %if.then39.if.end13_crit_edge

if.then39.if.end13_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then39.if.then10_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

while.end:                                        ; preds = %if.end30
  tail call void @down_write(ptr noundef %rwsem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scrub_ret)
  %tobool45.not = icmp eq i32 %scrub_ret, 0
  %cond = select i1 %tobool45.not, i32 2, i32 3
  %15 = zext i32 %cond to i64
  %16 = ptrtoint ptr %dev_replace1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %dev_replace1, align 8
  %17 = ptrtoint ptr %tgtdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tgtdev, align 4
  %18 = ptrtoint ptr %srcdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %srcdev, align 8
  %call49 = tail call i64 @ktime_get_real_seconds() #14
  %time_stopped = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 2
  %19 = ptrtoint ptr %time_stopped to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call49, ptr %time_stopped, align 8
  %item_needs_writeback = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 11
  %20 = ptrtoint ptr %item_needs_writeback to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %item_needs_writeback, align 4
  br i1 %tobool45.not, label %if.then51, label %if.else56

if.then51:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state.i) #14
  %21 = ptrtoint ptr %cached_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cached_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %found_start.i) #14
  %22 = ptrtoint ptr %found_start.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %found_start.i, align 8, !annotation !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %found_end.i) #14
  %23 = ptrtoint ptr %found_end.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %found_end.i, align 8, !annotation !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i279 = icmp eq i32 %24, 0
  br i1 %tobool.not.i279, label %if.then51.if.end.i_crit_edge, label %land.rhs.i

if.then51.if.end.i_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then51
  %fs_info.i = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info.i, align 4
  %dep_map.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 50, i32 5
  %call.i.i280 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i280)
  %cmp.not.i = icmp eq i32 %call.i.i280, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !96

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 829, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then51.if.end.i_crit_edge
  %alloc_state28.i = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 30
  %alloc_state.i = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 30
  %call2437.i = call i32 @find_first_extent_bit(ptr noundef %alloc_state.i, i64 noundef 0, ptr noundef nonnull %found_start.i, ptr noundef nonnull %found_end.i, i32 noundef 1, ptr noundef nonnull %cached_state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2437.i)
  %tobool25.not38.i = icmp eq i32 %call2437.i, 0
  br i1 %tobool25.not38.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end55_crit_edge

if.end.i.if.end55_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %27 = ptrtoint ptr %found_start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %found_start.i, align 8
  %29 = ptrtoint ptr %found_end.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %found_end.i, align 8
  %call.i36.i = call i32 @set_extent_bit(ptr noundef %alloc_state28.i, i64 noundef %28, i64 noundef %30, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool30.not.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %btrfs_set_target_alloc_state.exit

if.end32.i:                                       ; preds = %while.body.i
  %31 = ptrtoint ptr %found_end.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %found_end.i, align 8
  %add.i = add i64 %32, 1
  %call24.i = call i32 @find_first_extent_bit(ptr noundef %alloc_state.i, i64 noundef %add.i, ptr noundef nonnull %found_start.i, ptr noundef nonnull %found_end.i, i32 noundef 1, ptr noundef nonnull %cached_state.i) #14
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end32.i.while.body.i_crit_edge, label %if.end32.i.if.end55_crit_edge

if.end32.i.if.end55_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

btrfs_set_target_alloc_state.exit:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %cached_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cached_state.i, align 4
  call void @free_extent_state(ptr noundef %34) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_end.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_start.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #14
  br label %error

if.end55:                                         ; preds = %if.end32.i.if.end55_crit_edge, %if.end.i.if.end55_crit_edge
  %35 = ptrtoint ptr %cached_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cached_state.i, align 4
  call void @free_extent_state(ptr noundef %36) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_end.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %found_start.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #14
  call fastcc void @btrfs_dev_replace_update_device_in_mapping_tree(ptr noundef %fs_info, ptr noundef %7, ptr noundef %5)
  %37 = call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end55.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end55.rcu_read_lock.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end55
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end55.rcu_read_lock.exit_crit_edge
  %call92 = call fastcc ptr @btrfs_dev_name(ptr noundef %7)
  %devid93 = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 13
  %41 = ptrtoint ptr %devid93 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %devid93, align 8
  %name99 = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 5
  %43 = ptrtoint ptr %name99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %name99, align 8
  %call101 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true103, label %rcu_read_lock.exit.do.end111_crit_edge

rcu_read_lock.exit.do.end111_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end111

if.else56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %scrub_ret)
  %cmp57.not = icmp eq i32 %scrub_ret, -125
  br i1 %cmp57.not, label %if.else56.error_crit_edge, label %do.body60

if.else56.error_crit_edge:                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

do.body60:                                        ; preds = %if.else56
  %45 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i.i267 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i267 to ptr
  %preempt_count.i.i.i.i268 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i268, align 4
  %add.i.i.i269 = add i32 %48, 1
  store volatile i32 %add.i.i.i269, ptr %preempt_count.i.i.i.i268, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i270 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i270, label %do.body60.rcu_read_lock.exit277_crit_edge, label %land.lhs.true.i273

do.body60.rcu_read_lock.exit277_crit_edge:        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit277

land.lhs.true.i273:                               ; preds = %do.body60
  %call1.i271 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i271)
  %tobool.not.i272 = icmp eq i32 %call1.i271, 0
  br i1 %tobool.not.i272, label %land.lhs.true.i273.rcu_read_lock.exit277_crit_edge, label %land.lhs.true2.i275

land.lhs.true.i273.rcu_read_lock.exit277_crit_edge: ; preds = %land.lhs.true.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit277

land.lhs.true2.i275:                              ; preds = %land.lhs.true.i273
  %.b4.i274 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i274, label %land.lhs.true2.i275.rcu_read_lock.exit277_crit_edge, label %if.then.i276

land.lhs.true2.i275.rcu_read_lock.exit277_crit_edge: ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit277

if.then.i276:                                     ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit277

rcu_read_lock.exit277:                            ; preds = %if.then.i276, %land.lhs.true2.i275.rcu_read_lock.exit277_crit_edge, %land.lhs.true.i273.rcu_read_lock.exit277_crit_edge, %do.body60.rcu_read_lock.exit277_crit_edge
  %call61 = tail call fastcc ptr @btrfs_dev_name(ptr noundef %7)
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 13
  %49 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %devid, align 8
  %name = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 5
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %name, align 8
  %call67 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true, label %rcu_read_lock.exit277.do.end76_crit_edge

rcu_read_lock.exit277.do.end76_crit_edge:         ; preds = %rcu_read_lock.exit277
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true:                                    ; preds = %rcu_read_lock.exit277
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true.do.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true
  %.b266 = load i1, ptr @btrfs_dev_replace_finishing.__warned, align 1
  br i1 %.b266, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_replace_finishing.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 962, ptr noundef nonnull @.str.25) #14
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true.do.end76_crit_edge, %rcu_read_lock.exit277.do.end76_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %52, i32 0, i32 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.32, ptr noundef %call61, i64 noundef %50, ptr noundef %str, i32 noundef %scrub_ret) #17
  tail call fastcc void @rcu_read_unlock()
  br label %error

error:                                            ; preds = %do.end76, %if.else56.error_crit_edge, %btrfs_set_target_alloc_state.exit
  %scrub_ret.addr.0 = phi i32 [ %scrub_ret, %do.end76 ], [ -125, %if.else56.error_crit_edge ], [ %call.i36.i, %btrfs_set_target_alloc_state.exit ]
  call void @up_write(ptr noundef %rwsem) #14
  call void @mutex_unlock(ptr noundef %chunk_mutex) #14
  %53 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex85 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %54, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex85) #14
  call fastcc void @btrfs_rm_dev_replace_blocked(ptr noundef %fs_info)
  %tobool86.not = icmp eq ptr %5, null
  br i1 %tobool86.not, label %error.if.end88_crit_edge, label %if.then87

error.if.end88_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then87:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_destroy_dev_replace_tgtdev(ptr noundef nonnull %5) #14
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %error.if.end88_crit_edge
  %fs_state.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  call void @_clear_bit(i32 noundef 4, ptr noundef %fs_state.i) #14
  %replace_wait.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18
  call void @__wake_up(ptr noundef %replace_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  br label %cleanup

land.lhs.true103:                                 ; preds = %rcu_read_lock.exit
  %call104 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true103.do.end111_crit_edge, label %land.lhs.true106

land.lhs.true103.do.end111_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end111

land.lhs.true106:                                 ; preds = %land.lhs.true103
  %.b264265 = load i1, ptr @btrfs_dev_replace_finishing.__warned.34, align 1
  br i1 %.b264265, label %land.lhs.true106.do.end111_crit_edge, label %if.then108

land.lhs.true106.do.end111_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end111

if.then108:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_dev_replace_finishing.__warned.34, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 980, ptr noundef nonnull @.str.25) #14
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %land.lhs.true106.do.end111_crit_edge, %land.lhs.true103.do.end111_crit_edge, %rcu_read_lock.exit.do.end111_crit_edge
  %str114 = getelementptr inbounds %struct.rcu_string, ptr %44, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.33, ptr noundef %call92, i64 noundef %42, ptr noundef %str114) #17
  call fastcc void @rcu_read_unlock()
  %dev_state = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %dev_state) #14
  %55 = ptrtoint ptr %devid93 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %devid93, align 8
  %devid119 = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 13
  %57 = ptrtoint ptr %devid119 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %devid119, align 8
  store i64 0, ptr %devid93, align 8
  %uuid = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21
  %58 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %58)
  %uuid_tmp.sroa.0.0.copyload = load i8, ptr %uuid, align 4
  %uuid_tmp.sroa.5.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 1
  %59 = ptrtoint ptr %uuid_tmp.sroa.5.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %59)
  %uuid_tmp.sroa.5.0.copyload = load i8, ptr %uuid_tmp.sroa.5.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.6.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 2
  %60 = ptrtoint ptr %uuid_tmp.sroa.6.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %60)
  %uuid_tmp.sroa.6.0.copyload = load i8, ptr %uuid_tmp.sroa.6.0.arraydecay122.sroa_idx, align 2
  %uuid_tmp.sroa.7.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 3
  %61 = ptrtoint ptr %uuid_tmp.sroa.7.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %61)
  %uuid_tmp.sroa.7.0.copyload = load i8, ptr %uuid_tmp.sroa.7.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.8.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 4
  %62 = ptrtoint ptr %uuid_tmp.sroa.8.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %62)
  %uuid_tmp.sroa.8.0.copyload = load i8, ptr %uuid_tmp.sroa.8.0.arraydecay122.sroa_idx, align 4
  %uuid_tmp.sroa.9.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 5
  %63 = ptrtoint ptr %uuid_tmp.sroa.9.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %63)
  %uuid_tmp.sroa.9.0.copyload = load i8, ptr %uuid_tmp.sroa.9.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.10.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 6
  %64 = ptrtoint ptr %uuid_tmp.sroa.10.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %64)
  %uuid_tmp.sroa.10.0.copyload = load i8, ptr %uuid_tmp.sroa.10.0.arraydecay122.sroa_idx, align 2
  %uuid_tmp.sroa.11.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 7
  %65 = ptrtoint ptr %uuid_tmp.sroa.11.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %65)
  %uuid_tmp.sroa.11.0.copyload = load i8, ptr %uuid_tmp.sroa.11.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.12.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 8
  %66 = ptrtoint ptr %uuid_tmp.sroa.12.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %66)
  %uuid_tmp.sroa.12.0.copyload = load i8, ptr %uuid_tmp.sroa.12.0.arraydecay122.sroa_idx, align 4
  %uuid_tmp.sroa.13.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 9
  %67 = ptrtoint ptr %uuid_tmp.sroa.13.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %67)
  %uuid_tmp.sroa.13.0.copyload = load i8, ptr %uuid_tmp.sroa.13.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.14.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 10
  %68 = ptrtoint ptr %uuid_tmp.sroa.14.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %68)
  %uuid_tmp.sroa.14.0.copyload = load i8, ptr %uuid_tmp.sroa.14.0.arraydecay122.sroa_idx, align 2
  %uuid_tmp.sroa.15.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 11
  %69 = ptrtoint ptr %uuid_tmp.sroa.15.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %69)
  %uuid_tmp.sroa.15.0.copyload = load i8, ptr %uuid_tmp.sroa.15.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.16.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 12
  %70 = ptrtoint ptr %uuid_tmp.sroa.16.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %70)
  %uuid_tmp.sroa.16.0.copyload = load i8, ptr %uuid_tmp.sroa.16.0.arraydecay122.sroa_idx, align 4
  %uuid_tmp.sroa.17.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 13
  %71 = ptrtoint ptr %uuid_tmp.sroa.17.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %71)
  %uuid_tmp.sroa.17.0.copyload = load i8, ptr %uuid_tmp.sroa.17.0.arraydecay122.sroa_idx, align 1
  %uuid_tmp.sroa.18.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 14
  %72 = ptrtoint ptr %uuid_tmp.sroa.18.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %72)
  %uuid_tmp.sroa.18.0.copyload = load i8, ptr %uuid_tmp.sroa.18.0.arraydecay122.sroa_idx, align 2
  %uuid_tmp.sroa.19.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 21, i32 15
  %73 = ptrtoint ptr %uuid_tmp.sroa.19.0.arraydecay122.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %73)
  %uuid_tmp.sroa.19.0.copyload = load i8, ptr %uuid_tmp.sroa.19.0.arraydecay122.sroa_idx, align 1
  %uuid125 = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21
  %74 = call ptr @memcpy(ptr %uuid, ptr %uuid125, i32 16)
  %75 = ptrtoint ptr %uuid125 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %uuid_tmp.sroa.0.0.copyload, ptr %uuid125, align 4
  %uuid_tmp.sroa.5.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 1
  %76 = ptrtoint ptr %uuid_tmp.sroa.5.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %uuid_tmp.sroa.5.0.copyload, ptr %uuid_tmp.sroa.5.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.6.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 2
  %77 = ptrtoint ptr %uuid_tmp.sroa.6.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %uuid_tmp.sroa.6.0.copyload, ptr %uuid_tmp.sroa.6.0.arraydecay128.sroa_idx, align 2
  %uuid_tmp.sroa.7.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 3
  %78 = ptrtoint ptr %uuid_tmp.sroa.7.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %uuid_tmp.sroa.7.0.copyload, ptr %uuid_tmp.sroa.7.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.8.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 4
  %79 = ptrtoint ptr %uuid_tmp.sroa.8.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %uuid_tmp.sroa.8.0.copyload, ptr %uuid_tmp.sroa.8.0.arraydecay128.sroa_idx, align 4
  %uuid_tmp.sroa.9.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 5
  %80 = ptrtoint ptr %uuid_tmp.sroa.9.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %uuid_tmp.sroa.9.0.copyload, ptr %uuid_tmp.sroa.9.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.10.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 6
  %81 = ptrtoint ptr %uuid_tmp.sroa.10.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %uuid_tmp.sroa.10.0.copyload, ptr %uuid_tmp.sroa.10.0.arraydecay128.sroa_idx, align 2
  %uuid_tmp.sroa.11.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 7
  %82 = ptrtoint ptr %uuid_tmp.sroa.11.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %uuid_tmp.sroa.11.0.copyload, ptr %uuid_tmp.sroa.11.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.12.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 8
  %83 = ptrtoint ptr %uuid_tmp.sroa.12.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %uuid_tmp.sroa.12.0.copyload, ptr %uuid_tmp.sroa.12.0.arraydecay128.sroa_idx, align 4
  %uuid_tmp.sroa.13.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 9
  %84 = ptrtoint ptr %uuid_tmp.sroa.13.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %uuid_tmp.sroa.13.0.copyload, ptr %uuid_tmp.sroa.13.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.14.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 10
  %85 = ptrtoint ptr %uuid_tmp.sroa.14.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %uuid_tmp.sroa.14.0.copyload, ptr %uuid_tmp.sroa.14.0.arraydecay128.sroa_idx, align 2
  %uuid_tmp.sroa.15.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 11
  %86 = ptrtoint ptr %uuid_tmp.sroa.15.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %uuid_tmp.sroa.15.0.copyload, ptr %uuid_tmp.sroa.15.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.16.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 12
  %87 = ptrtoint ptr %uuid_tmp.sroa.16.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %uuid_tmp.sroa.16.0.copyload, ptr %uuid_tmp.sroa.16.0.arraydecay128.sroa_idx, align 4
  %uuid_tmp.sroa.17.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 13
  %88 = ptrtoint ptr %uuid_tmp.sroa.17.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %uuid_tmp.sroa.17.0.copyload, ptr %uuid_tmp.sroa.17.0.arraydecay128.sroa_idx, align 1
  %uuid_tmp.sroa.18.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 14
  %89 = ptrtoint ptr %uuid_tmp.sroa.18.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %uuid_tmp.sroa.18.0.copyload, ptr %uuid_tmp.sroa.18.0.arraydecay128.sroa_idx, align 2
  %uuid_tmp.sroa.19.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 21, i32 15
  %90 = ptrtoint ptr %uuid_tmp.sroa.19.0.arraydecay128.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %uuid_tmp.sroa.19.0.copyload, ptr %uuid_tmp.sroa.19.0.arraydecay128.sroa_idx, align 1
  %total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 14
  %91 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %total_bytes, align 8
  call fastcc void @btrfs_device_set_total_bytes(ptr noundef %5, i64 noundef %92)
  %disk_total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 15
  %93 = ptrtoint ptr %disk_total_bytes to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %disk_total_bytes, align 8
  call fastcc void @btrfs_device_set_disk_total_bytes(ptr noundef %5, i64 noundef %94)
  %bytes_used = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 16
  %95 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %bytes_used, align 8
  call fastcc void @btrfs_device_set_bytes_used(ptr noundef %5, i64 noundef %96)
  %97 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %bytes_used, align 8
  %commit_bytes_used = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 23
  %99 = ptrtoint ptr %commit_bytes_used to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %commit_bytes_used, align 8
  call void @btrfs_assign_next_active_device(ptr noundef %7, ptr noundef %5) #14
  %dev_alloc_list = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 1
  %100 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fs_devices, align 8
  %alloc_list = getelementptr inbounds %struct.btrfs_fs_devices, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %alloc_list to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %alloc_list, align 4
  %call.i.i281 = call zeroext i1 @__list_add_valid(ptr noundef %dev_alloc_list, ptr noundef %alloc_list, ptr noundef %103) #14
  br i1 %call.i.i281, label %if.end.i.i, label %do.end111.list_add.exit_crit_edge

do.end111.list_add.exit_crit_edge:                ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %dev_alloc_list, ptr %prev1.i.i, align 4
  %105 = ptrtoint ptr %dev_alloc_list to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %dev_alloc_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %alloc_list, ptr %prev3.i.i, align 4
  %107 = ptrtoint ptr %alloc_list to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %dev_alloc_list, ptr %alloc_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end111.list_add.exit_crit_edge
  %108 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fs_devices, align 8
  %rw_devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %rw_devices to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rw_devices, align 8
  %inc = add i64 %111, 1
  store i64 %inc, ptr %rw_devices, align 8
  call void @up_write(ptr noundef %rwsem) #14
  call fastcc void @btrfs_rm_dev_replace_blocked(ptr noundef %fs_info)
  call void @btrfs_rm_dev_replace_remove_srcdev(ptr noundef %7) #14
  call fastcc void @btrfs_rm_dev_replace_unblocked(ptr noundef %fs_info)
  %dev_stats_ccnt = getelementptr inbounds %struct.btrfs_device, ptr %5, i32 0, i32 28
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dev_stats_ccnt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %dev_stats_ccnt, i32 1, i32 3, i32 1) #14
  %112 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev_stats_ccnt, ptr %dev_stats_ccnt, i32 1, ptr elementtype(i32) %dev_stats_ccnt) #14, !srcloc !118
  call void @mutex_unlock(ptr noundef %chunk_mutex) #14
  %113 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fs_devices, align 8
  %device_list_mutex136 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %114, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex136) #14
  call void @btrfs_sysfs_remove_device(ptr noundef %7) #14
  call void @btrfs_sysfs_update_devid(ptr noundef %5) #14
  %dev_state137 = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 10
  %115 = ptrtoint ptr %dev_state137 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %dev_state137, align 4
  %and1.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool139.not = icmp eq i32 %and1.i, 0
  br i1 %tobool139.not, label %list_add.exit.if.end144_crit_edge, label %if.then140

list_add.exit.if.end144_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144

if.then140:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 7
  %117 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bdev, align 8
  %name141 = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 5
  %119 = ptrtoint ptr %name141 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name141, align 8
  %str142 = getelementptr inbounds %struct.rcu_string, ptr %120, i32 0, i32 1
  call void @btrfs_scratch_superblocks(ptr noundef %fs_info, ptr noundef %118, ptr noundef %str142) #14
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %list_add.exit.if.end144_crit_edge
  %call145 = call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #14
  %cmp.i282 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.end144.if.end149_crit_edge, label %if.then147

if.end144.if.end149_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #16
  %call148 = call i32 @btrfs_commit_transaction(ptr noundef %call145) #14
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end144.if.end149_crit_edge
  call void @mutex_unlock(ptr noundef %lock_finishing_cancel_unmount) #14
  call void @btrfs_rm_dev_replace_free_srcdev(ptr noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.end88, %if.then10, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then5 ], [ %8, %if.then10 ], [ %scrub_ret.addr.0, %if.end88 ], [ 0, %if.end149 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_dev_zone_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !119
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #14
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !120
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !96

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_block_group(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_start_delalloc_roots(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_dev_replace_update_device_in_mapping_tree(ptr noundef %fs_info, ptr noundef readnone %srcdev, ptr noundef %tgtdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 19
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 19, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock) #14
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %start.0 = phi i64 [ 0, %entry ], [ %add, %for.end.do.body_crit_edge ]
  %call = tail call ptr @lookup_extent_mapping(ptr noundef %mapping_tree, i64 noundef %start.0, i64 noundef -1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end:                                           ; preds = %do.body
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_lookup, align 4
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22 = icmp sgt i32 %3, 0
  br i1 %cmp22, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.map_lookup, ptr %1, i32 0, i32 7, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp eq ptr %5, %srcdev
  br i1 %cmp1, label %if.then2, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tgtdev, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %7 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stripes, align 8
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %start7 = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %start7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start7, align 8
  %len = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %len, align 8
  %add = add i64 %12, %10
  tail call void @free_extent_map(ptr noundef nonnull %call) #14
  %tobool8.not = icmp eq i64 %add, 0
  br i1 %tobool8.not, label %for.end.do.end_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_rm_dev_replace_blocked(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  tail call void @_set_bit(i32 noundef 4, ptr noundef %fs_state) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 802) #14
  %bio_counter = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 17
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %bio_counter) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool.not = icmp eq i64 %call.i, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %if.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %replace_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18
  %call522 = call i32 @prepare_to_wait_event(ptr noundef %replace_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i1923 = call i64 @__percpu_counter_sum(ptr noundef %bio_counter) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1923)
  %tobool9.not24 = icmp eq i64 %call.i1923, 0
  br i1 %tobool9.not24, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %replace_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i19 = call i64 @__percpu_counter_sum(ptr noundef %bio_counter) #14
  %tobool9.not = icmp eq i64 %call.i19, 0
  br i1 %tobool9.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %replace_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end14

do.end14:                                         ; preds = %for.end, %entry.do.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_rm_dev_replace_unblocked(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %fs_state) #14
  %replace_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 154, i32 18
  tail call void @__wake_up(ptr noundef %replace_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_device_set_total_bytes(ptr noundef %dev, i64 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !123
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i27 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i27 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !124
  %18 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i28 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i28 to ptr
  %preempt_count.i.i29 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !125
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !126
  %37 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !112

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %data_seqcount = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12
  %41 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %data_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  %dep_map.i.i = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 14
  %45 = ptrtoint ptr %total_bytes to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %size, ptr %total_bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %46 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %data_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !129
  %48 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i25 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i25 to ptr
  %preempt_count.i.i26 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i26, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i26, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_device_set_disk_total_bytes(ptr noundef %dev, i64 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !123
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i27 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i27 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !124
  %18 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i28 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i28 to ptr
  %preempt_count.i.i29 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !125
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !126
  %37 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !112

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %data_seqcount = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12
  %41 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %data_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  %dep_map.i.i = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %disk_total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 15
  %45 = ptrtoint ptr %disk_total_bytes to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %size, ptr %disk_total_bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %46 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %data_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !131
  %48 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i25 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i25 to ptr
  %preempt_count.i.i26 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i26, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i26, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_device_set_bytes_used(ptr noundef %dev, i64 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !123
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i27 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i27 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !124
  %18 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i28 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i28 to ptr
  %preempt_count.i.i29 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !125
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !126
  %37 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !112

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %data_seqcount = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12
  %41 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %data_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  %dep_map.i.i = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 12, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %bytes_used = getelementptr inbounds %struct.btrfs_device, ptr %dev, i32 0, i32 16
  %45 = ptrtoint ptr %bytes_used to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %size, ptr %bytes_used, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %46 = ptrtoint ptr %data_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %data_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !133
  %48 = tail call i32 @llvm.read_register.i32(metadata !86) #14
  %and.i.i.i25 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i25 to ptr
  %preempt_count.i.i26 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i26, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i26, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_assign_next_active_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_rm_dev_replace_remove_srcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_sysfs_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_sysfs_update_devid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_scratch_superblocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_rm_dev_replace_free_srcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_first_extent_bit(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_exclop_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !81, !83, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/dev-replace.c", i32 105, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/dev-replace.c", i32 135, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/dev-replace.c", i32 167, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/dev-replace.c", i32 188, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/dev-replace.c", i32 190, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/dev-replace.c", i32 199, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/dev-replace.c", i32 219, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/dev-replace.c", i32 377, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/dev-replace.c", i32 398, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/dev-replace.c", i32 412, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/dev-replace.c", i32 610, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/dev-replace.c", i32 1124, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/dev-replace.c", i32 1149, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/dev-replace.c", i32 1159, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/dev-replace.c", i32 1194, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/dev-replace.c", i32 1224, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/dev-replace.c", i32 1226, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/dev-replace.c", i32 1245, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/dev-replace.c", i32 1250, i32 9}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @assertfail._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @assertfail._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/dev-replace.c", i32 659, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/dev-replace.c", i32 695, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/btrfs/dev-replace.c", i32 705, i32 2}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/dev-replace.c", i32 729, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/dev-replace.c", i32 254, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/dev-replace.c", i32 261, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/dev-replace.c", i32 266, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/btrfs/dev-replace.c", i32 276, i32 4}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/btrfs/dev-replace.c", i32 285, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/btrfs/dev-replace.c", i32 958, i32 4}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/btrfs/dev-replace.c", i32 976, i32 2}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/btrfs/dev-replace.c", i32 458, i32 10}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../fs/btrfs/dev-replace.c", i32 460, i32 10}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/dev-replace.c", i32 1263, i32 2}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2158219974, i64 2158220456, i64 2158220011, i64 2158220067, i64 2158220101, i64 2158220125, i64 2158220166, i64 2158220187, i64 2158220215, i64 2158220249}
!98 = !{i64 2149283918}
!99 = !{i64 2149284184}
!100 = !{i8 0, i8 2}
!101 = !{i64 2158342284}
!102 = !{i64 2158342126}
!103 = !{i64 2158342454}
!104 = !{i64 2150211449}
!105 = !{i64 2158450520}
!106 = !{i64 2158364141}
!107 = !{i64 2158363983}
!108 = !{i64 2158364311}
!109 = !{i64 2158381912}
!110 = !{i64 2158381754}
!111 = !{i64 2158382082}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 809440, i64 809467, i64 809489, i64 809517}
!114 = !{i64 809848, i64 809875, i64 809908, i64 809929, i64 809956, i64 809982}
!115 = !{i64 809323, i64 809350}
!116 = !{i64 809663, i64 809690, i64 809724, i64 809745}
!117 = !{!"auto-init"}
!118 = !{i64 2148456404, i64 2148456430, i64 2148456459, i64 2148456493, i64 2148456524, i64 2148456547}
!119 = !{i64 850662, i64 850723}
!120 = !{i64 853394}
!121 = !{i64 853679}
!122 = !{i64 2158348246}
!123 = !{i64 2150103701}
!124 = !{i64 2150108635}
!125 = !{i64 2150130353}
!126 = !{i64 2150135247}
!127 = !{i64 2150211774}
!128 = !{i64 2150212099}
!129 = !{i64 2158355767}
!130 = !{i64 2158366047}
!131 = !{i64 2158373568}
!132 = !{i64 2158383812}
!133 = !{i64 2158391333}
