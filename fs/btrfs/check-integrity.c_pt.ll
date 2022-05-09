; ModuleID = '/llk/IR_all_yes/fs/btrfs/check-integrity.c_pt.bc'
source_filename = "../fs/btrfs/check-integrity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfsic_dev_state_hashtable = type { [256 x %struct.list_head] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.btrfsic_block_data_ctx = type { i64, i64, i32, ptr, ptr, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.79, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.79 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.6, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.btrfsic_state = type { i32, i32, %struct.list_head, %struct.btrfsic_block_hashtable, %struct.btrfsic_block_link_hashtable, ptr, i64, ptr, i32, i32 }
%struct.btrfsic_block_hashtable = type { [65536 x %struct.list_head] }
%struct.btrfsic_block_link_hashtable = type { [65536 x %struct.list_head] }
%struct.btrfsic_dev_state = type { i32, ptr, ptr, %struct.list_head, %struct.btrfsic_block, i64 }
%struct.btrfsic_block = type { i32, i8, i32, ptr, i64, i64, i64, %struct.btrfs_disk_key, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i64 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.88, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.88 = type { i64 }
%struct.rb_root = type { ptr }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.btrfsic_block_link = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i64 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.btrfs_file_extent_item = type <{ i64, i64, i8, i8, i16, i8, i64, i64, i64, i64 }>
%struct.btrfsic_stack_frame = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.btrfsic_block_data_ctx, ptr, ptr }
%struct.btrfs_item = type <{ %struct.btrfs_disk_key, i32, i32 }>
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_key_ptr = type <{ %struct.btrfs_disk_key, i64, i64 }>
%struct.btrfs_leaf = type { %struct.btrfs_header, [0 x %struct.btrfs_item] }
%struct.btrfs_node = type { %struct.btrfs_header, [0 x %struct.btrfs_key_ptr] }
%struct.btrfs_io_context = type { %struct.refcount_struct, %struct.atomic_t, ptr, i64, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, ptr, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rcu_string = type { %struct.callback_head, [0 x i8] }

@btrfsic_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016btrfsic: cannot handle nodesize %d not being a multiple of PAGE_SIZE %ld!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"btrfsic_mount\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/btrfs/check-integrity.c\00", [37 x i8] zeroinitializer }, align 32
@btrfsic_mount._entry_ptr = internal global ptr @btrfsic_mount._entry, section ".printk_index", align 4
@btrfsic_mount._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016btrfsic: cannot handle sectorsize %d not being a multiple of PAGE_SIZE %ld!\0A\00", [49 x i8] zeroinitializer }, align 32
@btrfsic_mount._entry_ptr.5 = internal global ptr @btrfsic_mount._entry.3, section ".printk_index", align 4
@btrfsic_is_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@btrfsic_mount.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@btrfsic_mutex = internal global { %struct.mutex, [36 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&btrfsic_mutex\00", [17 x i8] zeroinitializer }, align 32
@btrfsic_dev_state_hashtable = internal global { %struct.btrfsic_dev_state_hashtable, [512 x i8] } zeroinitializer, align 32
@btrfsic_unmount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 2838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016btrfsic: error, cannot find state information on umount!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btrfsic_unmount\00", [16 x i8] zeroinitializer }, align 32
@btrfsic_unmount._entry_ptr = internal global ptr @btrfsic_unmount._entry, section ".printk_index", align 4
@btrfsic_unmount._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 2869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016btrfs: attempt to free %c-block @%llu (%pg/%llu/%d) on umount which is not yet iodone!\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfsic_unmount._entry_ptr.11 = internal global ptr @btrfsic_unmount._entry.9, section ".printk_index", align 4
@__btrfsic_submit_bio._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 2667, ptr null, ptr null }, align 1
@.str.12 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016submit_bio(rw=%d,0x%x, bi_vcnt=%u, bi_sector=%llu (bytenr %llu), bi_bdev=%p)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__btrfsic_submit_bio\00", [43 x i8] zeroinitializer }, align 32
@__btrfsic_submit_bio._entry_ptr = internal global ptr @__btrfsic_submit_bio._entry, section ".printk_index", align 4
@__btrfsic_submit_bio._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 2683, ptr null, ptr null }, align 1
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016#%u: bytenr=%llu, len=%u, offset=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@__btrfsic_submit_bio._entry_ptr.16 = internal global ptr @__btrfsic_submit_bio._entry.14, section ".printk_index", align 4
@__btrfsic_submit_bio._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 2695, ptr null, ptr null }, align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016submit_bio(rw=%d,0x%x FLUSH, bdev=%p)\0A\00", [55 x i8] zeroinitializer }, align 32
@__btrfsic_submit_bio._entry_ptr.19 = internal global ptr @__btrfsic_submit_bio._entry.17, section ".printk_index", align 4
@__btrfsic_submit_bio._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 2702, ptr null, ptr null }, align 1
@.str.21 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016btrfsic_submit_bio(%pg) with FLUSH but dummy block already in use (ignored)!\0A\00", [48 x i8] zeroinitializer }, align 32
@__btrfsic_submit_bio._entry_ptr.22 = internal global ptr @__btrfsic_submit_bio._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@btrfsic_process_written_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016btrfsic: cannot work with too short bios!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"btrfsic_process_written_block\00", [34 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr = internal global ptr @btrfsic_process_written_block._entry, section ".printk_index", align 4
@btrfsic_process_written_block._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[before new superblock is written]:\0A\00", [57 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.27 = internal global ptr @btrfsic_process_written_block._entry.25, section ".printk_index", align 4
@btrfsic_process_written_block._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.29 = internal global ptr @btrfsic_process_written_block._entry.28, section ".printk_index", align 4
@btrfsic_process_written_block._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016written block @%llu (%pg/%llu/%d) found in hash table, %c, bytenr mismatch (!= stored %llu)\0A\00", [33 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.32 = internal global ptr @btrfsic_process_written_block._entry.30, section ".printk_index", align 4
@btrfsic_process_written_block._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016written block @%llu (%pg/%llu/%d) found in hash table, %c\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.35 = internal global ptr @btrfsic_process_written_block._entry.33, section ".printk_index", align 4
@btrfsic_process_written_block._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.37 = internal global ptr @btrfsic_process_written_block._entry.36, section ".printk_index", align 4
@btrfsic_process_written_block._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.39 = internal global ptr @btrfsic_process_written_block._entry.38, section ".printk_index", align 4
@btrfsic_process_written_block._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.2, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ref_to_list: %cE, ref_from_list: %cE\0A\00", [56 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.42 = internal global ptr @btrfsic_process_written_block._entry.40, section ".printk_index", align 4
@btrfsic_process_written_block._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.2, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [196 x i8], [60 x i8] } { [196 x i8] c"\016btrfs: attempt to overwrite %c-block @%llu (%pg/%llu/%d), old(gen=%llu, objectid=%llu, type=%d, offset=%llu), new(gen=%llu), which is referenced by most recent superblock (superblockgen=%llu)!\0A\00", [60 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.45 = internal global ptr @btrfsic_process_written_block._entry.43, section ".printk_index", align 4
@btrfsic_process_written_block._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.24, ptr @.str.2, i32 1811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\016btrfs: attempt to overwrite %c-block @%llu (%pg/%llu/%d), oldgen=%llu, newgen=%llu, which is not yet iodone!\0A\00", [48 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.48 = internal global ptr @btrfsic_process_written_block._entry.46, section ".printk_index", align 4
@btrfsic_process_written_block._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.24, ptr @.str.2, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[after new superblock is written]:\0A\00", [58 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.51 = internal global ptr @btrfsic_process_written_block._entry.49, section ".printk_index", align 4
@btrfsic_process_written_block._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.24, ptr @.str.2, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016btrfsic: btrfsic_process_metablock(root @%llu) failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.54 = internal global ptr @btrfsic_process_written_block._entry.52, section ".printk_index", align 4
@btrfsic_process_written_block._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.24, ptr @.str.2, i32 1936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016written block (%pg/%llu/?) !found in hash table, D\0A\00", [42 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.57 = internal global ptr @btrfsic_process_written_block._entry.55, section ".printk_index", align 4
@btrfsic_process_written_block._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.24, ptr @.str.2, i32 1955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016written block @%llu (%pg/%llu/?) !found in hash table, M\0A\00", [36 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.60 = internal global ptr @btrfsic_process_written_block._entry.58, section ".printk_index", align 4
@btrfsic_process_written_block._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.24, ptr @.str.2, i32 2013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016new written %c-block @%llu (%pg/%llu/%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.63 = internal global ptr @btrfsic_process_written_block._entry.61, section ".printk_index", align 4
@btrfsic_process_written_block._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.24, ptr @.str.2, i32 2022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016btrfsic: process_metablock(root @%llu) failed!\0A\00", [46 x i8] zeroinitializer }, align 32
@btrfsic_process_written_block._entry_ptr.66 = internal global ptr @btrfsic_process_written_block._entry.64, section ".printk_index", align 4
@btrfsic_dump_tree_sub.buf = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%c-%llu(%pg/%llu/%u)\00", [43 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 2448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[...]\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btrfsic_dump_tree_sub\00", [42 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr = internal global ptr @btrfsic_dump_tree_sub._entry, section ".printk_index", align 4
@btrfsic_dump_tree_sub._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.69, ptr @.str.2, i32 2451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr.71 = internal global ptr @btrfsic_dump_tree_sub._entry.70, section ".printk_index", align 4
@btrfsic_dump_tree_sub._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.2, i32 2454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr.74 = internal global ptr @btrfsic_dump_tree_sub._entry.72, section ".printk_index", align 4
@btrfsic_dump_tree_sub._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.69, ptr @.str.2, i32 2459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" [...]\0A\00", [24 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr.77 = internal global ptr @btrfsic_dump_tree_sub._entry.75, section ".printk_index", align 4
@btrfsic_dump_tree_sub._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.69, ptr @.str.2, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr.80 = internal global ptr @btrfsic_dump_tree_sub._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %d*--> \00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" --> \00", [26 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 2475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr.84 = internal global ptr @btrfsic_dump_tree_sub._entry.83, section ".printk_index", align 4
@btrfsic_dump_tree_sub._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.69, ptr @.str.2, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_dump_tree_sub._entry_ptr.86 = internal global ptr @btrfsic_dump_tree_sub._entry.85, section ".printk_index", align 4
@btrfsic_cmp_log_and_dev_bytenr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 2602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016btrfsic: btrfsic_map_block(logical @%llu, mirror %d) failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btrfsic_cmp_log_and_dev_bytenr\00", [33 x i8] zeroinitializer }, align 32
@btrfsic_cmp_log_and_dev_bytenr._entry_ptr = internal global ptr @btrfsic_cmp_log_and_dev_bytenr._entry, section ".printk_index", align 4
@btrfsic_cmp_log_and_dev_bytenr._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 2618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [185 x i8], [39 x i8] } { [185 x i8] c"\016btrfs: attempt to write M-block which contains logical bytenr that doesn't map to dev+physical bytenr of submit_bio, buffer->log_bytenr=%llu, submit_bio(bdev=%pg, phys_bytenr=%llu)!\0A\00", [39 x i8] zeroinitializer }, align 32
@btrfsic_cmp_log_and_dev_bytenr._entry_ptr.91 = internal global ptr @btrfsic_cmp_log_and_dev_bytenr._entry.89, section ".printk_index", align 4
@btrfsic_cmp_log_and_dev_bytenr._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 2628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016read logical bytenr @%llu maps to (%pg/%llu/%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@btrfsic_cmp_log_and_dev_bytenr._entry_ptr.94 = internal global ptr @btrfsic_cmp_log_and_dev_bytenr._entry.92, section ".printk_index", align 4
@btrfsic_map_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016btrfsic: error, cannot lookup dev (#1)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btrfsic_map_block\00", [46 x i8] zeroinitializer }, align 32
@btrfsic_map_block._entry_ptr = internal global ptr @btrfsic_map_block._entry, section ".printk_index", align 4
@btrfsic_is_block_ref_by_superblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016btrfsic: abort cyclic linkage (case 2).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"btrfsic_is_block_ref_by_superblock\00", [61 x i8] zeroinitializer }, align 32
@btrfsic_is_block_ref_by_superblock._entry_ptr = internal global ptr @btrfsic_is_block_ref_by_superblock._entry, section ".printk_index", align 4
@btrfsic_is_block_ref_by_superblock._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 2358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016rl=%d, %c @%llu (%pg/%llu/%d) is ref %u* from %c @%llu (%pg/%llu/%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@btrfsic_is_block_ref_by_superblock._entry_ptr.101 = internal global ptr @btrfsic_is_block_ref_by_superblock._entry.99, section ".printk_index", align 4
@btrfsic_process_written_superblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016btrfsic: superblock @%llu (%pg/%llu/%d) with old gen %llu <= %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"btrfsic_process_written_superblock\00", [61 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr = internal global ptr @btrfsic_process_written_superblock._entry, section ".printk_index", align 4
@btrfsic_process_written_superblock._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 2108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016btrfsic: got new superblock @%llu (%pg/%llu/%d) with new gen %llu > %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.106 = internal global ptr @btrfsic_process_written_superblock._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"root \00", [26 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.2, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016root@%llu\0A\00", [19 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.110 = internal global ptr @btrfsic_process_written_superblock._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chunk \00", [25 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.103, ptr @.str.2, i32 2147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016chunk@%llu\0A\00", [18 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.114 = internal global ptr @btrfsic_process_written_superblock._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"log \00", [27 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.103, ptr @.str.2, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016log@%llu\0A\00", [20 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.118 = internal global ptr @btrfsic_process_written_superblock._entry.116, section ".printk_index", align 4
@btrfsic_process_written_superblock._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.103, ptr @.str.2, i32 2166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016num_copies(log_bytenr=%llu) = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.121 = internal global ptr @btrfsic_process_written_superblock._entry.119, section ".printk_index", align 4
@btrfsic_process_written_superblock._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.103, ptr @.str.2, i32 2171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016btrfsic_process_written_superblock(mirror_num=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.124 = internal global ptr @btrfsic_process_written_superblock._entry.122, section ".printk_index", align 4
@btrfsic_process_written_superblock._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.103, ptr @.str.2, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016btrfsic: btrfsic_map_block(@%llu, mirror=%d) failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@btrfsic_process_written_superblock._entry_ptr.127 = internal global ptr @btrfsic_process_written_superblock._entry.125, section ".printk_index", align 4
@btrfsic_block_lookup_or_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 2554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016btrfsic: error, lookup dev_state failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"btrfsic_block_lookup_or_add\00", [36 x i8] zeroinitializer }, align 32
@btrfsic_block_lookup_or_add._entry_ptr = internal global ptr @btrfsic_block_lookup_or_add._entry, section ".printk_index", align 4
@btrfsic_block_lookup_or_add._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 2570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016New %s%c-block @%llu (%pg/%llu/%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@btrfsic_block_lookup_or_add._entry_ptr.132 = internal global ptr @btrfsic_block_lookup_or_add._entry.130, section ".printk_index", align 4
@btrfsic_print_add_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 2387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016add %u* link from %c @%llu (%pg/%llu/%d) to %c @%llu (%pg/%llu/%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrfsic_print_add_link\00", [41 x i8] zeroinitializer }, align 32
@btrfsic_print_add_link._entry_ptr = internal global ptr @btrfsic_print_add_link._entry, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016btrfsic: abort cyclic linkage (case 1).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"btrfsic_check_all_ref_blocks\00", [35 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr = internal global ptr @btrfsic_check_all_ref_blocks._entry, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 2260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016rl=%d, %c @%llu (%pg/%llu/%d) %u* refers to %c @%llu (%pg/%llu/%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr.139 = internal global ptr @btrfsic_check_all_ref_blocks._entry.137, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.2, i32 2268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\016btrfs: attempt to write superblock which references block %c @%llu (%pg/%llu/%d) which is never written!\0A\00", [52 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr.142 = internal global ptr @btrfsic_check_all_ref_blocks._entry.140, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.136, ptr @.str.2, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\016btrfs: attempt to write superblock which references block %c @%llu (%pg/%llu/%d) which is not yet iodone!\0A\00", [51 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr.145 = internal global ptr @btrfsic_check_all_ref_blocks._entry.143, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.2, i32 2286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\016btrfs: attempt to write superblock which references block %c @%llu (%pg/%llu/%d) which has write error!\0A\00", [53 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr.148 = internal global ptr @btrfsic_check_all_ref_blocks._entry.146, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.136, ptr @.str.2, i32 2302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"\016btrfs: attempt to write superblock which references block %c @%llu (%pg/%llu/%d) with generation %llu != parent generation %llu!\0A\00", [60 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr.151 = internal global ptr @btrfsic_check_all_ref_blocks._entry.149, section ".printk_index", align 4
@btrfsic_check_all_ref_blocks._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.136, ptr @.str.2, i32 2313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [176 x i8], [48 x i8] } { [176 x i8] c"\016btrfs: attempt to write superblock which references block %c @%llu (%pg/%llu/%d) which is not flushed out of disk's write cache (block flush_gen=%llu, dev->flush_gen=%llu)!\0A\00", [48 x i8] zeroinitializer }, align 32
@btrfsic_check_all_ref_blocks._entry_ptr.154 = internal global ptr @btrfsic_check_all_ref_blocks._entry.152, section ".printk_index", align 4
@btrfsic_process_metablock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016leaf %llu items %d generation %llu owner %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"btrfsic_process_metablock\00", [38 x i8] zeroinitializer }, align 32
@btrfsic_process_metablock._entry_ptr = internal global ptr @btrfsic_process_metablock._entry, section ".printk_index", align 4
@btrfsic_process_metablock._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016btrfsic: leaf item out of bounce at logical %llu, dev %pg\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfsic_process_metablock._entry_ptr.159 = internal global ptr @btrfsic_process_metablock._entry.157, section ".printk_index", align 4
@btrfsic_process_metablock._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016node %llu level %d items %d generation %llu owner %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfsic_process_metablock._entry_ptr.162 = internal global ptr @btrfsic_process_metablock._entry.160, section ".printk_index", align 4
@btrfsic_process_metablock._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016btrfsic: node item out of bounce at logical %llu, dev %pg\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfsic_process_metablock._entry_ptr.165 = internal global ptr @btrfsic_process_metablock._entry.163, section ".printk_index", align 4
@btrfsic_create_link_to_next_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.166, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"btrfsic_create_link_to_next_block\00", [62 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry_ptr = internal global ptr @btrfsic_create_link_to_next_block._entry, section ".printk_index", align 4
@btrfsic_create_link_to_next_block._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.2, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016btrfsic_create_link_to_next_block(mirror_num=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry_ptr.169 = internal global ptr @btrfsic_create_link_to_next_block._entry.167, section ".printk_index", align 4
@btrfsic_create_link_to_next_block._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.166, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry_ptr.171 = internal global ptr @btrfsic_create_link_to_next_block._entry.170, section ".printk_index", align 4
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"referenced \00", [20 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.166, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\016referenced block @%llu (%pg/%llu/%d) found in hash table, %c, bytenr mismatch (!= stored %llu)\0A\00", [62 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry_ptr.175 = internal global ptr @btrfsic_create_link_to_next_block._entry.173, section ".printk_index", align 4
@btrfsic_create_link_to_next_block._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.166, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016referenced block @%llu (%pg/%llu/%d) found in hash table, %c\0A\00", [32 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry_ptr.178 = internal global ptr @btrfsic_create_link_to_next_block._entry.176, section ".printk_index", align 4
@btrfsic_create_link_to_next_block._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.166, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016btrfsic: read block @logical %llu failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@btrfsic_create_link_to_next_block._entry_ptr.181 = internal global ptr @btrfsic_create_link_to_next_block._entry.179, section ".printk_index", align 4
@btrfsic_read_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016btrfsic: read_block() with unaligned bytenr %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfsic_read_block\00", [45 x i8] zeroinitializer }, align 32
@btrfsic_read_block._entry_ptr = internal global ptr @btrfsic_read_block._entry, section ".printk_index", align 4
@btrfsic_read_block._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016btrfsic: error, failed to add a single page!\0A\00", [48 x i8] zeroinitializer }, align 32
@btrfsic_read_block._entry_ptr.186 = internal global ptr @btrfsic_read_block._entry.184, section ".printk_index", align 4
@btrfsic_read_block._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.2, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016btrfsic: read error at logical %llu dev %pg!\0A\00", [48 x i8] zeroinitializer }, align 32
@btrfsic_read_block._entry_ptr.189 = internal global ptr @btrfsic_read_block._entry.187, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016btrfsic: file item out of bounce at logical %llu, dev %pg\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btrfsic_handle_extent_data\00", [37 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr = internal global ptr @btrfsic_handle_extent_data._entry, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.2, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016extent_data: type %u, disk_bytenr = %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.195 = internal global ptr @btrfsic_handle_extent_data._entry.193, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.2, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.197 = internal global ptr @btrfsic_handle_extent_data._entry.196, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.192, ptr @.str.2, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016extent_data: type %u, disk_bytenr = %llu, offset = %llu, num_bytes = %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.200 = internal global ptr @btrfsic_handle_extent_data._entry.198, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.192, ptr @.str.2, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.202 = internal global ptr @btrfsic_handle_extent_data._entry.201, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.192, ptr @.str.2, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016btrfsic_handle_extent_data(mirror_num=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.205 = internal global ptr @btrfsic_handle_extent_data._entry.203, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.192, ptr @.str.2, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016\09disk_bytenr = %llu, num_bytes %u\0A\00", [59 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.208 = internal global ptr @btrfsic_handle_extent_data._entry.206, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.192, ptr @.str.2, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.210 = internal global ptr @btrfsic_handle_extent_data._entry.209, section ".printk_index", align 4
@btrfsic_handle_extent_data._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.192, ptr @.str.2, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016referenced block @%llu (%pg/%llu/%d) found in hash table, D, bytenr mismatch (!= stored %llu)\0A\00", [63 x i8] zeroinitializer }, align 32
@btrfsic_handle_extent_data._entry_ptr.213 = internal global ptr @btrfsic_handle_extent_data._entry.211, section ".printk_index", align 4
@btrfsic_bio_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.2, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bio_end_io(err=%d) for %c @%llu (%pg/%llu/%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfsic_bio_end_io\00", [45 x i8] zeroinitializer }, align 32
@btrfsic_bio_end_io._entry_ptr = internal global ptr @btrfsic_bio_end_io._entry, section ".printk_index", align 4
@btrfsic_bio_end_io._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.2, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016bio_end_io() new %pg flush_gen=%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@btrfsic_bio_end_io._entry_ptr.218 = internal global ptr @btrfsic_bio_end_io._entry.216, section ".printk_index", align 4
@btrfsic_process_superblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016btrfsic: no superblock found!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btrfsic_process_superblock\00", [37 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr = internal global ptr @btrfsic_process_superblock._entry, section ".printk_index", align 4
@btrfsic_process_superblock._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.220, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr.222 = internal global ptr @btrfsic_process_superblock._entry.221, section ".printk_index", align 4
@btrfsic_process_superblock._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.220, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr.224 = internal global ptr @btrfsic_process_superblock._entry.223, section ".printk_index", align 4
@btrfsic_process_superblock._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.220, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr.226 = internal global ptr @btrfsic_process_superblock._entry.225, section ".printk_index", align 4
@btrfsic_process_superblock._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.220, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr.228 = internal global ptr @btrfsic_process_superblock._entry.227, section ".printk_index", align 4
@btrfsic_process_superblock._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.220, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016btrfsic: btrfsic_map_block(root @%llu, mirror %d) failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr.231 = internal global ptr @btrfsic_process_superblock._entry.229, section ".printk_index", align 4
@btrfsic_process_superblock._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.220, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016btrfsic: read @logical %llu failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock._entry_ptr.234 = internal global ptr @btrfsic_process_superblock._entry.232, section ".printk_index", align 4
@.str.235 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016new initial S-block (bdev %p, %s) @%llu (%pg/%llu/%d)\00", [40 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock_dev_mirror.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.236 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"initial root \00", [18 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"initial chunk \00", [17 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initial log \00", [19 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock_dev_mirror._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.240, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"btrfsic_process_superblock_dev_mirror\00", [58 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock_dev_mirror._entry_ptr = internal global ptr @btrfsic_process_superblock_dev_mirror._entry, section ".printk_index", align 4
@btrfsic_process_superblock_dev_mirror._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016btrfsic: btrfsic_map_block(bytenr @%llu, mirror %d) failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@btrfsic_process_superblock_dev_mirror._entry_ptr.243 = internal global ptr @btrfsic_process_superblock_dev_mirror._entry.241, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.244 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.246 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@btrfsic_dump_database._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.249, ptr @.str.2, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016all_blocks_list:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btrfsic_dump_database\00", [42 x i8] zeroinitializer }, align 32
@btrfsic_dump_database._entry_ptr = internal global ptr @btrfsic_dump_database._entry, section ".printk_index", align 4
@btrfsic_dump_database._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.249, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%c-block @%llu (%pg/%llu/%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@btrfsic_dump_database._entry_ptr.252 = internal global ptr @btrfsic_dump_database._entry.250, section ".printk_index", align 4
@btrfsic_dump_database._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.249, ptr @.str.2, i32 1624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016 %c @%llu (%pg/%llu/%d) refers %u* to %c @%llu (%pg/%llu/%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@btrfsic_dump_database._entry_ptr.255 = internal global ptr @btrfsic_dump_database._entry.253, section ".printk_index", align 4
@btrfsic_dump_database._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.249, ptr @.str.2, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016 %c @%llu (%pg/%llu/%d) is ref %u* from %c @%llu (%pg/%llu/%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@btrfsic_dump_database._entry_ptr.258 = internal global ptr @btrfsic_dump_database._entry.256, section ".printk_index", align 4
@btrfsic_dump_database._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.249, ptr @.str.2, i32 1641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@btrfsic_dump_database._entry_ptr.261 = internal global ptr @btrfsic_dump_database._entry.259, section ".printk_index", align 4
@btrfsic_print_rem_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.2, i32 2402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016rem %u* link from %c @%llu (%pg/%llu/%d) to %c @%llu (%pg/%llu/%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrfsic_print_rem_link\00", [41 x i8] zeroinitializer }, align 32
@btrfsic_print_rem_link._entry_ptr = internal global ptr @btrfsic_print_rem_link._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.264 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.265 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 8, i64 108, i64 132]
@__sancov_gen_cov_switch_values.267 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2745, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2750, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [23 x i8] c"btrfsic_is_initialized\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [14 x i8] c"btrfsic_mutex\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 323, i32 21 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2759, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [28 x i8] c"btrfsic_dev_state_hashtable\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 325, i32 43 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2838, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2865, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2665, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2682, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2694, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2700, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1720, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1728, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1736, i32 6 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1751, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1760, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1771, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1777, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1785, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1789, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1804, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1895, i32 6 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1907, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1934, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1953, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2010, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2021, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2431, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2443, i32 28 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2448, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2451, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2454, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2459, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2466, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2470, i32 30 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2472, i32 30 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2475, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2480, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2601, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2616, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2626, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1497, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2336, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2347, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2093, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2102, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2134, i32 24 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2138, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2143, i32 24 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2147, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2152, i32 24 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2158, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2165, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2171, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2177, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2554, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2566, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2378, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2238, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2249, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2262, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2271, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2280, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2294, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2306, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 912, i32 5 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 939, i32 5 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1036, i32 5 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1060, i32 5 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1190, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1199, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1205, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1213, i32 24 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1231, i32 5 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1239, i32 5 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1293, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1543, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1579, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1583, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1329, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1340, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1349, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1367, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1385, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1393, i32 5 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1396, i32 5 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1402, i32 5 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1426, i32 6 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2056, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2067, i32 5 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 606, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 621, i32 5 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 627, i32 5 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 635, i32 5 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 642, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 655, i32 5 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 678, i32 5 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 756, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 792, i32 24 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 798, i32 24 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 804, i32 24 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 814, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 825, i32 5 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.855, i32 695, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.855, i32 723, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 717, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1604, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1608, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1614, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1628, i32 4 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 1641, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.900 = private constant [30 x i8] c"../fs/btrfs/check-integrity.c\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.900, i32 2393, i32 2 }
@llvm.compiler.used = appending global [310 x ptr] [ptr @__btrfsic_submit_bio._entry, ptr @__btrfsic_submit_bio._entry.14, ptr @__btrfsic_submit_bio._entry.17, ptr @__btrfsic_submit_bio._entry.20, ptr @__btrfsic_submit_bio._entry_ptr, ptr @__btrfsic_submit_bio._entry_ptr.16, ptr @__btrfsic_submit_bio._entry_ptr.19, ptr @__btrfsic_submit_bio._entry_ptr.22, ptr @btrfsic_bio_end_io._entry, ptr @btrfsic_bio_end_io._entry.216, ptr @btrfsic_bio_end_io._entry_ptr, ptr @btrfsic_bio_end_io._entry_ptr.218, ptr @btrfsic_block_lookup_or_add._entry, ptr @btrfsic_block_lookup_or_add._entry.130, ptr @btrfsic_block_lookup_or_add._entry_ptr, ptr @btrfsic_block_lookup_or_add._entry_ptr.132, ptr @btrfsic_check_all_ref_blocks._entry, ptr @btrfsic_check_all_ref_blocks._entry.137, ptr @btrfsic_check_all_ref_blocks._entry.140, ptr @btrfsic_check_all_ref_blocks._entry.143, ptr @btrfsic_check_all_ref_blocks._entry.146, ptr @btrfsic_check_all_ref_blocks._entry.149, ptr @btrfsic_check_all_ref_blocks._entry.152, ptr @btrfsic_check_all_ref_blocks._entry_ptr, ptr @btrfsic_check_all_ref_blocks._entry_ptr.139, ptr @btrfsic_check_all_ref_blocks._entry_ptr.142, ptr @btrfsic_check_all_ref_blocks._entry_ptr.145, ptr @btrfsic_check_all_ref_blocks._entry_ptr.148, ptr @btrfsic_check_all_ref_blocks._entry_ptr.151, ptr @btrfsic_check_all_ref_blocks._entry_ptr.154, ptr @btrfsic_cmp_log_and_dev_bytenr._entry, ptr @btrfsic_cmp_log_and_dev_bytenr._entry.89, ptr @btrfsic_cmp_log_and_dev_bytenr._entry.92, ptr @btrfsic_cmp_log_and_dev_bytenr._entry_ptr, ptr @btrfsic_cmp_log_and_dev_bytenr._entry_ptr.91, ptr @btrfsic_cmp_log_and_dev_bytenr._entry_ptr.94, ptr @btrfsic_create_link_to_next_block._entry, ptr @btrfsic_create_link_to_next_block._entry.167, ptr @btrfsic_create_link_to_next_block._entry.170, ptr @btrfsic_create_link_to_next_block._entry.173, ptr @btrfsic_create_link_to_next_block._entry.176, ptr @btrfsic_create_link_to_next_block._entry.179, ptr @btrfsic_create_link_to_next_block._entry_ptr, ptr @btrfsic_create_link_to_next_block._entry_ptr.169, ptr @btrfsic_create_link_to_next_block._entry_ptr.171, ptr @btrfsic_create_link_to_next_block._entry_ptr.175, ptr @btrfsic_create_link_to_next_block._entry_ptr.178, ptr @btrfsic_create_link_to_next_block._entry_ptr.181, ptr @btrfsic_dump_database._entry, ptr @btrfsic_dump_database._entry.250, ptr @btrfsic_dump_database._entry.253, ptr @btrfsic_dump_database._entry.256, ptr @btrfsic_dump_database._entry.259, ptr @btrfsic_dump_database._entry_ptr, ptr @btrfsic_dump_database._entry_ptr.252, ptr @btrfsic_dump_database._entry_ptr.255, ptr @btrfsic_dump_database._entry_ptr.258, ptr @btrfsic_dump_database._entry_ptr.261, ptr @btrfsic_dump_tree_sub._entry, ptr @btrfsic_dump_tree_sub._entry.70, ptr @btrfsic_dump_tree_sub._entry.72, ptr @btrfsic_dump_tree_sub._entry.75, ptr @btrfsic_dump_tree_sub._entry.78, ptr @btrfsic_dump_tree_sub._entry.83, ptr @btrfsic_dump_tree_sub._entry.85, ptr @btrfsic_dump_tree_sub._entry_ptr, ptr @btrfsic_dump_tree_sub._entry_ptr.71, ptr @btrfsic_dump_tree_sub._entry_ptr.74, ptr @btrfsic_dump_tree_sub._entry_ptr.77, ptr @btrfsic_dump_tree_sub._entry_ptr.80, ptr @btrfsic_dump_tree_sub._entry_ptr.84, ptr @btrfsic_dump_tree_sub._entry_ptr.86, ptr @btrfsic_handle_extent_data._entry, ptr @btrfsic_handle_extent_data._entry.193, ptr @btrfsic_handle_extent_data._entry.196, ptr @btrfsic_handle_extent_data._entry.198, ptr @btrfsic_handle_extent_data._entry.201, ptr @btrfsic_handle_extent_data._entry.203, ptr @btrfsic_handle_extent_data._entry.206, ptr @btrfsic_handle_extent_data._entry.209, ptr @btrfsic_handle_extent_data._entry.211, ptr @btrfsic_handle_extent_data._entry_ptr, ptr @btrfsic_handle_extent_data._entry_ptr.195, ptr @btrfsic_handle_extent_data._entry_ptr.197, ptr @btrfsic_handle_extent_data._entry_ptr.200, ptr @btrfsic_handle_extent_data._entry_ptr.202, ptr @btrfsic_handle_extent_data._entry_ptr.205, ptr @btrfsic_handle_extent_data._entry_ptr.208, ptr @btrfsic_handle_extent_data._entry_ptr.210, ptr @btrfsic_handle_extent_data._entry_ptr.213, ptr @btrfsic_is_block_ref_by_superblock._entry, ptr @btrfsic_is_block_ref_by_superblock._entry.99, ptr @btrfsic_is_block_ref_by_superblock._entry_ptr, ptr @btrfsic_is_block_ref_by_superblock._entry_ptr.101, ptr @btrfsic_map_block._entry, ptr @btrfsic_map_block._entry_ptr, ptr @btrfsic_mount._entry, ptr @btrfsic_mount._entry.3, ptr @btrfsic_mount._entry_ptr, ptr @btrfsic_mount._entry_ptr.5, ptr @btrfsic_print_add_link._entry, ptr @btrfsic_print_add_link._entry_ptr, ptr @btrfsic_print_rem_link._entry, ptr @btrfsic_print_rem_link._entry_ptr, ptr @btrfsic_process_metablock._entry, ptr @btrfsic_process_metablock._entry.157, ptr @btrfsic_process_metablock._entry.160, ptr @btrfsic_process_metablock._entry.163, ptr @btrfsic_process_metablock._entry_ptr, ptr @btrfsic_process_metablock._entry_ptr.159, ptr @btrfsic_process_metablock._entry_ptr.162, ptr @btrfsic_process_metablock._entry_ptr.165, ptr @btrfsic_process_superblock._entry, ptr @btrfsic_process_superblock._entry.221, ptr @btrfsic_process_superblock._entry.223, ptr @btrfsic_process_superblock._entry.225, ptr @btrfsic_process_superblock._entry.227, ptr @btrfsic_process_superblock._entry.229, ptr @btrfsic_process_superblock._entry.232, ptr @btrfsic_process_superblock._entry_ptr, ptr @btrfsic_process_superblock._entry_ptr.222, ptr @btrfsic_process_superblock._entry_ptr.224, ptr @btrfsic_process_superblock._entry_ptr.226, ptr @btrfsic_process_superblock._entry_ptr.228, ptr @btrfsic_process_superblock._entry_ptr.231, ptr @btrfsic_process_superblock._entry_ptr.234, ptr @btrfsic_process_superblock_dev_mirror._entry, ptr @btrfsic_process_superblock_dev_mirror._entry.241, ptr @btrfsic_process_superblock_dev_mirror._entry_ptr, ptr @btrfsic_process_superblock_dev_mirror._entry_ptr.243, ptr @btrfsic_process_written_block._entry, ptr @btrfsic_process_written_block._entry.25, ptr @btrfsic_process_written_block._entry.28, ptr @btrfsic_process_written_block._entry.30, ptr @btrfsic_process_written_block._entry.33, ptr @btrfsic_process_written_block._entry.36, ptr @btrfsic_process_written_block._entry.38, ptr @btrfsic_process_written_block._entry.40, ptr @btrfsic_process_written_block._entry.43, ptr @btrfsic_process_written_block._entry.46, ptr @btrfsic_process_written_block._entry.49, ptr @btrfsic_process_written_block._entry.52, ptr @btrfsic_process_written_block._entry.55, ptr @btrfsic_process_written_block._entry.58, ptr @btrfsic_process_written_block._entry.61, ptr @btrfsic_process_written_block._entry.64, ptr @btrfsic_process_written_block._entry_ptr, ptr @btrfsic_process_written_block._entry_ptr.27, ptr @btrfsic_process_written_block._entry_ptr.29, ptr @btrfsic_process_written_block._entry_ptr.32, ptr @btrfsic_process_written_block._entry_ptr.35, ptr @btrfsic_process_written_block._entry_ptr.37, ptr @btrfsic_process_written_block._entry_ptr.39, ptr @btrfsic_process_written_block._entry_ptr.42, ptr @btrfsic_process_written_block._entry_ptr.45, ptr @btrfsic_process_written_block._entry_ptr.48, ptr @btrfsic_process_written_block._entry_ptr.51, ptr @btrfsic_process_written_block._entry_ptr.54, ptr @btrfsic_process_written_block._entry_ptr.57, ptr @btrfsic_process_written_block._entry_ptr.60, ptr @btrfsic_process_written_block._entry_ptr.63, ptr @btrfsic_process_written_block._entry_ptr.66, ptr @btrfsic_process_written_superblock._entry, ptr @btrfsic_process_written_superblock._entry.104, ptr @btrfsic_process_written_superblock._entry.108, ptr @btrfsic_process_written_superblock._entry.112, ptr @btrfsic_process_written_superblock._entry.116, ptr @btrfsic_process_written_superblock._entry.119, ptr @btrfsic_process_written_superblock._entry.122, ptr @btrfsic_process_written_superblock._entry.125, ptr @btrfsic_process_written_superblock._entry_ptr, ptr @btrfsic_process_written_superblock._entry_ptr.106, ptr @btrfsic_process_written_superblock._entry_ptr.110, ptr @btrfsic_process_written_superblock._entry_ptr.114, ptr @btrfsic_process_written_superblock._entry_ptr.118, ptr @btrfsic_process_written_superblock._entry_ptr.121, ptr @btrfsic_process_written_superblock._entry_ptr.124, ptr @btrfsic_process_written_superblock._entry_ptr.127, ptr @btrfsic_read_block._entry, ptr @btrfsic_read_block._entry.184, ptr @btrfsic_read_block._entry.187, ptr @btrfsic_read_block._entry_ptr, ptr @btrfsic_read_block._entry_ptr.186, ptr @btrfsic_read_block._entry_ptr.189, ptr @btrfsic_unmount._entry, ptr @btrfsic_unmount._entry.9, ptr @btrfsic_unmount._entry_ptr, ptr @btrfsic_unmount._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @btrfsic_is_initialized, ptr @btrfsic_mount.__key, ptr @btrfsic_mutex, ptr @.str.6, ptr @btrfsic_dev_state_hashtable, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.31, ptr @.str.34, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @btrfsic_dump_tree_sub.buf, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.172, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.199, ptr @.str.204, ptr @.str.207, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @.str.219, ptr @.str.220, ptr @.str.230, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.251, ptr @.str.254, ptr @.str.257, ptr @.str.260, ptr @.str.262, ptr @.str.263], section "llvm.metadata"
@0 = internal global [212 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_mount._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_is_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_mount.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dev_state_hashtable to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_unmount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_unmount._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_block._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub.buf to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_tree_sub._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_cmp_log_and_dev_bytenr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_cmp_log_and_dev_bytenr._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_cmp_log_and_dev_bytenr._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_map_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_is_block_ref_by_superblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_is_block_ref_by_superblock._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_written_superblock._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_block_lookup_or_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_block_lookup_or_add._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_print_add_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_check_all_ref_blocks._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_metablock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_metablock._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_metablock._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_metablock._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_create_link_to_next_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_create_link_to_next_block._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_create_link_to_next_block._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_create_link_to_next_block._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_create_link_to_next_block._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_create_link_to_next_block._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_read_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_read_block._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_read_block._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_handle_extent_data._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_bio_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_bio_end_io._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock_dev_mirror._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_process_superblock_dev_mirror._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_database._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_database._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_database._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_database._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_dump_database._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfsic_print_rem_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfsic_submit_bio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__btrfsic_submit_bio(ptr noundef %bio)
  tail call void @submit_bio(ptr noundef %bio) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfsic_submit_bio(ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  %tmp_next_block_ctx.i.i = alloca %struct.btrfsic_block_data_ctx, align 8
  %was_created.i.i = alloca i32, align 4
  %block_ctx.i = alloca %struct.btrfsic_block_data_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @btrfsic_is_initialized, align 4
  br i1 %.b, label %if.end, label %entry.cleanup152_crit_edge

entry.cleanup152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup152

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @btrfsic_mutex, i32 noundef 0) #14
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bd_dev, align 4
  %and.i.i = and i32 %3, 255
  %add.ptr.i.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %and.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ %add.ptr.i.i, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.leave_crit_edge, label %for.body.i.i

for.cond.i.i.leave_crit_edge:                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bdev.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %5 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev.i.i, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_dev.i.i, align 4
  %cmp5.i.i = icmp eq i32 %8, %3
  br i1 %cmp5.i.i, label %btrfsic_dev_state_lookup.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

btrfsic_dev_state_lookup.exit:                    ; preds = %for.body.i.i
  %bdev.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -8
  %ds.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %cmp.not = icmp eq ptr %ds.0.le.i.i, null
  br i1 %cmp.not, label %btrfsic_dev_state_lookup.exit.leave_crit_edge, label %land.lhs.true

btrfsic_dev_state_lookup.exit.leave_crit_edge:    ; preds = %btrfsic_dev_state_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

land.lhs.true:                                    ; preds = %btrfsic_dev_state_lookup.exit
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf, align 8
  %and = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp1 = icmp ne i32 %and, 1
  %tobool.not.i = icmp eq ptr %bio, null
  %or.cond = or i1 %cmp1, %tobool.not.i
  br i1 %or.cond, label %land.lhs.true.land.lhs.true100_crit_edge, label %land.lhs.true.i

land.lhs.true.land.lhs.true100_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true100

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true100_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.land.lhs.true100_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true100

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %trunc.i = trunc i32 %10 to i8
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %sw.epilog.i [
    i8 3, label %land.lhs.true2.i.land.lhs.true100_crit_edge
    i8 5, label %land.lhs.true2.i.land.lhs.true100_crit_edge387
    i8 9, label %land.lhs.true2.i.land.lhs.true100_crit_edge388
    i8 7, label %land.lhs.true2.i.bio_segments.exit_crit_edge
  ]

land.lhs.true2.i.bio_segments.exit_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_segments.exit

land.lhs.true2.i.land.lhs.true100_crit_edge388:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true100

land.lhs.true2.i.land.lhs.true100_crit_edge387:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true100

land.lhs.true2.i.land.lhs.true100_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true100

sw.epilog.i:                                      ; preds = %land.lhs.true2.i
  %14 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %iter.sroa.6.0.copyload.i = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not54.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not54.i, label %sw.epilog.i.bio_segments.exit_crit_edge, label %land.rhs.lr.ph.i

sw.epilog.i.bio_segments.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_segments.exit

land.rhs.lr.ph.i:                                 ; preds = %sw.epilog.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %iter.sroa.15.0.copyload.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %17 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_io_vec.i, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %segs.058.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %land.rhs.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.057.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %land.rhs.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.056.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %spec.select53.i, %land.rhs.i.land.rhs.i_crit_edge ]
  %iter.sroa.15.055.i = phi i32 [ %iter.sroa.15.0.copyload.i, %land.rhs.lr.ph.i ], [ %spec.select.i, %land.rhs.i.land.rhs.i_crit_edge ]
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %18, i32 %iter.sroa.10.056.i, i32 1
  %19 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_len10.i, align 4
  %sub.i = sub i32 %20, %iter.sroa.15.055.i
  %21 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.057.i, i32 %sub.i) #14
  %bv_offset15.i = getelementptr %struct.bio_vec, ptr %18, i32 %iter.sroa.10.056.i, i32 2
  %22 = ptrtoint ptr %bv_offset15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_offset15.i, align 4
  %add17.i = add i32 %23, %iter.sroa.15.055.i
  %rem.i = and i32 %add17.i, 4095
  %sub18.i = sub nuw nsw i32 4096, %rem.i
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %sub18.i) #14
  %inc.i = add i32 %segs.058.i, 1
  %add.i.i.i = add i32 %24, %iter.sroa.15.055.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %20)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %20
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select53.i = add i32 %iter.sroa.10.056.i, %inc.i.i.i
  %sub.i.i.i = sub i32 %iter.sroa.6.057.i, %24
  %tobool.not.i220 = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i220, label %land.rhs.i.bio_segments.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i.bio_segments.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_segments.exit

bio_segments.exit:                                ; preds = %land.rhs.i.bio_segments.exit_crit_edge, %sw.epilog.i.bio_segments.exit_crit_edge, %land.lhs.true2.i.bio_segments.exit_crit_edge
  %retval.0.i221 = phi i32 [ 0, %sw.epilog.i.bio_segments.exit_crit_edge ], [ 1, %land.lhs.true2.i.bio_segments.exit_crit_edge ], [ %inc.i, %land.rhs.i.bio_segments.exit_crit_edge ]
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %25 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bi_iter, align 8
  %mul = shl i64 %26, 9
  %state = getelementptr i8, ptr %.pn.i.i, i32 -4
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %and6 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %bio_segments.exit.if.end16_crit_edge, label %do.end

bio_segments.exit.if.end16_crit_edge:             ; preds = %bio_segments.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.end:                                           ; preds = %bio_segments.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %10, i32 noundef %retval.0.i221, i64 noundef %26, i64 noundef %mul, ptr noundef %1) #17
  br label %if.end16

if.end16:                                         ; preds = %do.end, %bio_segments.exit.if.end16_crit_edge
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i221, i32 4) #14
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end16.leave_crit_edge, label %if.end7.i, !prof !438

if.end16.leave_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

if.end7.i:                                        ; preds = %if.end16
  %33 = extractvalue { i32, i1 } %31, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3136) #18
  %tobool18.not = icmp eq ptr %call8.i, null
  br i1 %tobool18.not, label %if.end7.i.leave_crit_edge, label %if.end20

if.end7.i.leave_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

if.end20:                                         ; preds = %if.end7.i
  %34 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %iter.sroa.6.0.copyload = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool22.not290 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool22.not290, label %if.end20.for.end_crit_edge, label %land.rhs.lr.ph

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end20
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %35 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0295 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %cur_bytenr.0294 = phi i64 [ %mul, %land.rhs.lr.ph ], [ %add88, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0293 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0292 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0291 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %37 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bi_io_vec, align 8
  %bv_offset = getelementptr %struct.bio_vec, ptr %38, i32 %iter.sroa.10.0292, i32 2
  %39 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_offset, align 4
  %add = add i32 %40, %iter.sroa.16.0291
  %bv_len31 = getelementptr %struct.bio_vec, ptr %38, i32 %iter.sroa.10.0292, i32 1
  %41 = ptrtoint ptr %bv_len31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len31, align 4
  %sub = sub i32 %42, %iter.sroa.16.0291
  %43 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0293, i32 %sub)
  %rem = and i32 %add, 4095
  %sub41 = sub nuw nsw i32 4096, %rem
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %sub41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %44)
  %cmp58.not = icmp eq i32 %44, 4096
  br i1 %cmp58.not, label %do.end70, label %do.body62, !prof !439

do.body62:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2676, 0\0A.popsection", ""() #14, !srcloc !440
  unreachable

do.end70:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.bio_vec, ptr %38, i32 %iter.sroa.10.0292
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %div216 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %46, i32 %div216
  %call72 = tail call ptr @page_address(ptr noundef %add.ptr) #14
  %arrayidx73 = getelementptr ptr, ptr %call8.i, i32 %i.0295
  %47 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call72, ptr %arrayidx73, align 4
  %inc = add i32 %i.0295, 1
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %and76 = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.end70.if.end86_crit_edge, label %do.end81

do.end70.if.end86_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

do.end81:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #16
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %inc, i64 noundef %cur_bytenr.0294, i32 noundef 4096, i32 noundef %rem) #17
  br label %if.end86

if.end86:                                         ; preds = %do.end81, %do.end70.if.end86_crit_edge
  %add88 = add i64 %cur_bytenr.0294, 4096
  %52 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_opf, align 8
  %and.i.i226 = and i32 %53, 255
  %54 = add nsw i32 %and.i.i226, -3
  %switch.and.i.i = and i32 %54, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.end86.bio_advance_iter_single.exit_crit_edge, label %if.else.i

if.end86.bio_advance_iter_single.exit_crit_edge:  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %iter.sroa.16.0291, 4096
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %56, i32 %iter.sroa.10.0292, i32 1
  %57 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %58)
  %cmp.i.i228 = icmp eq i32 %add.i.i, %58
  %spec.select = select i1 %cmp.i.i228, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i228 to i32
  %spec.select267 = add i32 %iter.sroa.10.0292, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %if.end86.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0291, %if.end86.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0292, %if.end86.bio_advance_iter_single.exit_crit_edge ], [ %spec.select267, %if.else.i ]
  %sub.i.i = add i32 %iter.sroa.6.0293, -4096
  %tobool22.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool22.not, label %bio_advance_iter_single.exit.for.end_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

bio_advance_iter_single.exit.for.end_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %bio_advance_iter_single.exit.for.end_crit_edge, %if.end20.for.end_crit_edge
  %59 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_opf, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %block_ctx.i) #14
  %61 = call ptr @memset(ptr %block_ctx.i, i32 255, i32 40)
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state, align 8
  %64 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev.i.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i221)
  %cmp31056.i = icmp eq i32 %retval.0.i221, 0
  br i1 %cmp31056.i, label %for.end.btrfsic_process_written_block.exit_crit_edge, label %if.end5.lr.ph.i

for.end.btrfsic_process_written_block.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_process_written_block.exit

if.end5.lr.ph.i:                                  ; preds = %for.end
  %block_hashtable.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %65 to i32
  %.masked.i.i = and i32 %66, 65535
  %datablock_size.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 9
  %latest_superblock.i815.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 7
  %metablock_size.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 8
  %max_superblock_generation.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx.i, i32 0, i32 3
  %dev_bytenr205.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx.i, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx.i, i32 0, i32 2
  %pagev.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx.i, i32 0, i32 5
  %mem_to_free.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx.i, i32 0, i32 6
  %datav.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx.i, i32 0, i32 4
  %include_extent_data.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 1
  %bi_private243.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %last_flush_gen.i = getelementptr i8, ptr %.pn.i.i, i32 132
  %fs_info1.i.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 5
  %mem_to_free.i220.i.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i.i, i32 0, i32 6
  %datav.i222.i.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i.i, i32 0, i32 4
  %pagev.i226.i.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i.i, i32 0, i32 5
  %len.i230.i.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i.i, i32 0, i32 2
  %all_blocks_list.i = getelementptr inbounds %struct.btrfsic_state, ptr %63, i32 0, i32 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end535.i.if.end5.i_crit_edge, %if.end5.lr.ph.i
  %bio_is_patched.0 = phi i32 [ 0, %if.end5.lr.ph.i ], [ %bio_is_patched.5, %do.end535.i.if.end5.i_crit_edge ]
  %dev_bytenr.addr.01069.i = phi i64 [ %mul, %if.end5.lr.ph.i ], [ %add537.i, %do.end535.i.if.end5.i_crit_edge ]
  %mapped_datav.addr.01063.i = phi ptr [ %call8.i, %if.end5.lr.ph.i ], [ %add.ptr538.i, %do.end535.i.if.end5.i_crit_edge ]
  %num_pages.addr.01057.i = phi i32 [ %retval.0.i221, %if.end5.lr.ph.i ], [ %sub.i249, %do.end535.i.if.end5.i_crit_edge ]
  %call.i = call fastcc i32 @btrfsic_test_for_metadata(ptr noundef %63, ptr noundef %mapped_datav.addr.01063.i, i32 noundef %num_pages.addr.01057.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp eq i32 %call.i, 0
  %67 = trunc i64 %dev_bytenr.addr.01069.i to i32
  %68 = lshr i32 %67, 16
  %and.i.i232 = xor i32 %68, %.masked.i.i
  %add.ptr.i.i233 = getelementptr %struct.list_head, ptr %block_hashtable.i, i32 %and.i.i232
  %69 = ptrtoint ptr %add.ptr.i.i233 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn28.i.i = load ptr, ptr %add.ptr.i.i233, align 4
  %cmp.not29.i.i = icmp eq ptr %.pn28.i.i, %add.ptr.i.i233
  br i1 %cmp.not29.i.i, label %if.end5.i.if.else340.i_crit_edge, label %if.end5.i.for.body.i.i234_crit_edge

if.end5.i.for.body.i.i234_crit_edge:              ; preds = %if.end5.i
  br label %for.body.i.i234

if.end5.i.if.else340.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else340.i

for.body.i.i234:                                  ; preds = %for.inc.i.i.for.body.i.i234_crit_edge, %if.end5.i.for.body.i.i234_crit_edge
  %.pn30.i.i = phi ptr [ %.pn.i.i235, %for.inc.i.i.for.body.i.i234_crit_edge ], [ %.pn28.i.i, %if.end5.i.for.body.i.i234_crit_edge ]
  %dev_state.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -48
  %70 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_state.i.i, align 4
  %bdev6.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %bdev6.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bdev6.i.i, align 4
  %cmp7.i.i = icmp eq ptr %73, %65
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %for.body.i.i234.for.inc.i.i_crit_edge

for.body.i.i234.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i234
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i234
  %dev_bytenr9.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -44
  %74 = ptrtoint ptr %dev_bytenr9.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %dev_bytenr9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %dev_bytenr.addr.01069.i)
  %cmp10.i.i = icmp eq i64 %75, %dev_bytenr.addr.01069.i
  br i1 %cmp10.i.i, label %btrfsic_block_hashtable_lookup.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i234.for.inc.i.i_crit_edge
  %76 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn.i.i235 = load ptr, ptr %.pn30.i.i, align 4
  %cmp.not.i.i236 = icmp eq ptr %.pn.i.i235, %add.ptr.i.i233
  br i1 %cmp.not.i.i236, label %for.inc.i.i.if.else340.i_crit_edge, label %for.inc.i.i.for.body.i.i234_crit_edge

for.inc.i.i.for.body.i.i234_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i234

for.inc.i.i.if.else340.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else340.i

btrfsic_block_hashtable_lookup.exit.i:            ; preds = %land.lhs.true.i.i
  %dev_state.i.i.le = getelementptr i8, ptr %.pn30.i.i, i32 -48
  %dev_bytenr9.i.i.le = getelementptr i8, ptr %.pn30.i.i, i32 -44
  %b.0.le.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -60
  %cmp8.not.i = icmp eq ptr %b.0.le.i.i, null
  br i1 %cmp8.not.i, label %btrfsic_block_hashtable_lookup.exit.i.if.else340.i_crit_edge, label %if.then10.i

btrfsic_block_hashtable_lookup.exit.i.if.else340.i_crit_edge: ; preds = %btrfsic_block_hashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else340.i

if.then10.i:                                      ; preds = %btrfsic_block_hashtable_lookup.exit.i
  %is_superblock.i = getelementptr i8, ptr %.pn30.i.i, i32 -56
  %77 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %78 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i237 = icmp eq i8 %78, 0
  br i1 %tobool.not.i237, label %if.end30.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then10.i
  %79 = ptrtoint ptr %mapped_datav.addr.01063.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mapped_datav.addr.01063.i, align 4
  %bytenr.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %bytenr.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %bytenr.i.i, align 1
  %83 = call i64 @llvm.bswap.i64(i64 %82) #14
  %mul.mask.i = and i32 %num_pages.addr.01057.i, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.mask.i)
  %cmp13.i = icmp eq i32 %mul.mask.i, 0
  br i1 %cmp13.i, label %if.then11.i.cleanup540.sink.split.i_crit_edge, label %if.end18.i

if.then11.i.cleanup540.sink.split.i_crit_edge:    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup540.sink.split.i

if.end18.i:                                       ; preds = %if.then11.i
  %84 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %63, align 8
  %and.i = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.end18.i.if.then32.i_crit_edge, label %do.end26.i

if.end18.i.if.then32.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32.i

do.end26.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #17
  call fastcc void @btrfsic_dump_tree_sub(ptr noundef %63, ptr noundef nonnull %b.0.le.i.i, i32 noundef 0) #14
  br label %if.then32.i

if.end30.i:                                       ; preds = %if.then10.i
  br i1 %cmp6.i, label %if.end30.i.if.then32.i_crit_edge, label %if.else91.i

if.end30.i.if.then32.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i.if.then32.i_crit_edge, %do.end26.i, %if.end18.i.if.then32.i_crit_edge
  %processed_len.01007.i = phi i32 [ 0, %if.end30.i.if.then32.i_crit_edge ], [ 4096, %do.end26.i ], [ 4096, %if.end18.i.if.then32.i_crit_edge ]
  %bytenr.01006.i = phi i64 [ 0, %if.end30.i.if.then32.i_crit_edge ], [ %83, %do.end26.i ], [ %83, %if.end18.i.if.then32.i_crit_edge ]
  %86 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load34.i = load i8, ptr %is_superblock.i, align 4
  %87 = and i8 %bf.load34.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool38.not.i = icmp eq i8 %87, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.then32.i.if.end53.i_crit_edge

if.then32.i.if.end53.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.i

if.then39.i:                                      ; preds = %if.then32.i
  %mul40.i = shl i32 %num_pages.addr.01057.i, 12
  %88 = ptrtoint ptr %metablock_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %metablock_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul40.i, i32 %89)
  %cmp41.i = icmp ult i32 %mul40.i, %89
  br i1 %cmp41.i, label %if.then39.i.cleanup540.sink.split.i_crit_edge, label %if.end49.i

if.then39.i.cleanup540.sink.split.i_crit_edge:    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup540.sink.split.i

if.end49.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %mapped_datav.addr.01063.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mapped_datav.addr.01063.i, align 4
  %bytenr.i788.i = getelementptr inbounds %struct.btrfs_header, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %bytenr.i788.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %bytenr.i788.i, align 1
  %94 = call i64 @llvm.bswap.i64(i64 %93) #14
  call fastcc void @btrfsic_cmp_log_and_dev_bytenr(ptr noundef %63, i64 noundef %94, ptr noundef nonnull %ds.0.le.i.i, i64 noundef %dev_bytenr.addr.01069.i) #14
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end49.i, %if.then32.i.if.end53.i_crit_edge
  %bytenr.1.i = phi i64 [ %bytenr.01006.i, %if.then32.i.if.end53.i_crit_edge ], [ %94, %if.end49.i ]
  %processed_len.1.i = phi i32 [ %processed_len.01007.i, %if.then32.i.if.end53.i_crit_edge ], [ %89, %if.end49.i ]
  %95 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %63, align 8
  %and55.i = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end53.i.if.end89.i_crit_edge, label %if.then57.i

if.end53.i.if.end89.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.then57.i:                                      ; preds = %if.end53.i
  %logical_bytenr.i = getelementptr i8, ptr %.pn30.i.i, i32 -36
  %97 = ptrtoint ptr %logical_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %logical_bytenr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %bytenr.1.i)
  %cmp58.not.i = icmp eq i64 %98, %bytenr.1.i
  br i1 %cmp58.not.i, label %if.then57.i.do.end81.i_crit_edge, label %land.lhs.true.i238

if.then57.i.do.end81.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81.i

land.lhs.true.i238:                               ; preds = %if.then57.i
  %99 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load61.i = load i8, ptr %is_superblock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load61.i)
  %tobool64.not.i = icmp sgt i8 %bf.load61.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %cmp67.i = icmp eq i64 %98, 0
  %or.cond.i = select i1 %tobool64.not.i, i1 %cmp67.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i238.do.end81.i_crit_edge, label %do.end72.i

land.lhs.true.i238.do.end81.i_crit_edge:          ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81.i

do.end72.i:                                       ; preds = %land.lhs.true.i238
  %100 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bdev.i.i.le, align 4
  %mirror_num.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %102 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mirror_num.i, align 8
  %104 = and i8 %bf.load61.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i, label %if.else14.i.i, label %land.lhs.true.i789.i

land.lhs.true.i789.i:                             ; preds = %do.end72.i
  %105 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %latest_superblock.i815.i, align 8
  %dev_bytenr.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %dev_bytenr.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %dev_bytenr.i.i, align 8
  %109 = ptrtoint ptr %dev_bytenr9.i.i.le to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %dev_bytenr9.i.i.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %110)
  %cmp.i.i239 = icmp eq i64 %108, %110
  br i1 %cmp.i.i239, label %land.lhs.true2.i.i, label %land.lhs.true.i789.i.if.else.thread.i.i_crit_edge

land.lhs.true.i789.i.if.else.thread.i.i_crit_edge: ; preds = %land.lhs.true.i789.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i789.i
  %dev_state.i790.i = getelementptr inbounds %struct.btrfsic_block, ptr %106, i32 0, i32 3
  %111 = ptrtoint ptr %dev_state.i790.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_state.i790.i, align 4
  %bdev.i.i240 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %bdev.i.i240 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bdev.i.i240, align 4
  %115 = ptrtoint ptr %dev_state.i.i.le to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_state.i.i.le, align 4
  %bdev5.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %bdev5.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bdev5.i.i, align 4
  %cmp6.i.i = icmp eq ptr %114, %118
  br i1 %cmp6.i.i, label %land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge, label %land.lhs.true2.i.i.if.else.thread.i.i_crit_edge

land.lhs.true2.i.i.if.else.thread.i.i_crit_edge:  ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i.i

land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit.i

if.else.thread.i.i:                               ; preds = %land.lhs.true2.i.i.if.else.thread.i.i_crit_edge, %land.lhs.true.i789.i.if.else.thread.i.i_crit_edge
  br label %btrfsic_get_block_type.exit.i

if.else14.i.i:                                    ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %..i.i = select i1 %tobool64.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit.i

btrfsic_get_block_type.exit.i:                    ; preds = %if.else14.i.i, %if.else.thread.i.i, %land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge
  %retval.0.i791.i = phi i32 [ 83, %land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge ], [ %..i.i, %if.else14.i.i ], [ 115, %if.else.thread.i.i ]
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %bytenr.1.i, ptr noundef %101, i64 noundef %dev_bytenr.addr.01069.i, i32 noundef %103, i32 noundef %retval.0.i791.i, i64 noundef %98) #17
  br label %if.end89.i

do.end81.i:                                       ; preds = %land.lhs.true.i238.do.end81.i_crit_edge, %if.then57.i.do.end81.i_crit_edge
  %119 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bdev.i.i.le, align 4
  %mirror_num84.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %121 = ptrtoint ptr %mirror_num84.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mirror_num84.i, align 8
  %123 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load.i793.i = load i8, ptr %is_superblock.i, align 4
  %124 = and i8 %bf.load.i793.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i794.i = icmp eq i8 %124, 0
  br i1 %tobool.not.i794.i, label %if.else14.i809.i, label %land.lhs.true.i799.i

land.lhs.true.i799.i:                             ; preds = %do.end81.i
  %125 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %latest_superblock.i815.i, align 8
  %dev_bytenr.i796.i = getelementptr inbounds %struct.btrfsic_block, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %dev_bytenr.i796.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %dev_bytenr.i796.i, align 8
  %129 = ptrtoint ptr %dev_bytenr9.i.i.le to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %dev_bytenr9.i.i.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %130)
  %cmp.i798.i = icmp eq i64 %128, %130
  br i1 %cmp.i798.i, label %land.lhs.true2.i805.i, label %land.lhs.true.i799.i.if.else.thread.i806.i_crit_edge

land.lhs.true.i799.i.if.else.thread.i806.i_crit_edge: ; preds = %land.lhs.true.i799.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i806.i

land.lhs.true2.i805.i:                            ; preds = %land.lhs.true.i799.i
  %dev_state.i800.i = getelementptr inbounds %struct.btrfsic_block, ptr %126, i32 0, i32 3
  %131 = ptrtoint ptr %dev_state.i800.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev_state.i800.i, align 4
  %bdev.i801.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %bdev.i801.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bdev.i801.i, align 4
  %135 = ptrtoint ptr %dev_state.i.i.le to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_state.i.i.le, align 4
  %bdev5.i803.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %bdev5.i803.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bdev5.i803.i, align 4
  %cmp6.i804.i = icmp eq ptr %134, %138
  br i1 %cmp6.i804.i, label %land.lhs.true2.i805.i.btrfsic_get_block_type.exit811.i_crit_edge, label %land.lhs.true2.i805.i.if.else.thread.i806.i_crit_edge

land.lhs.true2.i805.i.if.else.thread.i806.i_crit_edge: ; preds = %land.lhs.true2.i805.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i806.i

land.lhs.true2.i805.i.btrfsic_get_block_type.exit811.i_crit_edge: ; preds = %land.lhs.true2.i805.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit811.i

if.else.thread.i806.i:                            ; preds = %land.lhs.true2.i805.i.if.else.thread.i806.i_crit_edge, %land.lhs.true.i799.i.if.else.thread.i806.i_crit_edge
  br label %btrfsic_get_block_type.exit811.i

if.else14.i809.i:                                 ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i793.i)
  %tobool18.not.i807.i = icmp sgt i8 %bf.load.i793.i, -1
  %..i808.i = select i1 %tobool18.not.i807.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit811.i

btrfsic_get_block_type.exit811.i:                 ; preds = %if.else14.i809.i, %if.else.thread.i806.i, %land.lhs.true2.i805.i.btrfsic_get_block_type.exit811.i_crit_edge
  %retval.0.i810.i = phi i32 [ 83, %land.lhs.true2.i805.i.btrfsic_get_block_type.exit811.i_crit_edge ], [ %..i808.i, %if.else14.i809.i ], [ 115, %if.else.thread.i806.i ]
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %bytenr.1.i, ptr noundef %120, i64 noundef %dev_bytenr.addr.01069.i, i32 noundef %122, i32 noundef %retval.0.i810.i) #17
  br label %if.end89.i

if.end89.i:                                       ; preds = %btrfsic_get_block_type.exit811.i, %btrfsic_get_block_type.exit.i, %if.end53.i.if.end89.i_crit_edge
  %logical_bytenr90.i = getelementptr i8, ptr %.pn30.i.i, i32 -36
  %139 = ptrtoint ptr %logical_bytenr90.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %bytenr.1.i, ptr %logical_bytenr90.i, align 8
  br label %if.end118.i

if.else91.i:                                      ; preds = %if.end30.i
  %mul92.i = shl i32 %num_pages.addr.01057.i, 12
  %140 = ptrtoint ptr %datablock_size.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %datablock_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul92.i, i32 %141)
  %cmp93.i = icmp ult i32 %mul92.i, %141
  br i1 %cmp93.i, label %if.else91.i.cleanup540.sink.split.i_crit_edge, label %if.end101.i

if.else91.i.cleanup540.sink.split.i_crit_edge:    ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup540.sink.split.i

if.end101.i:                                      ; preds = %if.else91.i
  %logical_bytenr103.i = getelementptr i8, ptr %.pn30.i.i, i32 -36
  %142 = ptrtoint ptr %logical_bytenr103.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %logical_bytenr103.i, align 8
  %144 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %63, align 8
  %and105.i = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.end101.i.if.end118.i_crit_edge, label %btrfsic_get_block_type.exit831.i

if.end101.i.if.end118.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118.i

btrfsic_get_block_type.exit831.i:                 ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  %146 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bdev.i.i.le, align 4
  %mirror_num113.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %148 = ptrtoint ptr %mirror_num113.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mirror_num113.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i827.i = icmp sgt i8 %bf.load.i, -1
  %..i828.i = select i1 %tobool18.not.i827.i, i32 68, i32 77
  %call116.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %143, ptr noundef %147, i64 noundef %dev_bytenr.addr.01069.i, i32 noundef %149, i32 noundef %..i828.i) #17
  br label %if.end118.i

if.end118.i:                                      ; preds = %btrfsic_get_block_type.exit831.i, %if.end101.i.if.end118.i_crit_edge, %if.end89.i
  %tobool31.not1008.i = phi i1 [ false, %if.end89.i ], [ true, %btrfsic_get_block_type.exit831.i ], [ true, %if.end101.i.if.end118.i_crit_edge ]
  %bytenr.2.i = phi i64 [ %bytenr.1.i, %if.end89.i ], [ %143, %btrfsic_get_block_type.exit831.i ], [ %143, %if.end101.i.if.end118.i_crit_edge ]
  %processed_len.2.i = phi i32 [ %processed_len.1.i, %if.end89.i ], [ %141, %btrfsic_get_block_type.exit831.i ], [ %141, %if.end101.i.if.end118.i_crit_edge ]
  %150 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %63, align 8
  %and120.i = and i32 %151, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.end118.i.if.end133.i_crit_edge, label %do.end125.i

if.end118.i.if.end133.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133.i

do.end125.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_to_list.i = getelementptr i8, ptr %.pn30.i.i, i32 16
  %152 = ptrtoint ptr %ref_to_list.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %ref_to_list.i, align 4
  %cmp.i832.not.i = icmp eq ptr %153, %ref_to_list.i
  %cond.i = select i1 %cmp.i832.not.i, i32 32, i32 33
  %ref_from_list.i = getelementptr i8, ptr %.pn30.i.i, i32 24
  %154 = ptrtoint ptr %ref_from_list.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %ref_from_list.i, align 4
  %cmp.i833.not.i = icmp eq ptr %155, %ref_from_list.i
  %cond131.i = select i1 %cmp.i833.not.i, i32 32, i32 33
  %call132.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %cond.i, i32 noundef %cond131.i) #17
  br label %if.end133.i

if.end133.i:                                      ; preds = %do.end125.i, %if.end118.i.if.end133.i_crit_edge
  %call134.i = call fastcc i32 @btrfsic_is_block_ref_by_superblock(ptr noundef %63, ptr noundef nonnull %b.0.le.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %if.end133.i.if.end153.i_crit_edge, label %do.end139.i

if.end133.i.if.end153.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153.i

do.end139.i:                                      ; preds = %if.end133.i
  %156 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load.i836.i = load i8, ptr %is_superblock.i, align 4
  %157 = and i8 %bf.load.i836.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i837.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i837.i, label %if.else14.i852.i, label %land.lhs.true.i842.i

land.lhs.true.i842.i:                             ; preds = %do.end139.i
  %158 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %latest_superblock.i815.i, align 8
  %dev_bytenr.i839.i = getelementptr inbounds %struct.btrfsic_block, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %dev_bytenr.i839.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %dev_bytenr.i839.i, align 8
  %162 = ptrtoint ptr %dev_bytenr9.i.i.le to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %dev_bytenr9.i.i.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %161, i64 %163)
  %cmp.i841.i = icmp eq i64 %161, %163
  br i1 %cmp.i841.i, label %land.lhs.true2.i848.i, label %land.lhs.true.i842.i.if.else.thread.i849.i_crit_edge

land.lhs.true.i842.i.if.else.thread.i849.i_crit_edge: ; preds = %land.lhs.true.i842.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i849.i

land.lhs.true2.i848.i:                            ; preds = %land.lhs.true.i842.i
  %dev_state.i843.i = getelementptr inbounds %struct.btrfsic_block, ptr %159, i32 0, i32 3
  %164 = ptrtoint ptr %dev_state.i843.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev_state.i843.i, align 4
  %bdev.i844.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %bdev.i844.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bdev.i844.i, align 4
  %168 = ptrtoint ptr %dev_state.i.i.le to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev_state.i.i.le, align 4
  %bdev5.i846.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %bdev5.i846.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bdev5.i846.i, align 4
  %cmp6.i847.i = icmp eq ptr %167, %171
  br i1 %cmp6.i847.i, label %land.lhs.true2.i848.i.btrfsic_get_block_type.exit854.i_crit_edge, label %land.lhs.true2.i848.i.if.else.thread.i849.i_crit_edge

land.lhs.true2.i848.i.if.else.thread.i849.i_crit_edge: ; preds = %land.lhs.true2.i848.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i849.i

land.lhs.true2.i848.i.btrfsic_get_block_type.exit854.i_crit_edge: ; preds = %land.lhs.true2.i848.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit854.i

if.else.thread.i849.i:                            ; preds = %land.lhs.true2.i848.i.if.else.thread.i849.i_crit_edge, %land.lhs.true.i842.i.if.else.thread.i849.i_crit_edge
  br label %btrfsic_get_block_type.exit854.i

if.else14.i852.i:                                 ; preds = %do.end139.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i836.i)
  %tobool18.not.i850.i = icmp sgt i8 %bf.load.i836.i, -1
  %..i851.i = select i1 %tobool18.not.i850.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit854.i

btrfsic_get_block_type.exit854.i:                 ; preds = %if.else14.i852.i, %if.else.thread.i849.i, %land.lhs.true2.i848.i.btrfsic_get_block_type.exit854.i_crit_edge
  %retval.0.i853.i = phi i32 [ 83, %land.lhs.true2.i848.i.btrfsic_get_block_type.exit854.i_crit_edge ], [ %..i851.i, %if.else14.i852.i ], [ 115, %if.else.thread.i849.i ]
  %172 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bdev.i.i.le, align 4
  %mirror_num144.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %174 = ptrtoint ptr %mirror_num144.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mirror_num144.i, align 8
  %generation.i = getelementptr i8, ptr %.pn30.i.i, i32 -28
  %176 = ptrtoint ptr %generation.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %generation.i, align 8
  %disk_key.i = getelementptr i8, ptr %.pn30.i.i, i32 -20
  %178 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 8)
  %179 = load i64, ptr %disk_key.i, align 1
  %180 = call i64 @llvm.bswap.i64(i64 %179) #14
  %type.i = getelementptr i8, ptr %.pn30.i.i, i32 -12
  %181 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %type.i, align 8
  %conv147.i = zext i8 %182 to i32
  %offset.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -11
  %183 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 8)
  %184 = load i64, ptr %offset.i.i, align 1
  %185 = call i64 @llvm.bswap.i64(i64 %184) #14
  %186 = ptrtoint ptr %mapped_datav.addr.01063.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mapped_datav.addr.01063.i, align 4
  %generation.i.i = getelementptr inbounds %struct.btrfs_header, ptr %187, i32 0, i32 5
  %188 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 8)
  %189 = load i64, ptr %generation.i.i, align 1
  %190 = call i64 @llvm.bswap.i64(i64 %189) #14
  %191 = ptrtoint ptr %max_superblock_generation.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %max_superblock_generation.i, align 8
  %call152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %retval.0.i853.i, i64 noundef %bytenr.2.i, ptr noundef %173, i64 noundef %dev_bytenr.addr.01069.i, i32 noundef %175, i64 noundef %177, i64 noundef %180, i32 noundef %conv147.i, i64 noundef %185, i64 noundef %190, i64 noundef %192) #17
  %193 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %latest_superblock.i815.i, align 8
  call fastcc void @btrfsic_dump_tree_sub(ptr noundef %63, ptr noundef %194, i32 noundef 0) #14
  br label %if.end153.i

if.end153.i:                                      ; preds = %btrfsic_get_block_type.exit854.i, %if.end133.i.if.end153.i_crit_edge
  %195 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %bf.load154.i = load i8, ptr %is_superblock.i, align 4
  %196 = and i8 %bf.load154.i, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %do.end168.i, label %if.end178.i

do.end168.i:                                      ; preds = %if.end153.i
  %198 = and i8 %bf.load154.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not.i858.i = icmp eq i8 %198, 0
  br i1 %tobool.not.i858.i, label %if.else14.i873.i, label %land.lhs.true.i863.i

land.lhs.true.i863.i:                             ; preds = %do.end168.i
  %199 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %latest_superblock.i815.i, align 8
  %dev_bytenr.i860.i = getelementptr inbounds %struct.btrfsic_block, ptr %200, i32 0, i32 4
  %201 = ptrtoint ptr %dev_bytenr.i860.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %dev_bytenr.i860.i, align 8
  %203 = ptrtoint ptr %dev_bytenr9.i.i.le to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %dev_bytenr9.i.i.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %202, i64 %204)
  %cmp.i862.i = icmp eq i64 %202, %204
  br i1 %cmp.i862.i, label %land.lhs.true2.i869.i, label %land.lhs.true.i863.i.if.else.thread.i870.i_crit_edge

land.lhs.true.i863.i.if.else.thread.i870.i_crit_edge: ; preds = %land.lhs.true.i863.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i870.i

land.lhs.true2.i869.i:                            ; preds = %land.lhs.true.i863.i
  %dev_state.i864.i = getelementptr inbounds %struct.btrfsic_block, ptr %200, i32 0, i32 3
  %205 = ptrtoint ptr %dev_state.i864.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev_state.i864.i, align 4
  %bdev.i865.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %bdev.i865.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bdev.i865.i, align 4
  %209 = ptrtoint ptr %dev_state.i.i.le to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev_state.i.i.le, align 4
  %bdev5.i867.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %bdev5.i867.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bdev5.i867.i, align 4
  %cmp6.i868.i = icmp eq ptr %208, %212
  br i1 %cmp6.i868.i, label %land.lhs.true2.i869.i.btrfsic_get_block_type.exit875.i_crit_edge, label %land.lhs.true2.i869.i.if.else.thread.i870.i_crit_edge

land.lhs.true2.i869.i.if.else.thread.i870.i_crit_edge: ; preds = %land.lhs.true2.i869.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i870.i

land.lhs.true2.i869.i.btrfsic_get_block_type.exit875.i_crit_edge: ; preds = %land.lhs.true2.i869.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit875.i

if.else.thread.i870.i:                            ; preds = %land.lhs.true2.i869.i.if.else.thread.i870.i_crit_edge, %land.lhs.true.i863.i.if.else.thread.i870.i_crit_edge
  br label %btrfsic_get_block_type.exit875.i

if.else14.i873.i:                                 ; preds = %do.end168.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load154.i)
  %tobool18.not.i871.i = icmp sgt i8 %bf.load154.i, -1
  %..i872.i = select i1 %tobool18.not.i871.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit875.i

btrfsic_get_block_type.exit875.i:                 ; preds = %if.else14.i873.i, %if.else.thread.i870.i, %land.lhs.true2.i869.i.btrfsic_get_block_type.exit875.i_crit_edge
  %retval.0.i874.i = phi i32 [ 83, %land.lhs.true2.i869.i.btrfsic_get_block_type.exit875.i_crit_edge ], [ %..i872.i, %if.else14.i873.i ], [ 115, %if.else.thread.i870.i ]
  %213 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bdev.i.i.le, align 4
  %mirror_num173.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %215 = ptrtoint ptr %mirror_num173.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %mirror_num173.i, align 8
  %generation174.i = getelementptr i8, ptr %.pn30.i.i, i32 -28
  %217 = ptrtoint ptr %generation174.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %generation174.i, align 8
  %219 = ptrtoint ptr %mapped_datav.addr.01063.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mapped_datav.addr.01063.i, align 4
  %generation.i876.i = getelementptr inbounds %struct.btrfs_header, ptr %220, i32 0, i32 5
  %221 = ptrtoint ptr %generation.i876.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 8)
  %222 = load i64, ptr %generation.i876.i, align 1
  %223 = call i64 @llvm.bswap.i64(i64 %222) #14
  %call177.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %retval.0.i874.i, i64 noundef %bytenr.2.i, ptr noundef %214, i64 noundef %dev_bytenr.addr.01069.i, i32 noundef %216, i64 noundef %218, i64 noundef %223) #17
  %224 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %latest_superblock.i815.i, align 8
  call fastcc void @btrfsic_dump_tree_sub(ptr noundef %63, ptr noundef %225, i32 noundef 0) #14
  br label %do.body516.i

if.end178.i:                                      ; preds = %if.end153.i
  %ref_to_list179.i = getelementptr i8, ptr %.pn30.i.i, i32 16
  %226 = ptrtoint ptr %ref_to_list179.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ref_to_list179.i, align 4
  %cmp187.not1050.i = icmp eq ptr %227, %ref_to_list179.i
  br i1 %cmp187.not1050.i, label %if.end178.i.for.end.i_crit_edge, label %if.end178.i.for.body.i_crit_edge

if.end178.i.for.body.i_crit_edge:                 ; preds = %if.end178.i
  br label %for.body.i

if.end178.i.for.end.i_crit_edge:                  ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end178.i.for.body.i_crit_edge
  %.pn.in1051.i = phi ptr [ %.pn1055.i, %for.inc.i.for.body.i_crit_edge ], [ %227, %if.end178.i.for.body.i_crit_edge ]
  %l.01054.i = getelementptr i8, ptr %.pn.in1051.i, i32 -8
  %228 = ptrtoint ptr %.pn.in1051.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %.pn1055.i = load ptr, ptr %.pn.in1051.i, align 8
  %229 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %63, align 8
  %and190.i = and i32 %230, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i)
  %tobool191.not.i = icmp eq i32 %and190.i, 0
  br i1 %tobool191.not.i, label %for.body.i.if.end193.i_crit_edge, label %if.then192.i

for.body.i.if.end193.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end193.i

if.then192.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @btrfsic_print_rem_link(ptr noundef %63, ptr noundef %l.01054.i) #14
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.then192.i, %for.body.i.if.end193.i_crit_edge
  %ref_cnt.i = getelementptr i8, ptr %.pn.in1051.i, i32 -4
  %231 = ptrtoint ptr %ref_cnt.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ref_cnt.i, align 4
  %dec.i = add i32 %232, -1
  store i32 %dec.i, ptr %ref_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp195.i = icmp eq i32 %dec.i, 0
  br i1 %cmp195.i, label %if.then197.i, label %if.end193.i.for.inc.i_crit_edge

if.end193.i.for.inc.i_crit_edge:                  ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then197.i:                                     ; preds = %if.end193.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in1051.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i241, label %if.then197.i.list_del.exit.i_crit_edge

if.then197.i.list_del.exit.i_crit_edge:           ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i241:                                  ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in1051.i, i32 0, i32 1
  %233 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %prev.i.i.i, align 4
  %235 = ptrtoint ptr %.pn.in1051.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %.pn.in1051.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %234, ptr %prev1.i.i.i.i, align 4
  %238 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile ptr %236, ptr %234, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i241, %if.then197.i.list_del.exit.i_crit_edge
  %239 = ptrtoint ptr %.pn.in1051.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in1051.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in1051.i, i32 0, i32 1
  %240 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %node_ref_from.i = getelementptr i8, ptr %.pn.in1051.i, i32 8
  %call.i.i878.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %node_ref_from.i) #14
  br i1 %call.i.i878.i, label %if.end.i.i881.i, label %list_del.exit.i.list_del.exit883.i_crit_edge

list_del.exit.i.list_del.exit883.i_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit883.i

if.end.i.i881.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i879.i = getelementptr i8, ptr %.pn.in1051.i, i32 12
  %241 = ptrtoint ptr %prev.i.i879.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %prev.i.i879.i, align 4
  %243 = ptrtoint ptr %node_ref_from.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %node_ref_from.i, align 4
  %prev1.i.i.i880.i = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %prev1.i.i.i880.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %242, ptr %prev1.i.i.i880.i, align 4
  %246 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %246)
  store volatile ptr %244, ptr %242, align 4
  br label %list_del.exit883.i

list_del.exit883.i:                               ; preds = %if.end.i.i881.i, %list_del.exit.i.list_del.exit883.i_crit_edge
  %247 = ptrtoint ptr %node_ref_from.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr inttoptr (i32 256 to ptr), ptr %node_ref_from.i, align 4
  %prev.i882.i = getelementptr i8, ptr %.pn.in1051.i, i32 12
  %248 = ptrtoint ptr %prev.i882.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i882.i, align 4
  %collision_resolving_node.i.i = getelementptr i8, ptr %.pn.in1051.i, i32 16
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %collision_resolving_node.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_del.exit883.i.btrfsic_block_link_hashtable_remove.exit.i_crit_edge

list_del.exit883.i.btrfsic_block_link_hashtable_remove.exit.i_crit_edge: ; preds = %list_del.exit883.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_link_hashtable_remove.exit.i

if.end.i.i.i.i:                                   ; preds = %list_del.exit883.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in1051.i, i32 20
  %249 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %prev.i.i.i.i, align 4
  %251 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %collision_resolving_node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %250, ptr %prev1.i.i.i.i.i, align 4
  %254 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %252, ptr %250, align 4
  br label %btrfsic_block_link_hashtable_remove.exit.i

btrfsic_block_link_hashtable_remove.exit.i:       ; preds = %if.end.i.i.i.i, %list_del.exit883.i.btrfsic_block_link_hashtable_remove.exit.i_crit_edge
  %255 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr inttoptr (i32 256 to ptr), ptr %collision_resolving_node.i.i, align 4
  %prev.i.i884.i = getelementptr i8, ptr %.pn.in1051.i, i32 20
  %256 = ptrtoint ptr %prev.i.i884.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i884.i, align 4
  %cmp.i885.i = icmp eq ptr %l.01054.i, null
  br i1 %cmp.i885.i, label %btrfsic_block_link_hashtable_remove.exit.i.btrfsic_block_link_free.exit.i_crit_edge, label %lor.rhs.i.i

btrfsic_block_link_hashtable_remove.exit.i.btrfsic_block_link_free.exit.i_crit_edge: ; preds = %btrfsic_block_link_hashtable_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_link_free.exit.i

lor.rhs.i.i:                                      ; preds = %btrfsic_block_link_hashtable_remove.exit.i
  %257 = ptrtoint ptr %l.01054.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %l.01054.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 285673479, i32 %258)
  %cmp1.not.i.i = icmp eq i32 %258, 285673479
  br i1 %cmp1.not.i.i, label %lor.rhs.i.i.btrfsic_block_link_free.exit.i_crit_edge, label %do.body4.i.i, !prof !439

lor.rhs.i.i.btrfsic_block_link_free.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_link_free.exit.i

do.body4.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #14, !srcloc !441
  unreachable

btrfsic_block_link_free.exit.i:                   ; preds = %lor.rhs.i.i.btrfsic_block_link_free.exit.i_crit_edge, %btrfsic_block_link_hashtable_remove.exit.i.btrfsic_block_link_free.exit.i_crit_edge
  call void @kfree(ptr noundef %l.01054.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %btrfsic_block_link_free.exit.i, %if.end193.i.for.inc.i_crit_edge
  %cmp187.not.i = icmp eq ptr %.pn1055.i, %ref_to_list179.i
  br i1 %cmp187.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end178.i.for.end.i_crit_edge
  %259 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %ds.0.le.i.i, ptr %dev.i, align 4
  %260 = ptrtoint ptr %dev_bytenr205.i to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 %dev_bytenr.addr.01069.i, ptr %dev_bytenr205.i, align 8
  %261 = ptrtoint ptr %block_ctx.i to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %bytenr.2.i, ptr %block_ctx.i, align 8
  %262 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %processed_len.2.i, ptr %len.i, align 8
  %263 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr null, ptr %pagev.i, align 4
  %264 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr null, ptr %mem_to_free.i, align 8
  %265 = ptrtoint ptr %datav.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %mapped_datav.addr.01063.i, ptr %datav.i, align 8
  br i1 %tobool31.not1008.i, label %lor.lhs.false.i, label %for.end.i.if.then217.i_crit_edge

for.end.i.if.then217.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then217.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %266 = ptrtoint ptr %include_extent_data.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %include_extent_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool207.not.i = icmp eq i32 %267, 0
  br i1 %tobool207.not.i, label %if.end279.thread.i, label %lor.lhs.false.i.if.then217.i_crit_edge

lor.lhs.false.i.if.then217.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then217.i

if.end279.thread.i:                               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %268 = ptrtoint ptr %last_flush_gen.i to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %last_flush_gen.i, align 8
  %add1012.i = add i64 %269, 1
  %flush_gen1013.i = getelementptr i8, ptr %.pn30.i.i, i32 52
  %270 = ptrtoint ptr %flush_gen1013.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %add1012.i, ptr %flush_gen1013.i, align 8
  %submit_bio_bh_rw2801014.i = getelementptr i8, ptr %.pn30.i.i, i32 44
  %271 = ptrtoint ptr %submit_bio_bh_rw2801014.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %60, ptr %submit_bio_bh_rw2801014.i, align 8
  br label %if.else322.i

if.then217.i:                                     ; preds = %lor.lhs.false.i.if.then217.i_crit_edge, %for.end.i.if.then217.i_crit_edge
  %272 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load210.i = load i8, ptr %is_superblock.i, align 4
  %bf.clear273.i = and i8 %bf.load210.i, -57
  store i8 %bf.clear273.i, ptr %is_superblock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bio_is_patched.0)
  %tobool238.not.i = icmp eq i32 %bio_is_patched.0, 0
  %273 = ptrtoint ptr %bi_private243.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %bi_private243.i, align 4
  br i1 %tobool238.not.i, label %if.then239.i, label %if.else242.i

if.then239.i:                                     ; preds = %if.then217.i
  call void @__sanitizer_cov_trace_pc() #16
  %orig_bio_private.i = getelementptr i8, ptr %.pn30.i.i, i32 36
  %275 = ptrtoint ptr %orig_bio_private.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %274, ptr %orig_bio_private.i, align 8
  %276 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bi_end_io.i, align 8
  %orig_bio_end_io.i = getelementptr i8, ptr %.pn30.i.i, i32 40
  %278 = ptrtoint ptr %orig_bio_end_io.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %277, ptr %orig_bio_end_io.i, align 4
  %next_in_same_bio.i = getelementptr i8, ptr %.pn30.i.i, i32 32
  %279 = ptrtoint ptr %next_in_same_bio.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr null, ptr %next_in_same_bio.i, align 4
  %280 = ptrtoint ptr %bi_private243.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %b.0.le.i.i, ptr %bi_private243.i, align 4
  store ptr @btrfsic_bio_end_io, ptr %bi_end_io.i, align 8
  br label %if.end279.i

if.else242.i:                                     ; preds = %if.then217.i
  %cmp245.i = icmp eq ptr %274, null
  br i1 %cmp245.i, label %do.body254.i, label %do.end262.i, !prof !438

do.body254.i:                                     ; preds = %if.else242.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1864, 0\0A.popsection", ""() #14, !srcloc !442
  unreachable

do.end262.i:                                      ; preds = %if.else242.i
  call void @__sanitizer_cov_trace_pc() #16
  %orig_bio_private263.i = getelementptr inbounds %struct.btrfsic_block, ptr %274, i32 0, i32 13
  %281 = ptrtoint ptr %orig_bio_private263.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %orig_bio_private263.i, align 8
  %orig_bio_private264.i = getelementptr i8, ptr %.pn30.i.i, i32 36
  %283 = ptrtoint ptr %orig_bio_private264.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %282, ptr %orig_bio_private264.i, align 8
  %orig_bio_end_io265.i = getelementptr inbounds %struct.btrfsic_block, ptr %274, i32 0, i32 14
  %284 = ptrtoint ptr %orig_bio_end_io265.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %orig_bio_end_io265.i, align 4
  %orig_bio_end_io266.i = getelementptr i8, ptr %.pn30.i.i, i32 40
  %286 = ptrtoint ptr %orig_bio_end_io266.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %285, ptr %orig_bio_end_io266.i, align 4
  %next_in_same_bio267.i = getelementptr i8, ptr %.pn30.i.i, i32 32
  %287 = ptrtoint ptr %next_in_same_bio267.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %274, ptr %next_in_same_bio267.i, align 4
  %288 = ptrtoint ptr %bi_private243.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %b.0.le.i.i, ptr %bi_private243.i, align 4
  br label %if.end279.i

if.end279.i:                                      ; preds = %do.end262.i, %if.then239.i
  %bio_is_patched.1 = phi i32 [ 1, %if.then239.i ], [ %bio_is_patched.0, %do.end262.i ]
  %289 = ptrtoint ptr %last_flush_gen.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %last_flush_gen.i, align 8
  %add.i242 = add i64 %290, 1
  %flush_gen.i = getelementptr i8, ptr %.pn30.i.i, i32 52
  %291 = ptrtoint ptr %flush_gen.i to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %add.i242, ptr %flush_gen.i, align 8
  %submit_bio_bh_rw280.i = getelementptr i8, ptr %.pn30.i.i, i32 44
  %292 = ptrtoint ptr %submit_bio_bh_rw280.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %60, ptr %submit_bio_bh_rw280.i, align 8
  br i1 %tobool31.not1008.i, label %if.end279.i.if.else322.i_crit_edge, label %if.then282.i

if.end279.i.if.else322.i_crit_edge:               ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else322.i

if.then282.i:                                     ; preds = %if.end279.i
  %logical_bytenr283.i = getelementptr i8, ptr %.pn30.i.i, i32 -36
  %293 = ptrtoint ptr %logical_bytenr283.i to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 %bytenr.2.i, ptr %logical_bytenr283.i, align 8
  %294 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load285.i = load i8, ptr %is_superblock.i, align 4
  %bf.set287.i = or i8 %bf.load285.i, -128
  store i8 %bf.set287.i, ptr %is_superblock.i, align 4
  %295 = and i8 %bf.load285.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool293.not.i = icmp eq i8 %295, 0
  br i1 %tobool293.not.i, label %if.else310.i, label %do.end297.i

do.end297.i:                                      ; preds = %if.then282.i
  %296 = ptrtoint ptr %mapped_datav.addr.01063.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mapped_datav.addr.01063.i, align 4
  %298 = ptrtoint ptr %fs_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %fs_info1.i.i, align 8
  %generation.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %297, i32 0, i32 5
  %300 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %300, i32 8)
  %301 = load i64, ptr %generation.i.i.i, align 1
  %302 = call i64 @llvm.bswap.i64(i64 %301) #14
  %generation.i886.i = getelementptr i8, ptr %.pn30.i.i, i32 -28
  %303 = ptrtoint ptr %generation.i886.i to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %302, ptr %generation.i886.i, align 8
  %304 = ptrtoint ptr %max_superblock_generation.i to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %max_superblock_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %302, i64 %305)
  %cmp.i887.i = icmp ugt i64 %302, %305
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %305)
  %cmp4.i.i = icmp eq i64 %305, 0
  %or.cond.i.i = or i1 %cmp.i887.i, %cmp4.i.i
  %306 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %63, align 8
  %and10.i.i = and i32 %307, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %or.cond.i.i, label %if.else.i.i244, label %if.then.i.i243

if.then.i.i243:                                   ; preds = %do.end297.i
  br i1 %tobool11.not.i.i, label %if.then.i.i243.if.end28.i.i_crit_edge, label %do.end.i.i

if.then.i.i243.if.end28.i.i_crit_edge:            ; preds = %if.then.i.i243
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i.i

do.end.i.i:                                       ; preds = %if.then.i.i243
  call void @__sanitizer_cov_trace_pc() #16
  %308 = ptrtoint ptr %dev_state.i.i.le to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev_state.i.i.le, align 4
  %bdev.i889.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %bdev.i889.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %bdev.i889.i, align 4
  %312 = ptrtoint ptr %dev_bytenr9.i.i.le to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %dev_bytenr9.i.i.le, align 8
  %mirror_num.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %314 = ptrtoint ptr %mirror_num.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %mirror_num.i.i, align 8
  %316 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %316, i32 8)
  %317 = load i64, ptr %generation.i.i.i, align 1
  %318 = call i64 @llvm.bswap.i64(i64 %317) #14
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i64 noundef %bytenr.2.i, ptr noundef %311, i64 noundef %313, i32 noundef %315, i64 noundef %318, i64 noundef %305) #17
  br label %if.end28.i.i

if.else.i.i244:                                   ; preds = %do.end297.i
  br i1 %tobool11.not.i.i, label %if.else.i.i244.if.end25.i.i_crit_edge, label %do.end15.i.i

if.else.i.i244.if.end25.i.i_crit_edge:            ; preds = %if.else.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i.i

do.end15.i.i:                                     ; preds = %if.else.i.i244
  call void @__sanitizer_cov_trace_pc() #16
  %319 = ptrtoint ptr %dev_state.i.i.le to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev_state.i.i.le, align 4
  %bdev19.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %bdev19.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %bdev19.i.i, align 4
  %323 = ptrtoint ptr %dev_bytenr9.i.i.le to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %dev_bytenr9.i.i.le, align 8
  %mirror_num21.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %325 = ptrtoint ptr %mirror_num21.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %mirror_num21.i.i, align 8
  %327 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %327, i32 8)
  %328 = load i64, ptr %generation.i.i.i, align 1
  %329 = call i64 @llvm.bswap.i64(i64 %328) #14
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i64 noundef %bytenr.2.i, ptr noundef %322, i64 noundef %324, i32 noundef %326, i64 noundef %329, i64 noundef %305) #17
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end15.i.i, %if.else.i.i244.if.end25.i.i_crit_edge
  %330 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %330, i32 8)
  %331 = load i64, ptr %generation.i.i.i, align 1
  %332 = call i64 @llvm.bswap.i64(i64 %331) #14
  %333 = ptrtoint ptr %max_superblock_generation.i to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 %332, ptr %max_superblock_generation.i, align 8
  %334 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %b.0.le.i.i, ptr %latest_superblock.i815.i, align 8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.end25.i.i, %do.end.i.i, %if.then.i.i243.if.end28.i.i_crit_edge
  %log_root.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %297, i32 0, i32 8
  %chunk_root.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %297, i32 0, i32 7
  %root.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %297, i32 0, i32 6
  br label %for.body.i892.i

for.body.i892.i:                                  ; preds = %for.inc125.i.i.for.body.i892.i_crit_edge, %if.end28.i.i
  %pass.0264.i.i = phi i32 [ 0, %if.end28.i.i ], [ %inc126.i.i, %for.inc125.i.i.for.body.i892.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i.i) #14
  %335 = call ptr @memset(ptr %tmp_next_block_ctx.i.i, i32 255, i32 40)
  %336 = zext i32 %pass.0264.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %pass.0264.i.i, label %for.body.i892.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb42.i.i
    i32 2, label %sw.bb54.i.i
  ]

for.body.i892.i.sw.epilog.i.i_crit_edge:          ; preds = %for.body.i892.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.body.i892.i
  %337 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 8)
  %338 = load i64, ptr %root.i.i.i, align 1
  %339 = call i64 @llvm.bswap.i64(i64 %338) #14
  %340 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %63, align 8
  %and33.i.i = and i32 %341, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %do.end38.i.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end38.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i64 noundef %339) #17
  br label %sw.epilog.i.i

sw.bb42.i.i:                                      ; preds = %for.body.i892.i
  %342 = ptrtoint ptr %chunk_root.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %342, i32 8)
  %343 = load i64, ptr %chunk_root.i.i.i, align 1
  %344 = call i64 @llvm.bswap.i64(i64 %343) #14
  %345 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %63, align 8
  %and45.i.i = and i32 %346, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %sw.bb42.i.i.sw.epilog.i.i_crit_edge, label %do.end50.i.i

sw.bb42.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end50.i.i:                                     ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call52.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i64 noundef %344) #17
  br label %sw.epilog.i.i

sw.bb54.i.i:                                      ; preds = %for.body.i892.i
  %347 = ptrtoint ptr %log_root.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 8)
  %348 = load i64, ptr %log_root.i.i.i, align 1
  %349 = call i64 @llvm.bswap.i64(i64 %348) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %348)
  %cmp56.i.i = icmp eq i64 %348, 0
  br i1 %cmp56.i.i, label %for.inc125.thread.i.i, label %if.end58.i.i

for.inc125.thread.i.i:                            ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i.i) #14
  br label %for.end127.i.i

if.end58.i.i:                                     ; preds = %sw.bb54.i.i
  %350 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %63, align 8
  %and60.i.i = and i32 %351, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end58.i.i.sw.epilog.i.i_crit_edge, label %do.end65.i.i

if.end58.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end65.i.i:                                     ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call67.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i64 noundef %349) #17
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end65.i.i, %if.end58.i.i.sw.epilog.i.i_crit_edge, %do.end50.i.i, %sw.bb42.i.i.sw.epilog.i.i_crit_edge, %do.end38.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %for.body.i892.i.sw.epilog.i.i_crit_edge
  %tmp_disk_key.sroa.0.1.i.i = phi i64 [ 0, %for.body.i892.i.sw.epilog.i.i_crit_edge ], [ -360287970189639681, %if.end58.i.i.sw.epilog.i.i_crit_edge ], [ -360287970189639681, %do.end65.i.i ], [ 216172782113783808, %sw.bb42.i.i.sw.epilog.i.i_crit_edge ], [ 216172782113783808, %do.end50.i.i ], [ 72057594037927936, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ 72057594037927936, %do.end38.i.i ]
  %additional_string.0.i.i = phi ptr [ null, %for.body.i892.i.sw.epilog.i.i_crit_edge ], [ @.str.115, %if.end58.i.i.sw.epilog.i.i_crit_edge ], [ @.str.115, %do.end65.i.i ], [ @.str.111, %sw.bb42.i.i.sw.epilog.i.i_crit_edge ], [ @.str.111, %do.end50.i.i ], [ @.str.107, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ @.str.107, %do.end38.i.i ]
  %next_bytenr.0.i.i = phi i64 [ -1, %for.body.i892.i.sw.epilog.i.i_crit_edge ], [ %349, %if.end58.i.i.sw.epilog.i.i_crit_edge ], [ %349, %do.end65.i.i ], [ %344, %sw.bb42.i.i.sw.epilog.i.i_crit_edge ], [ %344, %do.end50.i.i ], [ %339, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ %339, %do.end38.i.i ]
  %call69.i.i = call i32 @btrfs_num_copies(ptr noundef %299, i64 noundef %next_bytenr.0.i.i, i64 noundef 4096) #14
  %352 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %63, align 8
  %and71.i.i = and i32 %353, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %sw.epilog.i.i.if.end79.i.i_crit_edge, label %do.end76.i.i

sw.epilog.i.i.if.end79.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79.i.i

do.end76.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call78.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %next_bytenr.0.i.i, i32 noundef %call69.i.i) #17
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %do.end76.i.i, %sw.epilog.i.i.if.end79.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69.i.i)
  %cmp81.not262.i.i = icmp slt i32 %call69.i.i, 1
  br i1 %cmp81.not262.i.i, label %if.end79.i.i.for.inc125.i.i_crit_edge, label %if.end79.i.i.for.body82.i.i_crit_edge

if.end79.i.i.for.body82.i.i_crit_edge:            ; preds = %if.end79.i.i
  br label %for.body82.i.i

if.end79.i.i.for.inc125.i.i_crit_edge:            ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc125.i.i

for.body82.i.i:                                   ; preds = %for.inc.i893.i.for.body82.i.i_crit_edge, %if.end79.i.i.for.body82.i.i_crit_edge
  %mirror_num30.0263.i.i = phi i32 [ %inc.i.i247, %for.inc.i893.i.for.body82.i.i_crit_edge ], [ 1, %if.end79.i.i.for.body82.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %was_created.i.i) #14
  %354 = ptrtoint ptr %was_created.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 -1, ptr %was_created.i.i, align 4, !annotation !443
  %355 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %63, align 8
  %and84.i.i = and i32 %356, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i.i)
  %tobool85.not.i.i = icmp eq i32 %and84.i.i, 0
  br i1 %tobool85.not.i.i, label %for.body82.i.i.if.end92.i.i_crit_edge, label %do.end89.i.i

for.body82.i.i.if.end92.i.i_crit_edge:            ; preds = %for.body82.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i.i

do.end89.i.i:                                     ; preds = %for.body82.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call91.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %mirror_num30.0263.i.i) #17
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %do.end89.i.i, %for.body82.i.i.if.end92.i.i_crit_edge
  %call93.i.i = call fastcc i32 @btrfsic_map_block(ptr noundef %63, i64 noundef %next_bytenr.0.i.i, i32 noundef 4096, ptr noundef nonnull %tmp_next_block_ctx.i.i, i32 noundef %mirror_num30.0263.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i.i)
  %tobool94.not.i.i = icmp eq i32 %call93.i.i, 0
  br i1 %tobool94.not.i.i, label %if.end101.i.i, label %do.end98.i.i

do.end98.i.i:                                     ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call100.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i64 noundef %next_bytenr.0.i.i, i32 noundef %mirror_num30.0263.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %was_created.i.i) #14
  br label %cleanup114.thread.i.i

if.end101.i.i:                                    ; preds = %if.end92.i.i
  %call102.i.i = call fastcc ptr @btrfsic_block_lookup_or_add(ptr noundef %63, ptr noundef nonnull %tmp_next_block_ctx.i.i, ptr noundef %additional_string.0.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef %mirror_num30.0263.i.i, ptr noundef nonnull %was_created.i.i) #14
  %cmp103.i.i = icmp eq ptr %call102.i.i, null
  br i1 %cmp103.i.i, label %if.then104.i.i, label %if.end105.i.i

if.then104.i.i:                                   ; preds = %if.end101.i.i
  %357 = ptrtoint ptr %mem_to_free.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %mem_to_free.i220.i.i, align 8
  %tobool.not.i.i.i245 = icmp eq ptr %358, null
  br i1 %tobool.not.i.i.i245, label %if.then104.i.i.btrfsic_release_block_ctx.exit.i.i_crit_edge, label %if.then.i.i.i

if.then104.i.i.btrfsic_release_block_ctx.exit.i.i_crit_edge: ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then104.i.i
  %359 = ptrtoint ptr %datav.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %datav.i222.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %360, null
  br i1 %tobool1.not.i.i.i, label %do.body6.i.i.i, label %do.body12.i.i.i, !prof !438

do.body6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i
  %361 = ptrtoint ptr %pagev.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %pagev.i226.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %362, null
  br i1 %tobool13.not.i.i.i, label %do.body23.i.i.i, label %do.end31.i.i.i, !prof !438

do.body23.i.i.i:                                  ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i.i.i:                                   ; preds = %do.body12.i.i.i
  %363 = ptrtoint ptr %len.i230.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %len.i230.i.i, align 8
  %conv.i.i.i = zext i32 %364 to i64
  %sub.i.i.i246 = add nuw nsw i64 %conv.i.i.i, 4095
  %shr.i.i.i = lshr i64 %sub.i.i.i246, 12
  %conv32.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i.i.i)
  %cmp.not72.i.i.i = icmp eq i32 %conv32.i.i.i, 0
  br i1 %cmp.not72.i.i.i, label %do.end31.i.i.i.while.end.i.i.i_crit_edge, label %do.end31.i.i.i.while.body.i.i.i_crit_edge

do.end31.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %do.end31.i.i.i
  br label %while.body.i.i.i

do.end31.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %do.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %if.end48.i.i.i.while.body.i.i.i_crit_edge, %do.end31.i.i.i.while.body.i.i.i_crit_edge
  %num_pages.073.i.i.i = phi i32 [ %dec.i.i.i, %if.end48.i.i.i.while.body.i.i.i_crit_edge ], [ %conv32.i.i.i, %do.end31.i.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %num_pages.073.i.i.i, -1
  %arrayidx.i.i.i = getelementptr ptr, ptr %360, i32 %dec.i.i.i
  %365 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool35.not.i.i.i = icmp eq ptr %366, null
  br i1 %tobool35.not.i.i.i, label %while.body.i.i.i.if.end39.i.i.i_crit_edge, label %if.then36.i.i.i

while.body.i.i.i.if.end39.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i.i

if.then36.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %367 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then36.i.i.i, %while.body.i.i.i.if.end39.i.i.i_crit_edge
  %arrayidx41.i.i.i = getelementptr ptr, ptr %362, i32 %dec.i.i.i
  %368 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx41.i.i.i, align 4
  %tobool42.not.i.i.i = icmp eq ptr %369, null
  br i1 %tobool42.not.i.i.i, label %if.end39.i.i.i.if.end48.i.i.i_crit_edge, label %if.then43.i.i.i

if.end39.i.i.i.if.end48.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %369, i32 noundef 0) #14
  %370 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr null, ptr %arrayidx41.i.i.i, align 4
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then43.i.i.i, %if.end39.i.i.i.if.end48.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end48.i.i.i.while.end.i.i.i_crit_edge, label %if.end48.i.i.i.while.body.i.i.i_crit_edge

if.end48.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

if.end48.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end48.i.i.i.while.end.i.i.i_crit_edge, %do.end31.i.i.i.while.end.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %358) #14
  br label %btrfsic_release_block_ctx.exit.i.i

btrfsic_release_block_ctx.exit.i.i:               ; preds = %while.end.i.i.i, %if.then104.i.i.btrfsic_release_block_ctx.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %was_created.i.i) #14
  br label %cleanup114.thread.i.i

if.end105.i.i:                                    ; preds = %if.end101.i.i
  %disk_key.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call102.i.i, i32 0, i32 7
  %371 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 %tmp_disk_key.sroa.0.1.i.i, ptr %disk_key.i.i, align 8
  %tmp_disk_key.sroa.9.0.disk_key.sroa_idx.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call102.i.i, i32 0, i32 7, i32 1
  %372 = call ptr @memset(ptr %tmp_disk_key.sroa.9.0.disk_key.sroa_idx.i.i, i32 0, i32 9)
  %373 = ptrtoint ptr %was_created.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %was_created.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool106.not.i.i = icmp eq i32 %374, 0
  br i1 %tobool106.not.i.i, label %if.end105.i.i.if.end109.i.i_crit_edge, label %if.then107.i.i

if.end105.i.i.if.end109.i.i_crit_edge:            ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109.i.i

if.then107.i.i:                                   ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %generation108.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call102.i.i, i32 0, i32 6
  %375 = ptrtoint ptr %generation108.i.i to i32
  call void @__asan_store8_noabort(i32 %375)
  store i64 -1, ptr %generation108.i.i, align 8
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.then107.i.i, %if.end105.i.i.if.end109.i.i_crit_edge
  %call110.i.i = call fastcc ptr @btrfsic_block_link_lookup_or_add(ptr noundef %63, ptr noundef nonnull %tmp_next_block_ctx.i.i, ptr noundef nonnull %call102.i.i, ptr noundef nonnull %b.0.le.i.i, i64 noundef -1) #14
  %376 = ptrtoint ptr %mem_to_free.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %mem_to_free.i220.i.i, align 8
  %tobool.not.i221.i.i = icmp eq ptr %377, null
  br i1 %tobool.not.i221.i.i, label %if.end109.i.i.btrfsic_release_block_ctx.exit251.i.i_crit_edge, label %if.then.i224.i.i

if.end109.i.i.btrfsic_release_block_ctx.exit251.i.i_crit_edge: ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit251.i.i

if.then.i224.i.i:                                 ; preds = %if.end109.i.i
  %378 = ptrtoint ptr %datav.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %datav.i222.i.i, align 8
  %tobool1.not.i223.i.i = icmp eq ptr %379, null
  br i1 %tobool1.not.i223.i.i, label %do.body6.i225.i.i, label %do.body12.i228.i.i, !prof !438

do.body6.i225.i.i:                                ; preds = %if.then.i224.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i228.i.i:                               ; preds = %if.then.i224.i.i
  %380 = ptrtoint ptr %pagev.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %pagev.i226.i.i, align 4
  %tobool13.not.i227.i.i = icmp eq ptr %381, null
  br i1 %tobool13.not.i227.i.i, label %do.body23.i229.i.i, label %do.end31.i236.i.i, !prof !438

do.body23.i229.i.i:                               ; preds = %do.body12.i228.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i236.i.i:                                ; preds = %do.body12.i228.i.i
  %382 = ptrtoint ptr %len.i230.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %len.i230.i.i, align 8
  %conv.i231.i.i = zext i32 %383 to i64
  %sub.i232.i.i = add nuw nsw i64 %conv.i231.i.i, 4095
  %shr.i233.i.i = lshr i64 %sub.i232.i.i, 12
  %conv32.i234.i.i = trunc i64 %shr.i233.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i234.i.i)
  %cmp.not72.i235.i.i = icmp eq i32 %conv32.i234.i.i, 0
  br i1 %cmp.not72.i235.i.i, label %do.end31.i236.i.i.while.end.i250.i.i_crit_edge, label %do.end31.i236.i.i.while.body.i241.i.i_crit_edge

do.end31.i236.i.i.while.body.i241.i.i_crit_edge:  ; preds = %do.end31.i236.i.i
  br label %while.body.i241.i.i

do.end31.i236.i.i.while.end.i250.i.i_crit_edge:   ; preds = %do.end31.i236.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i250.i.i

while.body.i241.i.i:                              ; preds = %if.end48.i249.i.i.while.body.i241.i.i_crit_edge, %do.end31.i236.i.i.while.body.i241.i.i_crit_edge
  %num_pages.073.i237.i.i = phi i32 [ %dec.i238.i.i, %if.end48.i249.i.i.while.body.i241.i.i_crit_edge ], [ %conv32.i234.i.i, %do.end31.i236.i.i.while.body.i241.i.i_crit_edge ]
  %dec.i238.i.i = add nsw i32 %num_pages.073.i237.i.i, -1
  %arrayidx.i239.i.i = getelementptr ptr, ptr %379, i32 %dec.i238.i.i
  %384 = ptrtoint ptr %arrayidx.i239.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx.i239.i.i, align 4
  %tobool35.not.i240.i.i = icmp eq ptr %385, null
  br i1 %tobool35.not.i240.i.i, label %while.body.i241.i.i.if.end39.i245.i.i_crit_edge, label %if.then36.i242.i.i

while.body.i241.i.i.if.end39.i245.i.i_crit_edge:  ; preds = %while.body.i241.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i245.i.i

if.then36.i242.i.i:                               ; preds = %while.body.i241.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %386 = ptrtoint ptr %arrayidx.i239.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr null, ptr %arrayidx.i239.i.i, align 4
  br label %if.end39.i245.i.i

if.end39.i245.i.i:                                ; preds = %if.then36.i242.i.i, %while.body.i241.i.i.if.end39.i245.i.i_crit_edge
  %arrayidx41.i243.i.i = getelementptr ptr, ptr %381, i32 %dec.i238.i.i
  %387 = ptrtoint ptr %arrayidx41.i243.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %arrayidx41.i243.i.i, align 4
  %tobool42.not.i244.i.i = icmp eq ptr %388, null
  br i1 %tobool42.not.i244.i.i, label %if.end39.i245.i.i.if.end48.i249.i.i_crit_edge, label %if.then43.i247.i.i

if.end39.i245.i.i.if.end48.i249.i.i_crit_edge:    ; preds = %if.end39.i245.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i249.i.i

if.then43.i247.i.i:                               ; preds = %if.end39.i245.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %388, i32 noundef 0) #14
  %389 = ptrtoint ptr %arrayidx41.i243.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr null, ptr %arrayidx41.i243.i.i, align 4
  br label %if.end48.i249.i.i

if.end48.i249.i.i:                                ; preds = %if.then43.i247.i.i, %if.end39.i245.i.i.if.end48.i249.i.i_crit_edge
  %cmp.not.i248.i.i = icmp eq i32 %dec.i238.i.i, 0
  br i1 %cmp.not.i248.i.i, label %if.end48.i249.i.i.while.end.i250.i.i_crit_edge, label %if.end48.i249.i.i.while.body.i241.i.i_crit_edge

if.end48.i249.i.i.while.body.i241.i.i_crit_edge:  ; preds = %if.end48.i249.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i241.i.i

if.end48.i249.i.i.while.end.i250.i.i_crit_edge:   ; preds = %if.end48.i249.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i250.i.i

while.end.i250.i.i:                               ; preds = %if.end48.i249.i.i.while.end.i250.i.i_crit_edge, %do.end31.i236.i.i.while.end.i250.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %377) #14
  %390 = ptrtoint ptr %mem_to_free.i220.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr null, ptr %mem_to_free.i220.i.i, align 8
  %391 = ptrtoint ptr %pagev.i226.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr null, ptr %pagev.i226.i.i, align 4
  %392 = ptrtoint ptr %datav.i222.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr null, ptr %datav.i222.i.i, align 8
  br label %btrfsic_release_block_ctx.exit251.i.i

btrfsic_release_block_ctx.exit251.i.i:            ; preds = %while.end.i250.i.i, %if.end109.i.i.btrfsic_release_block_ctx.exit251.i.i_crit_edge
  %cmp111.not.i.i = icmp eq ptr %call110.i.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %was_created.i.i) #14
  br i1 %cmp111.not.i.i, label %btrfsic_release_block_ctx.exit251.i.i.cleanup114.thread.i.i_crit_edge, label %for.inc.i893.i

btrfsic_release_block_ctx.exit251.i.i.cleanup114.thread.i.i_crit_edge: ; preds = %btrfsic_release_block_ctx.exit251.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup114.thread.i.i

for.inc.i893.i:                                   ; preds = %btrfsic_release_block_ctx.exit251.i.i
  %inc.i.i247 = add i32 %mirror_num30.0263.i.i, 1
  %cmp81.not.i.i = icmp sgt i32 %inc.i.i247, %call69.i.i
  br i1 %cmp81.not.i.i, label %for.inc.i893.i.for.inc125.i.i_crit_edge, label %for.inc.i893.i.for.body82.i.i_crit_edge

for.inc.i893.i.for.body82.i.i_crit_edge:          ; preds = %for.inc.i893.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body82.i.i

for.inc.i893.i.for.inc125.i.i_crit_edge:          ; preds = %for.inc.i893.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc125.i.i

cleanup114.thread.i.i:                            ; preds = %btrfsic_release_block_ctx.exit251.i.i.cleanup114.thread.i.i_crit_edge, %btrfsic_release_block_ctx.exit.i.i, %do.end98.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i.i) #14
  br label %btrfsic_process_written_superblock.exit.i

for.inc125.i.i:                                   ; preds = %for.inc.i893.i.for.inc125.i.i_crit_edge, %if.end79.i.i.for.inc125.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i.i) #14
  %inc126.i.i = add nuw nsw i32 %pass.0264.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc126.i.i, 3
  br i1 %exitcond.not.i.i, label %for.inc125.i.i.for.end127.i.i_crit_edge, label %for.inc125.i.i.for.body.i892.i_crit_edge

for.inc125.i.i.for.body.i892.i_crit_edge:         ; preds = %for.inc125.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i892.i

for.inc125.i.i.for.end127.i.i_crit_edge:          ; preds = %for.inc125.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end127.i.i

for.end127.i.i:                                   ; preds = %for.inc125.i.i.for.end127.i.i_crit_edge, %for.inc125.thread.i.i
  %call128.i.i = call fastcc i32 @btrfsic_check_all_ref_blocks(ptr noundef %63, ptr noundef nonnull %b.0.le.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call128.i.i)
  %cmp129.i.i = icmp eq i32 %call128.i.i, -1
  br i1 %cmp129.i.i, label %do.end141.i.i, label %for.end127.i.i.btrfsic_process_written_superblock.exit.i_crit_edge, !prof !438

for.end127.i.i.btrfsic_process_written_superblock.exit.i_crit_edge: ; preds = %for.end127.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_process_written_superblock.exit.i

do.end141.i.i:                                    ; preds = %for.end127.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2210, i32 noundef 9, ptr noundef null) #14
  %393 = ptrtoint ptr %latest_superblock.i815.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %latest_superblock.i815.i, align 8
  call fastcc void @btrfsic_dump_tree_sub(ptr noundef %63, ptr noundef %394, i32 noundef 0) #14
  br label %btrfsic_process_written_superblock.exit.i

btrfsic_process_written_superblock.exit.i:        ; preds = %do.end141.i.i, %for.end127.i.i.btrfsic_process_written_superblock.exit.i_crit_edge, %cleanup114.thread.i.i
  %retval.4.i.i = phi i32 [ 0, %for.end127.i.i.btrfsic_process_written_superblock.exit.i_crit_edge ], [ 0, %do.end141.i.i ], [ -1, %cleanup114.thread.i.i ]
  %395 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %63, align 8
  %and301.i = and i32 %396, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301.i)
  %tobool302.not.i = icmp eq i32 %and301.i, 0
  br i1 %tobool302.not.i, label %btrfsic_process_written_superblock.exit.i.if.end313.i_crit_edge, label %do.end306.i

btrfsic_process_written_superblock.exit.i.if.end313.i_crit_edge: ; preds = %btrfsic_process_written_superblock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end313.i

do.end306.i:                                      ; preds = %btrfsic_process_written_superblock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call308.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #17
  call fastcc void @btrfsic_dump_tree_sub(ptr noundef %63, ptr noundef nonnull %b.0.le.i.i, i32 noundef 0) #14
  br label %if.end313.i

if.else310.i:                                     ; preds = %if.then282.i
  call void @__sanitizer_cov_trace_pc() #16
  %mirror_num311.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %397 = ptrtoint ptr %mirror_num311.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 0, ptr %mirror_num311.i, align 8
  %call312.i = call fastcc i32 @btrfsic_process_metablock(ptr noundef %63, ptr noundef nonnull %b.0.le.i.i, ptr noundef nonnull %block_ctx.i, i32 noundef 0, i32 noundef 0) #14
  br label %if.end313.i

if.end313.i:                                      ; preds = %if.else310.i, %do.end306.i, %btrfsic_process_written_superblock.exit.i.if.end313.i_crit_edge
  %ret.0.i = phi i32 [ %retval.4.i.i, %do.end306.i ], [ %retval.4.i.i, %btrfsic_process_written_superblock.exit.i.if.end313.i_crit_edge ], [ %call312.i, %if.else310.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool314.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool314.not.i, label %if.end313.i.if.end337.i_crit_edge, label %do.end318.i

if.end313.i.if.end337.i_crit_edge:                ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337.i

do.end318.i:                                      ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #16
  %call320.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i64 noundef %dev_bytenr.addr.01069.i) #17
  br label %if.end337.i

if.else322.i:                                     ; preds = %if.end279.i.if.else322.i_crit_edge, %if.end279.thread.i
  %bio_is_patched.2 = phi i32 [ %bio_is_patched.0, %if.end279.thread.i ], [ %bio_is_patched.1, %if.end279.i.if.else322.i_crit_edge ]
  %398 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %bf.load324.i = load i8, ptr %is_superblock.i, align 4
  %bf.clear325.i = and i8 %bf.load324.i, 127
  store i8 %bf.clear325.i, ptr %is_superblock.i, align 4
  %mirror_num327.i = getelementptr i8, ptr %.pn30.i.i, i32 -52
  %399 = ptrtoint ptr %mirror_num327.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 0, ptr %mirror_num327.i, align 8
  %generation328.i = getelementptr i8, ptr %.pn30.i.i, i32 -28
  %400 = ptrtoint ptr %generation328.i to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 -1, ptr %generation328.i, align 8
  %401 = ptrtoint ptr %include_extent_data.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %include_extent_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %tobool330.not.i = icmp eq i32 %402, 0
  br i1 %tobool330.not.i, label %land.lhs.true331.i, label %if.else322.i.if.end337.i_crit_edge

if.else322.i.if.end337.i_crit_edge:               ; preds = %if.else322.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337.i

land.lhs.true331.i:                               ; preds = %if.else322.i
  %ref_from_list332.i = getelementptr i8, ptr %.pn30.i.i, i32 24
  %403 = ptrtoint ptr %ref_from_list332.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load volatile ptr, ptr %ref_from_list332.i, align 4
  %cmp.i894.not.i = icmp eq ptr %404, %ref_from_list332.i
  br i1 %cmp.i894.not.i, label %if.then335.i, label %land.lhs.true331.i.if.end337.i_crit_edge

land.lhs.true331.i.if.end337.i_crit_edge:         ; preds = %land.lhs.true331.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337.i

if.then335.i:                                     ; preds = %land.lhs.true331.i
  %call.i.i.i897.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn30.i.i) #14
  br i1 %call.i.i.i897.i, label %if.end.i.i.i900.i, label %if.then335.i.btrfsic_block_hashtable_remove.exit.i_crit_edge

if.then335.i.btrfsic_block_hashtable_remove.exit.i_crit_edge: ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_hashtable_remove.exit.i

if.end.i.i.i900.i:                                ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i898.i = getelementptr i8, ptr %.pn30.i.i, i32 4
  %405 = ptrtoint ptr %prev.i.i.i898.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %prev.i.i.i898.i, align 4
  %407 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %.pn30.i.i, align 4
  %prev1.i.i.i.i899.i = getelementptr inbounds %struct.list_head, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %prev1.i.i.i.i899.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %406, ptr %prev1.i.i.i.i899.i, align 4
  %410 = ptrtoint ptr %406 to i32
  call void @__asan_store4_noabort(i32 %410)
  store volatile ptr %408, ptr %406, align 4
  br label %btrfsic_block_hashtable_remove.exit.i

btrfsic_block_hashtable_remove.exit.i:            ; preds = %if.end.i.i.i900.i, %if.then335.i.btrfsic_block_hashtable_remove.exit.i_crit_edge
  %411 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn30.i.i, align 4
  %prev.i.i901.i = getelementptr i8, ptr %.pn30.i.i, i32 4
  %412 = ptrtoint ptr %prev.i.i901.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i901.i, align 4
  %all_blocks_node.i = getelementptr i8, ptr %.pn30.i.i, i32 8
  %call.i.i902.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %all_blocks_node.i) #14
  br i1 %call.i.i902.i, label %if.end.i.i905.i, label %btrfsic_block_hashtable_remove.exit.i.lor.rhs.i910.i_crit_edge

btrfsic_block_hashtable_remove.exit.i.lor.rhs.i910.i_crit_edge: ; preds = %btrfsic_block_hashtable_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i910.i

if.end.i.i905.i:                                  ; preds = %btrfsic_block_hashtable_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i903.i = getelementptr i8, ptr %.pn30.i.i, i32 12
  %413 = ptrtoint ptr %prev.i.i903.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %prev.i.i903.i, align 4
  %415 = ptrtoint ptr %all_blocks_node.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %all_blocks_node.i, align 4
  %prev1.i.i.i904.i = getelementptr inbounds %struct.list_head, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %prev1.i.i.i904.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %414, ptr %prev1.i.i.i904.i, align 4
  %418 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %418)
  store volatile ptr %416, ptr %414, align 4
  br label %lor.rhs.i910.i

lor.rhs.i910.i:                                   ; preds = %if.end.i.i905.i, %btrfsic_block_hashtable_remove.exit.i.lor.rhs.i910.i_crit_edge
  %419 = ptrtoint ptr %all_blocks_node.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr inttoptr (i32 256 to ptr), ptr %all_blocks_node.i, align 4
  %prev.i906.i = getelementptr i8, ptr %.pn30.i.i, i32 12
  %420 = ptrtoint ptr %prev.i906.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i906.i, align 4
  %421 = ptrtoint ptr %b.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %b.0.le.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 340332625, i32 %422)
  %cmp1.not.i909.i = icmp eq i32 %422, 340332625
  br i1 %cmp1.not.i909.i, label %btrfsic_block_free.exit.i, label %do.body4.i911.i, !prof !439

do.body4.i911.i:                                  ; preds = %lor.rhs.i910.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #14, !srcloc !446
  unreachable

btrfsic_block_free.exit.i:                        ; preds = %lor.rhs.i910.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %b.0.le.i.i) #14
  br label %if.end337.i

if.end337.i:                                      ; preds = %btrfsic_block_free.exit.i, %land.lhs.true331.i.if.end337.i_crit_edge, %if.else322.i.if.end337.i_crit_edge, %do.end318.i, %if.end313.i.if.end337.i_crit_edge
  %bio_is_patched.3 = phi i32 [ %bio_is_patched.2, %btrfsic_block_free.exit.i ], [ %bio_is_patched.2, %land.lhs.true331.i.if.end337.i_crit_edge ], [ %bio_is_patched.2, %if.else322.i.if.end337.i_crit_edge ], [ %bio_is_patched.1, %if.end313.i.if.end337.i_crit_edge ], [ %bio_is_patched.1, %do.end318.i ]
  %423 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %mem_to_free.i, align 8
  %tobool.not.i912.i = icmp eq ptr %424, null
  br i1 %tobool.not.i912.i, label %if.end337.i.do.body516.i_crit_edge, label %if.then.i913.i

if.end337.i.do.body516.i_crit_edge:               ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body516.i

if.then.i913.i:                                   ; preds = %if.end337.i
  %425 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %datav.i, align 8
  %tobool1.not.i.i = icmp eq ptr %426, null
  br i1 %tobool1.not.i.i, label %do.body6.i.i, label %do.body12.i.i, !prof !438

do.body6.i.i:                                     ; preds = %if.then.i913.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i.i:                                    ; preds = %if.then.i913.i
  %427 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %pagev.i, align 4
  %tobool13.not.i.i = icmp eq ptr %428, null
  br i1 %tobool13.not.i.i, label %do.body23.i.i, label %do.end31.i.i, !prof !438

do.body23.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i.i:                                     ; preds = %do.body12.i.i
  %429 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %len.i, align 8
  %conv.i914.i = zext i32 %430 to i64
  %sub.i.i248 = add nuw nsw i64 %conv.i914.i, 4095
  %shr.i.i = lshr i64 %sub.i.i248, 12
  %conv32.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i.i)
  %cmp.not72.i.i = icmp eq i32 %conv32.i.i, 0
  br i1 %cmp.not72.i.i, label %do.end31.i.i.while.end.i.i_crit_edge, label %do.end31.i.i.while.body.i.i_crit_edge

do.end31.i.i.while.body.i.i_crit_edge:            ; preds = %do.end31.i.i
  br label %while.body.i.i

do.end31.i.i.while.end.i.i_crit_edge:             ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end48.i.i.while.body.i.i_crit_edge, %do.end31.i.i.while.body.i.i_crit_edge
  %num_pages.073.i.i = phi i32 [ %dec.i.i, %if.end48.i.i.while.body.i.i_crit_edge ], [ %conv32.i.i, %do.end31.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %num_pages.073.i.i, -1
  %431 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %datav.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %432, i32 %dec.i.i
  %433 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool35.not.i.i = icmp eq ptr %434, null
  br i1 %tobool35.not.i.i, label %while.body.i.i.if.end39.i.i_crit_edge, label %if.then36.i.i

while.body.i.i.if.end39.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i

if.then36.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %435 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then36.i.i, %while.body.i.i.if.end39.i.i_crit_edge
  %436 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %pagev.i, align 4
  %arrayidx41.i.i = getelementptr ptr, ptr %437, i32 %dec.i.i
  %438 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx41.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %439, null
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end48.i.i_crit_edge, label %if.then43.i.i

if.end39.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %439, i32 noundef 0) #14
  %440 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %pagev.i, align 4
  %arrayidx47.i.i = getelementptr ptr, ptr %441, i32 %dec.i.i
  %442 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr null, ptr %arrayidx47.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end48.i.i_crit_edge
  %cmp.not.i915.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i915.i, label %if.end48.i.i.while.end.i.i_crit_edge, label %if.end48.i.i.while.body.i.i_crit_edge

if.end48.i.i.while.body.i.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end48.i.i.while.end.i.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end48.i.i.while.end.i.i_crit_edge, %do.end31.i.i.while.end.i.i_crit_edge
  %443 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %mem_to_free.i, align 8
  call void @kfree(ptr noundef %444) #14
  %445 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr null, ptr %mem_to_free.i, align 8
  %446 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr null, ptr %pagev.i, align 4
  %447 = ptrtoint ptr %datav.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr null, ptr %datav.i, align 8
  br label %do.body516.i

if.else340.i:                                     ; preds = %btrfsic_block_hashtable_lookup.exit.i.if.else340.i_crit_edge, %for.inc.i.i.if.else340.i_crit_edge, %if.end5.i.if.else340.i_crit_edge
  br i1 %cmp6.i, label %if.else360.i, label %if.then343.i

if.then343.i:                                     ; preds = %if.else340.i
  %448 = ptrtoint ptr %datablock_size.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %datablock_size.i, align 8
  %450 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %63, align 8
  %and346.i = and i32 %451, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and346.i)
  %tobool347.not.i = icmp eq i32 %and346.i, 0
  br i1 %tobool347.not.i, label %if.then343.i.if.end355.i_crit_edge, label %do.end351.i

if.then343.i.if.end355.i_crit_edge:               ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end355.i

do.end351.i:                                      ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #16
  %452 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %bdev.i.i.le, align 4
  %call354.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %453, i64 noundef %dev_bytenr.addr.01069.i) #17
  br label %if.end355.i

if.end355.i:                                      ; preds = %do.end351.i, %if.then343.i.if.end355.i_crit_edge
  %454 = ptrtoint ptr %include_extent_data.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %include_extent_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %tobool357.not.i = icmp eq i32 %455, 0
  br i1 %tobool357.not.i, label %if.end355.i.do.body516.i_crit_edge, label %if.end355.i.if.end375.i_crit_edge

if.end355.i.if.end375.i_crit_edge:                ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end375.i

if.end355.i.do.body516.i_crit_edge:               ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body516.i

if.else360.i:                                     ; preds = %if.else340.i
  %456 = ptrtoint ptr %metablock_size.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %metablock_size.i, align 4
  %458 = ptrtoint ptr %mapped_datav.addr.01063.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %mapped_datav.addr.01063.i, align 4
  %bytenr.i916.i = getelementptr inbounds %struct.btrfs_header, ptr %459, i32 0, i32 2
  %460 = ptrtoint ptr %bytenr.i916.i to i32
  call void @__asan_loadN_noabort(i32 %460, i32 8)
  %461 = load i64, ptr %bytenr.i916.i, align 1
  %462 = call i64 @llvm.bswap.i64(i64 %461) #14
  call fastcc void @btrfsic_cmp_log_and_dev_bytenr(ptr noundef %63, i64 noundef %462, ptr noundef nonnull %ds.0.le.i.i, i64 noundef %dev_bytenr.addr.01069.i) #14
  %463 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %63, align 8
  %and365.i = and i32 %464, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365.i)
  %tobool366.not.i = icmp eq i32 %and365.i, 0
  br i1 %tobool366.not.i, label %if.else360.i.if.end375.i_crit_edge, label %do.end370.i

if.else360.i.if.end375.i_crit_edge:               ; preds = %if.else360.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end375.i

do.end370.i:                                      ; preds = %if.else360.i
  call void @__sanitizer_cov_trace_pc() #16
  %465 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %bdev.i.i.le, align 4
  %call373.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i64 noundef %462, ptr noundef %466, i64 noundef %dev_bytenr.addr.01069.i) #17
  br label %if.end375.i

if.end375.i:                                      ; preds = %do.end370.i, %if.else360.i.if.end375.i_crit_edge, %if.end355.i.if.end375.i_crit_edge
  %processed_len.4.i = phi i32 [ %457, %do.end370.i ], [ %457, %if.else360.i.if.end375.i_crit_edge ], [ %449, %if.end355.i.if.end375.i_crit_edge ]
  %bytenr341.0.i = phi i64 [ %462, %do.end370.i ], [ %462, %if.else360.i.if.end375.i_crit_edge ], [ 0, %if.end355.i.if.end375.i_crit_edge ]
  %467 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %ds.0.le.i.i, ptr %dev.i, align 4
  %468 = ptrtoint ptr %dev_bytenr205.i to i32
  call void @__asan_store8_noabort(i32 %468)
  store i64 %dev_bytenr.addr.01069.i, ptr %dev_bytenr205.i, align 8
  %469 = ptrtoint ptr %block_ctx.i to i32
  call void @__asan_store8_noabort(i32 %469)
  store i64 %bytenr341.0.i, ptr %block_ctx.i, align 8
  %470 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %processed_len.4.i, ptr %len.i, align 8
  %471 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr null, ptr %pagev.i, align 4
  %472 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr null, ptr %mem_to_free.i, align 8
  %473 = ptrtoint ptr %datav.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %mapped_datav.addr.01063.i, ptr %datav.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %474 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %474, i32 noundef 3392, i32 noundef 120) #19
  %cmp.not.i917.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.not.i917.i, label %if.then386.i, label %if.then410.i

if.then386.i:                                     ; preds = %if.end375.i
  %475 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %mem_to_free.i, align 8
  %tobool.not.i922.i = icmp eq ptr %476, null
  br i1 %tobool.not.i922.i, label %if.then386.i.do.body516.i_crit_edge, label %if.then.i925.i

if.then386.i.do.body516.i_crit_edge:              ; preds = %if.then386.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body516.i

if.then.i925.i:                                   ; preds = %if.then386.i
  %477 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %datav.i, align 8
  %tobool1.not.i924.i = icmp eq ptr %478, null
  br i1 %tobool1.not.i924.i, label %do.body6.i926.i, label %do.body12.i929.i, !prof !438

do.body6.i926.i:                                  ; preds = %if.then.i925.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i929.i:                                 ; preds = %if.then.i925.i
  %479 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %pagev.i, align 4
  %tobool13.not.i928.i = icmp eq ptr %480, null
  br i1 %tobool13.not.i928.i, label %do.body23.i930.i, label %do.end31.i937.i, !prof !438

do.body23.i930.i:                                 ; preds = %do.body12.i929.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i937.i:                                  ; preds = %do.body12.i929.i
  %481 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %len.i, align 8
  %conv.i932.i = zext i32 %482 to i64
  %sub.i933.i = add nuw nsw i64 %conv.i932.i, 4095
  %shr.i934.i = lshr i64 %sub.i933.i, 12
  %conv32.i935.i = trunc i64 %shr.i934.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i935.i)
  %cmp.not72.i936.i = icmp eq i32 %conv32.i935.i, 0
  br i1 %cmp.not72.i936.i, label %do.end31.i937.i.while.end.i951.i_crit_edge, label %do.end31.i937.i.while.body.i942.i_crit_edge

do.end31.i937.i.while.body.i942.i_crit_edge:      ; preds = %do.end31.i937.i
  br label %while.body.i942.i

do.end31.i937.i.while.end.i951.i_crit_edge:       ; preds = %do.end31.i937.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i951.i

while.body.i942.i:                                ; preds = %if.end48.i950.i.while.body.i942.i_crit_edge, %do.end31.i937.i.while.body.i942.i_crit_edge
  %num_pages.073.i938.i = phi i32 [ %dec.i939.i, %if.end48.i950.i.while.body.i942.i_crit_edge ], [ %conv32.i935.i, %do.end31.i937.i.while.body.i942.i_crit_edge ]
  %dec.i939.i = add nsw i32 %num_pages.073.i938.i, -1
  %483 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %datav.i, align 8
  %arrayidx.i940.i = getelementptr ptr, ptr %484, i32 %dec.i939.i
  %485 = ptrtoint ptr %arrayidx.i940.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %arrayidx.i940.i, align 4
  %tobool35.not.i941.i = icmp eq ptr %486, null
  br i1 %tobool35.not.i941.i, label %while.body.i942.i.if.end39.i946.i_crit_edge, label %if.then36.i943.i

while.body.i942.i.if.end39.i946.i_crit_edge:      ; preds = %while.body.i942.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i946.i

if.then36.i943.i:                                 ; preds = %while.body.i942.i
  call void @__sanitizer_cov_trace_pc() #16
  %487 = ptrtoint ptr %arrayidx.i940.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr null, ptr %arrayidx.i940.i, align 4
  br label %if.end39.i946.i

if.end39.i946.i:                                  ; preds = %if.then36.i943.i, %while.body.i942.i.if.end39.i946.i_crit_edge
  %488 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %pagev.i, align 4
  %arrayidx41.i944.i = getelementptr ptr, ptr %489, i32 %dec.i939.i
  %490 = ptrtoint ptr %arrayidx41.i944.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %arrayidx41.i944.i, align 4
  %tobool42.not.i945.i = icmp eq ptr %491, null
  br i1 %tobool42.not.i945.i, label %if.end39.i946.i.if.end48.i950.i_crit_edge, label %if.then43.i948.i

if.end39.i946.i.if.end48.i950.i_crit_edge:        ; preds = %if.end39.i946.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i950.i

if.then43.i948.i:                                 ; preds = %if.end39.i946.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %491, i32 noundef 0) #14
  %492 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %pagev.i, align 4
  %arrayidx47.i947.i = getelementptr ptr, ptr %493, i32 %dec.i939.i
  %494 = ptrtoint ptr %arrayidx47.i947.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr null, ptr %arrayidx47.i947.i, align 4
  br label %if.end48.i950.i

if.end48.i950.i:                                  ; preds = %if.then43.i948.i, %if.end39.i946.i.if.end48.i950.i_crit_edge
  %cmp.not.i949.i = icmp eq i32 %dec.i939.i, 0
  br i1 %cmp.not.i949.i, label %if.end48.i950.i.while.end.i951.i_crit_edge, label %if.end48.i950.i.while.body.i942.i_crit_edge

if.end48.i950.i.while.body.i942.i_crit_edge:      ; preds = %if.end48.i950.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i942.i

if.end48.i950.i.while.end.i951.i_crit_edge:       ; preds = %if.end48.i950.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i951.i

while.end.i951.i:                                 ; preds = %if.end48.i950.i.while.end.i951.i_crit_edge, %do.end31.i937.i.while.end.i951.i_crit_edge
  %495 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %mem_to_free.i, align 8
  call void @kfree(ptr noundef %496) #14
  %497 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr null, ptr %mem_to_free.i, align 8
  %498 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store ptr null, ptr %pagev.i, align 4
  %499 = ptrtoint ptr %datav.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr null, ptr %datav.i, align 8
  br label %do.body516.i

if.then410.i:                                     ; preds = %if.end375.i
  %500 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 340332625, ptr %call7.i.i.i.i, align 8
  %dev_state.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 3
  %generation.i.i918.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 6
  %501 = ptrtoint ptr %generation.i.i918.i to i32
  call void @__asan_store8_noabort(i32 %501)
  store i64 -1, ptr %generation.i.i918.i, align 8
  %disk_key.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 7
  %is_metadata.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 1
  %502 = call ptr @memset(ptr %disk_key.i.i.i, i32 0, i32 17)
  %503 = ptrtoint ptr %is_metadata.i.i.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %bf.load.i.i.i = load i8, ptr %is_metadata.i.i.i, align 4
  %bf.clear13.i.i.i = and i8 %bf.load.i.i.i, 7
  %mirror_num.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 2
  %next_in_same_bio.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 12
  %504 = ptrtoint ptr %next_in_same_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr null, ptr %next_in_same_bio.i.i.i, align 4
  %orig_bio_private.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 13
  %505 = ptrtoint ptr %orig_bio_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr null, ptr %orig_bio_private.i.i.i, align 8
  %orig_bio_end_io.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 14
  %506 = ptrtoint ptr %orig_bio_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr null, ptr %orig_bio_end_io.i.i.i, align 4
  %collision_resolving_node.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 8
  %507 = ptrtoint ptr %collision_resolving_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store volatile ptr %collision_resolving_node.i.i.i, ptr %collision_resolving_node.i.i.i, align 4
  %prev.i.i.i919.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1
  %508 = ptrtoint ptr %prev.i.i.i919.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %collision_resolving_node.i.i.i, ptr %prev.i.i.i919.i, align 8
  %all_blocks_node.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 9
  %509 = ptrtoint ptr %all_blocks_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store volatile ptr %all_blocks_node.i.i.i, ptr %all_blocks_node.i.i.i, align 4
  %prev.i37.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1
  %510 = ptrtoint ptr %prev.i37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr %all_blocks_node.i.i.i, ptr %prev.i37.i.i.i, align 8
  %ref_to_list.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 10
  %511 = ptrtoint ptr %ref_to_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store volatile ptr %ref_to_list.i.i.i, ptr %ref_to_list.i.i.i, align 4
  %prev.i38.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1
  %512 = ptrtoint ptr %prev.i38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr %ref_to_list.i.i.i, ptr %prev.i38.i.i.i, align 8
  %ref_from_list.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 11
  %513 = ptrtoint ptr %ref_from_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store volatile ptr %ref_from_list.i.i.i, ptr %ref_from_list.i.i.i, align 4
  %prev.i39.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 11, i32 1
  %514 = ptrtoint ptr %prev.i39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr %ref_from_list.i.i.i, ptr %prev.i39.i.i.i, align 8
  %submit_bio_bh_rw.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 15
  %flush_gen.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 16
  %515 = ptrtoint ptr %dev_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %ds.0.le.i.i, ptr %dev_state.i.i.i, align 4
  %dev_bytenr389.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 4
  %516 = ptrtoint ptr %dev_bytenr389.i to i32
  call void @__asan_store8_noabort(i32 %516)
  store i64 %dev_bytenr.addr.01069.i, ptr %dev_bytenr389.i, align 8
  %logical_bytenr390.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i.i, i32 0, i32 5
  %517 = ptrtoint ptr %logical_bytenr390.i to i32
  call void @__asan_store8_noabort(i32 %517)
  store i64 %bytenr341.0.i, ptr %logical_bytenr390.i, align 8
  %bf.shl.i = select i1 %cmp6.i, i8 -128, i8 0
  %bf.set394.i = or i8 %bf.clear13.i.i.i, %bf.shl.i
  store i8 %bf.set394.i, ptr %is_metadata.i.i.i, align 4
  %518 = ptrtoint ptr %mirror_num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 0, ptr %mirror_num.i.i.i, align 8
  %519 = ptrtoint ptr %last_flush_gen.i to i32
  call void @__asan_load8_noabort(i32 %519)
  %520 = load i64, ptr %last_flush_gen.i, align 8
  %add405.i = add i64 %520, 1
  %521 = ptrtoint ptr %flush_gen.i.i.i to i32
  call void @__asan_store8_noabort(i32 %521)
  store i64 %add405.i, ptr %flush_gen.i.i.i, align 8
  %522 = ptrtoint ptr %submit_bio_bh_rw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %60, ptr %submit_bio_bh_rw.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bio_is_patched.0)
  %tobool434.not.i = icmp eq i32 %bio_is_patched.0, 0
  %523 = ptrtoint ptr %bi_private243.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %bi_private243.i, align 4
  br i1 %tobool434.not.i, label %if.then435.i, label %if.else443.i

if.then435.i:                                     ; preds = %if.then410.i
  call void @__sanitizer_cov_trace_pc() #16
  %525 = ptrtoint ptr %orig_bio_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr %524, ptr %orig_bio_private.i.i.i, align 8
  %526 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %bi_end_io.i, align 8
  %528 = ptrtoint ptr %orig_bio_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr %527, ptr %orig_bio_end_io.i.i.i, align 4
  %529 = ptrtoint ptr %next_in_same_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr null, ptr %next_in_same_bio.i.i.i, align 4
  %530 = ptrtoint ptr %bi_private243.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store ptr %call7.i.i.i.i, ptr %bi_private243.i, align 4
  store ptr @btrfsic_bio_end_io, ptr %bi_end_io.i, align 8
  br label %if.end480.i

if.else443.i:                                     ; preds = %if.then410.i
  %cmp447.i = icmp eq ptr %524, null
  br i1 %cmp447.i, label %do.body456.i, label %do.end464.i, !prof !438

do.body456.i:                                     ; preds = %if.else443.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1995, 0\0A.popsection", ""() #14, !srcloc !447
  unreachable

do.end464.i:                                      ; preds = %if.else443.i
  call void @__sanitizer_cov_trace_pc() #16
  %orig_bio_private465.i = getelementptr inbounds %struct.btrfsic_block, ptr %524, i32 0, i32 13
  %531 = ptrtoint ptr %orig_bio_private465.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %orig_bio_private465.i, align 8
  %533 = ptrtoint ptr %orig_bio_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %532, ptr %orig_bio_private.i.i.i, align 8
  %orig_bio_end_io467.i = getelementptr inbounds %struct.btrfsic_block, ptr %524, i32 0, i32 14
  %534 = ptrtoint ptr %orig_bio_end_io467.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %orig_bio_end_io467.i, align 4
  %536 = ptrtoint ptr %orig_bio_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store ptr %535, ptr %orig_bio_end_io.i.i.i, align 4
  %537 = ptrtoint ptr %next_in_same_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr %524, ptr %next_in_same_bio.i.i.i, align 4
  %538 = ptrtoint ptr %bi_private243.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %call7.i.i.i.i, ptr %bi_private243.i, align 4
  br label %if.end480.i

if.end480.i:                                      ; preds = %do.end464.i, %if.then435.i
  %bio_is_patched.4 = phi i32 [ 1, %if.then435.i ], [ %bio_is_patched.0, %do.end464.i ]
  %539 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %63, align 8
  %and482.i = and i32 %540, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and482.i)
  %tobool483.not.i = icmp eq i32 %and482.i, 0
  br i1 %tobool483.not.i, label %if.end480.i.if.end497.i_crit_edge, label %do.end487.i

if.end480.i.if.end497.i_crit_edge:                ; preds = %if.end480.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end497.i

do.end487.i:                                      ; preds = %if.end480.i
  call void @__sanitizer_cov_trace_pc() #16
  %cond490.i = select i1 %cmp6.i, i32 77, i32 68
  %541 = ptrtoint ptr %logical_bytenr390.i to i32
  call void @__asan_load8_noabort(i32 %541)
  %542 = load i64, ptr %logical_bytenr390.i, align 8
  %543 = ptrtoint ptr %dev_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %dev_state.i.i.i, align 4
  %bdev493.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %544, i32 0, i32 1
  %545 = ptrtoint ptr %bdev493.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %bdev493.i, align 4
  %547 = ptrtoint ptr %dev_bytenr389.i to i32
  call void @__asan_load8_noabort(i32 %547)
  %548 = load i64, ptr %dev_bytenr389.i, align 8
  %549 = ptrtoint ptr %mirror_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %mirror_num.i.i.i, align 8
  %call496.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %cond490.i, i64 noundef %542, ptr noundef %546, i64 noundef %548, i32 noundef %550) #17
  br label %if.end497.i

if.end497.i:                                      ; preds = %do.end487.i, %if.end480.i.if.end497.i_crit_edge
  %551 = ptrtoint ptr %all_blocks_list.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %all_blocks_list.i, align 4
  %call.i.i953.i = call zeroext i1 @__list_add_valid(ptr noundef %all_blocks_node.i.i.i, ptr noundef %all_blocks_list.i, ptr noundef %552) #14
  br i1 %call.i.i953.i, label %if.end.i.i954.i, label %if.end497.i.list_add.exit.i_crit_edge

if.end497.i.list_add.exit.i_crit_edge:            ; preds = %if.end497.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.i

if.end.i.i954.i:                                  ; preds = %if.end497.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %552, i32 0, i32 1
  %553 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %all_blocks_node.i.i.i, ptr %prev1.i.i.i, align 4
  %554 = ptrtoint ptr %all_blocks_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr %552, ptr %all_blocks_node.i.i.i, align 4
  %555 = ptrtoint ptr %prev.i37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %all_blocks_list.i, ptr %prev.i37.i.i.i, align 8
  %556 = ptrtoint ptr %all_blocks_list.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store volatile ptr %all_blocks_node.i.i.i, ptr %all_blocks_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i954.i, %if.end497.i.list_add.exit.i_crit_edge
  %557 = ptrtoint ptr %dev_bytenr389.i to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %dev_bytenr389.i, align 8
  %559 = trunc i64 %558 to i32
  %560 = lshr i32 %559, 16
  %561 = ptrtoint ptr %dev_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %dev_state.i.i.i, align 4
  %bdev.i957.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %562, i32 0, i32 1
  %563 = ptrtoint ptr %bdev.i957.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %bdev.i957.i, align 4
  %565 = ptrtoint ptr %564 to i32
  %.masked.i958.i = and i32 %565, 65535
  %and.i959.i = xor i32 %.masked.i958.i, %560
  %add.ptr.i961.i = getelementptr %struct.list_head, ptr %block_hashtable.i, i32 %and.i959.i
  %566 = ptrtoint ptr %add.ptr.i961.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %add.ptr.i961.i, align 4
  %call.i.i.i962.i = call zeroext i1 @__list_add_valid(ptr noundef %collision_resolving_node.i.i.i, ptr noundef %add.ptr.i961.i, ptr noundef %567) #14
  br i1 %call.i.i.i962.i, label %if.end.i.i.i964.i, label %list_add.exit.i.btrfsic_block_hashtable_add.exit.i_crit_edge

list_add.exit.i.btrfsic_block_hashtable_add.exit.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_hashtable_add.exit.i

if.end.i.i.i964.i:                                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i963.i = getelementptr inbounds %struct.list_head, ptr %567, i32 0, i32 1
  %568 = ptrtoint ptr %prev1.i.i.i963.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store ptr %collision_resolving_node.i.i.i, ptr %prev1.i.i.i963.i, align 4
  %569 = ptrtoint ptr %collision_resolving_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %567, ptr %collision_resolving_node.i.i.i, align 4
  %570 = ptrtoint ptr %prev.i.i.i919.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr %add.ptr.i961.i, ptr %prev.i.i.i919.i, align 8
  %571 = ptrtoint ptr %add.ptr.i961.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store volatile ptr %collision_resolving_node.i.i.i, ptr %add.ptr.i961.i, align 4
  br label %btrfsic_block_hashtable_add.exit.i

btrfsic_block_hashtable_add.exit.i:               ; preds = %if.end.i.i.i964.i, %list_add.exit.i.btrfsic_block_hashtable_add.exit.i_crit_edge
  br i1 %cmp6.i, label %if.then501.i, label %btrfsic_block_hashtable_add.exit.i.if.end511.i_crit_edge

btrfsic_block_hashtable_add.exit.i.if.end511.i_crit_edge: ; preds = %btrfsic_block_hashtable_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end511.i

if.then501.i:                                     ; preds = %btrfsic_block_hashtable_add.exit.i
  %call502.i = call fastcc i32 @btrfsic_process_metablock(ptr noundef %63, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %block_ctx.i, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call502.i)
  %tobool503.not.i = icmp eq i32 %call502.i, 0
  br i1 %tobool503.not.i, label %if.then501.i.if.end511.i_crit_edge, label %do.end507.i

if.then501.i.if.end511.i_crit_edge:               ; preds = %if.then501.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end511.i

do.end507.i:                                      ; preds = %if.then501.i
  call void @__sanitizer_cov_trace_pc() #16
  %call509.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i64 noundef %dev_bytenr.addr.01069.i) #17
  br label %if.end511.i

if.end511.i:                                      ; preds = %do.end507.i, %if.then501.i.if.end511.i_crit_edge, %btrfsic_block_hashtable_add.exit.i.if.end511.i_crit_edge
  %572 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %mem_to_free.i, align 8
  %tobool.not.i966.i = icmp eq ptr %573, null
  br i1 %tobool.not.i966.i, label %if.end511.i.do.body516.i_crit_edge, label %if.then.i969.i

if.end511.i.do.body516.i_crit_edge:               ; preds = %if.end511.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body516.i

if.then.i969.i:                                   ; preds = %if.end511.i
  %574 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %datav.i, align 8
  %tobool1.not.i968.i = icmp eq ptr %575, null
  br i1 %tobool1.not.i968.i, label %do.body6.i970.i, label %do.body12.i973.i, !prof !438

do.body6.i970.i:                                  ; preds = %if.then.i969.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i973.i:                                 ; preds = %if.then.i969.i
  %576 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %pagev.i, align 4
  %tobool13.not.i972.i = icmp eq ptr %577, null
  br i1 %tobool13.not.i972.i, label %do.body23.i974.i, label %do.end31.i981.i, !prof !438

do.body23.i974.i:                                 ; preds = %do.body12.i973.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i981.i:                                  ; preds = %do.body12.i973.i
  %578 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %len.i, align 8
  %conv.i976.i = zext i32 %579 to i64
  %sub.i977.i = add nuw nsw i64 %conv.i976.i, 4095
  %shr.i978.i = lshr i64 %sub.i977.i, 12
  %conv32.i979.i = trunc i64 %shr.i978.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i979.i)
  %cmp.not72.i980.i = icmp eq i32 %conv32.i979.i, 0
  br i1 %cmp.not72.i980.i, label %do.end31.i981.i.while.end.i995.i_crit_edge, label %do.end31.i981.i.while.body.i986.i_crit_edge

do.end31.i981.i.while.body.i986.i_crit_edge:      ; preds = %do.end31.i981.i
  br label %while.body.i986.i

do.end31.i981.i.while.end.i995.i_crit_edge:       ; preds = %do.end31.i981.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i995.i

while.body.i986.i:                                ; preds = %if.end48.i994.i.while.body.i986.i_crit_edge, %do.end31.i981.i.while.body.i986.i_crit_edge
  %num_pages.073.i982.i = phi i32 [ %dec.i983.i, %if.end48.i994.i.while.body.i986.i_crit_edge ], [ %conv32.i979.i, %do.end31.i981.i.while.body.i986.i_crit_edge ]
  %dec.i983.i = add nsw i32 %num_pages.073.i982.i, -1
  %580 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %datav.i, align 8
  %arrayidx.i984.i = getelementptr ptr, ptr %581, i32 %dec.i983.i
  %582 = ptrtoint ptr %arrayidx.i984.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx.i984.i, align 4
  %tobool35.not.i985.i = icmp eq ptr %583, null
  br i1 %tobool35.not.i985.i, label %while.body.i986.i.if.end39.i990.i_crit_edge, label %if.then36.i987.i

while.body.i986.i.if.end39.i990.i_crit_edge:      ; preds = %while.body.i986.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i990.i

if.then36.i987.i:                                 ; preds = %while.body.i986.i
  call void @__sanitizer_cov_trace_pc() #16
  %584 = ptrtoint ptr %arrayidx.i984.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store ptr null, ptr %arrayidx.i984.i, align 4
  br label %if.end39.i990.i

if.end39.i990.i:                                  ; preds = %if.then36.i987.i, %while.body.i986.i.if.end39.i990.i_crit_edge
  %585 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %pagev.i, align 4
  %arrayidx41.i988.i = getelementptr ptr, ptr %586, i32 %dec.i983.i
  %587 = ptrtoint ptr %arrayidx41.i988.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %arrayidx41.i988.i, align 4
  %tobool42.not.i989.i = icmp eq ptr %588, null
  br i1 %tobool42.not.i989.i, label %if.end39.i990.i.if.end48.i994.i_crit_edge, label %if.then43.i992.i

if.end39.i990.i.if.end48.i994.i_crit_edge:        ; preds = %if.end39.i990.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i994.i

if.then43.i992.i:                                 ; preds = %if.end39.i990.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %588, i32 noundef 0) #14
  %589 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %pagev.i, align 4
  %arrayidx47.i991.i = getelementptr ptr, ptr %590, i32 %dec.i983.i
  %591 = ptrtoint ptr %arrayidx47.i991.i to i32
  call void @__asan_store4_noabort(i32 %591)
  store ptr null, ptr %arrayidx47.i991.i, align 4
  br label %if.end48.i994.i

if.end48.i994.i:                                  ; preds = %if.then43.i992.i, %if.end39.i990.i.if.end48.i994.i_crit_edge
  %cmp.not.i993.i = icmp eq i32 %dec.i983.i, 0
  br i1 %cmp.not.i993.i, label %if.end48.i994.i.while.end.i995.i_crit_edge, label %if.end48.i994.i.while.body.i986.i_crit_edge

if.end48.i994.i.while.body.i986.i_crit_edge:      ; preds = %if.end48.i994.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i986.i

if.end48.i994.i.while.end.i995.i_crit_edge:       ; preds = %if.end48.i994.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i995.i

while.end.i995.i:                                 ; preds = %if.end48.i994.i.while.end.i995.i_crit_edge, %do.end31.i981.i.while.end.i995.i_crit_edge
  %592 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %mem_to_free.i, align 8
  call void @kfree(ptr noundef %593) #14
  %594 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %594)
  store ptr null, ptr %mem_to_free.i, align 8
  %595 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr null, ptr %pagev.i, align 4
  %596 = ptrtoint ptr %datav.i to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr null, ptr %datav.i, align 8
  br label %do.body516.i

do.body516.i:                                     ; preds = %while.end.i995.i, %if.end511.i.do.body516.i_crit_edge, %while.end.i951.i, %if.then386.i.do.body516.i_crit_edge, %if.end355.i.do.body516.i_crit_edge, %while.end.i.i, %if.end337.i.do.body516.i_crit_edge, %btrfsic_get_block_type.exit875.i
  %bio_is_patched.5 = phi i32 [ %bio_is_patched.0, %if.then386.i.do.body516.i_crit_edge ], [ %bio_is_patched.0, %while.end.i951.i ], [ %bio_is_patched.4, %if.end511.i.do.body516.i_crit_edge ], [ %bio_is_patched.4, %while.end.i995.i ], [ %bio_is_patched.0, %if.end355.i.do.body516.i_crit_edge ], [ %bio_is_patched.0, %btrfsic_get_block_type.exit875.i ], [ %bio_is_patched.3, %if.end337.i.do.body516.i_crit_edge ], [ %bio_is_patched.3, %while.end.i.i ]
  %processed_len.6.i = phi i32 [ %processed_len.4.i, %if.then386.i.do.body516.i_crit_edge ], [ %processed_len.4.i, %while.end.i951.i ], [ %processed_len.4.i, %if.end511.i.do.body516.i_crit_edge ], [ %processed_len.4.i, %while.end.i995.i ], [ %449, %if.end355.i.do.body516.i_crit_edge ], [ %processed_len.2.i, %btrfsic_get_block_type.exit875.i ], [ %processed_len.2.i, %if.end337.i.do.body516.i_crit_edge ], [ %processed_len.2.i, %while.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %processed_len.6.i)
  %tobool517.not.i = icmp eq i32 %processed_len.6.i, 0
  br i1 %tobool517.not.i, label %do.body527.i, label %do.end535.i, !prof !438

do.body527.i:                                     ; preds = %do.body516.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2028, 0\0A.popsection", ""() #14, !srcloc !448
  unreachable

do.end535.i:                                      ; preds = %do.body516.i
  %conv536.i = zext i32 %processed_len.6.i to i64
  %add537.i = add i64 %dev_bytenr.addr.01069.i, %conv536.i
  %shr.i = lshr i32 %processed_len.6.i, 12
  %add.ptr538.i = getelementptr ptr, ptr %mapped_datav.addr.01063.i, i32 %shr.i
  %sub.i249 = sub i32 %num_pages.addr.01057.i, %shr.i
  %cmp3.i = icmp eq i32 %sub.i249, 0
  br i1 %cmp3.i, label %do.end535.i.btrfsic_process_written_block.exit_crit_edge, label %do.end535.i.if.end5.i_crit_edge

do.end535.i.if.end5.i_crit_edge:                  ; preds = %do.end535.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

do.end535.i.btrfsic_process_written_block.exit_crit_edge: ; preds = %do.end535.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_process_written_block.exit

cleanup540.sink.split.i:                          ; preds = %if.else91.i.cleanup540.sink.split.i_crit_edge, %if.then39.i.cleanup540.sink.split.i_crit_edge, %if.then11.i.cleanup540.sink.split.i_crit_edge
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #17
  br label %btrfsic_process_written_block.exit

btrfsic_process_written_block.exit:               ; preds = %cleanup540.sink.split.i, %do.end535.i.btrfsic_process_written_block.exit_crit_edge, %for.end.btrfsic_process_written_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %block_ctx.i) #14
  call void @kfree(ptr noundef nonnull %call8.i) #14
  br label %leave

land.lhs.true100:                                 ; preds = %land.lhs.true2.i.land.lhs.true100_crit_edge, %land.lhs.true2.i.land.lhs.true100_crit_edge387, %land.lhs.true2.i.land.lhs.true100_crit_edge388, %land.lhs.true.i.land.lhs.true100_crit_edge, %land.lhs.true.land.lhs.true100_crit_edge
  %597 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %597)
  %tobool104.not = icmp eq i32 %597, 0
  br i1 %tobool104.not, label %land.lhs.true100.leave_crit_edge, label %if.then105

land.lhs.true100.leave_crit_edge:                 ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

if.then105:                                       ; preds = %land.lhs.true100
  %state106 = getelementptr i8, ptr %.pn.i.i, i32 -4
  %598 = ptrtoint ptr %state106 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %state106, align 8
  %600 = ptrtoint ptr %599 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %599, align 8
  %and108 = and i32 %601, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then105.if.end120_crit_edge, label %do.end113

if.then105.if.end120_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

do.end113:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and, i32 noundef %10, ptr noundef %1) #17
  br label %if.end120

if.end120:                                        ; preds = %do.end113, %if.then105.if.end120_crit_edge
  %is_iodone = getelementptr i8, ptr %.pn.i.i, i32 16
  %602 = ptrtoint ptr %is_iodone to i32
  call void @__asan_load1_noabort(i32 %602)
  %bf.load = load i8, ptr %is_iodone, align 4
  %603 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %603)
  %tobool121.not = icmp eq i8 %603, 0
  br i1 %tobool121.not, label %if.then122, label %if.else134

if.then122:                                       ; preds = %if.end120
  %604 = ptrtoint ptr %state106 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %state106, align 8
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %605, align 8
  %and125 = and i32 %607, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.then122.leave_crit_edge, label %do.end130

if.then122.leave_crit_edge:                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

do.end130:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  %608 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %bdev.i.i.le, align 4
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %609) #17
  br label %leave

if.else134:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  %dummy_block_for_bio_bh_flush = getelementptr i8, ptr %.pn.i.i, i32 12
  %bf.clear143 = and i8 %bf.load, -57
  %610 = ptrtoint ptr %is_iodone to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %bf.clear143, ptr %is_iodone, align 4
  %last_flush_gen = getelementptr i8, ptr %.pn.i.i, i32 132
  %611 = ptrtoint ptr %last_flush_gen to i32
  call void @__asan_load8_noabort(i32 %611)
  %612 = load i64, ptr %last_flush_gen, align 8
  %add145 = add i64 %612, 1
  %flush_gen = getelementptr i8, ptr %.pn.i.i, i32 124
  %613 = ptrtoint ptr %flush_gen to i32
  call void @__asan_store8_noabort(i32 %613)
  store i64 %add145, ptr %flush_gen, align 8
  %614 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %bi_opf, align 8
  %submit_bio_bh_rw = getelementptr i8, ptr %.pn.i.i, i32 116
  %616 = ptrtoint ptr %submit_bio_bh_rw to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 %615, ptr %submit_bio_bh_rw, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %617 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %bi_private, align 4
  %orig_bio_private = getelementptr i8, ptr %.pn.i.i, i32 108
  %619 = ptrtoint ptr %orig_bio_private to i32
  call void @__asan_store4_noabort(i32 %619)
  store ptr %618, ptr %orig_bio_private, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %620 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %bi_end_io, align 8
  %orig_bio_end_io = getelementptr i8, ptr %.pn.i.i, i32 112
  %622 = ptrtoint ptr %orig_bio_end_io to i32
  call void @__asan_store4_noabort(i32 %622)
  store ptr %621, ptr %orig_bio_end_io, align 4
  %next_in_same_bio = getelementptr i8, ptr %.pn.i.i, i32 104
  %623 = ptrtoint ptr %next_in_same_bio to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr null, ptr %next_in_same_bio, align 4
  store ptr %dummy_block_for_bio_bh_flush, ptr %bi_private, align 4
  store ptr @btrfsic_bio_end_io, ptr %bi_end_io, align 8
  br label %leave

leave:                                            ; preds = %if.else134, %do.end130, %if.then122.leave_crit_edge, %land.lhs.true100.leave_crit_edge, %btrfsic_process_written_block.exit, %if.end7.i.leave_crit_edge, %if.end16.leave_crit_edge, %btrfsic_dev_state_lookup.exit.leave_crit_edge, %for.cond.i.i.leave_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @btrfsic_mutex) #14
  br label %cleanup152

cleanup152:                                       ; preds = %leave, %entry.cleanup152_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfsic_submit_bio_wait(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__btrfsic_submit_bio(ptr noundef %bio)
  %call = tail call i32 @submit_bio_wait(ptr noundef %bio) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfsic_mount(ptr noundef %fs_info, ptr noundef %fs_devices, i32 noundef %including_extent_data, i32 noundef %print_mask) local_unnamed_addr #0 align 64 {
entry:
  %selected_dev_state.i = alloca ptr, align 4
  %tmp_next_block_ctx.i = alloca %struct.btrfsic_block_data_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 13
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %0 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodesize, align 8
  %and = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef 4096) #17
  br label %cleanup57

if.end:                                           ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %2 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sectorsize, align 4
  %and2 = and i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.end11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef 4096) #17
  br label %cleanup57

if.end11:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1048624, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end11.cleanup57_crit_edge, label %if.end14

if.end11.cleanup57_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end14:                                         ; preds = %if.end11
  %.b = load i1, ptr @btrfsic_is_initialized, align 4
  br i1 %.b, label %if.end14.if.end20_crit_edge, label %do.body17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

do.body17:                                        ; preds = %if.end14
  tail call void @__mutex_init(ptr noundef nonnull @btrfsic_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @btrfsic_mount.__key) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body17
  %i.01.i = phi i32 [ 0, %do.body17 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %i.01.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %add.ptr.i, ptr %add.ptr.i, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %i.01.i, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %btrfsic_dev_state_hashtable_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

btrfsic_dev_state_hashtable_init.exit:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfsic_is_initialized, align 4
  br label %if.end20

if.end20:                                         ; preds = %btrfsic_dev_state_hashtable_init.exit, %if.end14.if.end20_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @btrfsic_mutex, i32 noundef 0) #14
  %fs_info21 = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %fs_info21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fs_info, ptr %fs_info21, align 8
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %print_mask, ptr %call.i.i, align 8
  %include_extent_data = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %include_extent_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %including_extent_data, ptr %include_extent_data, align 4
  %9 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nodesize, align 8
  %metablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %metablock_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %metablock_size, align 4
  %12 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize, align 4
  %datablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %datablock_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %datablock_size, align 8
  %all_blocks_list = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %all_blocks_list, ptr %all_blocks_list, align 4
  %prev.i = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %all_blocks_list, ptr %prev.i, align 4
  %block_hashtable = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %if.end20
  %i.03.i = phi i32 [ 0, %if.end20 ], [ %inc.i96, %for.body.i98.for.body.i98_crit_edge ]
  %add.ptr.i94 = getelementptr %struct.list_head, ptr %block_hashtable, i32 %i.03.i
  %17 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %add.ptr.i94, ptr %add.ptr.i94, align 4
  %prev.i.i95 = getelementptr %struct.list_head, ptr %block_hashtable, i32 %i.03.i, i32 1
  %18 = ptrtoint ptr %prev.i.i95 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i94, ptr %prev.i.i95, align 4
  %inc.i96 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, 65536
  br i1 %exitcond.not.i97, label %btrfsic_block_hashtable_init.exit, label %for.body.i98.for.body.i98_crit_edge

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i98

btrfsic_block_hashtable_init.exit:                ; preds = %for.body.i98
  %block_link_hashtable = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 4
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %btrfsic_block_hashtable_init.exit
  %i.03.i99 = phi i32 [ 0, %btrfsic_block_hashtable_init.exit ], [ %inc.i102, %for.body.i104.for.body.i104_crit_edge ]
  %add.ptr.i100 = getelementptr %struct.list_head, ptr %block_link_hashtable, i32 %i.03.i99
  %19 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %add.ptr.i100, ptr %add.ptr.i100, align 4
  %prev.i.i101 = getelementptr %struct.list_head, ptr %block_link_hashtable, i32 %i.03.i99, i32 1
  %20 = ptrtoint ptr %prev.i.i101 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i100, ptr %prev.i.i101, align 4
  %inc.i102 = add nuw nsw i32 %i.03.i99, 1
  %exitcond.not.i103 = icmp eq i32 %inc.i102, 65536
  br i1 %exitcond.not.i103, label %btrfsic_block_link_hashtable_init.exit, label %for.body.i104.for.body.i104_crit_edge

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i104

btrfsic_block_link_hashtable_init.exit:           ; preds = %for.body.i104
  %max_superblock_generation = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %max_superblock_generation to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %max_superblock_generation, align 8
  %latest_superblock = getelementptr inbounds %struct.btrfsic_state, ptr %call.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %latest_superblock, align 8
  %23 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %23)
  %device.0156 = load ptr, ptr %devices, align 4
  %cmp26.not157 = icmp eq ptr %device.0156, %devices
  br i1 %cmp26.not157, label %btrfsic_block_link_hashtable_init.exit.for.end_crit_edge, label %btrfsic_block_link_hashtable_init.exit.for.body_crit_edge

btrfsic_block_link_hashtable_init.exit.for.body_crit_edge: ; preds = %btrfsic_block_link_hashtable_init.exit
  br label %for.body

btrfsic_block_link_hashtable_init.exit.for.end_crit_edge: ; preds = %btrfsic_block_link_hashtable_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %btrfsic_block_link_hashtable_init.exit.for.body_crit_edge
  %device.0158 = phi ptr [ %device.0, %for.inc.for.body_crit_edge ], [ %device.0156, %btrfsic_block_link_hashtable_init.exit.for.body_crit_edge ]
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device.0158, i32 0, i32 7
  %24 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev, align 8
  %tobool27.not = icmp eq ptr %25, null
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device.0158, i32 0, i32 5
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %tobool28.not = icmp eq ptr %27, null
  br i1 %tobool28.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end30

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end30:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3392, i32 noundef 152) #19
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end30
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 537990448, ptr %call7.i.i.i, align 8
  %bdev.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %bdev.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %state.i.i, align 8
  %collision_resolving_node.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %collision_resolving_node.i.i, ptr %collision_resolving_node.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %collision_resolving_node.i.i, ptr %prev.i.i.i, align 8
  %last_flush_gen.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %last_flush_gen.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %last_flush_gen.i.i, align 8
  %dummy_block_for_bio_bh_flush.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %dummy_block_for_bio_bh_flush.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 340332625, ptr %dummy_block_for_bio_bh_flush.i.i, align 8
  %dev_state.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %generation.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 6
  %36 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 16)
  %38 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %generation.i.i.i, align 8
  %disk_key.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 7
  %is_metadata.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %39 = call ptr @memset(ptr %disk_key.i.i.i, i32 0, i32 17)
  %40 = ptrtoint ptr %is_metadata.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i.i = load i8, ptr %is_metadata.i.i.i, align 4
  %bf.clear13.i.i.i = and i8 %bf.load.i.i.i, 7
  %mirror_num.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %mirror_num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mirror_num.i.i.i, align 8
  %next_in_same_bio.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 12
  %42 = ptrtoint ptr %next_in_same_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %next_in_same_bio.i.i.i, align 4
  %orig_bio_private.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 13
  %43 = ptrtoint ptr %orig_bio_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %orig_bio_private.i.i.i, align 8
  %orig_bio_end_io.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 14
  %44 = ptrtoint ptr %orig_bio_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %orig_bio_end_io.i.i.i, align 4
  %collision_resolving_node.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 8
  %45 = ptrtoint ptr %collision_resolving_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %collision_resolving_node.i.i.i, ptr %collision_resolving_node.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 8, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %collision_resolving_node.i.i.i, ptr %prev.i.i.i.i, align 8
  %all_blocks_node.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 9
  %47 = ptrtoint ptr %all_blocks_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %all_blocks_node.i.i.i, ptr %all_blocks_node.i.i.i, align 4
  %prev.i37.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 9, i32 1
  %48 = ptrtoint ptr %prev.i37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %all_blocks_node.i.i.i, ptr %prev.i37.i.i.i, align 8
  %ref_to_list.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 10
  %49 = ptrtoint ptr %ref_to_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ref_to_list.i.i.i, ptr %ref_to_list.i.i.i, align 4
  %prev.i38.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ref_to_list.i.i.i, ptr %prev.i38.i.i.i, align 8
  %ref_from_list.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 11
  %51 = ptrtoint ptr %ref_from_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %ref_from_list.i.i.i, ptr %ref_from_list.i.i.i, align 4
  %prev.i39.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 11, i32 1
  %52 = ptrtoint ptr %prev.i39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ref_from_list.i.i.i, ptr %prev.i39.i.i.i, align 8
  %submit_bio_bh_rw.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 15
  %53 = ptrtoint ptr %submit_bio_bh_rw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %submit_bio_bh_rw.i.i.i, align 8
  %flush_gen.i.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %call7.i.i.i, i32 0, i32 4, i32 16
  %54 = ptrtoint ptr %flush_gen.i.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %flush_gen.i.i.i, align 8
  %bf.set.i.i = or i8 %bf.clear13.i.i.i, 32
  store i8 %bf.set.i.i, ptr %is_metadata.i.i.i, align 4
  %55 = ptrtoint ptr %dev_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i, ptr %dev_state.i.i.i, align 4
  %56 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev, align 8
  store ptr %57, ptr %bdev.i.i, align 4
  store ptr %call.i.i, ptr %state.i.i, align 8
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bd_dev.i, align 4
  %and.i = and i32 %59, 255
  %add.ptr.i105 = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %and.i
  %60 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i105, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %collision_resolving_node.i.i, ptr noundef %add.ptr.i105, ptr noundef %61) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %collision_resolving_node.i.i, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %collision_resolving_node.i.i, align 4
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i105, ptr %prev.i.i.i, align 8
  %65 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %collision_resolving_node.i.i, ptr %add.ptr.i105, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @btrfsic_mutex) #14
  br label %cleanup57

for.inc:                                          ; preds = %if.end.i.i.i, %if.end34.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %66 = ptrtoint ptr %device.0158 to i32
  call void @__asan_load4_noabort(i32 %66)
  %device.0 = load ptr, ptr %device.0158, align 4
  %cmp26.not = icmp eq ptr %device.0, %devices
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %btrfsic_block_link_hashtable_init.exit.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %selected_dev_state.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i106 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3392, i32 noundef 4096) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i106, null
  br i1 %tobool.not.i, label %for.end.btrfsic_process_superblock.exit.thread_crit_edge, label %for.cond.preheader.i

for.end.btrfsic_process_superblock.exit.thread_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_process_superblock.exit.thread

for.cond.preheader.i:                             ; preds = %for.end
  %68 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %68)
  %device.0358.i = load ptr, ptr %devices, align 4
  %cmp.not359.i = icmp eq ptr %device.0358.i, %devices
  br i1 %cmp.not359.i, label %for.cond.preheader.i.for.end34.i_crit_edge, label %for.cond.preheader.i.for.body.i108_crit_edge

for.cond.preheader.i.for.body.i108_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i108

for.cond.preheader.i.for.end34.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34.i

for.body.i108:                                    ; preds = %for.inc28.i.for.body.i108_crit_edge, %for.cond.preheader.i.for.body.i108_crit_edge
  %device.0361.i = phi ptr [ %device.0.i, %for.inc28.i.for.body.i108_crit_edge ], [ %device.0358.i, %for.cond.preheader.i.for.body.i108_crit_edge ]
  %ret.0360.i = phi i32 [ %ret.2.ph.i, %for.inc28.i.for.body.i108_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i108_crit_edge ]
  %bdev.i107 = getelementptr inbounds %struct.btrfs_device, ptr %device.0361.i, i32 0, i32 7
  %69 = ptrtoint ptr %bdev.i107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bdev.i107, align 8
  %tobool1.not.i = icmp eq ptr %70, null
  br i1 %tobool1.not.i, label %for.body.i108.for.inc28.i_crit_edge, label %lor.lhs.false.i

for.body.i108.for.inc28.i_crit_edge:              ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28.i

lor.lhs.false.i:                                  ; preds = %for.body.i108
  %name.i = getelementptr inbounds %struct.btrfs_device, ptr %device.0361.i, i32 0, i32 5
  %71 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name.i, align 8
  %tobool2.not.i = icmp eq ptr %72, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.for.inc28.i_crit_edge, label %if.end4.i

lor.lhs.false.i.for.inc28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28.i

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %bd_dev.i109 = getelementptr inbounds %struct.block_device, ptr %70, i32 0, i32 5
  %73 = ptrtoint ptr %bd_dev.i109 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bd_dev.i109, align 4
  %and.i.i.i = and i32 %74, 255
  %add.ptr.i.i.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %and.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end4.i
  %.pn.in.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end4.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %75 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.body12.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.body12.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %bdev.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -8
  %76 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bdev.i.i.i, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bd_dev.i.i.i, align 4
  %cmp5.i.i.i = icmp eq i32 %79, %74
  br i1 %cmp5.i.i.i, label %btrfsic_dev_state_lookup.exit.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.i

btrfsic_dev_state_lookup.exit.i:                  ; preds = %for.body.i.i.i
  %ds.0.le.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -12
  %cmp7.i = icmp eq ptr %ds.0.le.i.i.i, null
  br i1 %cmp7.i, label %btrfsic_dev_state_lookup.exit.i.do.body12.i_crit_edge, label %for.body21.preheader.i, !prof !438

btrfsic_dev_state_lookup.exit.i.do.body12.i_crit_edge: ; preds = %btrfsic_dev_state_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i

for.body21.preheader.i:                           ; preds = %btrfsic_dev_state_lookup.exit.i
  %call22.i = call fastcc i32 @btrfsic_process_superblock_dev_mirror(ptr noundef %call.i.i, ptr noundef nonnull %ds.0.le.i.i.i, ptr noundef %device.0361.i, i32 noundef 0, ptr noundef nonnull %selected_dev_state.i, ptr noundef nonnull %call7.i.i.i106) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.not.not.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.not.not.i, label %for.cond19.2.i, label %cleanup.i

do.body12.i:                                      ; preds = %btrfsic_dev_state_lookup.exit.i.do.body12.i_crit_edge, %for.cond.i.i.i.do.body12.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 593, 0\0A.popsection", ""() #14, !srcloc !449
  unreachable

for.cond19.2.i:                                   ; preds = %for.body21.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  %call22.1.i = call fastcc i32 @btrfsic_process_superblock_dev_mirror(ptr noundef %call.i.i, ptr noundef nonnull %ds.0.le.i.i.i, ptr noundef %device.0361.i, i32 noundef 1, ptr noundef nonnull %selected_dev_state.i, ptr noundef nonnull %call7.i.i.i106) #14
  %call22.2.i = call fastcc i32 @btrfsic_process_superblock_dev_mirror(ptr noundef %call.i.i, ptr noundef nonnull %ds.0.le.i.i.i, ptr noundef %device.0361.i, i32 noundef 2, ptr noundef nonnull %selected_dev_state.i, ptr noundef nonnull %call7.i.i.i106) #14
  br label %for.inc28.i

cleanup.i:                                        ; preds = %for.body21.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i106) #14
  br label %btrfsic_process_superblock.exit.thread

for.inc28.i:                                      ; preds = %for.cond19.2.i, %lor.lhs.false.i.for.inc28.i_crit_edge, %for.body.i108.for.inc28.i_crit_edge
  %ret.2.ph.i = phi i32 [ %ret.0360.i, %for.body.i108.for.inc28.i_crit_edge ], [ %ret.0360.i, %lor.lhs.false.i.for.inc28.i_crit_edge ], [ %call22.2.i, %for.cond19.2.i ]
  %80 = ptrtoint ptr %device.0361.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %device.0.i = load ptr, ptr %device.0361.i, align 4
  %cmp.not.i110 = icmp eq ptr %device.0.i, %devices
  br i1 %cmp.not.i110, label %for.inc28.i.for.end34.i_crit_edge, label %for.inc28.i.for.body.i108_crit_edge

for.inc28.i.for.body.i108_crit_edge:              ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i108

for.inc28.i.for.end34.i_crit_edge:                ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34.i

for.end34.i:                                      ; preds = %for.inc28.i.for.end34.i_crit_edge, %for.cond.preheader.i.for.end34.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end34.i_crit_edge ], [ %ret.2.ph.i, %for.inc28.i.for.end34.i_crit_edge ]
  %81 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %latest_superblock, align 8
  %cmp35.i = icmp eq ptr %82, null
  br i1 %cmp35.i, label %do.end39.i, label %for.cond43.preheader.i

for.cond43.preheader.i:                           ; preds = %for.end34.i
  %log_root.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call7.i.i.i106, i32 0, i32 8
  %chunk_root.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call7.i.i.i106, i32 0, i32 7
  %root.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call7.i.i.i106, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i, i32 0, i32 3
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i, i32 0, i32 1
  %mem_to_free.i253.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i, i32 0, i32 6
  %datav.i255.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i, i32 0, i32 4
  %pagev.i259.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i, i32 0, i32 5
  %len.i263.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx.i, i32 0, i32 2
  br label %for.body45.i

do.end39.i:                                       ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i106) #14
  br label %btrfsic_process_superblock.exit.thread

for.body45.i:                                     ; preds = %for.inc180.i.for.body45.i_crit_edge, %for.cond43.preheader.i
  %ret.3366.i = phi i32 [ %ret.0.lcssa.i, %for.cond43.preheader.i ], [ %ret.6.ph.i, %for.inc180.i.for.body45.i_crit_edge ]
  %pass.0365.i = phi i32 [ 0, %for.cond43.preheader.i ], [ %inc181.i, %for.inc180.i.for.body45.i_crit_edge ]
  %83 = zext i32 %pass.0365.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %pass.0365.i, label %for.body45.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb55.i
    i32 2, label %sw.bb67.i
  ]

for.body45.i.sw.epilog.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body45.i
  %84 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %root.i.i, align 8
  %86 = call i64 @llvm.bswap.i64(i64 %85) #14
  %87 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call.i.i, align 8
  %and.i111 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool47.not.i = icmp eq i32 %and.i111, 0
  br i1 %tobool47.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %do.end51.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

do.end51.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i64 noundef %86) #17
  br label %sw.epilog.i

sw.bb55.i:                                        ; preds = %for.body45.i
  %89 = ptrtoint ptr %chunk_root.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %chunk_root.i.i, align 8
  %91 = call i64 @llvm.bswap.i64(i64 %90) #14
  %92 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call.i.i, align 8
  %and58.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %sw.bb55.i.sw.epilog.i_crit_edge, label %do.end63.i

sw.bb55.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

do.end63.i:                                       ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #16
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i64 noundef %91) #17
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %for.body45.i
  %94 = ptrtoint ptr %log_root.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %log_root.i.i, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %cmp69.i = icmp eq i64 %95, 0
  br i1 %cmp69.i, label %sw.bb67.i.btrfsic_process_superblock.exit_crit_edge, label %if.end71.i

sw.bb67.i.btrfsic_process_superblock.exit_crit_edge: ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_process_superblock.exit

if.end71.i:                                       ; preds = %sw.bb67.i
  %97 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call.i.i, align 8
  %and73.i = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end71.i.sw.epilog.i_crit_edge, label %do.end78.i

if.end71.i.sw.epilog.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

do.end78.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #16
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i64 noundef %96) #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end78.i, %if.end71.i.sw.epilog.i_crit_edge, %do.end63.i, %sw.bb55.i.sw.epilog.i_crit_edge, %do.end51.i, %sw.bb.i.sw.epilog.i_crit_edge, %for.body45.i.sw.epilog.i_crit_edge
  %next_bytenr.0.i = phi i64 [ -1, %for.body45.i.sw.epilog.i_crit_edge ], [ %96, %do.end78.i ], [ %96, %if.end71.i.sw.epilog.i_crit_edge ], [ %91, %do.end63.i ], [ %91, %sw.bb55.i.sw.epilog.i_crit_edge ], [ %86, %do.end51.i ], [ %86, %sw.bb.i.sw.epilog.i_crit_edge ]
  %99 = ptrtoint ptr %fs_info21 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fs_info21, align 8
  %101 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %metablock_size, align 4
  %conv.i = zext i32 %102 to i64
  %call82.i = call i32 @btrfs_num_copies(ptr noundef %100, i64 noundef %next_bytenr.0.i, i64 noundef %conv.i) #14
  %103 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call.i.i, align 8
  %and84.i = and i32 %104, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %sw.epilog.i.if.end92.i_crit_edge, label %do.end89.i

sw.epilog.i.if.end92.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

do.end89.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %next_bytenr.0.i, i32 noundef %call82.i) #17
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end89.i, %sw.epilog.i.if.end92.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82.i)
  %cmp94.not362.i = icmp slt i32 %call82.i, 1
  br i1 %cmp94.not362.i, label %if.end92.i.for.inc180.i_crit_edge, label %if.end92.i.for.body96.i_crit_edge

if.end92.i.for.body96.i_crit_edge:                ; preds = %if.end92.i
  br label %for.body96.i

if.end92.i.for.inc180.i_crit_edge:                ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc180.i

for.body96.i:                                     ; preds = %for.inc172.i.for.body96.i_crit_edge, %if.end92.i.for.body96.i_crit_edge
  %mirror_num.0363.i = phi i32 [ %inc173.i, %for.inc172.i.for.body96.i_crit_edge ], [ 1, %if.end92.i.for.body96.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i) #14
  %105 = call ptr @memset(ptr %tmp_next_block_ctx.i, i32 255, i32 40)
  %106 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %metablock_size, align 4
  %call98.i = call fastcc i32 @btrfsic_map_block(ptr noundef %call.i.i, i64 noundef %next_bytenr.0.i, i32 noundef %107, ptr noundef nonnull %tmp_next_block_ctx.i, i32 noundef %mirror_num.0363.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end106.i, label %do.end103.i

do.end103.i:                                      ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #16
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i64 noundef %next_bytenr.0.i, i32 noundef %mirror_num.0363.i) #17
  br label %cleanup175.i

if.end106.i:                                      ; preds = %for.body96.i
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  %bdev107.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %bdev107.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bdev107.i, align 4
  %112 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %dev_bytenr.i, align 8
  %114 = trunc i64 %113 to i32
  %115 = lshr i32 %114, 16
  %116 = ptrtoint ptr %111 to i32
  %.masked.i.i = and i32 %116, 65535
  %and.i.i = xor i32 %115, %.masked.i.i
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %block_hashtable, i32 %and.i.i
  %117 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn28.i.i = load ptr, ptr %add.ptr.i.i, align 4
  %cmp.not29.i.i = icmp eq ptr %.pn28.i.i, %add.ptr.i.i
  br i1 %cmp.not29.i.i, label %if.end106.i.do.body119.i_crit_edge, label %if.end106.i.for.body.i.i_crit_edge

if.end106.i.for.body.i.i_crit_edge:               ; preds = %if.end106.i
  br label %for.body.i.i

if.end106.i.do.body119.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end106.i.for.body.i.i_crit_edge
  %.pn30.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn28.i.i, %if.end106.i.for.body.i.i_crit_edge ]
  %dev_state.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -48
  %118 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_state.i.i, align 4
  %bdev6.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %bdev6.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bdev6.i.i, align 4
  %cmp7.i.i = icmp eq ptr %121, %111
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %dev_bytenr9.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -44
  %122 = ptrtoint ptr %dev_bytenr9.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %dev_bytenr9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %113)
  %cmp10.i.i = icmp eq i64 %123, %113
  br i1 %cmp10.i.i, label %btrfsic_block_hashtable_lookup.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %124 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i = load ptr, ptr %.pn30.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.body119.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body119.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119.i

btrfsic_block_hashtable_lookup.exit.i:            ; preds = %land.lhs.true.i.i
  %b.0.le.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -60
  %cmp110.i = icmp eq ptr %b.0.le.i.i, null
  br i1 %cmp110.i, label %btrfsic_block_hashtable_lookup.exit.i.do.body119.i_crit_edge, label %do.end127.i, !prof !438

btrfsic_block_hashtable_lookup.exit.i.do.body119.i_crit_edge: ; preds = %btrfsic_block_hashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119.i

do.body119.i:                                     ; preds = %btrfsic_block_hashtable_lookup.exit.i.do.body119.i_crit_edge, %for.inc.i.i.do.body119.i_crit_edge, %if.end106.i.do.body119.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 665, 0\0A.popsection", ""() #14, !srcloc !450
  unreachable

do.end127.i:                                      ; preds = %btrfsic_block_hashtable_lookup.exit.i
  %125 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %latest_superblock, align 8
  %dev_state132.i = getelementptr inbounds %struct.btrfsic_block, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %dev_state132.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_state132.i, align 4
  %bdev133.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %bdev133.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bdev133.i, align 4
  %dev_bytenr135.i = getelementptr inbounds %struct.btrfsic_block, ptr %126, i32 0, i32 4
  %131 = ptrtoint ptr %dev_bytenr135.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %dev_bytenr135.i, align 8
  %shr80.i.i = xor i64 %132, %113
  %133 = trunc i64 %shr80.i.i to i32
  %134 = lshr i32 %133, 16
  %135 = ptrtoint ptr %130 to i32
  %xor3.i.i = xor i32 %135, %116
  %xor3.masked.i.i = and i32 %xor3.i.i, 65535
  %and.i243.i = xor i32 %134, %xor3.masked.i.i
  %add.ptr.i244.i = getelementptr %struct.list_head, ptr %block_link_hashtable, i32 %and.i243.i
  %136 = ptrtoint ptr %add.ptr.i244.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pn83.i.i = load ptr, ptr %add.ptr.i244.i, align 4
  %cmp.not84.i.i = icmp eq ptr %.pn83.i.i, %add.ptr.i244.i
  br i1 %cmp.not84.i.i, label %do.end127.i.do.body147.i_crit_edge, label %do.end127.i.do.body.i.i_crit_edge

do.end127.i.do.body.i.i_crit_edge:                ; preds = %do.end127.i
  br label %do.body.i.i

do.end127.i.do.body147.i_crit_edge:               ; preds = %do.end127.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body147.i

do.body.i.i:                                      ; preds = %for.inc.i250.i.do.body.i.i_crit_edge, %do.end127.i.do.body.i.i_crit_edge
  %.pn85.i.i = phi ptr [ %.pn.i248.i, %for.inc.i250.i.do.body.i.i_crit_edge ], [ %.pn83.i.i, %do.end127.i.do.body.i.i_crit_edge ]
  %block_ref_to.i.i = getelementptr i8, ptr %.pn85.i.i, i32 8
  %137 = ptrtoint ptr %block_ref_to.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %block_ref_to.i.i, align 8
  %cmp10.i245.i = icmp eq ptr %138, null
  br i1 %cmp10.i245.i, label %do.body14.i.i, label %do.body20.i.i, !prof !438

do.body14.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #14, !srcloc !451
  unreachable

do.body20.i.i:                                    ; preds = %do.body.i.i
  %block_ref_from.i.i = getelementptr i8, ptr %.pn85.i.i, i32 12
  %139 = ptrtoint ptr %block_ref_from.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %block_ref_from.i.i, align 4
  %cmp21.i.i = icmp eq ptr %140, null
  br i1 %cmp21.i.i, label %do.body30.i.i, label %do.end38.i.i, !prof !438

do.body30.i.i:                                    ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 520, 0\0A.popsection", ""() #14, !srcloc !452
  unreachable

do.end38.i.i:                                     ; preds = %do.body20.i.i
  %dev_state.i246.i = getelementptr inbounds %struct.btrfsic_block, ptr %138, i32 0, i32 3
  %141 = ptrtoint ptr %dev_state.i246.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev_state.i246.i, align 4
  %bdev.i.i112 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %bdev.i.i112 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bdev.i.i112, align 4
  %cmp40.i.i = icmp eq ptr %144, %111
  br i1 %cmp40.i.i, label %land.lhs.true.i247.i, label %do.end38.i.i.for.inc.i250.i_crit_edge

do.end38.i.i.for.inc.i250.i_crit_edge:            ; preds = %do.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i250.i

land.lhs.true.i247.i:                             ; preds = %do.end38.i.i
  %dev_bytenr.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %138, i32 0, i32 4
  %145 = ptrtoint ptr %dev_bytenr.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %dev_bytenr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %113)
  %cmp43.i.i = icmp eq i64 %146, %113
  br i1 %cmp43.i.i, label %land.lhs.true45.i.i, label %land.lhs.true.i247.i.for.inc.i250.i_crit_edge

land.lhs.true.i247.i.for.inc.i250.i_crit_edge:    ; preds = %land.lhs.true.i247.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i250.i

land.lhs.true45.i.i:                              ; preds = %land.lhs.true.i247.i
  %dev_state47.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %140, i32 0, i32 3
  %147 = ptrtoint ptr %dev_state47.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev_state47.i.i, align 4
  %bdev48.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %bdev48.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bdev48.i.i, align 4
  %cmp49.i.i = icmp eq ptr %150, %130
  br i1 %cmp49.i.i, label %land.lhs.true51.i.i, label %land.lhs.true45.i.i.for.inc.i250.i_crit_edge

land.lhs.true45.i.i.for.inc.i250.i_crit_edge:     ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i250.i

land.lhs.true51.i.i:                              ; preds = %land.lhs.true45.i.i
  %dev_bytenr53.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %140, i32 0, i32 4
  %151 = ptrtoint ptr %dev_bytenr53.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %dev_bytenr53.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %132)
  %cmp54.i.i = icmp eq i64 %152, %132
  br i1 %cmp54.i.i, label %btrfsic_block_link_hashtable_lookup.exit.i, label %land.lhs.true51.i.i.for.inc.i250.i_crit_edge

land.lhs.true51.i.i.for.inc.i250.i_crit_edge:     ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i250.i

for.inc.i250.i:                                   ; preds = %land.lhs.true51.i.i.for.inc.i250.i_crit_edge, %land.lhs.true45.i.i.for.inc.i250.i_crit_edge, %land.lhs.true.i247.i.for.inc.i250.i_crit_edge, %do.end38.i.i.for.inc.i250.i_crit_edge
  %153 = ptrtoint ptr %.pn85.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pn.i248.i = load ptr, ptr %.pn85.i.i, align 4
  %cmp.not.i249.i = icmp eq ptr %.pn.i248.i, %add.ptr.i244.i
  br i1 %cmp.not.i249.i, label %for.inc.i250.i.do.body147.i_crit_edge, label %for.inc.i250.i.do.body.i.i_crit_edge

for.inc.i250.i.do.body.i.i_crit_edge:             ; preds = %for.inc.i250.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.inc.i250.i.do.body147.i_crit_edge:            ; preds = %for.inc.i250.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body147.i

btrfsic_block_link_hashtable_lookup.exit.i:       ; preds = %land.lhs.true51.i.i
  %l.0.le.i.i = getelementptr i8, ptr %.pn85.i.i, i32 -24
  %cmp138.i = icmp eq ptr %l.0.le.i.i, null
  br i1 %cmp138.i, label %btrfsic_block_link_hashtable_lookup.exit.i.do.body147.i_crit_edge, label %do.end155.i, !prof !438

btrfsic_block_link_hashtable_lookup.exit.i.do.body147.i_crit_edge: ; preds = %btrfsic_block_link_hashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body147.i

do.body147.i:                                     ; preds = %btrfsic_block_link_hashtable_lookup.exit.i.do.body147.i_crit_edge, %for.inc.i250.i.do.body147.i_crit_edge, %do.end127.i.do.body147.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 674, 0\0A.popsection", ""() #14, !srcloc !453
  unreachable

do.end155.i:                                      ; preds = %btrfsic_block_link_hashtable_lookup.exit.i
  %call156.i = call fastcc i32 @btrfsic_read_block(ptr noundef nonnull %tmp_next_block_ctx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call156.i)
  %cmp157.i = icmp slt i32 %call156.i, 4096
  br i1 %cmp157.i, label %do.end162.i, label %if.end165.i

do.end162.i:                                      ; preds = %do.end155.i
  %154 = ptrtoint ptr %tmp_next_block_ctx.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %tmp_next_block_ctx.i, align 8
  %call164.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, i64 noundef %155) #17
  %156 = ptrtoint ptr %mem_to_free.i253.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mem_to_free.i253.i, align 8
  %tobool.not.i.i = icmp eq ptr %157, null
  br i1 %tobool.not.i.i, label %do.end162.i.cleanup175.i_crit_edge, label %if.then.i.i

do.end162.i.cleanup175.i_crit_edge:               ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup175.i

if.then.i.i:                                      ; preds = %do.end162.i
  %158 = ptrtoint ptr %datav.i255.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %datav.i255.i, align 8
  %tobool1.not.i.i = icmp eq ptr %159, null
  br i1 %tobool1.not.i.i, label %do.body6.i.i, label %do.body12.i.i, !prof !438

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i.i:                                    ; preds = %if.then.i.i
  %160 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pagev.i259.i, align 4
  %tobool13.not.i.i = icmp eq ptr %161, null
  br i1 %tobool13.not.i.i, label %do.body23.i.i, label %do.end31.i.i, !prof !438

do.body23.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i.i:                                     ; preds = %do.body12.i.i
  %162 = ptrtoint ptr %len.i263.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i263.i, align 8
  %conv.i.i = zext i32 %163 to i64
  %sub.i.i = add nuw nsw i64 %conv.i.i, 4095
  %shr.i.i = lshr i64 %sub.i.i, 12
  %conv32.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i.i)
  %cmp.not72.i.i = icmp eq i32 %conv32.i.i, 0
  br i1 %cmp.not72.i.i, label %do.end31.i.i.while.end.i.i_crit_edge, label %do.end31.i.i.while.body.i.i_crit_edge

do.end31.i.i.while.body.i.i_crit_edge:            ; preds = %do.end31.i.i
  br label %while.body.i.i

do.end31.i.i.while.end.i.i_crit_edge:             ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end48.i.i.while.body.i.i_crit_edge, %do.end31.i.i.while.body.i.i_crit_edge
  %num_pages.073.i.i = phi i32 [ %dec.i.i, %if.end48.i.i.while.body.i.i_crit_edge ], [ %conv32.i.i, %do.end31.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %num_pages.073.i.i, -1
  %164 = ptrtoint ptr %datav.i255.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %datav.i255.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %165, i32 %dec.i.i
  %166 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool35.not.i.i = icmp eq ptr %167, null
  br i1 %tobool35.not.i.i, label %while.body.i.i.if.end39.i.i_crit_edge, label %if.then36.i.i

while.body.i.i.if.end39.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i

if.then36.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then36.i.i, %while.body.i.i.if.end39.i.i_crit_edge
  %169 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pagev.i259.i, align 4
  %arrayidx41.i.i = getelementptr ptr, ptr %170, i32 %dec.i.i
  %171 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx41.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %172, null
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end48.i.i_crit_edge, label %if.then43.i.i

if.end39.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %172, i32 noundef 0) #14
  %173 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pagev.i259.i, align 4
  %arrayidx47.i.i = getelementptr ptr, ptr %174, i32 %dec.i.i
  %175 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %arrayidx47.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end48.i.i_crit_edge
  %cmp.not.i252.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i252.i, label %if.end48.i.i.while.end.i.i_crit_edge, label %if.end48.i.i.while.body.i.i_crit_edge

if.end48.i.i.while.body.i.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end48.i.i.while.end.i.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end48.i.i.while.end.i.i_crit_edge, %do.end31.i.i.while.end.i.i_crit_edge
  %176 = ptrtoint ptr %mem_to_free.i253.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mem_to_free.i253.i, align 8
  call void @kfree(ptr noundef %177) #14
  %178 = ptrtoint ptr %mem_to_free.i253.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %mem_to_free.i253.i, align 8
  %179 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %pagev.i259.i, align 4
  %180 = ptrtoint ptr %datav.i255.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %datav.i255.i, align 8
  br label %cleanup175.i

if.end165.i:                                      ; preds = %do.end155.i
  %call166.i = call fastcc i32 @btrfsic_process_metablock(ptr noundef %call.i.i, ptr noundef nonnull %b.0.le.i.i, ptr noundef nonnull %tmp_next_block_ctx.i, i32 noundef 11, i32 noundef 1) #14
  %181 = ptrtoint ptr %mem_to_free.i253.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mem_to_free.i253.i, align 8
  %tobool.not.i254.i = icmp eq ptr %182, null
  br i1 %tobool.not.i254.i, label %if.end165.i.for.inc172.i_crit_edge, label %if.then.i257.i

if.end165.i.for.inc172.i_crit_edge:               ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc172.i

if.then.i257.i:                                   ; preds = %if.end165.i
  %183 = ptrtoint ptr %datav.i255.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %datav.i255.i, align 8
  %tobool1.not.i256.i = icmp eq ptr %184, null
  br i1 %tobool1.not.i256.i, label %do.body6.i258.i, label %do.body12.i261.i, !prof !438

do.body6.i258.i:                                  ; preds = %if.then.i257.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i261.i:                                 ; preds = %if.then.i257.i
  %185 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pagev.i259.i, align 4
  %tobool13.not.i260.i = icmp eq ptr %186, null
  br i1 %tobool13.not.i260.i, label %do.body23.i262.i, label %do.end31.i269.i, !prof !438

do.body23.i262.i:                                 ; preds = %do.body12.i261.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i269.i:                                  ; preds = %do.body12.i261.i
  %187 = ptrtoint ptr %len.i263.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %len.i263.i, align 8
  %conv.i264.i = zext i32 %188 to i64
  %sub.i265.i = add nuw nsw i64 %conv.i264.i, 4095
  %shr.i266.i = lshr i64 %sub.i265.i, 12
  %conv32.i267.i = trunc i64 %shr.i266.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i267.i)
  %cmp.not72.i268.i = icmp eq i32 %conv32.i267.i, 0
  br i1 %cmp.not72.i268.i, label %do.end31.i269.i.while.end.i283.i_crit_edge, label %do.end31.i269.i.while.body.i274.i_crit_edge

do.end31.i269.i.while.body.i274.i_crit_edge:      ; preds = %do.end31.i269.i
  br label %while.body.i274.i

do.end31.i269.i.while.end.i283.i_crit_edge:       ; preds = %do.end31.i269.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i283.i

while.body.i274.i:                                ; preds = %if.end48.i282.i.while.body.i274.i_crit_edge, %do.end31.i269.i.while.body.i274.i_crit_edge
  %num_pages.073.i270.i = phi i32 [ %dec.i271.i, %if.end48.i282.i.while.body.i274.i_crit_edge ], [ %conv32.i267.i, %do.end31.i269.i.while.body.i274.i_crit_edge ]
  %dec.i271.i = add nsw i32 %num_pages.073.i270.i, -1
  %189 = ptrtoint ptr %datav.i255.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %datav.i255.i, align 8
  %arrayidx.i272.i = getelementptr ptr, ptr %190, i32 %dec.i271.i
  %191 = ptrtoint ptr %arrayidx.i272.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i272.i, align 4
  %tobool35.not.i273.i = icmp eq ptr %192, null
  br i1 %tobool35.not.i273.i, label %while.body.i274.i.if.end39.i278.i_crit_edge, label %if.then36.i275.i

while.body.i274.i.if.end39.i278.i_crit_edge:      ; preds = %while.body.i274.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i278.i

if.then36.i275.i:                                 ; preds = %while.body.i274.i
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %arrayidx.i272.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %arrayidx.i272.i, align 4
  br label %if.end39.i278.i

if.end39.i278.i:                                  ; preds = %if.then36.i275.i, %while.body.i274.i.if.end39.i278.i_crit_edge
  %194 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pagev.i259.i, align 4
  %arrayidx41.i276.i = getelementptr ptr, ptr %195, i32 %dec.i271.i
  %196 = ptrtoint ptr %arrayidx41.i276.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx41.i276.i, align 4
  %tobool42.not.i277.i = icmp eq ptr %197, null
  br i1 %tobool42.not.i277.i, label %if.end39.i278.i.if.end48.i282.i_crit_edge, label %if.then43.i280.i

if.end39.i278.i.if.end48.i282.i_crit_edge:        ; preds = %if.end39.i278.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i282.i

if.then43.i280.i:                                 ; preds = %if.end39.i278.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %197, i32 noundef 0) #14
  %198 = ptrtoint ptr %pagev.i259.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pagev.i259.i, align 4
  %arrayidx47.i279.i = getelementptr ptr, ptr %199, i32 %dec.i271.i
  %200 = ptrtoint ptr %arrayidx47.i279.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %arrayidx47.i279.i, align 4
  br label %if.end48.i282.i

if.end48.i282.i:                                  ; preds = %if.then43.i280.i, %if.end39.i278.i.if.end48.i282.i_crit_edge
  %cmp.not.i281.i = icmp eq i32 %dec.i271.i, 0
  br i1 %cmp.not.i281.i, label %if.end48.i282.i.while.end.i283.i_crit_edge, label %if.end48.i282.i.while.body.i274.i_crit_edge

if.end48.i282.i.while.body.i274.i_crit_edge:      ; preds = %if.end48.i282.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i274.i

if.end48.i282.i.while.end.i283.i_crit_edge:       ; preds = %if.end48.i282.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i283.i

while.end.i283.i:                                 ; preds = %if.end48.i282.i.while.end.i283.i_crit_edge, %do.end31.i269.i.while.end.i283.i_crit_edge
  %201 = ptrtoint ptr %mem_to_free.i253.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mem_to_free.i253.i, align 8
  call void @kfree(ptr noundef %202) #14
  br label %for.inc172.i

for.inc172.i:                                     ; preds = %while.end.i283.i, %if.end165.i.for.inc172.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i) #14
  %inc173.i = add i32 %mirror_num.0363.i, 1
  %cmp94.not.i = icmp sgt i32 %inc173.i, %call82.i
  br i1 %cmp94.not.i, label %for.inc172.i.for.inc180.i_crit_edge, label %for.inc172.i.for.body96.i_crit_edge

for.inc172.i.for.body96.i_crit_edge:              ; preds = %for.inc172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body96.i

for.inc172.i.for.inc180.i_crit_edge:              ; preds = %for.inc172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc180.i

cleanup175.i:                                     ; preds = %while.end.i.i, %do.end162.i.cleanup175.i_crit_edge, %do.end103.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i106) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx.i) #14
  br label %btrfsic_process_superblock.exit.thread

for.inc180.i:                                     ; preds = %for.inc172.i.for.inc180.i_crit_edge, %if.end92.i.for.inc180.i_crit_edge
  %ret.6.ph.i = phi i32 [ %ret.3366.i, %if.end92.i.for.inc180.i_crit_edge ], [ %call166.i, %for.inc172.i.for.inc180.i_crit_edge ]
  %inc181.i = add nuw nsw i32 %pass.0365.i, 1
  %exitcond.not.i113 = icmp eq i32 %inc181.i, 3
  br i1 %exitcond.not.i113, label %for.inc180.i.btrfsic_process_superblock.exit_crit_edge, label %for.inc180.i.for.body45.i_crit_edge

for.inc180.i.for.body45.i_crit_edge:              ; preds = %for.inc180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body45.i

for.inc180.i.btrfsic_process_superblock.exit_crit_edge: ; preds = %for.inc180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_process_superblock.exit

btrfsic_process_superblock.exit.thread:           ; preds = %cleanup175.i, %do.end39.i, %cleanup.i, %for.end.btrfsic_process_superblock.exit.thread_crit_edge
  %retval.6.i.ph = phi i32 [ -12, %for.end.btrfsic_process_superblock.exit.thread_crit_edge ], [ -1, %cleanup175.i ], [ -1, %do.end39.i ], [ %call22.i, %cleanup.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %selected_dev_state.i) #14
  br label %if.then45

btrfsic_process_superblock.exit:                  ; preds = %for.inc180.i.btrfsic_process_superblock.exit_crit_edge, %sw.bb67.i.btrfsic_process_superblock.exit_crit_edge
  %ret.6.ph400.i = phi i32 [ %ret.6.ph.i, %for.inc180.i.btrfsic_process_superblock.exit_crit_edge ], [ %ret.3366.i, %sw.bb67.i.btrfsic_process_superblock.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i106) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %selected_dev_state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.ph400.i)
  %cmp44.not = icmp eq i32 %ret.6.ph400.i, 0
  br i1 %cmp44.not, label %if.end46, label %btrfsic_process_superblock.exit.if.then45_crit_edge

btrfsic_process_superblock.exit.if.then45_crit_edge: ; preds = %btrfsic_process_superblock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

if.then45:                                        ; preds = %btrfsic_process_superblock.exit.if.then45_crit_edge, %btrfsic_process_superblock.exit.thread
  %retval.6.i126 = phi i32 [ %retval.6.i.ph, %btrfsic_process_superblock.exit.thread ], [ %ret.6.ph400.i, %btrfsic_process_superblock.exit.if.then45_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @btrfsic_mutex) #14
  call void @btrfsic_unmount(ptr noundef %fs_devices)
  br label %cleanup57

if.end46:                                         ; preds = %btrfsic_process_superblock.exit
  %203 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %call.i.i, align 8
  %and48 = and i32 %204, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end51_crit_edge, label %do.end10.i

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.end10.i:                                       ; preds = %if.end46
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248) #17
  %205 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pn245.i = load ptr, ptr %all_blocks_list, align 4
  %cmp13.not246.i = icmp eq ptr %.pn245.i, %all_blocks_list
  br i1 %cmp13.not246.i, label %do.end10.i.if.end51_crit_edge, label %do.end10.i.for.body.i115_crit_edge

do.end10.i.for.body.i115_crit_edge:               ; preds = %do.end10.i
  br label %for.body.i115

do.end10.i.if.end51_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.i115:                                    ; preds = %do.end105.i.for.body.i115_crit_edge, %do.end10.i.for.body.i115_crit_edge
  %.pn247.i = phi ptr [ %.pn.i, %do.end105.i.for.body.i115_crit_edge ], [ %.pn245.i, %do.end10.i.for.body.i115_crit_edge ]
  %is_superblock.i.i = getelementptr i8, ptr %.pn247.i, i32 -64
  %206 = ptrtoint ptr %is_superblock.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load.i.i = load i8, ptr %is_superblock.i.i, align 4
  %207 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i.i114 = icmp eq i8 %207, 0
  br i1 %tobool.not.i.i114, label %if.else14.i.i, label %land.lhs.true.i.i117

land.lhs.true.i.i117:                             ; preds = %for.body.i115
  %208 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %latest_superblock, align 8
  %dev_bytenr.i.i116 = getelementptr inbounds %struct.btrfsic_block, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %dev_bytenr.i.i116 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %dev_bytenr.i.i116, align 8
  %dev_bytenr1.i.i = getelementptr i8, ptr %.pn247.i, i32 -52
  %212 = ptrtoint ptr %dev_bytenr1.i.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %dev_bytenr1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %211, i64 %213)
  %cmp.i.i = icmp eq i64 %211, %213
  br i1 %cmp.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i117.if.else.thread.i.i_crit_edge

land.lhs.true.i.i117.if.else.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i117
  %dev_state.i.i118 = getelementptr inbounds %struct.btrfsic_block, ptr %209, i32 0, i32 3
  %214 = ptrtoint ptr %dev_state.i.i118 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev_state.i.i118, align 4
  %bdev.i.i119 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %bdev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %bdev.i.i119, align 4
  %dev_state4.i.i = getelementptr i8, ptr %.pn247.i, i32 -56
  %218 = ptrtoint ptr %dev_state4.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev_state4.i.i, align 4
  %bdev5.i.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %bdev5.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %bdev5.i.i, align 4
  %cmp6.i.i = icmp eq ptr %217, %221
  br i1 %cmp6.i.i, label %land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge, label %land.lhs.true2.i.i.if.else.thread.i.i_crit_edge

land.lhs.true2.i.i.if.else.thread.i.i_crit_edge:  ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i.i

land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit.i

if.else.thread.i.i:                               ; preds = %land.lhs.true2.i.i.if.else.thread.i.i_crit_edge, %land.lhs.true.i.i117.if.else.thread.i.i_crit_edge
  br label %btrfsic_get_block_type.exit.i

if.else14.i.i:                                    ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool18.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %..i.i = select i1 %tobool18.not.i.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit.i

btrfsic_get_block_type.exit.i:                    ; preds = %if.else14.i.i, %if.else.thread.i.i, %land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 83, %land.lhs.true2.i.i.btrfsic_get_block_type.exit.i_crit_edge ], [ %..i.i, %if.else14.i.i ], [ 115, %if.else.thread.i.i ]
  %logical_bytenr.i = getelementptr i8, ptr %.pn247.i, i32 -44
  %222 = ptrtoint ptr %logical_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %logical_bytenr.i, align 8
  %dev_state.i = getelementptr i8, ptr %.pn247.i, i32 -56
  %224 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev_state.i, align 4
  %bdev.i120 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %bdev.i120 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %bdev.i120, align 4
  %dev_bytenr.i121 = getelementptr i8, ptr %.pn247.i, i32 -52
  %228 = ptrtoint ptr %dev_bytenr.i121 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %dev_bytenr.i121, align 8
  %mirror_num.i = getelementptr i8, ptr %.pn247.i, i32 -60
  %230 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mirror_num.i, align 8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %retval.0.i.i, i64 noundef %223, ptr noundef %227, i64 noundef %229, i32 noundef %231) #17
  %ref_to_list.i = getelementptr i8, ptr %.pn247.i, i32 8
  %232 = ptrtoint ptr %ref_to_list.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pn157239.i = load ptr, ptr %ref_to_list.i, align 4
  %cmp28.not240.i = icmp eq ptr %.pn157239.i, %ref_to_list.i
  br i1 %cmp28.not240.i, label %btrfsic_get_block_type.exit.i.for.end.i_crit_edge, label %btrfsic_get_block_type.exit.i.do.end35.i_crit_edge

btrfsic_get_block_type.exit.i.do.end35.i_crit_edge: ; preds = %btrfsic_get_block_type.exit.i
  br label %do.end35.i

btrfsic_get_block_type.exit.i.for.end.i_crit_edge: ; preds = %btrfsic_get_block_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.end35.i:                                       ; preds = %btrfsic_get_block_type.exit198.i.do.end35.i_crit_edge, %btrfsic_get_block_type.exit.i.do.end35.i_crit_edge
  %.pn157241.i = phi ptr [ %.pn157.i, %btrfsic_get_block_type.exit198.i.do.end35.i_crit_edge ], [ %.pn157239.i, %btrfsic_get_block_type.exit.i.do.end35.i_crit_edge ]
  %233 = ptrtoint ptr %is_superblock.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load.i160.i = load i8, ptr %is_superblock.i.i, align 4
  %234 = and i8 %bf.load.i160.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.not.i161.i = icmp eq i8 %234, 0
  br i1 %tobool.not.i161.i, label %if.else14.i176.i, label %land.lhs.true.i166.i

land.lhs.true.i166.i:                             ; preds = %do.end35.i
  %235 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %latest_superblock, align 8
  %dev_bytenr.i163.i = getelementptr inbounds %struct.btrfsic_block, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %dev_bytenr.i163.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %dev_bytenr.i163.i, align 8
  %239 = ptrtoint ptr %dev_bytenr.i121 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %dev_bytenr.i121, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %238, i64 %240)
  %cmp.i165.i = icmp eq i64 %238, %240
  br i1 %cmp.i165.i, label %land.lhs.true2.i172.i, label %land.lhs.true.i166.i.if.else.thread.i173.i_crit_edge

land.lhs.true.i166.i.if.else.thread.i173.i_crit_edge: ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i173.i

land.lhs.true2.i172.i:                            ; preds = %land.lhs.true.i166.i
  %dev_state.i167.i = getelementptr inbounds %struct.btrfsic_block, ptr %236, i32 0, i32 3
  %241 = ptrtoint ptr %dev_state.i167.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev_state.i167.i, align 4
  %bdev.i168.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %bdev.i168.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bdev.i168.i, align 4
  %245 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev_state.i, align 4
  %bdev5.i170.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %bdev5.i170.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %bdev5.i170.i, align 4
  %cmp6.i171.i = icmp eq ptr %244, %248
  br i1 %cmp6.i171.i, label %land.lhs.true2.i172.i.btrfsic_get_block_type.exit178.i_crit_edge, label %land.lhs.true2.i172.i.if.else.thread.i173.i_crit_edge

land.lhs.true2.i172.i.if.else.thread.i173.i_crit_edge: ; preds = %land.lhs.true2.i172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i173.i

land.lhs.true2.i172.i.btrfsic_get_block_type.exit178.i_crit_edge: ; preds = %land.lhs.true2.i172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit178.i

if.else.thread.i173.i:                            ; preds = %land.lhs.true2.i172.i.if.else.thread.i173.i_crit_edge, %land.lhs.true.i166.i.if.else.thread.i173.i_crit_edge
  br label %btrfsic_get_block_type.exit178.i

if.else14.i176.i:                                 ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i160.i)
  %tobool18.not.i174.i = icmp sgt i8 %bf.load.i160.i, -1
  %..i175.i = select i1 %tobool18.not.i174.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit178.i

btrfsic_get_block_type.exit178.i:                 ; preds = %if.else14.i176.i, %if.else.thread.i173.i, %land.lhs.true2.i172.i.btrfsic_get_block_type.exit178.i_crit_edge
  %retval.0.i177.i = phi i32 [ 83, %land.lhs.true2.i172.i.btrfsic_get_block_type.exit178.i_crit_edge ], [ %..i175.i, %if.else14.i176.i ], [ 115, %if.else.thread.i173.i ]
  %249 = ptrtoint ptr %logical_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %logical_bytenr.i, align 8
  %251 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev_state.i, align 4
  %bdev41.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %bdev41.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %bdev41.i, align 4
  %255 = ptrtoint ptr %dev_bytenr.i121 to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %dev_bytenr.i121, align 8
  %257 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %mirror_num.i, align 8
  %ref_cnt.i = getelementptr i8, ptr %.pn157241.i, i32 -4
  %259 = ptrtoint ptr %ref_cnt.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ref_cnt.i, align 4
  %block_ref_to.i = getelementptr i8, ptr %.pn157241.i, i32 24
  %261 = ptrtoint ptr %block_ref_to.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %block_ref_to.i, align 8
  %is_superblock.i179.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %is_superblock.i179.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %bf.load.i180.i = load i8, ptr %is_superblock.i179.i, align 4
  %264 = and i8 %bf.load.i180.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i181.i = icmp eq i8 %264, 0
  br i1 %tobool.not.i181.i, label %if.else14.i196.i, label %land.lhs.true.i186.i

land.lhs.true.i186.i:                             ; preds = %btrfsic_get_block_type.exit178.i
  %265 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %latest_superblock, align 8
  %dev_bytenr.i183.i = getelementptr inbounds %struct.btrfsic_block, ptr %266, i32 0, i32 4
  %267 = ptrtoint ptr %dev_bytenr.i183.i to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %dev_bytenr.i183.i, align 8
  %dev_bytenr1.i184.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 4
  %269 = ptrtoint ptr %dev_bytenr1.i184.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %dev_bytenr1.i184.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %268, i64 %270)
  %cmp.i185.i = icmp eq i64 %268, %270
  br i1 %cmp.i185.i, label %land.lhs.true2.i192.i, label %land.lhs.true.i186.i.if.else.thread.i193.i_crit_edge

land.lhs.true.i186.i.if.else.thread.i193.i_crit_edge: ; preds = %land.lhs.true.i186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i193.i

land.lhs.true2.i192.i:                            ; preds = %land.lhs.true.i186.i
  %dev_state.i187.i = getelementptr inbounds %struct.btrfsic_block, ptr %266, i32 0, i32 3
  %271 = ptrtoint ptr %dev_state.i187.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev_state.i187.i, align 4
  %bdev.i188.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %bdev.i188.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %bdev.i188.i, align 4
  %dev_state4.i189.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 3
  %275 = ptrtoint ptr %dev_state4.i189.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev_state4.i189.i, align 4
  %bdev5.i190.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %bdev5.i190.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %bdev5.i190.i, align 4
  %cmp6.i191.i = icmp eq ptr %274, %278
  br i1 %cmp6.i191.i, label %land.lhs.true2.i192.i.btrfsic_get_block_type.exit198.i_crit_edge, label %land.lhs.true2.i192.i.if.else.thread.i193.i_crit_edge

land.lhs.true2.i192.i.if.else.thread.i193.i_crit_edge: ; preds = %land.lhs.true2.i192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i193.i

land.lhs.true2.i192.i.btrfsic_get_block_type.exit198.i_crit_edge: ; preds = %land.lhs.true2.i192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit198.i

if.else.thread.i193.i:                            ; preds = %land.lhs.true2.i192.i.if.else.thread.i193.i_crit_edge, %land.lhs.true.i186.i.if.else.thread.i193.i_crit_edge
  br label %btrfsic_get_block_type.exit198.i

if.else14.i196.i:                                 ; preds = %btrfsic_get_block_type.exit178.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i180.i)
  %tobool18.not.i194.i = icmp sgt i8 %bf.load.i180.i, -1
  %..i195.i = select i1 %tobool18.not.i194.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit198.i

btrfsic_get_block_type.exit198.i:                 ; preds = %if.else14.i196.i, %if.else.thread.i193.i, %land.lhs.true2.i192.i.btrfsic_get_block_type.exit198.i_crit_edge
  %retval.0.i197.i = phi i32 [ 83, %land.lhs.true2.i192.i.btrfsic_get_block_type.exit198.i_crit_edge ], [ %..i195.i, %if.else14.i196.i ], [ 115, %if.else.thread.i193.i ]
  %logical_bytenr47.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 5
  %279 = ptrtoint ptr %logical_bytenr47.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %logical_bytenr47.i, align 8
  %dev_state49.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 3
  %281 = ptrtoint ptr %dev_state49.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev_state49.i, align 4
  %bdev50.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %bdev50.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %bdev50.i, align 4
  %dev_bytenr52.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 4
  %285 = ptrtoint ptr %dev_bytenr52.i to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %dev_bytenr52.i, align 8
  %mirror_num54.i = getelementptr inbounds %struct.btrfsic_block, ptr %262, i32 0, i32 2
  %287 = ptrtoint ptr %mirror_num54.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %mirror_num54.i, align 8
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, i32 noundef %retval.0.i177.i, i64 noundef %250, ptr noundef %254, i64 noundef %256, i32 noundef %258, i32 noundef %260, i32 noundef %retval.0.i197.i, i64 noundef %280, ptr noundef %284, i64 noundef %286, i32 noundef %288) #17
  %289 = ptrtoint ptr %.pn157241.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %.pn157.i = load ptr, ptr %.pn157241.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn157.i, %ref_to_list.i
  br i1 %cmp28.not.i, label %btrfsic_get_block_type.exit198.i.for.end.i_crit_edge, label %btrfsic_get_block_type.exit198.i.do.end35.i_crit_edge

btrfsic_get_block_type.exit198.i.do.end35.i_crit_edge: ; preds = %btrfsic_get_block_type.exit198.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35.i

btrfsic_get_block_type.exit198.i.for.end.i_crit_edge: ; preds = %btrfsic_get_block_type.exit198.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %btrfsic_get_block_type.exit198.i.for.end.i_crit_edge, %btrfsic_get_block_type.exit.i.for.end.i_crit_edge
  %ref_from_list.i = getelementptr i8, ptr %.pn247.i, i32 16
  %290 = ptrtoint ptr %ref_from_list.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %.pn158242.i = load ptr, ptr %ref_from_list.i, align 4
  %cmp67.not243.i = icmp eq ptr %.pn158242.i, %ref_from_list.i
  br i1 %cmp67.not243.i, label %for.end.i.do.end105.i_crit_edge, label %for.end.i.do.end74.i_crit_edge

for.end.i.do.end74.i_crit_edge:                   ; preds = %for.end.i
  br label %do.end74.i

for.end.i.do.end105.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end105.i

do.end74.i:                                       ; preds = %btrfsic_get_block_type.exit238.i.do.end74.i_crit_edge, %for.end.i.do.end74.i_crit_edge
  %.pn158244.i = phi ptr [ %.pn158.i, %btrfsic_get_block_type.exit238.i.do.end74.i_crit_edge ], [ %.pn158242.i, %for.end.i.do.end74.i_crit_edge ]
  %291 = ptrtoint ptr %is_superblock.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load.i200.i = load i8, ptr %is_superblock.i.i, align 4
  %292 = and i8 %bf.load.i200.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool.not.i201.i = icmp eq i8 %292, 0
  br i1 %tobool.not.i201.i, label %if.else14.i216.i, label %land.lhs.true.i206.i

land.lhs.true.i206.i:                             ; preds = %do.end74.i
  %293 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %latest_superblock, align 8
  %dev_bytenr.i203.i = getelementptr inbounds %struct.btrfsic_block, ptr %294, i32 0, i32 4
  %295 = ptrtoint ptr %dev_bytenr.i203.i to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %dev_bytenr.i203.i, align 8
  %297 = ptrtoint ptr %dev_bytenr.i121 to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %dev_bytenr.i121, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %296, i64 %298)
  %cmp.i205.i = icmp eq i64 %296, %298
  br i1 %cmp.i205.i, label %land.lhs.true2.i212.i, label %land.lhs.true.i206.i.if.else.thread.i213.i_crit_edge

land.lhs.true.i206.i.if.else.thread.i213.i_crit_edge: ; preds = %land.lhs.true.i206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i213.i

land.lhs.true2.i212.i:                            ; preds = %land.lhs.true.i206.i
  %dev_state.i207.i = getelementptr inbounds %struct.btrfsic_block, ptr %294, i32 0, i32 3
  %299 = ptrtoint ptr %dev_state.i207.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev_state.i207.i, align 4
  %bdev.i208.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %bdev.i208.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %bdev.i208.i, align 4
  %303 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev_state.i, align 4
  %bdev5.i210.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %bdev5.i210.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %bdev5.i210.i, align 4
  %cmp6.i211.i = icmp eq ptr %302, %306
  br i1 %cmp6.i211.i, label %land.lhs.true2.i212.i.btrfsic_get_block_type.exit218.i_crit_edge, label %land.lhs.true2.i212.i.if.else.thread.i213.i_crit_edge

land.lhs.true2.i212.i.if.else.thread.i213.i_crit_edge: ; preds = %land.lhs.true2.i212.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i213.i

land.lhs.true2.i212.i.btrfsic_get_block_type.exit218.i_crit_edge: ; preds = %land.lhs.true2.i212.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit218.i

if.else.thread.i213.i:                            ; preds = %land.lhs.true2.i212.i.if.else.thread.i213.i_crit_edge, %land.lhs.true.i206.i.if.else.thread.i213.i_crit_edge
  br label %btrfsic_get_block_type.exit218.i

if.else14.i216.i:                                 ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i200.i)
  %tobool18.not.i214.i = icmp sgt i8 %bf.load.i200.i, -1
  %..i215.i = select i1 %tobool18.not.i214.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit218.i

btrfsic_get_block_type.exit218.i:                 ; preds = %if.else14.i216.i, %if.else.thread.i213.i, %land.lhs.true2.i212.i.btrfsic_get_block_type.exit218.i_crit_edge
  %retval.0.i217.i = phi i32 [ 83, %land.lhs.true2.i212.i.btrfsic_get_block_type.exit218.i_crit_edge ], [ %..i215.i, %if.else14.i216.i ], [ 115, %if.else.thread.i213.i ]
  %307 = ptrtoint ptr %logical_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %logical_bytenr.i, align 8
  %309 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev_state.i, align 4
  %bdev80.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %bdev80.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %bdev80.i, align 4
  %313 = ptrtoint ptr %dev_bytenr.i121 to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %dev_bytenr.i121, align 8
  %315 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %mirror_num.i, align 8
  %ref_cnt83.i = getelementptr i8, ptr %.pn158244.i, i32 -12
  %317 = ptrtoint ptr %ref_cnt83.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %ref_cnt83.i, align 4
  %block_ref_from.i = getelementptr i8, ptr %.pn158244.i, i32 20
  %319 = ptrtoint ptr %block_ref_from.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %block_ref_from.i, align 4
  %is_superblock.i219.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %is_superblock.i219.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %bf.load.i220.i = load i8, ptr %is_superblock.i219.i, align 4
  %322 = and i8 %bf.load.i220.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not.i221.i = icmp eq i8 %322, 0
  br i1 %tobool.not.i221.i, label %if.else14.i236.i, label %land.lhs.true.i226.i

land.lhs.true.i226.i:                             ; preds = %btrfsic_get_block_type.exit218.i
  %323 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %latest_superblock, align 8
  %dev_bytenr.i223.i = getelementptr inbounds %struct.btrfsic_block, ptr %324, i32 0, i32 4
  %325 = ptrtoint ptr %dev_bytenr.i223.i to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %dev_bytenr.i223.i, align 8
  %dev_bytenr1.i224.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 4
  %327 = ptrtoint ptr %dev_bytenr1.i224.i to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %dev_bytenr1.i224.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %326, i64 %328)
  %cmp.i225.i = icmp eq i64 %326, %328
  br i1 %cmp.i225.i, label %land.lhs.true2.i232.i, label %land.lhs.true.i226.i.if.else.thread.i233.i_crit_edge

land.lhs.true.i226.i.if.else.thread.i233.i_crit_edge: ; preds = %land.lhs.true.i226.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i233.i

land.lhs.true2.i232.i:                            ; preds = %land.lhs.true.i226.i
  %dev_state.i227.i = getelementptr inbounds %struct.btrfsic_block, ptr %324, i32 0, i32 3
  %329 = ptrtoint ptr %dev_state.i227.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev_state.i227.i, align 4
  %bdev.i228.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %bdev.i228.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %bdev.i228.i, align 4
  %dev_state4.i229.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 3
  %333 = ptrtoint ptr %dev_state4.i229.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev_state4.i229.i, align 4
  %bdev5.i230.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %bdev5.i230.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %bdev5.i230.i, align 4
  %cmp6.i231.i = icmp eq ptr %332, %336
  br i1 %cmp6.i231.i, label %land.lhs.true2.i232.i.btrfsic_get_block_type.exit238.i_crit_edge, label %land.lhs.true2.i232.i.if.else.thread.i233.i_crit_edge

land.lhs.true2.i232.i.if.else.thread.i233.i_crit_edge: ; preds = %land.lhs.true2.i232.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i233.i

land.lhs.true2.i232.i.btrfsic_get_block_type.exit238.i_crit_edge: ; preds = %land.lhs.true2.i232.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit238.i

if.else.thread.i233.i:                            ; preds = %land.lhs.true2.i232.i.if.else.thread.i233.i_crit_edge, %land.lhs.true.i226.i.if.else.thread.i233.i_crit_edge
  br label %btrfsic_get_block_type.exit238.i

if.else14.i236.i:                                 ; preds = %btrfsic_get_block_type.exit218.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i220.i)
  %tobool18.not.i234.i = icmp sgt i8 %bf.load.i220.i, -1
  %..i235.i = select i1 %tobool18.not.i234.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit238.i

btrfsic_get_block_type.exit238.i:                 ; preds = %if.else14.i236.i, %if.else.thread.i233.i, %land.lhs.true2.i232.i.btrfsic_get_block_type.exit238.i_crit_edge
  %retval.0.i237.i = phi i32 [ 83, %land.lhs.true2.i232.i.btrfsic_get_block_type.exit238.i_crit_edge ], [ %..i235.i, %if.else14.i236.i ], [ 115, %if.else.thread.i233.i ]
  %logical_bytenr87.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 5
  %337 = ptrtoint ptr %logical_bytenr87.i to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %logical_bytenr87.i, align 8
  %dev_state89.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 3
  %339 = ptrtoint ptr %dev_state89.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev_state89.i, align 4
  %bdev90.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %bdev90.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %bdev90.i, align 4
  %dev_bytenr92.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 4
  %343 = ptrtoint ptr %dev_bytenr92.i to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %dev_bytenr92.i, align 8
  %mirror_num94.i = getelementptr inbounds %struct.btrfsic_block, ptr %320, i32 0, i32 2
  %345 = ptrtoint ptr %mirror_num94.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %mirror_num94.i, align 8
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %retval.0.i217.i, i64 noundef %308, ptr noundef %312, i64 noundef %314, i32 noundef %316, i32 noundef %318, i32 noundef %retval.0.i237.i, i64 noundef %338, ptr noundef %342, i64 noundef %344, i32 noundef %346) #17
  %347 = ptrtoint ptr %.pn158244.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %.pn158.i = load ptr, ptr %.pn158244.i, align 4
  %cmp67.not.i = icmp eq ptr %.pn158.i, %ref_from_list.i
  br i1 %cmp67.not.i, label %btrfsic_get_block_type.exit238.i.do.end105.i_crit_edge, label %btrfsic_get_block_type.exit238.i.do.end74.i_crit_edge

btrfsic_get_block_type.exit238.i.do.end74.i_crit_edge: ; preds = %btrfsic_get_block_type.exit238.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end74.i

btrfsic_get_block_type.exit238.i.do.end105.i_crit_edge: ; preds = %btrfsic_get_block_type.exit238.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end105.i

do.end105.i:                                      ; preds = %btrfsic_get_block_type.exit238.i.do.end105.i_crit_edge, %for.end.i.do.end105.i_crit_edge
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #17
  %348 = ptrtoint ptr %.pn247.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %.pn.i = load ptr, ptr %.pn247.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn.i, %all_blocks_list
  br i1 %cmp13.not.i, label %do.end105.i.if.end51_crit_edge, label %do.end105.i.for.body.i115_crit_edge

do.end105.i.for.body.i115_crit_edge:              ; preds = %do.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i115

do.end105.i.if.end51_crit_edge:                   ; preds = %do.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end51:                                         ; preds = %do.end105.i.if.end51_crit_edge, %do.end10.i.if.end51_crit_edge, %if.end46.if.end51_crit_edge
  %349 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %call.i.i, align 8
  %and53 = and i32 %350, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end56_crit_edge, label %if.then55

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %351 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %latest_superblock, align 8
  call fastcc void @btrfsic_dump_tree_sub(ptr noundef %call.i.i, ptr noundef %352, i32 noundef 0) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51.if.end56_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @btrfsic_mutex) #14
  br label %cleanup57

cleanup57:                                        ; preds = %if.end56, %if.then45, %cleanup, %if.end11.cleanup57_crit_edge, %do.end7, %do.end
  %retval.2 = phi i32 [ -12, %cleanup ], [ %retval.6.i126, %if.then45 ], [ 0, %if.end56 ], [ -1, %do.end7 ], [ -1, %do.end ], [ -12, %if.end11.cleanup57_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfsic_unmount(ptr noundef readonly %fs_devices) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 13
  %.b = load i1, ptr @btrfsic_is_initialized, align 4
  br i1 %.b, label %if.end, label %entry.cleanup86_crit_edge

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup86

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @btrfsic_mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %device.0145 = load ptr, ptr %devices, align 4
  %cmp.not146 = icmp eq ptr %device.0145, %devices
  br i1 %cmp.not146, label %if.end.do.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %device.0148 = phi ptr [ %device.0, %cleanup.for.body_crit_edge ], [ %device.0145, %if.end.for.body_crit_edge ]
  %state.0147 = phi ptr [ %state.2, %cleanup.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device.0148, i32 0, i32 7
  %1 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device.0148, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_dev, align 4
  %and.i = and i32 %6, 255
  %add.ptr.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %and.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %.pn.in.i = phi ptr [ %add.ptr.i, %if.end4 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %add.ptr.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %bdev.i = getelementptr i8, ptr %.pn.i, i32 -8
  %8 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev.i, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_dev.i, align 4
  %cmp5.i = icmp eq i32 %11, %6
  br i1 %cmp5.i, label %btrfsic_dev_state_hashtable_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

btrfsic_dev_state_hashtable_lookup.exit:          ; preds = %for.body.i
  %ds.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %cmp6.not = icmp eq ptr %ds.0.le.i, null
  br i1 %cmp6.not, label %btrfsic_dev_state_hashtable_lookup.exit.cleanup_crit_edge, label %if.then7

btrfsic_dev_state_hashtable_lookup.exit.cleanup_crit_edge: ; preds = %btrfsic_dev_state_hashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %btrfsic_dev_state_hashtable_lookup.exit
  %state8 = getelementptr i8, ptr %.pn.i, i32 -4
  %12 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state8, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.lor.rhs.i_crit_edge

if.then7.lor.rhs.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

if.end.i.i.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end.i.i.i, %if.then7.lor.rhs.i_crit_edge
  %20 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %ds.0.le.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ds.0.le.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 537990448, i32 %23)
  %cmp1.not.i = icmp eq i32 %23, 537990448
  br i1 %cmp1.not.i, label %btrfsic_dev_state_free.exit, label %do.body4.i, !prof !439

do.body4.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !454
  unreachable

btrfsic_dev_state_free.exit:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %ds.0.le.i) #14
  br label %cleanup

cleanup:                                          ; preds = %btrfsic_dev_state_free.exit, %btrfsic_dev_state_hashtable_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %state.2 = phi ptr [ %state.0147, %lor.lhs.false.cleanup_crit_edge ], [ %state.0147, %for.body.cleanup_crit_edge ], [ %13, %btrfsic_dev_state_free.exit ], [ %state.0147, %btrfsic_dev_state_hashtable_lookup.exit.cleanup_crit_edge ], [ %state.0147, %for.cond.i.cleanup_crit_edge ]
  %24 = ptrtoint ptr %device.0148 to i32
  call void @__asan_load4_noabort(i32 %24)
  %device.0 = load ptr, ptr %device.0148, align 4
  %cmp.not = icmp eq ptr %device.0, %devices
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup
  %cmp15 = icmp eq ptr %state.2, null
  br i1 %cmp15, label %for.end.do.end_crit_edge, label %if.end19

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  tail call void @mutex_unlock(ptr noundef nonnull @btrfsic_mutex) #14
  br label %cleanup86

if.end19:                                         ; preds = %for.end
  %all_blocks_list = getelementptr inbounds %struct.btrfsic_state, ptr %state.2, i32 0, i32 2
  %25 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %all_blocks_list, align 8
  %cmp31.not157 = icmp eq ptr %26, %all_blocks_list
  br i1 %cmp31.not157, label %if.end19.for.end85_crit_edge, label %for.body33.lr.ph

if.end19.for.end85_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end85

for.body33.lr.ph:                                 ; preds = %if.end19
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %state.2, i32 0, i32 7
  br label %for.body33

for.body33:                                       ; preds = %if.end78.for.body33_crit_edge, %for.body33.lr.ph
  %.pn.in158 = phi ptr [ %26, %for.body33.lr.ph ], [ %.pn162, %if.end78.for.body33_crit_edge ]
  %b_all.0161 = getelementptr i8, ptr %.pn.in158, i32 -68
  %27 = ptrtoint ptr %.pn.in158 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn162 = load ptr, ptr %.pn.in158, align 4
  %ref_to_list = getelementptr i8, ptr %.pn.in158, i32 8
  %28 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ref_to_list, align 4
  %cmp46.not151 = icmp eq ptr %29, %ref_to_list
  br i1 %cmp46.not151, label %for.body33.for.end62_crit_edge, label %for.body33.for.body48_crit_edge

for.body33.for.body48_crit_edge:                  ; preds = %for.body33
  br label %for.body48

for.body33.for.end62_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end62

for.body48:                                       ; preds = %for.inc56.for.body48_crit_edge, %for.body33.for.body48_crit_edge
  %.pn125.in152 = phi ptr [ %.pn125154, %for.inc56.for.body48_crit_edge ], [ %29, %for.body33.for.body48_crit_edge ]
  %l.0153 = getelementptr i8, ptr %.pn125.in152, i32 -8
  %30 = ptrtoint ptr %.pn125.in152 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn125154 = load ptr, ptr %.pn125.in152, align 8
  %31 = ptrtoint ptr %state.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.2, align 8
  %and = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %for.body48.if.end51_crit_edge, label %if.then50

for.body48.if.end51_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then50:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @btrfsic_print_rem_link(ptr noundef nonnull %state.2, ptr noundef %l.0153)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %for.body48.if.end51_crit_edge
  %ref_cnt = getelementptr i8, ptr %.pn125.in152, i32 -4
  %33 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp53 = icmp eq i32 %dec, 0
  br i1 %cmp53, label %if.then54, label %if.end51.for.inc56_crit_edge

if.end51.for.inc56_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc56

if.then54:                                        ; preds = %if.end51
  %cmp.i128 = icmp eq ptr %l.0153, null
  br i1 %cmp.i128, label %if.then54.btrfsic_block_link_free.exit_crit_edge, label %lor.rhs.i130

if.then54.btrfsic_block_link_free.exit_crit_edge: ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_link_free.exit

lor.rhs.i130:                                     ; preds = %if.then54
  %35 = ptrtoint ptr %l.0153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %l.0153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 285673479, i32 %36)
  %cmp1.not.i129 = icmp eq i32 %36, 285673479
  br i1 %cmp1.not.i129, label %lor.rhs.i130.btrfsic_block_link_free.exit_crit_edge, label %do.body4.i131, !prof !439

lor.rhs.i130.btrfsic_block_link_free.exit_crit_edge: ; preds = %lor.rhs.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_link_free.exit

do.body4.i131:                                    ; preds = %lor.rhs.i130
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #14, !srcloc !441
  unreachable

btrfsic_block_link_free.exit:                     ; preds = %lor.rhs.i130.btrfsic_block_link_free.exit_crit_edge, %if.then54.btrfsic_block_link_free.exit_crit_edge
  tail call void @kfree(ptr noundef %l.0153) #14
  br label %for.inc56

for.inc56:                                        ; preds = %btrfsic_block_link_free.exit, %if.end51.for.inc56_crit_edge
  %cmp46.not = icmp eq ptr %.pn125154, %ref_to_list
  br i1 %cmp46.not, label %for.inc56.for.end62_crit_edge, label %for.inc56.for.body48_crit_edge

for.inc56.for.body48_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body48

for.inc56.for.end62_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end62

for.end62:                                        ; preds = %for.inc56.for.end62_crit_edge, %for.body33.for.end62_crit_edge
  %is_iodone = getelementptr i8, ptr %.pn.in158, i32 -64
  %37 = ptrtoint ptr %is_iodone to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %is_iodone, align 4
  %38 = and i8 %bf.load, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %do.end73, label %if.then70

if.then70:                                        ; preds = %for.end62
  %cmp.i132 = icmp eq ptr %b_all.0161, null
  br i1 %cmp.i132, label %if.then70.btrfsic_block_free.exit_crit_edge, label %lor.rhs.i134

if.then70.btrfsic_block_free.exit_crit_edge:      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_free.exit

lor.rhs.i134:                                     ; preds = %if.then70
  %40 = ptrtoint ptr %b_all.0161 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_all.0161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 340332625, i32 %41)
  %cmp1.not.i133 = icmp eq i32 %41, 340332625
  br i1 %cmp1.not.i133, label %lor.rhs.i134.btrfsic_block_free.exit_crit_edge, label %do.body4.i135, !prof !439

lor.rhs.i134.btrfsic_block_free.exit_crit_edge:   ; preds = %lor.rhs.i134
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_free.exit

do.body4.i135:                                    ; preds = %lor.rhs.i134
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #14, !srcloc !446
  unreachable

btrfsic_block_free.exit:                          ; preds = %lor.rhs.i134.btrfsic_block_free.exit_crit_edge, %if.then70.btrfsic_block_free.exit_crit_edge
  tail call void @kfree(ptr noundef %b_all.0161) #14
  br label %if.end78

do.end73:                                         ; preds = %for.end62
  %42 = ptrtoint ptr %is_iodone to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %is_iodone, align 4
  %43 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end73
  %44 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dev_bytenr.i, align 8
  %dev_bytenr1.i = getelementptr i8, ptr %.pn.in158, i32 -52
  %48 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp.i136 = icmp eq i64 %47, %49
  br i1 %cmp.i136, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_state.i, align 4
  %bdev.i137 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bdev.i137 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i137, align 4
  %dev_state4.i = getelementptr i8, ptr %.pn.in158, i32 -56
  %54 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_state4.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %53, %57
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i138 = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %logical_bytenr = getelementptr i8, ptr %.pn.in158, i32 -44
  %58 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %logical_bytenr, align 8
  %dev_state = getelementptr i8, ptr %.pn.in158, i32 -56
  %60 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_state, align 4
  %bdev76 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %bdev76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bdev76, align 4
  %dev_bytenr = getelementptr i8, ptr %.pn.in158, i32 -52
  %64 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %dev_bytenr, align 8
  %mirror_num = getelementptr i8, ptr %.pn.in158, i32 -60
  %66 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mirror_num, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i138, i64 noundef %59, ptr noundef %63, i64 noundef %65, i32 noundef %67) #17
  br label %if.end78

if.end78:                                         ; preds = %btrfsic_get_block_type.exit, %btrfsic_block_free.exit
  %cmp31.not = icmp eq ptr %.pn162, %all_blocks_list
  br i1 %cmp31.not, label %if.end78.for.end85_crit_edge, label %if.end78.for.body33_crit_edge

if.end78.for.body33_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33

if.end78.for.end85_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end85

for.end85:                                        ; preds = %if.end78.for.end85_crit_edge, %if.end19.for.end85_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @btrfsic_mutex) #14
  tail call void @kvfree(ptr noundef nonnull %state.2) #14
  br label %cleanup86

cleanup86:                                        ; preds = %for.end85, %do.end, %entry.cleanup86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfsic_print_rem_link(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %l) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cnt = getelementptr inbounds %struct.btrfsic_block_link, ptr %l, i32 0, i32 1
  %0 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_cnt, align 4
  %block_ref_from = getelementptr inbounds %struct.btrfsic_block_link, ptr %l, i32 0, i32 6
  %2 = ptrtoint ptr %block_ref_from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_ref_from, align 4
  %is_superblock.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %6 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dev_bytenr.i, align 8
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i = icmp eq i64 %9, %11
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i, align 4
  %dev_state4.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_state4.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %15, %19
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %logical_bytenr, align 8
  %dev_state = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_state, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dev_bytenr, align 8
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mirror_num, align 8
  %block_ref_to = getelementptr inbounds %struct.btrfsic_block_link, ptr %l, i32 0, i32 5
  %30 = ptrtoint ptr %block_ref_to to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %block_ref_to, align 8
  %is_superblock.i28 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %is_superblock.i28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i29 = load i8, ptr %is_superblock.i28, align 4
  %33 = and i8 %bf.load.i29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i30 = icmp eq i8 %33, 0
  br i1 %tobool.not.i30, label %if.else14.i45, label %land.lhs.true.i35

land.lhs.true.i35:                                ; preds = %btrfsic_get_block_type.exit
  %latest_superblock.i31 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %34 = ptrtoint ptr %latest_superblock.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %latest_superblock.i31, align 8
  %dev_bytenr.i32 = getelementptr inbounds %struct.btrfsic_block, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %dev_bytenr.i32 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dev_bytenr.i32, align 8
  %dev_bytenr1.i33 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 4
  %38 = ptrtoint ptr %dev_bytenr1.i33 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dev_bytenr1.i33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp.i34 = icmp eq i64 %37, %39
  br i1 %cmp.i34, label %land.lhs.true2.i41, label %land.lhs.true.i35.if.else.thread.i42_crit_edge

land.lhs.true.i35.if.else.thread.i42_crit_edge:   ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i42

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i35
  %dev_state.i36 = getelementptr inbounds %struct.btrfsic_block, ptr %35, i32 0, i32 3
  %40 = ptrtoint ptr %dev_state.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_state.i36, align 4
  %bdev.i37 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bdev.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev.i37, align 4
  %dev_state4.i38 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 3
  %44 = ptrtoint ptr %dev_state4.i38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_state4.i38, align 4
  %bdev5.i39 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bdev5.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev5.i39, align 4
  %cmp6.i40 = icmp eq ptr %43, %47
  br i1 %cmp6.i40, label %land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge, label %land.lhs.true2.i41.if.else.thread.i42_crit_edge

land.lhs.true2.i41.if.else.thread.i42_crit_edge:  ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i42

land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit47

if.else.thread.i42:                               ; preds = %land.lhs.true2.i41.if.else.thread.i42_crit_edge, %land.lhs.true.i35.if.else.thread.i42_crit_edge
  br label %btrfsic_get_block_type.exit47

if.else14.i45:                                    ; preds = %btrfsic_get_block_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i29)
  %tobool18.not.i43 = icmp sgt i8 %bf.load.i29, -1
  %..i44 = select i1 %tobool18.not.i43, i32 68, i32 77
  br label %btrfsic_get_block_type.exit47

btrfsic_get_block_type.exit47:                    ; preds = %if.else14.i45, %if.else.thread.i42, %land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge
  %retval.0.i46 = phi i32 [ 83, %land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge ], [ %..i44, %if.else14.i45 ], [ 115, %if.else.thread.i42 ]
  %logical_bytenr8 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 5
  %48 = ptrtoint ptr %logical_bytenr8 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %logical_bytenr8, align 8
  %dev_state10 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 3
  %50 = ptrtoint ptr %dev_state10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_state10, align 4
  %bdev11 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bdev11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev11, align 4
  %dev_bytenr13 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 4
  %54 = ptrtoint ptr %dev_bytenr13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dev_bytenr13, align 8
  %mirror_num15 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 2
  %56 = ptrtoint ptr %mirror_num15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mirror_num15, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, i32 noundef %1, i32 noundef %retval.0.i, i64 noundef %21, ptr noundef %25, i64 noundef %27, i32 noundef %29, i32 noundef %retval.0.i46, i64 noundef %49, ptr noundef %53, i64 noundef %55, i32 noundef %57) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @btrfsic_get_block_type(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %block) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_superblock = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %is_superblock to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_superblock, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else14, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %latest_superblock = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %2 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %latest_superblock, align 8
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dev_bytenr, align 8
  %dev_bytenr1 = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 4
  %6 = ptrtoint ptr %dev_bytenr1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dev_bytenr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.else.thread_crit_edge

land.lhs.true.if.else.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread

land.lhs.true2:                                   ; preds = %land.lhs.true
  %dev_state = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_state, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev, align 4
  %dev_state4 = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 3
  %12 = ptrtoint ptr %dev_state4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_state4, align 4
  %bdev5 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bdev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev5, align 4
  %cmp6 = icmp eq ptr %11, %15
  br i1 %cmp6, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.else.thread_crit_edge

land.lhs.true2.if.else.thread_crit_edge:          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.else.thread:                                   ; preds = %land.lhs.true2.if.else.thread_crit_edge, %land.lhs.true.if.else.thread_crit_edge
  br label %return

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool18.not, i8 68, i8 77
  br label %return

return:                                           ; preds = %if.else14, %if.else.thread, %land.lhs.true2.return_crit_edge
  %retval.0 = phi i8 [ 83, %land.lhs.true2.return_crit_edge ], [ %., %if.else14 ], [ 115, %if.else.thread ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfsic_bio_end_io(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bp, i32 0, i32 6
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body4, label %do.end10, !prof !438

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2046, 0\0A.popsection", ""() #14, !srcloc !455
  unreachable

do.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.not = icmp eq i8 %3, 0
  %orig_bio_private = getelementptr inbounds %struct.btrfsic_block, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %orig_bio_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_bio_private, align 8
  %6 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bi_private, align 4
  %orig_bio_end_io = getelementptr inbounds %struct.btrfsic_block, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %orig_bio_end_io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %orig_bio_end_io, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bp, i32 0, i32 10
  %9 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bi_end_io, align 8
  %bf.shl = select i1 %tobool.not.not, i8 0, i8 16
  br label %do.body12

do.body12:                                        ; preds = %if.end48.do.body12_crit_edge, %do.end10
  %block.0 = phi ptr [ %1, %do.end10 ], [ %41, %if.end48.do.body12_crit_edge ]
  %dev_state13 = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 3
  %10 = ptrtoint ptr %dev_state13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_state13, align 4
  %state = getelementptr inbounds %struct.btrfsic_dev_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body12.if.end23_crit_edge, label %do.end18

do.body12.if.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end18:                                         ; preds = %do.body12
  %16 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bi_status, align 2
  %conv = zext i8 %17 to i32
  %is_superblock.i = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 1
  %18 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %19 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end18
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dev_bytenr.i, align 8
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 4
  %24 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp.i = icmp eq i64 %23, %25
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdev.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %29, %31
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 5
  %32 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %logical_bytenr, align 8
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %11, i32 0, i32 1
  %34 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 4
  %36 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dev_bytenr, align 8
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 2
  %38 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mirror_num, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %conv, i32 noundef %retval.0.i, i64 noundef %33, ptr noundef %35, i64 noundef %37, i32 noundef %39) #17
  br label %if.end23

if.end23:                                         ; preds = %btrfsic_get_block_type.exit, %do.body12.if.end23_crit_edge
  %next_in_same_bio = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 12
  %40 = ptrtoint ptr %next_in_same_bio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next_in_same_bio, align 4
  %iodone_w_error24 = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 1
  %42 = ptrtoint ptr %iodone_w_error24 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %iodone_w_error24, align 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %iodone_w_error24, align 4
  %submit_bio_bh_rw = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 15
  %43 = ptrtoint ptr %submit_bio_bh_rw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %submit_bio_bh_rw, align 8
  %45 = and i32 %44, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool27.not = icmp eq i32 %45, 0
  br i1 %tobool27.not, label %if.end23.if.end42_crit_edge, label %if.then28

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then28:                                        ; preds = %if.end23
  %last_flush_gen = getelementptr inbounds %struct.btrfsic_dev_state, ptr %11, i32 0, i32 5
  %46 = ptrtoint ptr %last_flush_gen to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %last_flush_gen, align 8
  %inc = add i64 %47, 1
  store i64 %inc, ptr %last_flush_gen, align 8
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %and31 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then28.if.end42_crit_edge, label %do.end36

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %bdev38 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %11, i32 0, i32 1
  %52 = ptrtoint ptr %bdev38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev38, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef %53, i64 noundef %inc) #17
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.then28.if.end42_crit_edge, %if.end23.if.end42_crit_edge
  %54 = ptrtoint ptr %submit_bio_bh_rw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %submit_bio_bh_rw, align 8
  %56 = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool46.not = icmp eq i32 %56, 0
  br i1 %tobool46.not, label %if.end42.if.end48_crit_edge, label %if.then47

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %flush_gen = getelementptr inbounds %struct.btrfsic_block, ptr %block.0, i32 0, i32 16
  %57 = ptrtoint ptr %flush_gen to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %flush_gen, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end42.if.end48_crit_edge
  %58 = ptrtoint ptr %iodone_w_error24 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load49 = load i8, ptr %iodone_w_error24, align 4
  %bf.set51 = or i8 %bf.load49, 32
  store i8 %bf.set51, ptr %iodone_w_error24, align 4
  %cmp53.not = icmp eq ptr %41, null
  br i1 %cmp53.not, label %do.end55, label %if.end48.do.body12_crit_edge

if.end48.do.body12_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi_end_io, align 8
  tail call void %60(ptr noundef %bp) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_test_for_metadata(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %datav, i32 noundef %num_pages) unnamed_addr #8 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  %csum = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #14
  %2 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %csum) #14
  %mul = shl i32 %num_pages, 12
  %metablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 8
  %3 = call ptr @memset(ptr %csum, i32 255, i32 32)
  %4 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metablock_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %5)
  %cmp = icmp ult i32 %mul, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %5, 12
  %6 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %datav, align 4
  %fsid = getelementptr inbounds %struct.btrfs_header, ptr %7, i32 0, i32 1
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %8 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_devices, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %fsid, ptr noundef dereferenceable(16) %9, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %csum_shash = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 174
  %10 = ptrtoint ptr %csum_shash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csum_shash, align 8
  %12 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.crypto_shash_init.exit_crit_edge

if.end7.crypto_shash_init.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 -256
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %18(ptr noundef nonnull %__shash_desc) #14
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %if.end7.crypto_shash_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp947.not = icmp ult i32 %5, 4096
  br i1 %cmp947.not, label %crypto_shash_init.exit.for.end_crit_edge, label %cond.end.peel

crypto_shash_init.exit.for.end_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end.peel:                                    ; preds = %crypto_shash_init.exit
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  %19 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %datav, align 4
  %add.ptr.peel = getelementptr i8, ptr %20, i32 32
  %call15.peel = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %add.ptr.peel, i32 noundef 4064) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %5)
  %exitcond.peel.not = icmp ult i32 %5, 8192
  br i1 %exitcond.peel.not, label %cond.end.peel.for.end_crit_edge, label %cond.end.peel.cond.end_crit_edge

cond.end.peel.cond.end_crit_edge:                 ; preds = %cond.end.peel
  br label %cond.end

cond.end.peel.for.end_crit_edge:                  ; preds = %cond.end.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %cond.end.peel.cond.end_crit_edge
  %i.048 = phi i32 [ %inc, %cond.end.cond.end_crit_edge ], [ 1, %cond.end.peel.cond.end_crit_edge ]
  %arrayidx11 = getelementptr ptr, ptr %datav, i32 %i.048
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11, align 4
  %call15 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %22, i32 noundef 4096) #14
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge, !llvm.loop !456

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %cond.end.peel.for.end_crit_edge, %crypto_shash_init.exit.for.end_crit_edge
  %call17 = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %csum) #14
  %csum_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 169
  %23 = ptrtoint ptr %csum_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %csum_size, align 4
  %bcmp46 = call i32 @bcmp(ptr nonnull %csum, ptr %7, i32 %24) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp46)
  %tobool22.not = icmp ne i32 %bcmp46, 0
  %. = zext i1 %tobool22.not to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %., %for.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %csum) #14
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfsic_dump_tree_sub(ptr nocapture noundef readonly %state, ptr noundef %block, i32 noundef %indent_level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_superblock.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %2 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dev_bytenr.i, align 8
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 4
  %6 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.i = icmp eq i64 %5, %7
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev.i, align 4
  %dev_state4.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 3
  %12 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_state4.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %11, %15
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 5
  %16 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %logical_bytenr, align 8
  %dev_state = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 3
  %18 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_state, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 4
  %22 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dev_bytenr, align 8
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 2
  %24 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mirror_num, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @btrfsic_dump_tree_sub.buf, ptr noundef nonnull @.str.67, i32 noundef %retval.0.i, i64 noundef %17, ptr noundef %21, i64 noundef %23, i32 noundef %25)
  %add = add i32 %call1, %indent_level
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %add)
  %cmp = icmp sgt i32 %add, 194
  br i1 %cmp, label %btrfsic_get_block_type.exit.cleanup.sink.split_crit_edge, label %do.end8

btrfsic_get_block_type.exit.cleanup.sink.split_crit_edge: ; preds = %btrfsic_get_block_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

do.end8:                                          ; preds = %btrfsic_get_block_type.exit
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @btrfsic_dump_tree_sub.buf) #17
  %ref_to_list = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 10
  %26 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %ref_to_list, align 4
  %cmp.i98.not = icmp eq ptr %27, %ref_to_list
  br i1 %cmp.i98.not, label %do.end8.cleanup.sink.split_crit_edge, label %if.end19

do.end8.cleanup.sink.split_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end19:                                         ; preds = %do.end8
  %28 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mirror_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp21 = icmp ugt i32 %29, 1
  br i1 %cmp21, label %land.lhs.true, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end19
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 8
  %and = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %32 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn101 = load ptr, ptr %ref_to_list, align 4
  %cmp34.not102 = icmp eq ptr %.pn101, %ref_to_list
  br i1 %cmp34.not102, label %if.end30.cleanup_crit_edge, label %if.end30.while.cond.preheader_crit_edge

if.end30.while.cond.preheader_crit_edge:          ; preds = %if.end30
  br label %while.cond.preheader

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %if.end30.while.cond.preheader_crit_edge
  %.pn104 = phi ptr [ %.pn, %for.inc.while.cond.preheader_crit_edge ], [ %.pn101, %if.end30.while.cond.preheader_crit_edge ]
  %cursor_position.0103 = phi i32 [ 0, %for.inc.while.cond.preheader_crit_edge ], [ %add, %if.end30.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cursor_position.0103, i32 %add)
  %cmp3699 = icmp slt i32 %cursor_position.0103, %add
  br i1 %cmp3699, label %while.cond.preheader.do.end40_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.preheader.do.end40_crit_edge:          ; preds = %while.cond.preheader
  br label %do.end40

do.end40:                                         ; preds = %do.end40.do.end40_crit_edge, %while.cond.preheader.do.end40_crit_edge
  %cursor_position.1100 = phi i32 [ %inc, %do.end40.do.end40_crit_edge ], [ %cursor_position.0103, %while.cond.preheader.do.end40_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #17
  %inc = add i32 %cursor_position.1100, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %do.end40.while.end_crit_edge, label %do.end40.do.end40_crit_edge

do.end40.do.end40_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end40

do.end40.while.end_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end40.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %ref_cnt = getelementptr i8, ptr %.pn104, i32 -4
  %33 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp43 = icmp ugt i32 %34, 1
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %call47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @btrfsic_dump_tree_sub.buf, ptr noundef nonnull @.str.81, i32 noundef %34)
  br label %if.end49

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %35 = call ptr @memcpy(ptr @btrfsic_dump_tree_sub.buf, ptr @.str.82, i32 6)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45
  %indent_add.0 = phi i32 [ %call47, %if.then45 ], [ 5, %if.else ]
  %add50 = add i32 %indent_add.0, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %add50)
  %cmp51 = icmp sgt i32 %add50, 194
  br i1 %cmp51, label %do.end56, label %do.end64

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #17
  br label %for.inc

do.end64:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @btrfsic_dump_tree_sub.buf) #17
  %block_ref_to = getelementptr i8, ptr %.pn104, i32 24
  %36 = ptrtoint ptr %block_ref_to to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %block_ref_to, align 8
  tail call fastcc void @btrfsic_dump_tree_sub(ptr noundef %state, ptr noundef %37, i32 noundef %add50)
  br label %for.inc

for.inc:                                          ; preds = %do.end64, %do.end56
  %38 = ptrtoint ptr %.pn104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn104, align 4
  %cmp34.not = icmp eq ptr %.pn, %ref_to_list
  br i1 %cmp34.not, label %for.inc.cleanup_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %do.end8.cleanup.sink.split_crit_edge, %btrfsic_get_block_type.exit.cleanup.sink.split_crit_edge
  %.str.76.sink = phi ptr [ @.str.68, %btrfsic_get_block_type.exit.cleanup.sink.split_crit_edge ], [ @.str.73, %do.end8.cleanup.sink.split_crit_edge ], [ @.str.76, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.76.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfsic_cmp_log_and_dev_bytenr(ptr nocapture noundef readonly %state, i64 noundef %bytenr, ptr nocapture noundef readonly %dev_state, i64 noundef %dev_bytenr) unnamed_addr #0 align 64 {
entry:
  %block_ctx = alloca %struct.btrfsic_block_data_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %block_ctx) #14
  %2 = call ptr @memset(ptr %block_ctx, i32 255, i32 40)
  %metablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 8
  %3 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %metablock_size, align 4
  %conv = zext i32 %4 to i64
  %call = tail call i32 @btrfs_num_copies(ptr noundef %1, i64 noundef %bytenr, i64 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not126 = icmp slt i32 %call, 1
  br i1 %cmp.not126, label %if.end70.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %dev_state, i32 0, i32 1
  %dev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 3
  %dev_bytenr9 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 1
  %mem_to_free.i94 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 6
  %datav.i96 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 4
  %pagev.i100 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 5
  %len.i104 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mirror_num.0127 = phi i32 [ 1, %for.body.lr.ph ], [ %inc14, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %metablock_size, align 4
  %call4 = call fastcc i32 @btrfsic_map_block(ptr noundef %state, i64 noundef %bytenr, i32 noundef %6, ptr noundef nonnull %block_ctx, i32 noundef %mirror_num.0127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i64 noundef %bytenr, i32 noundef %mirror_num.0127) #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %bdev6 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bdev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev6, align 4
  %cmp7 = icmp eq ptr %8, %12
  br i1 %cmp7, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %dev_bytenr9 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dev_bytenr9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %dev_bytenr)
  %cmp10 = icmp eq i64 %14, %dev_bytenr
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %15 = ptrtoint ptr %mem_to_free.i94 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem_to_free.i94, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then12.if.end70_crit_edge, label %if.then.i

if.then12.if.end70_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then.i:                                        ; preds = %if.then12
  %17 = ptrtoint ptr %datav.i96 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %datav.i96, align 8
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %do.body6.i, label %do.body12.i, !prof !438

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i:                                      ; preds = %if.then.i
  %19 = ptrtoint ptr %pagev.i100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pagev.i100, align 4
  %tobool13.not.i = icmp eq ptr %20, null
  br i1 %tobool13.not.i, label %do.body23.i, label %do.end31.i, !prof !438

do.body23.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i:                                       ; preds = %do.body12.i
  %21 = ptrtoint ptr %len.i104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i104, align 8
  %conv.i = zext i32 %22 to i64
  %sub.i = add nuw nsw i64 %conv.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv32.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i)
  %cmp.not72.i = icmp eq i32 %conv32.i, 0
  br i1 %cmp.not72.i, label %do.end31.i.while.end.i_crit_edge, label %do.end31.i.while.body.i_crit_edge

do.end31.i.while.body.i_crit_edge:                ; preds = %do.end31.i
  br label %while.body.i

do.end31.i.while.end.i_crit_edge:                 ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end48.i.while.body.i_crit_edge, %do.end31.i.while.body.i_crit_edge
  %num_pages.073.i = phi i32 [ %dec.i, %if.end48.i.while.body.i_crit_edge ], [ %conv32.i, %do.end31.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %num_pages.073.i, -1
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %dec.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool35.not.i = icmp eq ptr %24, null
  br i1 %tobool35.not.i, label %while.body.i.if.end39.i_crit_edge, label %if.then36.i

while.body.i.if.end39.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then36.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %while.body.i.if.end39.i_crit_edge
  %arrayidx41.i = getelementptr ptr, ptr %20, i32 %dec.i
  %26 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx41.i, align 4
  %tobool42.not.i = icmp eq ptr %27, null
  br i1 %tobool42.not.i, label %if.end39.i.if.end48.i_crit_edge, label %if.then43.i

if.end39.i.if.end48.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %27, i32 noundef 0) #14
  %28 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx41.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end48.i_crit_edge
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end48.i.while.end.i_crit_edge, label %if.end48.i.while.body.i_crit_edge

if.end48.i.while.body.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end48.i.while.end.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end48.i.while.end.i_crit_edge, %do.end31.i.while.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %16) #14
  br label %if.end70

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %29 = ptrtoint ptr %mem_to_free.i94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem_to_free.i94, align 8
  %tobool.not.i95 = icmp eq ptr %30, null
  br i1 %tobool.not.i95, label %if.end13.for.inc_crit_edge, label %if.then.i98

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i98:                                      ; preds = %if.end13
  %31 = ptrtoint ptr %datav.i96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %datav.i96, align 8
  %tobool1.not.i97 = icmp eq ptr %32, null
  br i1 %tobool1.not.i97, label %do.body6.i99, label %do.body12.i102, !prof !438

do.body6.i99:                                     ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i102:                                   ; preds = %if.then.i98
  %33 = ptrtoint ptr %pagev.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pagev.i100, align 4
  %tobool13.not.i101 = icmp eq ptr %34, null
  br i1 %tobool13.not.i101, label %do.body23.i103, label %do.end31.i110, !prof !438

do.body23.i103:                                   ; preds = %do.body12.i102
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i110:                                    ; preds = %do.body12.i102
  %35 = ptrtoint ptr %len.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i104, align 8
  %conv.i105 = zext i32 %36 to i64
  %sub.i106 = add nuw nsw i64 %conv.i105, 4095
  %shr.i107 = lshr i64 %sub.i106, 12
  %conv32.i108 = trunc i64 %shr.i107 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i108)
  %cmp.not72.i109 = icmp eq i32 %conv32.i108, 0
  br i1 %cmp.not72.i109, label %do.end31.i110.while.end.i124_crit_edge, label %do.end31.i110.while.body.i115_crit_edge

do.end31.i110.while.body.i115_crit_edge:          ; preds = %do.end31.i110
  br label %while.body.i115

do.end31.i110.while.end.i124_crit_edge:           ; preds = %do.end31.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i124

while.body.i115:                                  ; preds = %if.end48.i123.while.body.i115_crit_edge, %do.end31.i110.while.body.i115_crit_edge
  %num_pages.073.i111 = phi i32 [ %dec.i112, %if.end48.i123.while.body.i115_crit_edge ], [ %conv32.i108, %do.end31.i110.while.body.i115_crit_edge ]
  %dec.i112 = add nsw i32 %num_pages.073.i111, -1
  %arrayidx.i113 = getelementptr ptr, ptr %32, i32 %dec.i112
  %37 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i113, align 4
  %tobool35.not.i114 = icmp eq ptr %38, null
  br i1 %tobool35.not.i114, label %while.body.i115.if.end39.i119_crit_edge, label %if.then36.i116

while.body.i115.if.end39.i119_crit_edge:          ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i119

if.then36.i116:                                   ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i113, align 4
  br label %if.end39.i119

if.end39.i119:                                    ; preds = %if.then36.i116, %while.body.i115.if.end39.i119_crit_edge
  %arrayidx41.i117 = getelementptr ptr, ptr %34, i32 %dec.i112
  %40 = ptrtoint ptr %arrayidx41.i117 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx41.i117, align 4
  %tobool42.not.i118 = icmp eq ptr %41, null
  br i1 %tobool42.not.i118, label %if.end39.i119.if.end48.i123_crit_edge, label %if.then43.i121

if.end39.i119.if.end48.i123_crit_edge:            ; preds = %if.end39.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i123

if.then43.i121:                                   ; preds = %if.end39.i119
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %41, i32 noundef 0) #14
  %42 = ptrtoint ptr %arrayidx41.i117 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx41.i117, align 4
  br label %if.end48.i123

if.end48.i123:                                    ; preds = %if.then43.i121, %if.end39.i119.if.end48.i123_crit_edge
  %cmp.not.i122 = icmp eq i32 %dec.i112, 0
  br i1 %cmp.not.i122, label %if.end48.i123.while.end.i124_crit_edge, label %if.end48.i123.while.body.i115_crit_edge

if.end48.i123.while.body.i115_crit_edge:          ; preds = %if.end48.i123
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i115

if.end48.i123.while.end.i124_crit_edge:           ; preds = %if.end48.i123
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i124

while.end.i124:                                   ; preds = %if.end48.i123.while.end.i124_crit_edge, %do.end31.i110.while.end.i124_crit_edge
  tail call void @kfree(ptr noundef nonnull %30) #14
  %43 = ptrtoint ptr %mem_to_free.i94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %mem_to_free.i94, align 8
  %44 = ptrtoint ptr %pagev.i100 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %pagev.i100, align 4
  %45 = ptrtoint ptr %datav.i96 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %datav.i96, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end.i124, %if.end13.for.inc_crit_edge, %do.end
  %inc14 = add i32 %mirror_num.0127, 1
  %cmp.not = icmp sgt i32 %inc14, %call
  br i1 %cmp.not, label %do.end28.critedge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end28.critedge:                                ; preds = %for.inc
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2615, i32 noundef 9, ptr noundef null) #14
  %bdev48 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %dev_state, i32 0, i32 1
  %46 = ptrtoint ptr %bdev48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev48, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i64 noundef %bytenr, ptr noundef %47, i64 noundef %dev_bytenr) #17
  br i1 %cmp.not126, label %do.end28.critedge.if.end70_crit_edge, label %for.body53.lr.ph

do.end28.critedge.if.end70_crit_edge:             ; preds = %do.end28.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

for.body53.lr.ph:                                 ; preds = %do.end28.critedge
  %dev63 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 3
  %dev_bytenr65 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 1
  br label %for.body53

for.body53:                                       ; preds = %for.inc67.for.body53_crit_edge, %for.body53.lr.ph
  %mirror_num.1130 = phi i32 [ 1, %for.body53.lr.ph ], [ %inc68, %for.inc67.for.body53_crit_edge ]
  %48 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %metablock_size, align 4
  %call55 = call fastcc i32 @btrfsic_map_block(ptr noundef %state, i64 noundef %bytenr, i32 noundef %49, ptr noundef nonnull %block_ctx, i32 noundef %mirror_num.1130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.end61, label %for.body53.for.inc67_crit_edge

for.body53.for.inc67_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc67

do.end61:                                         ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev63, align 4
  %bdev64 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bdev64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev64, align 4
  %54 = ptrtoint ptr %dev_bytenr65 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dev_bytenr65, align 8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i64 noundef %bytenr, ptr noundef %53, i64 noundef %55, i32 noundef %mirror_num.1130) #17
  br label %for.inc67

for.inc67:                                        ; preds = %do.end61, %for.body53.for.inc67_crit_edge
  %inc68 = add i32 %mirror_num.1130, 1
  %cmp51.not = icmp sgt i32 %inc68, %call
  br i1 %cmp51.not, label %for.inc67.if.end70_crit_edge, label %for.inc67.for.body53_crit_edge

for.inc67.for.body53_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body53

for.inc67.if.end70_crit_edge:                     ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.end70.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2615, i32 noundef 9, ptr noundef null) #14
  %bdev48.c = getelementptr inbounds %struct.btrfsic_dev_state, ptr %dev_state, i32 0, i32 1
  %56 = ptrtoint ptr %bdev48.c to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev48.c, align 4
  %call49.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i64 noundef %bytenr, ptr noundef %57, i64 noundef %dev_bytenr) #17
  br label %if.end70

if.end70:                                         ; preds = %if.end70.critedge, %for.inc67.if.end70_crit_edge, %do.end28.critedge.if.end70_crit_edge, %while.end.i, %if.then12.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %block_ctx) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_is_block_ref_by_superblock(ptr nocapture noundef readonly %state, ptr noundef readonly %block, i32 noundef %recursion_level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %recursion_level)
  %cmp = icmp sgt i32 %recursion_level, 10
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #17
  br label %cleanup

if.end2:                                          ; preds = %entry
  %ref_from_list = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 11
  %is_superblock.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 1
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 4
  %dev_state4.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 3
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 5
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 2
  %add = add nsw i32 %recursion_level, 1
  br label %for.cond

for.cond:                                         ; preds = %if.else.for.cond_crit_edge, %if.end2
  %.pn.in = phi ptr [ %ref_from_list, %if.end2 ], [ %.pn, %if.else.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, %ref_from_list
  br i1 %cmp5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %and7 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.if.end27_crit_edge, label %do.end12

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

do.end12:                                         ; preds = %for.body
  %5 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end12
  %7 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dev_bytenr.i, align 8
  %11 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.i = icmp eq i64 %10, %12
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i, align 4
  %17 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_state4.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %16, %20
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %21 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %logical_bytenr, align 8
  %23 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_state4.i, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev, align 4
  %27 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dev_bytenr1.i, align 8
  %29 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mirror_num, align 8
  %ref_cnt = getelementptr i8, ptr %.pn, i32 -12
  %31 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ref_cnt, align 4
  %block_ref_from = getelementptr i8, ptr %.pn, i32 20
  %33 = ptrtoint ptr %block_ref_from to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %block_ref_from, align 4
  %is_superblock.i81 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %is_superblock.i81 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i82 = load i8, ptr %is_superblock.i81, align 4
  %36 = and i8 %bf.load.i82, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i83 = icmp eq i8 %36, 0
  br i1 %tobool.not.i83, label %if.else14.i98, label %land.lhs.true.i88

land.lhs.true.i88:                                ; preds = %btrfsic_get_block_type.exit
  %37 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i85 = getelementptr inbounds %struct.btrfsic_block, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %dev_bytenr.i85 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dev_bytenr.i85, align 8
  %dev_bytenr1.i86 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 4
  %41 = ptrtoint ptr %dev_bytenr1.i86 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dev_bytenr1.i86, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp.i87 = icmp eq i64 %40, %42
  br i1 %cmp.i87, label %land.lhs.true2.i94, label %land.lhs.true.i88.if.else.thread.i95_crit_edge

land.lhs.true.i88.if.else.thread.i95_crit_edge:   ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i95

land.lhs.true2.i94:                               ; preds = %land.lhs.true.i88
  %dev_state.i89 = getelementptr inbounds %struct.btrfsic_block, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %dev_state.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_state.i89, align 4
  %bdev.i90 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bdev.i90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bdev.i90, align 4
  %dev_state4.i91 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 3
  %47 = ptrtoint ptr %dev_state4.i91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_state4.i91, align 4
  %bdev5.i92 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bdev5.i92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdev5.i92, align 4
  %cmp6.i93 = icmp eq ptr %46, %50
  br i1 %cmp6.i93, label %land.lhs.true2.i94.btrfsic_get_block_type.exit100_crit_edge, label %land.lhs.true2.i94.if.else.thread.i95_crit_edge

land.lhs.true2.i94.if.else.thread.i95_crit_edge:  ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i95

land.lhs.true2.i94.btrfsic_get_block_type.exit100_crit_edge: ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit100

if.else.thread.i95:                               ; preds = %land.lhs.true2.i94.if.else.thread.i95_crit_edge, %land.lhs.true.i88.if.else.thread.i95_crit_edge
  br label %btrfsic_get_block_type.exit100

if.else14.i98:                                    ; preds = %btrfsic_get_block_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i82)
  %tobool18.not.i96 = icmp sgt i8 %bf.load.i82, -1
  %..i97 = select i1 %tobool18.not.i96, i32 68, i32 77
  br label %btrfsic_get_block_type.exit100

btrfsic_get_block_type.exit100:                   ; preds = %if.else14.i98, %if.else.thread.i95, %land.lhs.true2.i94.btrfsic_get_block_type.exit100_crit_edge
  %retval.0.i99 = phi i32 [ 83, %land.lhs.true2.i94.btrfsic_get_block_type.exit100_crit_edge ], [ %..i97, %if.else14.i98 ], [ 115, %if.else.thread.i95 ]
  %logical_bytenr18 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 5
  %51 = ptrtoint ptr %logical_bytenr18 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %logical_bytenr18, align 8
  %dev_state20 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 3
  %53 = ptrtoint ptr %dev_state20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_state20, align 4
  %bdev21 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bdev21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bdev21, align 4
  %dev_bytenr23 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 4
  %57 = ptrtoint ptr %dev_bytenr23 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dev_bytenr23, align 8
  %mirror_num25 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 2
  %59 = ptrtoint ptr %mirror_num25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mirror_num25, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %recursion_level, i32 noundef %retval.0.i, i64 noundef %22, ptr noundef %26, i64 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %retval.0.i99, i64 noundef %52, ptr noundef %56, i64 noundef %58, i32 noundef %60) #17
  br label %if.end27

if.end27:                                         ; preds = %btrfsic_get_block_type.exit100, %for.body.if.end27_crit_edge
  %block_ref_from28 = getelementptr i8, ptr %.pn, i32 20
  %61 = ptrtoint ptr %block_ref_from28 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %block_ref_from28, align 4
  %is_superblock = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %is_superblock to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %is_superblock, align 4
  %64 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool29.not = icmp eq i8 %64, 0
  br i1 %tobool29.not, label %if.end27.if.else_crit_edge, label %land.lhs.true

if.end27.if.else_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end27
  %65 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr30 = getelementptr inbounds %struct.btrfsic_block, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %dev_bytenr30 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %dev_bytenr30, align 8
  %dev_bytenr32 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %69 = ptrtoint ptr %dev_bytenr32 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dev_bytenr32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %70)
  %cmp33 = icmp eq i64 %68, %70
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true35:                                  ; preds = %land.lhs.true
  %dev_state37 = getelementptr inbounds %struct.btrfsic_block, ptr %66, i32 0, i32 3
  %71 = ptrtoint ptr %dev_state37 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_state37, align 4
  %bdev38 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %bdev38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bdev38, align 4
  %dev_state40 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %75 = ptrtoint ptr %dev_state40 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_state40, align 4
  %bdev41 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %bdev41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bdev41, align 4
  %cmp42 = icmp eq ptr %74, %78
  br i1 %cmp42, label %land.lhs.true35.cleanup_crit_edge, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end27.if.else_crit_edge
  %call46 = tail call fastcc i32 @btrfsic_is_block_ref_by_superblock(ptr noundef %state, ptr noundef %62, i32 noundef %add)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else.for.cond_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.for.cond_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %land.lhs.true35.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %land.lhs.true35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_process_metablock(ptr noundef %state, ptr noundef %first_block, ptr noundef %first_block_ctx, i32 noundef %first_limit_nesting, i32 noundef %force_iodone_flag) unnamed_addr #8 align 64 {
entry:
  %file_extent_item.i = alloca %struct.btrfs_file_extent_item, align 8
  %next_block_ctx.i = alloca %struct.btrfsic_block_data_ctx, align 8
  %block_was_created.i = alloca i32, align 4
  %initial_stack_frame = alloca %struct.btrfsic_stack_frame, align 8
  %disk_item = alloca %struct.btrfs_item, align 8
  %root_item = alloca %struct.btrfs_root_item, align 1
  %key_ptr = alloca %struct.btrfs_key_ptr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %initial_stack_frame) #14
  %0 = call ptr @memset(ptr %initial_stack_frame, i32 0, i32 88)
  %datav = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %first_block_ctx, i32 0, i32 4
  %1 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %datav, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !438

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 891, 0\0A.popsection", ""() #14, !srcloc !458
  unreachable

do.end9:                                          ; preds = %entry
  %i = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 3
  %5 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %i, align 4
  %limit_nesting = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 4
  %6 = ptrtoint ptr %limit_nesting to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %first_limit_nesting, ptr %limit_nesting, align 8
  %block = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 7
  %7 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %first_block, ptr %block, align 4
  %block_ctx = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 8
  %8 = ptrtoint ptr %block_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %first_block_ctx, ptr %block_ctx, align 8
  %next_block = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 9
  %9 = ptrtoint ptr %next_block to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %next_block, align 4
  %hdr = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 11
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %hdr, align 8
  %prev = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 12
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %prev, align 4
  %12 = getelementptr inbounds %struct.btrfs_key_ptr, ptr %key_ptr, i32 0, i32 1
  %13 = getelementptr inbounds %struct.btrfs_key_ptr, ptr %key_ptr, i32 0, i32 2
  %14 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_item, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_item, ptr %disk_item, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_item, ptr %disk_item, i32 0, i32 2
  %include_extent_data = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 1
  %fs_info1.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 5
  %type.i511 = getelementptr inbounds %struct.btrfs_file_extent_item, ptr %file_extent_item.i, i32 0, i32 5
  %disk_bytenr.i.i = getelementptr inbounds %struct.btrfs_file_extent_item, ptr %file_extent_item.i, i32 0, i32 6
  %compression.i.i = getelementptr inbounds %struct.btrfs_file_extent_item, ptr %file_extent_item.i, i32 0, i32 2
  %disk_num_bytes.i.i = getelementptr inbounds %struct.btrfs_file_extent_item, ptr %file_extent_item.i, i32 0, i32 7
  %offset.i.i = getelementptr inbounds %struct.btrfs_file_extent_item, ptr %file_extent_item.i, i32 0, i32 8
  %num_bytes.i.i = getelementptr inbounds %struct.btrfs_file_extent_item, ptr %file_extent_item.i, i32 0, i32 9
  %datablock_size.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_iodone_flag)
  %tobool120.not.i = icmp eq i32 %force_iodone_flag, 0
  %lnot.ext.i = zext i1 %tobool120.not.i to i32
  %dev144.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx.i, i32 0, i32 3
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx.i, i32 0, i32 1
  %mem_to_free.i278.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx.i, i32 0, i32 6
  %datav.i280.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx.i, i32 0, i32 4
  %pagev.i284.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx.i, i32 0, i32 5
  %len.i288.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx.i, i32 0, i32 2
  %bytenr.i = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 3
  %generation.i496 = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 1
  br label %continue_with_new_stack_frame

continue_with_new_stack_frame:                    ; preds = %continue_with_new_stack_frame.backedge, %do.end9
  %sf.0 = phi ptr [ %initial_stack_frame, %do.end9 ], [ %sf.0.be, %continue_with_new_stack_frame.backedge ]
  %hdr10 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 11
  %17 = ptrtoint ptr %hdr10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdr10, align 8
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %generation.i, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #14
  %block11 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 7
  %22 = ptrtoint ptr %block11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %block11, align 4
  %generation = getelementptr inbounds %struct.btrfsic_block, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %21, ptr %generation, align 8
  %25 = ptrtoint ptr %hdr10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdr10, align 8
  %level = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  %i16 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 3
  %29 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp17 = icmp eq i32 %30, -1
  br i1 %cmp, label %if.then14, label %if.else149

if.then14:                                        ; preds = %continue_with_new_stack_frame
  br i1 %cmp17, label %if.then19, label %if.then14.if.end34_crit_edge

if.then14.if.end34_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then19:                                        ; preds = %if.then14
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #14
  %nr = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 1
  %34 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %nr, align 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 8
  %and = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then19.if.end34_crit_edge, label %do.end25

if.then19.if.end34_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %block_ctx26 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 8
  %37 = ptrtoint ptr %block_ctx26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %block_ctx26, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %generation.i458 = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 5
  %41 = ptrtoint ptr %generation.i458 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %generation.i458, align 1
  %43 = call i64 @llvm.bswap.i64(i64 %42) #14
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 6
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %owner.i, align 1
  %46 = call i64 @llvm.bswap.i64(i64 %45) #14
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i64 noundef %40, i32 noundef %33, i64 noundef %43, i64 noundef %46) #17
  br label %if.end34

if.end34:                                         ; preds = %do.end25, %if.then19.if.end34_crit_edge, %if.then14.if.end34_crit_edge
  %num_copies = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 5
  %nr45 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 1
  %mirror_num = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 6
  %items = getelementptr inbounds %struct.btrfs_leaf, ptr %26, i32 0, i32 1
  %47 = ptrtoint ptr %26 to i32
  %block_ctx50 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 8
  %error131 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 2
  %limit_nesting83 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 4
  %next_block_ctx = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10
  %next_block84 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 9
  br label %continue_with_current_leaf_stack_frame

continue_with_current_leaf_stack_frame:           ; preds = %cleanup138, %if.end34
  %48 = ptrtoint ptr %num_copies to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_copies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp35 = icmp eq i32 %49, 0
  br i1 %cmp35, label %continue_with_current_leaf_stack_frame.if.then40_crit_edge, label %lor.lhs.false

continue_with_current_leaf_stack_frame.if.then40_crit_edge: ; preds = %continue_with_current_leaf_stack_frame
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

lor.lhs.false:                                    ; preds = %continue_with_current_leaf_stack_frame
  %50 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mirror_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp38 = icmp sgt i32 %51, %49
  br i1 %cmp38, label %lor.lhs.false.if.then40_crit_edge, label %lor.lhs.false.if.end43_crit_edge

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %continue_with_current_leaf_stack_frame.if.then40_crit_edge
  %52 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i16, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %i16, align 4
  %54 = ptrtoint ptr %num_copies to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_copies, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %lor.lhs.false.if.end43_crit_edge
  %55 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i16, align 4
  %57 = ptrtoint ptr %nr45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp46 = icmp ult i32 %56, %58
  br i1 %cmp46, label %if.then48, label %if.end43.one_stack_frame_backwards.preheader_crit_edge

if.end43.one_stack_frame_backwards.preheader_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %one_stack_frame_backwards.preheader

if.then48:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %disk_item) #14
  %59 = call ptr @memset(ptr %disk_item, i32 255, i32 25)
  %60 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i16, align 4
  %add.ptr = getelementptr %struct.btrfs_item, ptr %items, i32 %61
  %62 = ptrtoint ptr %add.ptr to i32
  %sub = sub i32 %62, %47
  %add = add i32 %sub, 25
  %63 = ptrtoint ptr %block_ctx50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %block_ctx50, align 8
  %len = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %66)
  %cmp51 = icmp ugt i32 %add, %66
  br i1 %cmp51, label %if.then48.do.end56_crit_edge, label %if.end.i

if.then48.do.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56

do.end56:                                         ; preds = %cleanup120, %if.then48.do.end56_crit_edge
  %67 = ptrtoint ptr %block_ctx50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %block_ctx50, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %68, align 8
  %dev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bdev, align 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i64 noundef %70, ptr noundef %74) #17
  br label %cleanup146.thread

if.end.i:                                         ; preds = %if.then48
  %75 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %64, align 8
  %conv.i = trunc i64 %76 to i32
  %and.i = and i32 %conv.i, 4095
  %add.i = add i32 %and.i, %sub
  %shr.i = lshr i32 %add.i, 12
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 8
  %sub32.peel.i = add i32 %78, 4095
  %div71.peel.i = lshr i32 %sub32.peel.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %div71.peel.i)
  %cmp33.not.peel.i = icmp ult i32 %shr.i, %div71.peel.i
  br i1 %cmp33.not.peel.i, label %do.end50.peel.i, label %if.end.i.do.body42.i_crit_edge, !prof !439

if.end.i.do.body42.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i

do.end50.peel.i:                                  ; preds = %if.end.i
  %datav.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %64, i32 0, i32 4
  %and23.i = and i32 %add.i, 4095
  %sub.peel.i = sub nuw nsw i32 4096, %and23.i
  %79 = call i32 @llvm.umin.i32(i32 %sub.peel.i, i32 25) #14
  %80 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %datav.i, align 8
  %arrayidx.peel.i = getelementptr ptr, ptr %81, i32 %shr.i
  %82 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.peel.i, align 4
  %add.ptr.peel.i = getelementptr i8, ptr %83, i32 %and23.i
  %84 = call ptr @memcpy(ptr %disk_item, ptr %add.ptr.peel.i, i32 %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4072, i32 %and23.i)
  %cmp24.not.peel.i = icmp ult i32 %and23.i, 4072
  br i1 %cmp24.not.peel.i, label %do.end50.peel.i.btrfsic_read_from_block_data.exit_crit_edge, label %while.body.peel.next.i

do.end50.peel.i.btrfsic_read_from_block_data.exit_crit_edge: ; preds = %do.end50.peel.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit

while.body.peel.next.i:                           ; preds = %do.end50.peel.i
  %sub52.peel.i = sub nuw nsw i32 25, %79
  %add.ptr51.peel.i = getelementptr i8, ptr %disk_item, i32 %79
  %85 = add nsw i32 %div71.peel.i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %do.end50.i.while.body.i_crit_edge, %while.body.peel.next.i
  %len.addr.076.i = phi i32 [ %sub52.peel.i, %while.body.peel.next.i ], [ %sub52.i, %do.end50.i.while.body.i_crit_edge ]
  %i.075.in.i = phi i32 [ %shr.i, %while.body.peel.next.i ], [ %i.075.i, %do.end50.i.while.body.i_crit_edge ]
  %dst.074.i = phi ptr [ %add.ptr51.peel.i, %while.body.peel.next.i ], [ %add.ptr51.i, %do.end50.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.in.i, i32 %85)
  %exitcond776.not = icmp eq i32 %i.075.in.i, %85
  br i1 %exitcond776.not, label %while.body.i.do.body42.i_crit_edge, label %do.end50.i, !prof !438

while.body.i.do.body42.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i

do.body42.i:                                      ; preds = %while.body.i.do.body42.i_crit_edge, %if.end.i.do.body42.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #14, !srcloc !459
  unreachable

do.end50.i:                                       ; preds = %while.body.i
  %i.075.i = add nuw nsw i32 %i.075.in.i, 1
  %86 = call i32 @llvm.umin.i32(i32 %len.addr.076.i, i32 4096) #14
  %arrayidx.i = getelementptr ptr, ptr %81, i32 %i.075.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %89 = call ptr @memcpy(ptr %dst.074.i, ptr %88, i32 %86)
  %add.ptr51.i = getelementptr i8, ptr %dst.074.i, i32 %86
  %sub52.i = sub i32 %len.addr.076.i, %86
  %cmp24.not.i = icmp eq i32 %sub52.i, 0
  br i1 %cmp24.not.i, label %do.end50.i.btrfsic_read_from_block_data.exit_crit_edge, label %do.end50.i.while.body.i_crit_edge, !llvm.loop !460

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

do.end50.i.btrfsic_read_from_block_data.exit_crit_edge: ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit

btrfsic_read_from_block_data.exit:                ; preds = %do.end50.i.btrfsic_read_from_block_data.exit_crit_edge, %do.end50.peel.i.btrfsic_read_from_block_data.exit_crit_edge
  %90 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %15, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91) #14
  %93 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %16, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #14
  %96 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %14, align 8
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %97, label %btrfsic_read_from_block_data.exit.cleanup138_crit_edge [
    i8 -124, label %if.then70
    i8 108, label %land.lhs.true
  ]

btrfsic_read_from_block_data.exit.cleanup138_crit_edge: ; preds = %btrfsic_read_from_block_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.then70:                                        ; preds = %btrfsic_read_from_block_data.exit
  call void @llvm.lifetime.start.p0(i64 439, ptr nonnull %root_item) #14
  %99 = call ptr @memset(ptr %root_item, i32 255, i32 439)
  %add71 = add i32 %92, 101
  %add72 = add i32 %add71, %95
  %100 = ptrtoint ptr %block_ctx50 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %block_ctx50, align 8
  %len74 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len74, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %103)
  %cmp75 = icmp ugt i32 %add72, %103
  br i1 %cmp75, label %cleanup120, label %if.end.i467

if.end.i467:                                      ; preds = %if.then70
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %101, align 8
  %conv.i459 = trunc i64 %105 to i32
  %and.i460 = and i32 %conv.i459, 4095
  %add.i461 = add i32 %and.i460, %add71
  %shr.i462 = lshr i32 %add.i461, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp24.not72.i = icmp eq i32 %94, 0
  br i1 %cmp24.not72.i, label %if.end.i467.btrfsic_read_from_block_data.exit495_crit_edge, label %while.body.lr.ph.i

if.end.i467.btrfsic_read_from_block_data.exit495_crit_edge: ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit495

while.body.lr.ph.i:                               ; preds = %if.end.i467
  %106 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len74, align 8
  %sub32.peel.i469 = add i32 %107, 4095
  %div71.peel.i470 = lshr i32 %sub32.peel.i469, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i462, i32 %div71.peel.i470)
  %cmp33.not.peel.i471 = icmp ult i32 %shr.i462, %div71.peel.i470
  br i1 %cmp33.not.peel.i471, label %do.end50.peel.i478, label %while.body.lr.ph.i.do.body42.i489_crit_edge, !prof !439

while.body.lr.ph.i.do.body42.i489_crit_edge:      ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i489

do.end50.peel.i478:                               ; preds = %while.body.lr.ph.i
  %datav.i468 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %101, i32 0, i32 4
  %and23.i472 = and i32 %add.i461, 4095
  %sub.peel.i473 = sub nuw nsw i32 4096, %and23.i472
  %108 = call i32 @llvm.umin.i32(i32 %95, i32 %sub.peel.i473) #14
  %109 = ptrtoint ptr %datav.i468 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %datav.i468, align 8
  %arrayidx.peel.i474 = getelementptr ptr, ptr %110, i32 %shr.i462
  %111 = ptrtoint ptr %arrayidx.peel.i474 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.peel.i474, align 4
  %add.ptr.peel.i475 = getelementptr i8, ptr %112, i32 %and23.i472
  %113 = call ptr @memcpy(ptr %root_item, ptr %add.ptr.peel.i475, i32 %108)
  %sub52.peel.i476 = sub i32 %95, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52.peel.i476)
  %cmp24.not.peel.i477 = icmp eq i32 %sub52.peel.i476, 0
  br i1 %cmp24.not.peel.i477, label %do.end50.peel.i478.btrfsic_read_from_block_data.exit495_crit_edge, label %while.body.peel.next.i480

do.end50.peel.i478.btrfsic_read_from_block_data.exit495_crit_edge: ; preds = %do.end50.peel.i478
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit495

while.body.peel.next.i480:                        ; preds = %do.end50.peel.i478
  %add.ptr51.peel.i479 = getelementptr i8, ptr %root_item, i32 %108
  %114 = add nsw i32 %div71.peel.i470, -1
  br label %while.body.i488

while.body.i488:                                  ; preds = %do.end50.i494.while.body.i488_crit_edge, %while.body.peel.next.i480
  %len.addr.076.i481 = phi i32 [ %sub52.peel.i476, %while.body.peel.next.i480 ], [ %sub52.i492, %do.end50.i494.while.body.i488_crit_edge ]
  %i.075.in.i482 = phi i32 [ %shr.i462, %while.body.peel.next.i480 ], [ %i.075.i484, %do.end50.i494.while.body.i488_crit_edge ]
  %dst.074.i483 = phi ptr [ %add.ptr51.peel.i479, %while.body.peel.next.i480 ], [ %add.ptr51.i491, %do.end50.i494.while.body.i488_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.in.i482, i32 %114)
  %exitcond777.not = icmp eq i32 %i.075.in.i482, %114
  br i1 %exitcond777.not, label %while.body.i488.do.body42.i489_crit_edge, label %do.end50.i494, !prof !438

while.body.i488.do.body42.i489_crit_edge:         ; preds = %while.body.i488
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i489

do.body42.i489:                                   ; preds = %while.body.i488.do.body42.i489_crit_edge, %while.body.lr.ph.i.do.body42.i489_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #14, !srcloc !459
  unreachable

do.end50.i494:                                    ; preds = %while.body.i488
  %i.075.i484 = add nuw nsw i32 %i.075.in.i482, 1
  %115 = call i32 @llvm.umin.i32(i32 %len.addr.076.i481, i32 4096) #14
  %arrayidx.i490 = getelementptr ptr, ptr %110, i32 %i.075.i484
  %116 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i490, align 4
  %118 = call ptr @memcpy(ptr %dst.074.i483, ptr %117, i32 %115)
  %add.ptr51.i491 = getelementptr i8, ptr %dst.074.i483, i32 %115
  %sub52.i492 = sub i32 %len.addr.076.i481, %115
  %cmp24.not.i493 = icmp eq i32 %sub52.i492, 0
  br i1 %cmp24.not.i493, label %do.end50.i494.btrfsic_read_from_block_data.exit495_crit_edge, label %do.end50.i494.while.body.i488_crit_edge, !llvm.loop !460

do.end50.i494.while.body.i488_crit_edge:          ; preds = %do.end50.i494
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i488

do.end50.i494.btrfsic_read_from_block_data.exit495_crit_edge: ; preds = %do.end50.i494
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit495

btrfsic_read_from_block_data.exit495:             ; preds = %do.end50.i494.btrfsic_read_from_block_data.exit495_crit_edge, %do.end50.peel.i478.btrfsic_read_from_block_data.exit495_crit_edge, %if.end.i467.btrfsic_read_from_block_data.exit495_crit_edge
  %119 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 8)
  %120 = load i64, ptr %bytenr.i, align 1
  %121 = call i64 @llvm.bswap.i64(i64 %120) #14
  %122 = ptrtoint ptr %block11 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %block11, align 4
  %124 = ptrtoint ptr %block_ctx50 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %block_ctx50, align 8
  %126 = ptrtoint ptr %limit_nesting83 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %limit_nesting83, align 8
  %128 = ptrtoint ptr %generation.i496 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 8)
  %129 = load i64, ptr %generation.i496, align 1
  %130 = call i64 @llvm.bswap.i64(i64 %129) #14
  %call88 = call fastcc i32 @btrfsic_create_link_to_next_block(ptr noundef %state, ptr noundef %123, ptr noundef %125, i64 noundef %121, i32 noundef %127, ptr noundef %next_block_ctx, ptr noundef %next_block84, i32 noundef %force_iodone_flag, ptr noundef %num_copies, ptr noundef %mirror_num, ptr noundef nonnull %disk_item, i64 noundef %130)
  %131 = ptrtoint ptr %error131 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call88, ptr %error131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool91.not = icmp eq i32 %call88, 0
  br i1 %tobool91.not, label %if.end93, label %btrfsic_read_from_block_data.exit495.cleanup146.thread781_crit_edge

btrfsic_read_from_block_data.exit495.cleanup146.thread781_crit_edge: ; preds = %btrfsic_read_from_block_data.exit495
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup146.thread781

if.end93:                                         ; preds = %btrfsic_read_from_block_data.exit495
  %132 = ptrtoint ptr %next_block84 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %next_block84, align 4
  %cmp95.not = icmp eq ptr %133, null
  br i1 %cmp95.not, label %cleanup120.thread604, label %if.then97

cleanup120.thread604:                             ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 439, ptr nonnull %root_item) #14
  br label %cleanup138

if.then97:                                        ; preds = %if.end93
  %datav99 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10, i32 4
  %134 = ptrtoint ptr %datav99 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %datav99, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %138 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %138, i32 noundef 3392, i32 noundef 88) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then104, label %cleanup146

if.then104:                                       ; preds = %if.then97
  %139 = ptrtoint ptr %error131 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %error131, align 8
  %mem_to_free.i = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10, i32 6
  %140 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mem_to_free.i, align 8
  %tobool.not.i498 = icmp eq ptr %141, null
  br i1 %tobool.not.i498, label %if.then104.cleanup146.thread781_crit_edge, label %if.then.i500

if.then104.cleanup146.thread781_crit_edge:        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup146.thread781

if.then.i500:                                     ; preds = %if.then104
  %142 = ptrtoint ptr %datav99 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %datav99, align 8
  %tobool1.not.i = icmp eq ptr %143, null
  br i1 %tobool1.not.i, label %do.body6.i, label %do.body12.i, !prof !438

do.body6.i:                                       ; preds = %if.then.i500
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i:                                      ; preds = %if.then.i500
  %pagev.i = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10, i32 5
  %144 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pagev.i, align 4
  %tobool13.not.i = icmp eq ptr %145, null
  br i1 %tobool13.not.i, label %do.body23.i, label %do.end31.i, !prof !438

do.body23.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i:                                       ; preds = %do.body12.i
  %len.i = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10, i32 2
  %146 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len.i, align 8
  %conv.i501 = zext i32 %147 to i64
  %sub.i = add nuw nsw i64 %conv.i501, 4095
  %shr.i502 = lshr i64 %sub.i, 12
  %conv32.i = trunc i64 %shr.i502 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i)
  %cmp.not72.i = icmp eq i32 %conv32.i, 0
  br i1 %cmp.not72.i, label %do.end31.i.while.end.i_crit_edge, label %do.end31.i.while.body.i504_crit_edge

do.end31.i.while.body.i504_crit_edge:             ; preds = %do.end31.i
  br label %while.body.i504

do.end31.i.while.end.i_crit_edge:                 ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i504:                                  ; preds = %if.end48.i.while.body.i504_crit_edge, %do.end31.i.while.body.i504_crit_edge
  %num_pages.073.i = phi i32 [ %dec.i, %if.end48.i.while.body.i504_crit_edge ], [ %conv32.i, %do.end31.i.while.body.i504_crit_edge ]
  %dec.i = add nsw i32 %num_pages.073.i, -1
  %148 = ptrtoint ptr %datav99 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %datav99, align 8
  %arrayidx.i503 = getelementptr ptr, ptr %149, i32 %dec.i
  %150 = ptrtoint ptr %arrayidx.i503 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i503, align 4
  %tobool35.not.i = icmp eq ptr %151, null
  br i1 %tobool35.not.i, label %while.body.i504.if.end39.i_crit_edge, label %if.then36.i

while.body.i504.if.end39.i_crit_edge:             ; preds = %while.body.i504
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then36.i:                                      ; preds = %while.body.i504
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %arrayidx.i503 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %arrayidx.i503, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %while.body.i504.if.end39.i_crit_edge
  %153 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pagev.i, align 4
  %arrayidx41.i = getelementptr ptr, ptr %154, i32 %dec.i
  %155 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx41.i, align 4
  %tobool42.not.i = icmp eq ptr %156, null
  br i1 %tobool42.not.i, label %if.end39.i.if.end48.i_crit_edge, label %if.then43.i

if.end39.i.if.end48.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %156, i32 noundef 0) #14
  %157 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pagev.i, align 4
  %arrayidx47.i = getelementptr ptr, ptr %158, i32 %dec.i
  %159 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %arrayidx47.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end48.i_crit_edge
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end48.i.while.end.i_crit_edge, label %if.end48.i.while.body.i504_crit_edge

if.end48.i.while.body.i504_crit_edge:             ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i504

if.end48.i.while.end.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end48.i.while.end.i_crit_edge, %do.end31.i.while.end.i_crit_edge
  %160 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mem_to_free.i, align 8
  call void @kfree(ptr noundef %161) #14
  %162 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %mem_to_free.i, align 8
  %163 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %pagev.i, align 4
  %164 = ptrtoint ptr %datav99 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %datav99, align 8
  br label %cleanup146.thread781

cleanup120:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 439, ptr nonnull %root_item) #14
  br label %do.end56

land.lhs.true:                                    ; preds = %btrfsic_read_from_block_data.exit
  %165 = ptrtoint ptr %include_extent_data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %include_extent_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool126.not = icmp eq i32 %166, 0
  br i1 %tobool126.not, label %land.lhs.true.cleanup138_crit_edge, label %if.then127

land.lhs.true.cleanup138_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup138

if.then127:                                       ; preds = %land.lhs.true
  %167 = ptrtoint ptr %block11 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %block11, align 4
  %169 = ptrtoint ptr %block_ctx50 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %block_ctx50, align 8
  %171 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fs_info1.i, align 8
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %file_extent_item.i) #14
  %173 = call ptr @memset(ptr %file_extent_item.i, i32 255, i32 53)
  %add.i505 = add i32 %92, 101
  %conv.i506 = zext i32 %add.i505 to i64
  %add2.i = add nuw nsw i64 %conv.i506, 29
  %len.i507 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %170, i32 0, i32 2
  %174 = ptrtoint ptr %len.i507 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len.i507, align 8
  %conv3.i = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %conv3.i)
  %cmp.i508 = icmp ugt i64 %add2.i, %conv3.i
  %176 = ptrtoint ptr %170 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %170, align 8
  br i1 %cmp.i508, label %do.end.i509, label %if.end.i510

do.end.i509:                                      ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %170, i32 0, i32 3
  %178 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bdev.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i64 noundef %177, ptr noundef %181) #17
  br label %btrfsic_handle_extent_data.exit.thread

if.end.i510:                                      ; preds = %if.then127
  %conv.i.i = trunc i64 %177 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.i.i = add i32 %and.i.i, %add.i505
  %shr.i.i = lshr i32 %add.i.i, 12
  %add1.i.i = add i32 %92, 130
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %175)
  %cmp.i.i = icmp ugt i32 %add1.i.i, %175
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i510.if.end.i.i_crit_edge, !prof !438

if.end.i510.if.end.i.i_crit_edge:                 ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1149, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.i510.if.end.i.i_crit_edge
  %datav.i.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %170, i32 0, i32 4
  %182 = ptrtoint ptr %len.i507 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len.i507, align 8
  %sub32.peel.i.i = add i32 %183, 4095
  %div71.peel.i.i = lshr i32 %sub32.peel.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %div71.peel.i.i)
  %cmp33.not.peel.i.i = icmp ult i32 %shr.i.i, %div71.peel.i.i
  br i1 %cmp33.not.peel.i.i, label %do.end50.peel.i.i, label %if.end.i.i.do.body42.i.i_crit_edge, !prof !439

if.end.i.i.do.body42.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i.i

do.end50.peel.i.i:                                ; preds = %if.end.i.i
  %and23.i.i = and i32 %add.i.i, 4095
  %sub.peel.i.i = sub nuw nsw i32 4096, %and23.i.i
  %184 = call i32 @llvm.umin.i32(i32 %sub.peel.i.i, i32 29) #14
  %185 = ptrtoint ptr %datav.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %datav.i.i, align 8
  %arrayidx.peel.i.i = getelementptr ptr, ptr %186, i32 %shr.i.i
  %187 = ptrtoint ptr %arrayidx.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.peel.i.i, align 4
  %add.ptr.peel.i.i = getelementptr i8, ptr %188, i32 %and23.i.i
  %189 = call ptr @memcpy(ptr %file_extent_item.i, ptr %add.ptr.peel.i.i, i32 %184)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4068, i32 %and23.i.i)
  %cmp24.not.peel.i.i = icmp ult i32 %and23.i.i, 4068
  br i1 %cmp24.not.peel.i.i, label %do.end50.peel.i.i.btrfsic_read_from_block_data.exit.i_crit_edge, label %while.body.peel.next.i.i

do.end50.peel.i.i.btrfsic_read_from_block_data.exit.i_crit_edge: ; preds = %do.end50.peel.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit.i

while.body.peel.next.i.i:                         ; preds = %do.end50.peel.i.i
  %sub52.peel.i.i = sub nuw nsw i32 29, %184
  %add.ptr51.peel.i.i = getelementptr i8, ptr %file_extent_item.i, i32 %184
  %190 = add nsw i32 %div71.peel.i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end50.i.i.while.body.i.i_crit_edge, %while.body.peel.next.i.i
  %len.addr.076.i.i = phi i32 [ %sub52.peel.i.i, %while.body.peel.next.i.i ], [ %sub52.i.i, %do.end50.i.i.while.body.i.i_crit_edge ]
  %i.075.in.i.i = phi i32 [ %shr.i.i, %while.body.peel.next.i.i ], [ %i.075.i.i, %do.end50.i.i.while.body.i.i_crit_edge ]
  %dst.074.i.i = phi ptr [ %add.ptr51.peel.i.i, %while.body.peel.next.i.i ], [ %add.ptr51.i.i, %do.end50.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.in.i.i, i32 %190)
  %exitcond.not.i = icmp eq i32 %i.075.in.i.i, %190
  br i1 %exitcond.not.i, label %while.body.i.i.do.body42.i.i_crit_edge, label %do.end50.i.i, !prof !438

while.body.i.i.do.body42.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i.i

do.body42.i.i:                                    ; preds = %while.body.i.i.do.body42.i.i_crit_edge, %if.end.i.i.do.body42.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #14, !srcloc !459
  unreachable

do.end50.i.i:                                     ; preds = %while.body.i.i
  %i.075.i.i = add nuw nsw i32 %i.075.in.i.i, 1
  %191 = call i32 @llvm.umin.i32(i32 %len.addr.076.i.i, i32 4096) #14
  %arrayidx.i.i = getelementptr ptr, ptr %186, i32 %i.075.i.i
  %192 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx.i.i, align 4
  %194 = call ptr @memcpy(ptr %dst.074.i.i, ptr %193, i32 %191)
  %add.ptr51.i.i = getelementptr i8, ptr %dst.074.i.i, i32 %191
  %sub52.i.i = sub i32 %len.addr.076.i.i, %191
  %cmp24.not.i.i = icmp eq i32 %sub52.i.i, 0
  br i1 %cmp24.not.i.i, label %do.end50.i.i.btrfsic_read_from_block_data.exit.i_crit_edge, label %do.end50.i.i.while.body.i.i_crit_edge, !llvm.loop !460

do.end50.i.i.while.body.i.i_crit_edge:            ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

do.end50.i.i.btrfsic_read_from_block_data.exit.i_crit_edge: ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit.i

btrfsic_read_from_block_data.exit.i:              ; preds = %do.end50.i.i.btrfsic_read_from_block_data.exit.i_crit_edge, %do.end50.peel.i.i.btrfsic_read_from_block_data.exit.i_crit_edge
  %195 = ptrtoint ptr %type.i511 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %type.i511, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %196)
  %cmp7.not.i = icmp eq i8 %196, 1
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %btrfsic_read_from_block_data.exit.i.if.then12.i_crit_edge

btrfsic_read_from_block_data.exit.i.if.then12.i_crit_edge: ; preds = %btrfsic_read_from_block_data.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %btrfsic_read_from_block_data.exit.i
  %197 = ptrtoint ptr %disk_bytenr.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 8)
  %198 = load i64, ptr %disk_bytenr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %198)
  %cmp10.i = icmp eq i64 %198, 0
  br i1 %cmp10.i, label %lor.lhs.false.i.if.then12.i_crit_edge, label %if.end23.i

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %btrfsic_read_from_block_data.exit.i.if.then12.i_crit_edge
  %199 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %state, align 8
  %and.i512 = and i32 %200, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i512)
  %tobool.not.i513 = icmp eq i32 %and.i512, 0
  br i1 %tobool.not.i513, label %if.then12.i.btrfsic_handle_extent_data.exit_crit_edge, label %do.end16.i

if.then12.i.btrfsic_handle_extent_data.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_handle_extent_data.exit

do.end16.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv19.i = zext i8 %196 to i32
  %201 = ptrtoint ptr %disk_bytenr.i.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 8)
  %202 = load i64, ptr %disk_bytenr.i.i, align 1
  %203 = call i64 @llvm.bswap.i64(i64 %202) #14
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %conv19.i, i64 noundef %203) #17
  br label %btrfsic_handle_extent_data.exit

if.end23.i:                                       ; preds = %lor.lhs.false.i
  %add24.i = add nuw nsw i64 %conv.i506, 53
  %conv26.i = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add24.i, i64 %conv26.i)
  %cmp27.i = icmp ugt i64 %add24.i, %conv26.i
  %204 = ptrtoint ptr %170 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %170, align 8
  br i1 %cmp27.i, label %do.end32.i, label %if.end38.i

do.end32.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev35.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %170, i32 0, i32 3
  %206 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev35.i, align 4
  %bdev36.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %bdev36.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bdev36.i, align 4
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i64 noundef %205, ptr noundef %209) #17
  br label %btrfsic_handle_extent_data.exit.thread

if.end38.i:                                       ; preds = %if.end23.i
  %conv.i233.i = trunc i64 %205 to i32
  %and.i234.i = and i32 %conv.i233.i, 4095
  %add.i235.i = add i32 %and.i234.i, %add.i505
  %shr.i236.i = lshr i32 %add.i235.i, 12
  %add1.i237.i = add i32 %92, 154
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i237.i, i32 %183)
  %cmp.i239.i = icmp ugt i32 %add1.i237.i, %183
  br i1 %cmp.i239.i, label %do.end.i240.i, label %if.end38.i.if.end.i241.i_crit_edge, !prof !438

if.end38.i.if.end.i241.i_crit_edge:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i241.i

do.end.i240.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1149, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i241.i

if.end.i241.i:                                    ; preds = %do.end.i240.i, %if.end38.i.if.end.i241.i_crit_edge
  %210 = ptrtoint ptr %len.i507 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len.i507, align 8
  %sub32.peel.i243.i = add i32 %211, 4095
  %div71.peel.i244.i = lshr i32 %sub32.peel.i243.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i236.i, i32 %div71.peel.i244.i)
  %cmp33.not.peel.i245.i = icmp ult i32 %shr.i236.i, %div71.peel.i244.i
  br i1 %cmp33.not.peel.i245.i, label %do.end50.peel.i252.i, label %if.end.i241.i.do.body42.i263.i_crit_edge, !prof !439

if.end.i241.i.do.body42.i263.i_crit_edge:         ; preds = %if.end.i241.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i263.i

do.end50.peel.i252.i:                             ; preds = %if.end.i241.i
  %and23.i246.i = and i32 %add.i235.i, 4095
  %sub.peel.i247.i = sub nuw nsw i32 4096, %and23.i246.i
  %212 = call i32 @llvm.umin.i32(i32 %sub.peel.i247.i, i32 53) #14
  %213 = ptrtoint ptr %datav.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %datav.i.i, align 8
  %arrayidx.peel.i248.i = getelementptr ptr, ptr %214, i32 %shr.i236.i
  %215 = ptrtoint ptr %arrayidx.peel.i248.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.peel.i248.i, align 4
  %add.ptr.peel.i249.i = getelementptr i8, ptr %216, i32 %and23.i246.i
  %217 = call ptr @memcpy(ptr %file_extent_item.i, ptr %add.ptr.peel.i249.i, i32 %212)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4044, i32 %and23.i246.i)
  %cmp24.not.peel.i251.i = icmp ult i32 %and23.i246.i, 4044
  br i1 %cmp24.not.peel.i251.i, label %do.end50.peel.i252.i.btrfsic_read_from_block_data.exit269.i_crit_edge, label %while.body.peel.next.i254.i

do.end50.peel.i252.i.btrfsic_read_from_block_data.exit269.i_crit_edge: ; preds = %do.end50.peel.i252.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit269.i

while.body.peel.next.i254.i:                      ; preds = %do.end50.peel.i252.i
  %sub52.peel.i250.i = sub nuw nsw i32 53, %212
  %add.ptr51.peel.i253.i = getelementptr i8, ptr %file_extent_item.i, i32 %212
  %218 = add nsw i32 %div71.peel.i244.i, -1
  br label %while.body.i262.i

while.body.i262.i:                                ; preds = %do.end50.i268.i.while.body.i262.i_crit_edge, %while.body.peel.next.i254.i
  %len.addr.076.i255.i = phi i32 [ %sub52.peel.i250.i, %while.body.peel.next.i254.i ], [ %sub52.i266.i, %do.end50.i268.i.while.body.i262.i_crit_edge ]
  %i.075.in.i256.i = phi i32 [ %shr.i236.i, %while.body.peel.next.i254.i ], [ %i.075.i258.i, %do.end50.i268.i.while.body.i262.i_crit_edge ]
  %dst.074.i257.i = phi ptr [ %add.ptr51.peel.i253.i, %while.body.peel.next.i254.i ], [ %add.ptr51.i265.i, %do.end50.i268.i.while.body.i262.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.in.i256.i, i32 %218)
  %exitcond347.not.i = icmp eq i32 %i.075.in.i256.i, %218
  br i1 %exitcond347.not.i, label %while.body.i262.i.do.body42.i263.i_crit_edge, label %do.end50.i268.i, !prof !438

while.body.i262.i.do.body42.i263.i_crit_edge:     ; preds = %while.body.i262.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i263.i

do.body42.i263.i:                                 ; preds = %while.body.i262.i.do.body42.i263.i_crit_edge, %if.end.i241.i.do.body42.i263.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #14, !srcloc !459
  unreachable

do.end50.i268.i:                                  ; preds = %while.body.i262.i
  %i.075.i258.i = add nuw nsw i32 %i.075.in.i256.i, 1
  %219 = call i32 @llvm.umin.i32(i32 %len.addr.076.i255.i, i32 4096) #14
  %arrayidx.i264.i = getelementptr ptr, ptr %214, i32 %i.075.i258.i
  %220 = ptrtoint ptr %arrayidx.i264.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx.i264.i, align 4
  %222 = call ptr @memcpy(ptr %dst.074.i257.i, ptr %221, i32 %219)
  %add.ptr51.i265.i = getelementptr i8, ptr %dst.074.i257.i, i32 %219
  %sub52.i266.i = sub i32 %len.addr.076.i255.i, %219
  %cmp24.not.i267.i = icmp eq i32 %sub52.i266.i, 0
  br i1 %cmp24.not.i267.i, label %do.end50.i268.i.btrfsic_read_from_block_data.exit269.i_crit_edge, label %do.end50.i268.i.while.body.i262.i_crit_edge, !llvm.loop !460

do.end50.i268.i.while.body.i262.i_crit_edge:      ; preds = %do.end50.i268.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i262.i

do.end50.i268.i.btrfsic_read_from_block_data.exit269.i_crit_edge: ; preds = %do.end50.i268.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit269.i

btrfsic_read_from_block_data.exit269.i:           ; preds = %do.end50.i268.i.btrfsic_read_from_block_data.exit269.i_crit_edge, %do.end50.peel.i252.i.btrfsic_read_from_block_data.exit269.i_crit_edge
  %223 = ptrtoint ptr %disk_bytenr.i.i to i32
  call void @__asan_loadN_noabort(i32 %223, i32 8)
  %224 = load i64, ptr %disk_bytenr.i.i, align 1
  %225 = call i64 @llvm.bswap.i64(i64 %224) #14
  %226 = ptrtoint ptr %compression.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %compression.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp43.i = icmp eq i8 %227, 0
  br i1 %cmp43.i, label %if.then45.i, label %btrfsic_read_from_block_data.exit269.i.if.end50.i_crit_edge

btrfsic_read_from_block_data.exit269.i.if.end50.i_crit_edge: ; preds = %btrfsic_read_from_block_data.exit269.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.then45.i:                                      ; preds = %btrfsic_read_from_block_data.exit269.i
  call void @__sanitizer_cov_trace_pc() #16
  %228 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 8)
  %229 = load i64, ptr %offset.i.i, align 1
  %230 = call i64 @llvm.bswap.i64(i64 %229) #14
  %add47.i = add i64 %230, %225
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %btrfsic_read_from_block_data.exit269.i.if.end50.i_crit_edge
  %disk_num_bytes.i.sink.i = phi ptr [ %num_bytes.i.i, %if.then45.i ], [ %disk_num_bytes.i.i, %btrfsic_read_from_block_data.exit269.i.if.end50.i_crit_edge ]
  %next_bytenr.0.i = phi i64 [ %add47.i, %if.then45.i ], [ %225, %btrfsic_read_from_block_data.exit269.i.if.end50.i_crit_edge ]
  %231 = ptrtoint ptr %disk_num_bytes.i.sink.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 8)
  %232 = load i64, ptr %disk_num_bytes.i.sink.i, align 1
  %233 = call i64 @llvm.bswap.i64(i64 %232) #14
  %234 = ptrtoint ptr %file_extent_item.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %file_extent_item.i, align 8
  %236 = call i64 @llvm.bswap.i64(i64 %235) #14
  %237 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %state, align 8
  %and53.i = and i32 %238, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end50.i.if.end65.i_crit_edge, label %do.end58.i

if.end50.i.if.end65.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

do.end58.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  %239 = ptrtoint ptr %type.i511 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %type.i511, align 4
  %conv61.i = zext i8 %240 to i32
  %241 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %241, i32 8)
  %242 = load i64, ptr %offset.i.i, align 1
  %243 = call i64 @llvm.bswap.i64(i64 %242) #14
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %conv61.i, i64 noundef %225, i64 noundef %243, i64 noundef %233) #17
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end58.i, %if.end50.i.if.end65.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %232)
  %cmp66.not.i703 = icmp eq i64 %232, 0
  br i1 %cmp66.not.i703, label %if.end65.i.btrfsic_handle_extent_data.exit_crit_edge, label %if.end65.i.while.body.i514_crit_edge

if.end65.i.while.body.i514_crit_edge:             ; preds = %if.end65.i
  br label %while.body.i514

if.end65.i.btrfsic_handle_extent_data.exit_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_handle_extent_data.exit

while.body.i514:                                  ; preds = %cleanup162.i.while.body.i514_crit_edge, %if.end65.i.while.body.i514_crit_edge
  %next_bytenr.1.i705 = phi i64 [ %add160.i, %cleanup162.i.while.body.i514_crit_edge ], [ %next_bytenr.0.i, %if.end65.i.while.body.i514_crit_edge ]
  %num_bytes.1.i704 = phi i64 [ %sub.i515, %cleanup162.i.while.body.i514_crit_edge ], [ %233, %if.end65.i.while.body.i514_crit_edge ]
  %244 = ptrtoint ptr %datablock_size.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %datablock_size.i, align 8
  %conv68.i = zext i32 %245 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %num_bytes.1.i704, i64 %conv68.i)
  %cmp69.i = icmp ugt i64 %num_bytes.1.i704, %conv68.i
  %conv74.i = trunc i64 %num_bytes.1.i704 to i32
  %chunk_len.0.i = select i1 %cmp69.i, i32 %245, i32 %conv74.i
  %call78.i = call i32 @btrfs_num_copies(ptr noundef %172, i64 noundef %next_bytenr.1.i705, i64 noundef %conv68.i) #14
  %246 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %state, align 8
  %and80.i = and i32 %247, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %while.body.i514.if.end88.i_crit_edge, label %do.end85.i

while.body.i514.if.end88.i_crit_edge:             ; preds = %while.body.i514
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88.i

do.end85.i:                                       ; preds = %while.body.i514
  call void @__sanitizer_cov_trace_pc() #16
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %next_bytenr.1.i705, i32 noundef %call78.i) #17
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end85.i, %while.body.i514.if.end88.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call78.i)
  %cmp89.not328.i = icmp slt i32 %call78.i, 1
  br i1 %cmp89.not328.i, label %if.end88.i.cleanup162.i_crit_edge, label %if.end88.i.for.body.i_crit_edge

if.end88.i.for.body.i_crit_edge:                  ; preds = %if.end88.i
  br label %for.body.i

if.end88.i.cleanup162.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end88.i.for.body.i_crit_edge
  %mirror_num.0329.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end88.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %next_block_ctx.i) #14
  %248 = call ptr @memset(ptr %next_block_ctx.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_was_created.i) #14
  %249 = ptrtoint ptr %block_was_created.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 -1, ptr %block_was_created.i, align 4, !annotation !443
  %250 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %state, align 8
  %and92.i = and i32 %251, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %for.body.i.if.end100.i_crit_edge, label %do.end97.i

for.body.i.if.end100.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

do.end97.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %mirror_num.0329.i) #17
  br label %if.end100.i

if.end100.i:                                      ; preds = %do.end97.i, %for.body.i.if.end100.i_crit_edge
  %252 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %state, align 8
  %and102.i = and i32 %253, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end100.i.if.end110.i_crit_edge, label %do.end107.i

if.end100.i.if.end110.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110.i

do.end107.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  %call109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i64 noundef %next_bytenr.1.i705, i32 noundef %chunk_len.0.i) #17
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end107.i, %if.end100.i.if.end110.i_crit_edge
  %call111.i = call fastcc i32 @btrfsic_map_block(ptr noundef %state, i64 noundef %next_bytenr.1.i705, i32 noundef %chunk_len.0.i, ptr noundef nonnull %next_block_ctx.i, i32 noundef %mirror_num.0329.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end119.i, label %cleanup162.thread.i

cleanup162.thread.i:                              ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #16
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i64 noundef %next_bytenr.1.i705, i32 noundef %mirror_num.0329.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_was_created.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %next_block_ctx.i) #14
  br label %btrfsic_handle_extent_data.exit.thread

if.end119.i:                                      ; preds = %if.end110.i
  %call121.i = call fastcc ptr @btrfsic_block_lookup_or_add(ptr noundef %state, ptr noundef nonnull %next_block_ctx.i, ptr noundef nonnull @.str.172, i32 noundef 0, i32 noundef %force_iodone_flag, i32 noundef %lnot.ext.i, i32 noundef %mirror_num.0329.i, ptr noundef nonnull %block_was_created.i) #14
  %cmp122.i = icmp eq ptr %call121.i, null
  br i1 %cmp122.i, label %if.then124.i, label %if.end125.i

if.then124.i:                                     ; preds = %if.end119.i
  %254 = ptrtoint ptr %mem_to_free.i278.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mem_to_free.i278.i, align 8
  %tobool.not.i.i = icmp eq ptr %255, null
  br i1 %tobool.not.i.i, label %if.then124.i.btrfsic_release_block_ctx.exit.i_crit_edge, label %if.then.i.i

if.then124.i.btrfsic_release_block_ctx.exit.i_crit_edge: ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit.i

if.then.i.i:                                      ; preds = %if.then124.i
  %256 = ptrtoint ptr %datav.i280.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %datav.i280.i, align 8
  %tobool1.not.i.i = icmp eq ptr %257, null
  br i1 %tobool1.not.i.i, label %do.body6.i.i, label %do.body12.i.i, !prof !438

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i.i:                                    ; preds = %if.then.i.i
  %258 = ptrtoint ptr %pagev.i284.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pagev.i284.i, align 4
  %tobool13.not.i.i = icmp eq ptr %259, null
  br i1 %tobool13.not.i.i, label %do.body23.i.i, label %do.end31.i.i, !prof !438

do.body23.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i.i:                                     ; preds = %do.body12.i.i
  %260 = ptrtoint ptr %len.i288.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %len.i288.i, align 8
  %conv.i274.i = zext i32 %261 to i64
  %sub.i.i = add nuw nsw i64 %conv.i274.i, 4095
  %shr.i275.i = lshr i64 %sub.i.i, 12
  %conv32.i.i = trunc i64 %shr.i275.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i.i)
  %cmp.not72.i.i = icmp eq i32 %conv32.i.i, 0
  br i1 %cmp.not72.i.i, label %do.end31.i.i.while.end.i.i_crit_edge, label %do.end31.i.i.while.body.i277.i_crit_edge

do.end31.i.i.while.body.i277.i_crit_edge:         ; preds = %do.end31.i.i
  br label %while.body.i277.i

do.end31.i.i.while.end.i.i_crit_edge:             ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.i277.i:                                ; preds = %if.end48.i.i.while.body.i277.i_crit_edge, %do.end31.i.i.while.body.i277.i_crit_edge
  %num_pages.073.i.i = phi i32 [ %dec.i.i, %if.end48.i.i.while.body.i277.i_crit_edge ], [ %conv32.i.i, %do.end31.i.i.while.body.i277.i_crit_edge ]
  %dec.i.i = add nsw i32 %num_pages.073.i.i, -1
  %arrayidx.i276.i = getelementptr ptr, ptr %257, i32 %dec.i.i
  %262 = ptrtoint ptr %arrayidx.i276.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i276.i, align 4
  %tobool35.not.i.i = icmp eq ptr %263, null
  br i1 %tobool35.not.i.i, label %while.body.i277.i.if.end39.i.i_crit_edge, label %if.then36.i.i

while.body.i277.i.if.end39.i.i_crit_edge:         ; preds = %while.body.i277.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i

if.then36.i.i:                                    ; preds = %while.body.i277.i
  call void @__sanitizer_cov_trace_pc() #16
  %264 = ptrtoint ptr %arrayidx.i276.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr null, ptr %arrayidx.i276.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then36.i.i, %while.body.i277.i.if.end39.i.i_crit_edge
  %arrayidx41.i.i = getelementptr ptr, ptr %259, i32 %dec.i.i
  %265 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx41.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %266, null
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end48.i.i_crit_edge, label %if.then43.i.i

if.end39.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %266, i32 noundef 0) #14
  %267 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr null, ptr %arrayidx41.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end48.i.i_crit_edge
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.end48.i.i.while.end.i.i_crit_edge, label %if.end48.i.i.while.body.i277.i_crit_edge

if.end48.i.i.while.body.i277.i_crit_edge:         ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i277.i

if.end48.i.i.while.end.i.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end48.i.i.while.end.i.i_crit_edge, %do.end31.i.i.while.end.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %255) #14
  br label %btrfsic_release_block_ctx.exit.i

btrfsic_release_block_ctx.exit.i:                 ; preds = %while.end.i.i, %if.then124.i.btrfsic_release_block_ctx.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_was_created.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %next_block_ctx.i) #14
  br label %btrfsic_handle_extent_data.exit.thread

if.end125.i:                                      ; preds = %if.end119.i
  %268 = ptrtoint ptr %block_was_created.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %block_was_created.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool126.not.i = icmp eq i32 %269, 0
  br i1 %tobool126.not.i, label %if.then127.i, label %if.end125.i.if.end151.i_crit_edge

if.end125.i.if.end151.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151.i

if.then127.i:                                     ; preds = %if.end125.i
  %270 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %state, align 8
  %and129.i = and i32 %271, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  br i1 %tobool130.not.i, label %if.then127.i.if.end148.i_crit_edge, label %land.lhs.true.i

if.then127.i.if.end148.i_crit_edge:               ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148.i

land.lhs.true.i:                                  ; preds = %if.then127.i
  %logical_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %call121.i, i32 0, i32 5
  %272 = ptrtoint ptr %logical_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %logical_bytenr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %273, i64 %next_bytenr.1.i705)
  %cmp131.not.i = icmp eq i64 %273, %next_bytenr.1.i705
  br i1 %cmp131.not.i, label %land.lhs.true.i.if.end148.i_crit_edge, label %land.lhs.true133.i

land.lhs.true.i.if.end148.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148.i

land.lhs.true133.i:                               ; preds = %land.lhs.true.i
  %is_metadata.i = getelementptr inbounds %struct.btrfsic_block, ptr %call121.i, i32 0, i32 1
  %274 = ptrtoint ptr %is_metadata.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %bf.load.i = load i8, ptr %is_metadata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool134.not.i = icmp sgt i8 %bf.load.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %273)
  %cmp137.i = icmp eq i64 %273, 0
  %or.cond.i = select i1 %tobool134.not.i, i1 %cmp137.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true133.i.if.end148.i_crit_edge, label %do.end142.i

land.lhs.true133.i.if.end148.i_crit_edge:         ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148.i

do.end142.i:                                      ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #16
  %275 = ptrtoint ptr %dev144.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev144.i, align 4
  %bdev145.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %bdev145.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %bdev145.i, align 4
  %279 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %dev_bytenr.i, align 8
  %call147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i64 noundef %next_bytenr.1.i705, ptr noundef %278, i64 noundef %280, i32 noundef %mirror_num.0329.i, i64 noundef %273) #17
  br label %if.end148.i

if.end148.i:                                      ; preds = %do.end142.i, %land.lhs.true133.i.if.end148.i_crit_edge, %land.lhs.true.i.if.end148.i_crit_edge, %if.then127.i.if.end148.i_crit_edge
  %logical_bytenr149.i = getelementptr inbounds %struct.btrfsic_block, ptr %call121.i, i32 0, i32 5
  %281 = ptrtoint ptr %logical_bytenr149.i to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %next_bytenr.1.i705, ptr %logical_bytenr149.i, align 8
  %mirror_num150.i = getelementptr inbounds %struct.btrfsic_block, ptr %call121.i, i32 0, i32 2
  %282 = ptrtoint ptr %mirror_num150.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %mirror_num.0329.i, ptr %mirror_num150.i, align 8
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.end148.i, %if.end125.i.if.end151.i_crit_edge
  %call152.i = call fastcc ptr @btrfsic_block_link_lookup_or_add(ptr noundef %state, ptr noundef nonnull %next_block_ctx.i, ptr noundef nonnull %call121.i, ptr noundef %168, i64 noundef %236) #14
  %283 = ptrtoint ptr %mem_to_free.i278.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mem_to_free.i278.i, align 8
  %tobool.not.i279.i = icmp eq ptr %284, null
  br i1 %tobool.not.i279.i, label %if.end151.i.btrfsic_release_block_ctx.exit309.i_crit_edge, label %if.then.i282.i

if.end151.i.btrfsic_release_block_ctx.exit309.i_crit_edge: ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit309.i

if.then.i282.i:                                   ; preds = %if.end151.i
  %285 = ptrtoint ptr %datav.i280.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %datav.i280.i, align 8
  %tobool1.not.i281.i = icmp eq ptr %286, null
  br i1 %tobool1.not.i281.i, label %do.body6.i283.i, label %do.body12.i286.i, !prof !438

do.body6.i283.i:                                  ; preds = %if.then.i282.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i286.i:                                 ; preds = %if.then.i282.i
  %287 = ptrtoint ptr %pagev.i284.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pagev.i284.i, align 4
  %tobool13.not.i285.i = icmp eq ptr %288, null
  br i1 %tobool13.not.i285.i, label %do.body23.i287.i, label %do.end31.i294.i, !prof !438

do.body23.i287.i:                                 ; preds = %do.body12.i286.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i294.i:                                  ; preds = %do.body12.i286.i
  %289 = ptrtoint ptr %len.i288.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %len.i288.i, align 8
  %conv.i289.i = zext i32 %290 to i64
  %sub.i290.i = add nuw nsw i64 %conv.i289.i, 4095
  %shr.i291.i = lshr i64 %sub.i290.i, 12
  %conv32.i292.i = trunc i64 %shr.i291.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i292.i)
  %cmp.not72.i293.i = icmp eq i32 %conv32.i292.i, 0
  br i1 %cmp.not72.i293.i, label %do.end31.i294.i.while.end.i308.i_crit_edge, label %do.end31.i294.i.while.body.i299.i_crit_edge

do.end31.i294.i.while.body.i299.i_crit_edge:      ; preds = %do.end31.i294.i
  br label %while.body.i299.i

do.end31.i294.i.while.end.i308.i_crit_edge:       ; preds = %do.end31.i294.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i308.i

while.body.i299.i:                                ; preds = %if.end48.i307.i.while.body.i299.i_crit_edge, %do.end31.i294.i.while.body.i299.i_crit_edge
  %num_pages.073.i295.i = phi i32 [ %dec.i296.i, %if.end48.i307.i.while.body.i299.i_crit_edge ], [ %conv32.i292.i, %do.end31.i294.i.while.body.i299.i_crit_edge ]
  %dec.i296.i = add nsw i32 %num_pages.073.i295.i, -1
  %arrayidx.i297.i = getelementptr ptr, ptr %286, i32 %dec.i296.i
  %291 = ptrtoint ptr %arrayidx.i297.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx.i297.i, align 4
  %tobool35.not.i298.i = icmp eq ptr %292, null
  br i1 %tobool35.not.i298.i, label %while.body.i299.i.if.end39.i303.i_crit_edge, label %if.then36.i300.i

while.body.i299.i.if.end39.i303.i_crit_edge:      ; preds = %while.body.i299.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i303.i

if.then36.i300.i:                                 ; preds = %while.body.i299.i
  call void @__sanitizer_cov_trace_pc() #16
  %293 = ptrtoint ptr %arrayidx.i297.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr null, ptr %arrayidx.i297.i, align 4
  br label %if.end39.i303.i

if.end39.i303.i:                                  ; preds = %if.then36.i300.i, %while.body.i299.i.if.end39.i303.i_crit_edge
  %arrayidx41.i301.i = getelementptr ptr, ptr %288, i32 %dec.i296.i
  %294 = ptrtoint ptr %arrayidx41.i301.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx41.i301.i, align 4
  %tobool42.not.i302.i = icmp eq ptr %295, null
  br i1 %tobool42.not.i302.i, label %if.end39.i303.i.if.end48.i307.i_crit_edge, label %if.then43.i305.i

if.end39.i303.i.if.end48.i307.i_crit_edge:        ; preds = %if.end39.i303.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i307.i

if.then43.i305.i:                                 ; preds = %if.end39.i303.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %295, i32 noundef 0) #14
  %296 = ptrtoint ptr %arrayidx41.i301.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %arrayidx41.i301.i, align 4
  br label %if.end48.i307.i

if.end48.i307.i:                                  ; preds = %if.then43.i305.i, %if.end39.i303.i.if.end48.i307.i_crit_edge
  %cmp.not.i306.i = icmp eq i32 %dec.i296.i, 0
  br i1 %cmp.not.i306.i, label %if.end48.i307.i.while.end.i308.i_crit_edge, label %if.end48.i307.i.while.body.i299.i_crit_edge

if.end48.i307.i.while.body.i299.i_crit_edge:      ; preds = %if.end48.i307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i299.i

if.end48.i307.i.while.end.i308.i_crit_edge:       ; preds = %if.end48.i307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i308.i

while.end.i308.i:                                 ; preds = %if.end48.i307.i.while.end.i308.i_crit_edge, %do.end31.i294.i.while.end.i308.i_crit_edge
  call void @kfree(ptr noundef nonnull %284) #14
  br label %btrfsic_release_block_ctx.exit309.i

btrfsic_release_block_ctx.exit309.i:              ; preds = %while.end.i308.i, %if.end151.i.btrfsic_release_block_ctx.exit309.i_crit_edge
  %cmp153.not.i = icmp eq ptr %call152.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_was_created.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %next_block_ctx.i) #14
  br i1 %cmp153.not.i, label %btrfsic_release_block_ctx.exit309.i.btrfsic_handle_extent_data.exit.thread_crit_edge, label %for.inc.i

btrfsic_release_block_ctx.exit309.i.btrfsic_handle_extent_data.exit.thread_crit_edge: ; preds = %btrfsic_release_block_ctx.exit309.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_handle_extent_data.exit.thread

for.inc.i:                                        ; preds = %btrfsic_release_block_ctx.exit309.i
  %inc.i = add i32 %mirror_num.0329.i, 1
  %cmp89.not.i = icmp sgt i32 %inc.i, %call78.i
  br i1 %cmp89.not.i, label %for.inc.i.cleanup162.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cleanup162.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162.i

cleanup162.i:                                     ; preds = %for.inc.i.cleanup162.i_crit_edge, %if.end88.i.cleanup162.i_crit_edge
  %conv159.i = zext i32 %chunk_len.0.i to i64
  %add160.i = add i64 %next_bytenr.1.i705, %conv159.i
  %sub.i515 = sub i64 %num_bytes.1.i704, %conv159.i
  %cmp66.not.i = icmp eq i64 %sub.i515, 0
  br i1 %cmp66.not.i, label %cleanup162.i.btrfsic_handle_extent_data.exit_crit_edge, label %cleanup162.i.while.body.i514_crit_edge

cleanup162.i.while.body.i514_crit_edge:           ; preds = %cleanup162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i514

cleanup162.i.btrfsic_handle_extent_data.exit_crit_edge: ; preds = %cleanup162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_handle_extent_data.exit

btrfsic_handle_extent_data.exit.thread:           ; preds = %btrfsic_release_block_ctx.exit309.i.btrfsic_handle_extent_data.exit.thread_crit_edge, %btrfsic_release_block_ctx.exit.i, %cleanup162.thread.i, %do.end32.i, %do.end.i509
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %file_extent_item.i) #14
  %297 = ptrtoint ptr %error131 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 -1, ptr %error131, align 8
  br label %cleanup146.thread

btrfsic_handle_extent_data.exit:                  ; preds = %cleanup162.i.btrfsic_handle_extent_data.exit_crit_edge, %if.end65.i.btrfsic_handle_extent_data.exit_crit_edge, %do.end16.i, %if.then12.i.btrfsic_handle_extent_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %file_extent_item.i) #14
  %298 = ptrtoint ptr %error131 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 0, ptr %error131, align 8
  br label %cleanup138

cleanup138:                                       ; preds = %btrfsic_handle_extent_data.exit, %land.lhs.true.cleanup138_crit_edge, %cleanup120.thread604, %btrfsic_read_from_block_data.exit.cleanup138_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %disk_item) #14
  br label %continue_with_current_leaf_stack_frame

cleanup146.thread:                                ; preds = %btrfsic_handle_extent_data.exit.thread, %do.end56
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %disk_item) #14
  br label %one_stack_frame_backwards.preheader

cleanup146.thread781:                             ; preds = %while.end.i, %if.then104.cleanup146.thread781_crit_edge, %btrfsic_read_from_block_data.exit495.cleanup146.thread781_crit_edge
  call void @llvm.lifetime.end.p0(i64 439, ptr nonnull %root_item) #14
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %disk_item) #14
  br label %one_stack_frame_backwards.preheader

cleanup146:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  %299 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 20111300, ptr %call7.i.i.i, align 8
  %i108 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 3
  %300 = ptrtoint ptr %i108 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 -1, ptr %i108, align 4
  %301 = ptrtoint ptr %next_block84 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %next_block84, align 4
  %block110 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 7
  %303 = ptrtoint ptr %block110 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %block110, align 4
  %block_ctx112 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 8
  %304 = ptrtoint ptr %block_ctx112 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %next_block_ctx, ptr %block_ctx112, align 8
  %next_block113 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 9
  %305 = ptrtoint ptr %next_block113 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr null, ptr %next_block113, align 4
  %hdr114 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 11
  %306 = ptrtoint ptr %hdr114 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %137, ptr %hdr114, align 8
  %307 = ptrtoint ptr %limit_nesting83 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %limit_nesting83, align 8
  %sub116 = add i32 %308, -1
  %limit_nesting117 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 4
  %309 = ptrtoint ptr %limit_nesting117 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %sub116, ptr %limit_nesting117, align 8
  %prev118 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i, i32 0, i32 12
  %310 = ptrtoint ptr %prev118 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %sf.0, ptr %prev118, align 4
  call void @llvm.lifetime.end.p0(i64 439, ptr nonnull %root_item) #14
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %disk_item) #14
  br label %continue_with_new_stack_frame.backedge

if.else149:                                       ; preds = %continue_with_new_stack_frame
  br i1 %cmp17, label %if.then154, label %if.else149.if.end178_crit_edge

if.else149.if.end178_crit_edge:                   ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

if.then154:                                       ; preds = %if.else149
  %nritems.i516 = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 7
  %311 = ptrtoint ptr %nritems.i516 to i32
  call void @__asan_loadN_noabort(i32 %311, i32 4)
  %312 = load i32, ptr %nritems.i516, align 1
  %313 = call i32 @llvm.bswap.i32(i32 %312) #14
  %nr157 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 1
  %314 = ptrtoint ptr %nr157 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %nr157, align 4
  %315 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %state, align 8
  %and159 = and i32 %316, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.then154.if.end178_crit_edge, label %do.end164

if.then154.if.end178_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

do.end164:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  %block_ctx166 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 8
  %317 = ptrtoint ptr %block_ctx166 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %block_ctx166, align 8
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %318, align 8
  %321 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %level, align 1
  %conv170 = zext i8 %322 to i32
  %generation.i517 = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 5
  %323 = ptrtoint ptr %generation.i517 to i32
  call void @__asan_loadN_noabort(i32 %323, i32 8)
  %324 = load i64, ptr %generation.i517, align 1
  %325 = call i64 @llvm.bswap.i64(i64 %324) #14
  %owner.i518 = getelementptr inbounds %struct.btrfs_header, ptr %26, i32 0, i32 6
  %326 = ptrtoint ptr %owner.i518 to i32
  call void @__asan_loadN_noabort(i32 %326, i32 8)
  %327 = load i64, ptr %owner.i518, align 1
  %328 = call i64 @llvm.bswap.i64(i64 %327) #14
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i64 noundef %320, i32 noundef %conv170, i32 noundef %313, i64 noundef %325, i64 noundef %328) #17
  br label %if.end178

if.end178:                                        ; preds = %do.end164, %if.then154.if.end178_crit_edge, %if.else149.if.end178_crit_edge
  %num_copies179 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 5
  %nr193 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 1
  %mirror_num183 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 6
  %ptrs = getelementptr inbounds %struct.btrfs_node, ptr %26, i32 0, i32 1
  %329 = ptrtoint ptr %26 to i32
  %block_ctx203 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 8
  %limit_nesting223 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 4
  %next_block_ctx224 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10
  %next_block225 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 9
  %error231 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 2
  br label %continue_with_current_node_stack_frame

continue_with_current_node_stack_frame:           ; preds = %cleanup263, %if.end178
  %330 = ptrtoint ptr %num_copies179 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %num_copies179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %cmp180 = icmp eq i32 %331, 0
  br i1 %cmp180, label %continue_with_current_node_stack_frame.if.then187_crit_edge, label %lor.lhs.false182

continue_with_current_node_stack_frame.if.then187_crit_edge: ; preds = %continue_with_current_node_stack_frame
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then187

lor.lhs.false182:                                 ; preds = %continue_with_current_node_stack_frame
  %332 = ptrtoint ptr %mirror_num183 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %mirror_num183, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %333, i32 %331)
  %cmp185 = icmp sgt i32 %333, %331
  br i1 %cmp185, label %lor.lhs.false182.if.then187_crit_edge, label %lor.lhs.false182.if.end191_crit_edge

lor.lhs.false182.if.end191_crit_edge:             ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191

lor.lhs.false182.if.then187_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then187

if.then187:                                       ; preds = %lor.lhs.false182.if.then187_crit_edge, %continue_with_current_node_stack_frame.if.then187_crit_edge
  %334 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %i16, align 4
  %inc189 = add i32 %335, 1
  store i32 %inc189, ptr %i16, align 4
  %336 = ptrtoint ptr %num_copies179 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 0, ptr %num_copies179, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %lor.lhs.false182.if.end191_crit_edge
  %337 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %i16, align 4
  %339 = ptrtoint ptr %nr193 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %nr193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %338, i32 %340)
  %cmp194 = icmp ult i32 %338, %340
  br i1 %cmp194, label %if.then196, label %if.end191.one_stack_frame_backwards.preheader_crit_edge

if.end191.one_stack_frame_backwards.preheader_crit_edge: ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #16
  br label %one_stack_frame_backwards.preheader

if.then196:                                       ; preds = %if.end191
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %key_ptr) #14
  %341 = call ptr @memset(ptr %key_ptr, i32 255, i32 33)
  %342 = ptrtoint ptr %i16 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %i16, align 4
  %add.ptr200 = getelementptr %struct.btrfs_key_ptr, ptr %ptrs, i32 %343
  %344 = ptrtoint ptr %add.ptr200 to i32
  %sub201 = sub i32 %344, %329
  %add202 = add i32 %sub201, 33
  %345 = ptrtoint ptr %block_ctx203 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %block_ctx203, align 8
  %len204 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %346, i32 0, i32 2
  %347 = ptrtoint ptr %len204 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %len204, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add202, i32 %348)
  %cmp205 = icmp ugt i32 %add202, %348
  %349 = ptrtoint ptr %346 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %346, align 8
  br i1 %cmp205, label %do.end210, label %if.end.i527

do.end210:                                        ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #16
  %dev215 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %346, i32 0, i32 3
  %351 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev215, align 4
  %bdev216 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %352, i32 0, i32 1
  %353 = ptrtoint ptr %bdev216 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %bdev216, align 4
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i64 noundef %350, ptr noundef %354) #17
  br label %cleanup268.thread

if.end.i527:                                      ; preds = %if.then196
  %conv.i519 = trunc i64 %350 to i32
  %and.i520 = and i32 %conv.i519, 4095
  %add.i521 = add i32 %and.i520, %sub201
  %shr.i522 = lshr i32 %add.i521, 12
  %355 = ptrtoint ptr %len204 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %len204, align 8
  %sub32.peel.i529 = add i32 %356, 4095
  %div71.peel.i530 = lshr i32 %sub32.peel.i529, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i522, i32 %div71.peel.i530)
  %cmp33.not.peel.i531 = icmp ult i32 %shr.i522, %div71.peel.i530
  br i1 %cmp33.not.peel.i531, label %do.end50.peel.i539, label %if.end.i527.do.body42.i550_crit_edge, !prof !439

if.end.i527.do.body42.i550_crit_edge:             ; preds = %if.end.i527
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i550

do.end50.peel.i539:                               ; preds = %if.end.i527
  %datav.i528 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %346, i32 0, i32 4
  %and23.i533 = and i32 %add.i521, 4095
  %sub.peel.i534 = sub nuw nsw i32 4096, %and23.i533
  %357 = call i32 @llvm.umin.i32(i32 %sub.peel.i534, i32 33) #14
  %358 = ptrtoint ptr %datav.i528 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %datav.i528, align 8
  %arrayidx.peel.i535 = getelementptr ptr, ptr %359, i32 %shr.i522
  %360 = ptrtoint ptr %arrayidx.peel.i535 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx.peel.i535, align 4
  %add.ptr.peel.i536 = getelementptr i8, ptr %361, i32 %and23.i533
  %362 = call ptr @memcpy(ptr %key_ptr, ptr %add.ptr.peel.i536, i32 %357)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4064, i32 %and23.i533)
  %cmp24.not.peel.i538 = icmp ult i32 %and23.i533, 4064
  br i1 %cmp24.not.peel.i538, label %do.end50.peel.i539.btrfsic_read_from_block_data.exit557_crit_edge, label %while.body.peel.next.i541

do.end50.peel.i539.btrfsic_read_from_block_data.exit557_crit_edge: ; preds = %do.end50.peel.i539
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit557

while.body.peel.next.i541:                        ; preds = %do.end50.peel.i539
  %sub52.peel.i537 = sub nuw nsw i32 33, %357
  %add.ptr51.peel.i540 = getelementptr i8, ptr %key_ptr, i32 %357
  %363 = add nsw i32 %div71.peel.i530, -1
  br label %while.body.i549

while.body.i549:                                  ; preds = %do.end50.i555.while.body.i549_crit_edge, %while.body.peel.next.i541
  %len.addr.076.i542 = phi i32 [ %sub52.peel.i537, %while.body.peel.next.i541 ], [ %sub52.i553, %do.end50.i555.while.body.i549_crit_edge ]
  %i.075.in.i543 = phi i32 [ %shr.i522, %while.body.peel.next.i541 ], [ %i.075.i545, %do.end50.i555.while.body.i549_crit_edge ]
  %dst.074.i544 = phi ptr [ %add.ptr51.peel.i540, %while.body.peel.next.i541 ], [ %add.ptr51.i552, %do.end50.i555.while.body.i549_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.in.i543, i32 %363)
  %exitcond.not = icmp eq i32 %i.075.in.i543, %363
  br i1 %exitcond.not, label %while.body.i549.do.body42.i550_crit_edge, label %do.end50.i555, !prof !438

while.body.i549.do.body42.i550_crit_edge:         ; preds = %while.body.i549
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i550

do.body42.i550:                                   ; preds = %while.body.i549.do.body42.i550_crit_edge, %if.end.i527.do.body42.i550_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #14, !srcloc !459
  unreachable

do.end50.i555:                                    ; preds = %while.body.i549
  %i.075.i545 = add nuw nsw i32 %i.075.in.i543, 1
  %364 = call i32 @llvm.umin.i32(i32 %len.addr.076.i542, i32 4096) #14
  %arrayidx.i551 = getelementptr ptr, ptr %359, i32 %i.075.i545
  %365 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx.i551, align 4
  %367 = call ptr @memcpy(ptr %dst.074.i544, ptr %366, i32 %364)
  %add.ptr51.i552 = getelementptr i8, ptr %dst.074.i544, i32 %364
  %sub52.i553 = sub i32 %len.addr.076.i542, %364
  %cmp24.not.i554 = icmp eq i32 %sub52.i553, 0
  br i1 %cmp24.not.i554, label %do.end50.i555.btrfsic_read_from_block_data.exit557_crit_edge, label %do.end50.i555.while.body.i549_crit_edge, !llvm.loop !460

do.end50.i555.while.body.i549_crit_edge:          ; preds = %do.end50.i555
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i549

do.end50.i555.btrfsic_read_from_block_data.exit557_crit_edge: ; preds = %do.end50.i555
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_read_from_block_data.exit557

btrfsic_read_from_block_data.exit557:             ; preds = %do.end50.i555.btrfsic_read_from_block_data.exit557_crit_edge, %do.end50.peel.i539.btrfsic_read_from_block_data.exit557_crit_edge
  %368 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %368, i32 8)
  %369 = load i64, ptr %12, align 1
  %370 = call i64 @llvm.bswap.i64(i64 %369) #14
  %371 = ptrtoint ptr %block11 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %block11, align 4
  %373 = ptrtoint ptr %block_ctx203 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %block_ctx203, align 8
  %375 = ptrtoint ptr %limit_nesting223 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %limit_nesting223, align 8
  %377 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %377, i32 8)
  %378 = load i64, ptr %13, align 1
  %379 = call i64 @llvm.bswap.i64(i64 %378) #14
  %call230 = call fastcc i32 @btrfsic_create_link_to_next_block(ptr noundef %state, ptr noundef %372, ptr noundef %374, i64 noundef %370, i32 noundef %376, ptr noundef %next_block_ctx224, ptr noundef %next_block225, i32 noundef %force_iodone_flag, ptr noundef %num_copies179, ptr noundef %mirror_num183, ptr noundef nonnull %key_ptr, i64 noundef %379)
  %380 = ptrtoint ptr %error231 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %call230, ptr %error231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool233.not = icmp eq i32 %call230, 0
  br i1 %tobool233.not, label %if.end235, label %btrfsic_read_from_block_data.exit557.cleanup268.thread_crit_edge

btrfsic_read_from_block_data.exit557.cleanup268.thread_crit_edge: ; preds = %btrfsic_read_from_block_data.exit557
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup268.thread

if.end235:                                        ; preds = %btrfsic_read_from_block_data.exit557
  %381 = ptrtoint ptr %next_block225 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %next_block225, align 4
  %cmp237.not = icmp eq ptr %382, null
  br i1 %cmp237.not, label %cleanup263, label %if.then239

if.then239:                                       ; preds = %if.end235
  %datav242 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 10, i32 4
  %383 = ptrtoint ptr %datav242 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %datav242, align 8
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %384, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %387 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i559 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %387, i32 noundef 3392, i32 noundef 88) #19
  %tobool.not.i560 = icmp eq ptr %call7.i.i.i559, null
  br i1 %tobool.not.i560, label %if.then247, label %cleanup268

if.then247:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #16
  %388 = ptrtoint ptr %error231 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 -1, ptr %error231, align 8
  br label %cleanup268.thread

cleanup263:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %key_ptr) #14
  br label %continue_with_current_node_stack_frame

cleanup268.thread:                                ; preds = %if.then247, %btrfsic_read_from_block_data.exit557.cleanup268.thread_crit_edge, %do.end210
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %key_ptr) #14
  br label %one_stack_frame_backwards.preheader

cleanup268:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #16
  %389 = ptrtoint ptr %call7.i.i.i559 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 20111300, ptr %call7.i.i.i559, align 8
  %i250 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 3
  %390 = ptrtoint ptr %i250 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 -1, ptr %i250, align 4
  %391 = ptrtoint ptr %next_block225 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %next_block225, align 4
  %block252 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 7
  %393 = ptrtoint ptr %block252 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %392, ptr %block252, align 4
  %block_ctx254 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 8
  %394 = ptrtoint ptr %block_ctx254 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %next_block_ctx224, ptr %block_ctx254, align 8
  %next_block255 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 9
  %395 = ptrtoint ptr %next_block255 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr null, ptr %next_block255, align 4
  %hdr256 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 11
  %396 = ptrtoint ptr %hdr256 to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %386, ptr %hdr256, align 8
  %397 = ptrtoint ptr %limit_nesting223 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %limit_nesting223, align 8
  %sub258 = add i32 %398, -1
  %limit_nesting259 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 4
  %399 = ptrtoint ptr %limit_nesting259 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %sub258, ptr %limit_nesting259, align 8
  %prev260 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %call7.i.i.i559, i32 0, i32 12
  %400 = ptrtoint ptr %prev260 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %sf.0, ptr %prev260, align 4
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %key_ptr) #14
  br label %continue_with_new_stack_frame.backedge

continue_with_new_stack_frame.backedge:           ; preds = %btrfsic_stack_frame_free.exit601, %cleanup268, %cleanup146
  %sf.0.be = phi ptr [ %call7.i.i.i, %cleanup146 ], [ %call7.i.i.i559, %cleanup268 ], [ %403, %btrfsic_stack_frame_free.exit601 ]
  br label %continue_with_new_stack_frame

one_stack_frame_backwards.preheader:              ; preds = %cleanup268.thread, %if.end191.one_stack_frame_backwards.preheader_crit_edge, %cleanup146.thread781, %cleanup146.thread, %if.end43.one_stack_frame_backwards.preheader_crit_edge
  %prev272707 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.0, i32 0, i32 12
  %401 = ptrtoint ptr %prev272707 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %prev272707, align 4
  %cmp273.not708 = icmp eq ptr %402, null
  br i1 %cmp273.not708, label %one_stack_frame_backwards.preheader.do.body288_crit_edge, label %one_stack_frame_backwards.preheader.if.then275_crit_edge

one_stack_frame_backwards.preheader.if.then275_crit_edge: ; preds = %one_stack_frame_backwards.preheader
  br label %if.then275

one_stack_frame_backwards.preheader.do.body288_crit_edge: ; preds = %one_stack_frame_backwards.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body288

if.then275:                                       ; preds = %btrfsic_stack_frame_free.exit.if.then275_crit_edge, %one_stack_frame_backwards.preheader.if.then275_crit_edge
  %403 = phi ptr [ %437, %btrfsic_stack_frame_free.exit.if.then275_crit_edge ], [ %402, %one_stack_frame_backwards.preheader.if.then275_crit_edge ]
  %sf.13709 = phi ptr [ %403, %btrfsic_stack_frame_free.exit.if.then275_crit_edge ], [ %sf.0, %one_stack_frame_backwards.preheader.if.then275_crit_edge ]
  %block_ctx278 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.13709, i32 0, i32 8
  %404 = ptrtoint ptr %block_ctx278 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %block_ctx278, align 8
  %mem_to_free.i564 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %405, i32 0, i32 6
  %406 = ptrtoint ptr %mem_to_free.i564 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %mem_to_free.i564, align 8
  %tobool.not.i565 = icmp eq ptr %407, null
  br i1 %tobool.not.i565, label %if.then275.btrfsic_release_block_ctx.exit595_crit_edge, label %if.then.i568

if.then275.btrfsic_release_block_ctx.exit595_crit_edge: ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit595

if.then.i568:                                     ; preds = %if.then275
  %datav.i566 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %405, i32 0, i32 4
  %408 = ptrtoint ptr %datav.i566 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %datav.i566, align 8
  %tobool1.not.i567 = icmp eq ptr %409, null
  br i1 %tobool1.not.i567, label %do.body6.i569, label %do.body12.i572, !prof !438

do.body6.i569:                                    ; preds = %if.then.i568
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i572:                                   ; preds = %if.then.i568
  %pagev.i570 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %405, i32 0, i32 5
  %410 = ptrtoint ptr %pagev.i570 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %pagev.i570, align 4
  %tobool13.not.i571 = icmp eq ptr %411, null
  br i1 %tobool13.not.i571, label %do.body23.i573, label %do.end31.i580, !prof !438

do.body23.i573:                                   ; preds = %do.body12.i572
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i580:                                    ; preds = %do.body12.i572
  %len.i574 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %405, i32 0, i32 2
  %412 = ptrtoint ptr %len.i574 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %len.i574, align 8
  %conv.i575 = zext i32 %413 to i64
  %sub.i576 = add nuw nsw i64 %conv.i575, 4095
  %shr.i577 = lshr i64 %sub.i576, 12
  %conv32.i578 = trunc i64 %shr.i577 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i578)
  %cmp.not72.i579 = icmp eq i32 %conv32.i578, 0
  br i1 %cmp.not72.i579, label %do.end31.i580.while.end.i594_crit_edge, label %do.end31.i580.while.body.i585_crit_edge

do.end31.i580.while.body.i585_crit_edge:          ; preds = %do.end31.i580
  br label %while.body.i585

do.end31.i580.while.end.i594_crit_edge:           ; preds = %do.end31.i580
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i594

while.body.i585:                                  ; preds = %if.end48.i593.while.body.i585_crit_edge, %do.end31.i580.while.body.i585_crit_edge
  %num_pages.073.i581 = phi i32 [ %dec.i582, %if.end48.i593.while.body.i585_crit_edge ], [ %conv32.i578, %do.end31.i580.while.body.i585_crit_edge ]
  %dec.i582 = add nsw i32 %num_pages.073.i581, -1
  %414 = ptrtoint ptr %datav.i566 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %datav.i566, align 8
  %arrayidx.i583 = getelementptr ptr, ptr %415, i32 %dec.i582
  %416 = ptrtoint ptr %arrayidx.i583 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx.i583, align 4
  %tobool35.not.i584 = icmp eq ptr %417, null
  br i1 %tobool35.not.i584, label %while.body.i585.if.end39.i589_crit_edge, label %if.then36.i586

while.body.i585.if.end39.i589_crit_edge:          ; preds = %while.body.i585
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i589

if.then36.i586:                                   ; preds = %while.body.i585
  call void @__sanitizer_cov_trace_pc() #16
  %418 = ptrtoint ptr %arrayidx.i583 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr null, ptr %arrayidx.i583, align 4
  br label %if.end39.i589

if.end39.i589:                                    ; preds = %if.then36.i586, %while.body.i585.if.end39.i589_crit_edge
  %419 = ptrtoint ptr %pagev.i570 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %pagev.i570, align 4
  %arrayidx41.i587 = getelementptr ptr, ptr %420, i32 %dec.i582
  %421 = ptrtoint ptr %arrayidx41.i587 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %arrayidx41.i587, align 4
  %tobool42.not.i588 = icmp eq ptr %422, null
  br i1 %tobool42.not.i588, label %if.end39.i589.if.end48.i593_crit_edge, label %if.then43.i591

if.end39.i589.if.end48.i593_crit_edge:            ; preds = %if.end39.i589
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i593

if.then43.i591:                                   ; preds = %if.end39.i589
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %422, i32 noundef 0) #14
  %423 = ptrtoint ptr %pagev.i570 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %pagev.i570, align 4
  %arrayidx47.i590 = getelementptr ptr, ptr %424, i32 %dec.i582
  %425 = ptrtoint ptr %arrayidx47.i590 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr null, ptr %arrayidx47.i590, align 4
  br label %if.end48.i593

if.end48.i593:                                    ; preds = %if.then43.i591, %if.end39.i589.if.end48.i593_crit_edge
  %cmp.not.i592 = icmp eq i32 %dec.i582, 0
  br i1 %cmp.not.i592, label %if.end48.i593.while.end.i594_crit_edge, label %if.end48.i593.while.body.i585_crit_edge

if.end48.i593.while.body.i585_crit_edge:          ; preds = %if.end48.i593
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i585

if.end48.i593.while.end.i594_crit_edge:           ; preds = %if.end48.i593
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i594

while.end.i594:                                   ; preds = %if.end48.i593.while.end.i594_crit_edge, %do.end31.i580.while.end.i594_crit_edge
  %426 = ptrtoint ptr %mem_to_free.i564 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %mem_to_free.i564, align 8
  call void @kfree(ptr noundef %427) #14
  %428 = ptrtoint ptr %mem_to_free.i564 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr null, ptr %mem_to_free.i564, align 8
  %429 = ptrtoint ptr %pagev.i570 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr null, ptr %pagev.i570, align 4
  %430 = ptrtoint ptr %datav.i566 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr null, ptr %datav.i566, align 8
  br label %btrfsic_release_block_ctx.exit595

btrfsic_release_block_ctx.exit595:                ; preds = %while.end.i594, %if.then275.btrfsic_release_block_ctx.exit595_crit_edge
  %error279 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %sf.13709, i32 0, i32 2
  %431 = ptrtoint ptr %error279 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %error279, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %tobool280.not = icmp eq i32 %432, 0
  br i1 %tobool280.not, label %if.end284, label %if.then281

if.then281:                                       ; preds = %btrfsic_release_block_ctx.exit595
  %error283 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %403, i32 0, i32 2
  %433 = ptrtoint ptr %error283 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %432, ptr %error283, align 8
  %cmp.i596 = icmp eq ptr %sf.13709, null
  br i1 %cmp.i596, label %if.then281.btrfsic_stack_frame_free.exit_crit_edge, label %lor.rhs.i

if.then281.btrfsic_stack_frame_free.exit_crit_edge: ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_stack_frame_free.exit

lor.rhs.i:                                        ; preds = %if.then281
  %434 = ptrtoint ptr %sf.13709 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %sf.13709, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20111300, i32 %435)
  %cmp1.not.i = icmp eq i32 %435, 20111300
  br i1 %cmp1.not.i, label %lor.rhs.i.btrfsic_stack_frame_free.exit_crit_edge, label %do.body4.i, !prof !439

lor.rhs.i.btrfsic_stack_frame_free.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_stack_frame_free.exit

do.body4.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 875, 0\0A.popsection", ""() #14, !srcloc !461
  unreachable

btrfsic_stack_frame_free.exit:                    ; preds = %lor.rhs.i.btrfsic_stack_frame_free.exit_crit_edge, %if.then281.btrfsic_stack_frame_free.exit_crit_edge
  call void @kfree(ptr noundef %sf.13709) #14
  %prev272 = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %403, i32 0, i32 12
  %436 = ptrtoint ptr %prev272 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %prev272, align 4
  %cmp273.not = icmp eq ptr %437, null
  br i1 %cmp273.not, label %btrfsic_stack_frame_free.exit.do.body288_crit_edge, label %btrfsic_stack_frame_free.exit.if.then275_crit_edge

btrfsic_stack_frame_free.exit.if.then275_crit_edge: ; preds = %btrfsic_stack_frame_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then275

btrfsic_stack_frame_free.exit.do.body288_crit_edge: ; preds = %btrfsic_stack_frame_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body288

if.end284:                                        ; preds = %btrfsic_release_block_ctx.exit595
  %cmp.i597 = icmp eq ptr %sf.13709, null
  br i1 %cmp.i597, label %if.end284.btrfsic_stack_frame_free.exit601_crit_edge, label %lor.rhs.i599

if.end284.btrfsic_stack_frame_free.exit601_crit_edge: ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_stack_frame_free.exit601

lor.rhs.i599:                                     ; preds = %if.end284
  %438 = ptrtoint ptr %sf.13709 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %sf.13709, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20111300, i32 %439)
  %cmp1.not.i598 = icmp eq i32 %439, 20111300
  br i1 %cmp1.not.i598, label %lor.rhs.i599.btrfsic_stack_frame_free.exit601_crit_edge, label %do.body4.i600, !prof !439

lor.rhs.i599.btrfsic_stack_frame_free.exit601_crit_edge: ; preds = %lor.rhs.i599
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_stack_frame_free.exit601

do.body4.i600:                                    ; preds = %lor.rhs.i599
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 875, 0\0A.popsection", ""() #14, !srcloc !461
  unreachable

btrfsic_stack_frame_free.exit601:                 ; preds = %lor.rhs.i599.btrfsic_stack_frame_free.exit601_crit_edge, %if.end284.btrfsic_stack_frame_free.exit601_crit_edge
  call void @kfree(ptr noundef %sf.13709) #14
  br label %continue_with_new_stack_frame.backedge

do.body288:                                       ; preds = %btrfsic_stack_frame_free.exit.do.body288_crit_edge, %one_stack_frame_backwards.preheader.do.body288_crit_edge
  %sf.13.lcssa = phi ptr [ %403, %btrfsic_stack_frame_free.exit.do.body288_crit_edge ], [ %sf.0, %one_stack_frame_backwards.preheader.do.body288_crit_edge ]
  %cmp289.not = icmp eq ptr %initial_stack_frame, %sf.13.lcssa
  br i1 %cmp289.not, label %cleanup309, label %do.body298, !prof !439

do.body298:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1132, 0\0A.popsection", ""() #14, !srcloc !462
  unreachable

cleanup309:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #16
  %error = getelementptr inbounds %struct.btrfsic_stack_frame, ptr %initial_stack_frame, i32 0, i32 2
  %440 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %error, align 8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %initial_stack_frame) #14
  ret i32 %441
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfsic_release_block_ctx(ptr nocapture noundef %block_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_to_free = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 6
  %0 = ptrtoint ptr %mem_to_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_to_free, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then:                                          ; preds = %entry
  %datav = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 4
  %2 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %datav, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.body6, label %do.body12, !prof !438

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12:                                        ; preds = %if.then
  %pagev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 5
  %4 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pagev, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.body23, label %do.end31, !prof !438

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31:                                         ; preds = %do.body12
  %len = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 8
  %conv = zext i32 %7 to i64
  %sub = add nuw nsw i64 %conv, 4095
  %shr = lshr i64 %sub, 12
  %conv32 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32)
  %cmp.not72 = icmp eq i32 %conv32, 0
  br i1 %cmp.not72, label %do.end31.while.end_crit_edge, label %do.end31.while.body_crit_edge

do.end31.while.body_crit_edge:                    ; preds = %do.end31
  br label %while.body

do.end31.while.end_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %do.end31.while.body_crit_edge
  %num_pages.073 = phi i32 [ %dec, %if.end48.while.body_crit_edge ], [ %conv32, %do.end31.while.body_crit_edge ]
  %dec = add nsw i32 %num_pages.073, -1
  %8 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %datav, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %dec
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool35.not = icmp eq ptr %11, null
  br i1 %tobool35.not, label %while.body.if.end39_crit_edge, label %if.then36

while.body.if.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then36:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %while.body.if.end39_crit_edge
  %13 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pagev, align 4
  %arrayidx41 = getelementptr ptr, ptr %14, i32 %dec
  %15 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %16, null
  br i1 %tobool42.not, label %if.end39.if.end48_crit_edge, label %if.then43

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %16, i32 noundef 0) #14
  %17 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pagev, align 4
  %arrayidx47 = getelementptr ptr, ptr %18, i32 %dec
  %19 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end39.if.end48_crit_edge
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end48.while.end_crit_edge, label %if.end48.while.body_crit_edge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end48.while.end_crit_edge, %do.end31.while.end_crit_edge
  %20 = ptrtoint ptr %mem_to_free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_to_free, align 8
  tail call void @kfree(ptr noundef %21) #14
  %22 = ptrtoint ptr %mem_to_free to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mem_to_free, align 8
  %23 = ptrtoint ptr %pagev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pagev, align 4
  %24 = ptrtoint ptr %datav to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %datav, align 8
  br label %if.end53

if.end53:                                         ; preds = %while.end, %entry.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfsic_block_alloc() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 120) #19
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 340332625, ptr %call7.i.i, align 8
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 3
  %generation.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %dev_state.i, i32 0, i32 20)
  %3 = ptrtoint ptr %generation.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %generation.i, align 8
  %disk_key.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 7
  %is_metadata.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %disk_key.i, i32 0, i32 17)
  %5 = ptrtoint ptr %is_metadata.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %is_metadata.i, align 4
  %bf.clear13.i = and i8 %bf.load.i, 7
  store i8 %bf.clear13.i, ptr %is_metadata.i, align 4
  %mirror_num.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mirror_num.i, align 8
  %next_in_same_bio.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %next_in_same_bio.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %next_in_same_bio.i, align 4
  %orig_bio_private.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %orig_bio_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %orig_bio_private.i, align 8
  %orig_bio_end_io.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %orig_bio_end_io.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %orig_bio_end_io.i, align 4
  %collision_resolving_node.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %collision_resolving_node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %collision_resolving_node.i, ptr %collision_resolving_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %collision_resolving_node.i, ptr %prev.i.i, align 8
  %all_blocks_node.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %all_blocks_node.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %all_blocks_node.i, ptr %all_blocks_node.i, align 4
  %prev.i37.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %all_blocks_node.i, ptr %prev.i37.i, align 8
  %ref_to_list.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %ref_to_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ref_to_list.i, ptr %ref_to_list.i, align 4
  %prev.i38.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i38.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ref_to_list.i, ptr %prev.i38.i, align 8
  %ref_from_list.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %ref_from_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %ref_from_list.i, ptr %ref_from_list.i, align 4
  %prev.i39.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ref_from_list.i, ptr %prev.i39.i, align 8
  %submit_bio_bh_rw.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %submit_bio_bh_rw.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %submit_bio_bh_rw.i, align 8
  %flush_gen.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %flush_gen.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %flush_gen.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfsic_block_hashtable_add(ptr noundef %b, ptr noundef %h) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %b, i32 0, i32 4
  %0 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_bytenr, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 16
  %dev_state = getelementptr inbounds %struct.btrfsic_block, ptr %b, i32 0, i32 3
  %4 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_state, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev, align 4
  %8 = ptrtoint ptr %7 to i32
  %.masked = and i32 %8, 65535
  %and = xor i32 %.masked, %3
  %collision_resolving_node = getelementptr inbounds %struct.btrfsic_block, ptr %b, i32 0, i32 8
  %add.ptr = getelementptr %struct.list_head, ptr %h, i32 %and
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %collision_resolving_node, ptr noundef %add.ptr, ptr noundef %10) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %collision_resolving_node, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %collision_resolving_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %collision_resolving_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %b, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %collision_resolving_node, ptr %add.ptr, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_num_copies(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_map_block(ptr nocapture noundef readonly %state, i64 noundef %bytenr, i32 noundef %len, ptr nocapture noundef %block_ctx_out, i32 noundef %mirror_num) unnamed_addr #0 align 64 {
entry:
  %length = alloca i64, align 8
  %multi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %multi) #14
  %2 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %multi, align 4
  %conv = zext i32 %len to i64
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %length, align 8
  %call = call i32 @btrfs_map_block(ptr noundef %1, i32 noundef 0, i64 noundef %bytenr, ptr noundef nonnull %length, ptr noundef nonnull %multi, i32 noundef %mirror_num) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = call ptr @memset(ptr %block_ctx_out, i32 0, i32 36)
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %multi, align 4
  %stripes = getelementptr inbounds %struct.btrfs_io_context, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stripes, align 8
  %dev_state = getelementptr inbounds %struct.btrfs_device, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dev_state, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

lor.lhs.false:                                    ; preds = %if.end
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %8, i32 0, i32 7
  %12 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev, align 8
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false7

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.btrfs_device, ptr %8, i32 0, i32 5
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %lor.lhs.false7.if.end14_crit_edge, label %if.else

lor.lhs.false7.if.end14_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false7
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd_dev, align 4
  %and.i.i = and i32 %17, 255
  %add.ptr.i.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %and.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.else
  %.pn.in.i.i = phi ptr [ %add.ptr.i.i, %if.else ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end14_crit_edge, label %for.body.i.i

for.cond.i.i.if.end14_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bdev.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %19 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bd_dev.i.i, align 4
  %cmp5.i.i = icmp eq i32 %22, %17
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit1.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

cleanup.split.loop.exit1.i.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ds.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  br label %if.end14

if.end14:                                         ; preds = %cleanup.split.loop.exit1.i.i, %for.cond.i.i.if.end14_crit_edge, %lor.lhs.false7.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %retval.0.i.i.sink = phi ptr [ null, %lor.lhs.false7.if.end14_crit_edge ], [ null, %lor.lhs.false.if.end14_crit_edge ], [ null, %if.end.if.end14_crit_edge ], [ %ds.0.le.i.i, %cleanup.split.loop.exit1.i.i ], [ null, %for.cond.i.i.if.end14_crit_edge ]
  %dev13 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 3
  %23 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i.i.sink, ptr %dev13, align 4
  %physical = getelementptr inbounds %struct.btrfs_io_context, ptr %6, i32 1, i32 2
  %24 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %physical, align 8
  %dev_bytenr17 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 1
  %26 = ptrtoint ptr %dev_bytenr17 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %dev_bytenr17, align 8
  %27 = ptrtoint ptr %block_ctx_out to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %bytenr, ptr %block_ctx_out, align 8
  %len19 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 2
  %28 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len, ptr %len19, align 8
  %datav20 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 4
  %29 = ptrtoint ptr %datav20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %datav20, align 8
  %pagev21 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 5
  %30 = ptrtoint ptr %pagev21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pagev21, align 4
  %mem_to_free22 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 6
  %31 = ptrtoint ptr %mem_to_free22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %mem_to_free22, align 8
  call void @kfree(ptr noundef %6) #14
  %dev23 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx_out, i32 0, i32 3
  %32 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev23, align 4
  %cmp = icmp eq ptr %33, null
  br i1 %cmp, label %if.then25, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end14.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -6, %if.then25 ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multi) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_map_block(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfsic_block_lookup_or_add(ptr noundef %state, ptr nocapture noundef readonly %block_ctx, ptr noundef %additional_string, i32 noundef %is_metadata, i32 noundef %is_iodone, i32 noundef %never_written, i32 noundef %mirror_num, ptr noundef writeonly %was_created) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 1
  %4 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dev_bytenr, align 8
  %block_hashtable = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 3
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 16
  %8 = ptrtoint ptr %3 to i32
  %.masked.i = and i32 %8, 65535
  %and.i = xor i32 %7, %.masked.i
  %add.ptr.i = getelementptr %struct.list_head, ptr %block_hashtable, i32 %and.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn28.i = load ptr, ptr %add.ptr.i, align 4
  %cmp.not29.i = icmp eq ptr %.pn28.i, %add.ptr.i
  br i1 %cmp.not29.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn30.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn28.i, %entry.for.body.i_crit_edge ]
  %dev_state.i = getelementptr i8, ptr %.pn30.i, i32 -48
  %10 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_state.i, align 4
  %bdev6.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bdev6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev6.i, align 4
  %cmp7.i = icmp eq ptr %13, %3
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dev_bytenr9.i = getelementptr i8, ptr %.pn30.i, i32 -44
  %14 = ptrtoint ptr %dev_bytenr9.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dev_bytenr9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %5)
  %cmp10.i = icmp eq i64 %15, %5
  br i1 %cmp10.i, label %btrfsic_block_hashtable_lookup.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %16 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn30.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %add.ptr.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

btrfsic_block_hashtable_lookup.exit:              ; preds = %land.lhs.true.i
  %b.0.le.i = getelementptr i8, ptr %.pn30.i, i32 -60
  %cmp = icmp eq ptr %b.0.le.i, null
  br i1 %cmp, label %btrfsic_block_hashtable_lookup.exit.if.then_crit_edge, label %if.else

btrfsic_block_hashtable_lookup.exit.if.then_crit_edge: ; preds = %btrfsic_block_hashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %btrfsic_block_hashtable_lookup.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3392, i32 noundef 120) #19
  %cmp.not.i82 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i82, label %if.then.cleanup51_crit_edge, label %if.end

if.then.cleanup51_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

if.end:                                           ; preds = %if.then
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 340332625, ptr %call7.i.i.i, align 8
  %dev_state.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 3
  %generation.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 6
  %19 = call ptr @memset(ptr %dev_state.i.i, i32 0, i32 20)
  %20 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %generation.i.i, align 8
  %disk_key.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 7
  %is_metadata.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 1
  %21 = call ptr @memset(ptr %disk_key.i.i, i32 0, i32 17)
  %22 = ptrtoint ptr %is_metadata.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %is_metadata.i.i, align 4
  %bf.clear13.i.i = and i8 %bf.load.i.i, 7
  store i8 %bf.clear13.i.i, ptr %is_metadata.i.i, align 4
  %mirror_num.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %mirror_num.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mirror_num.i.i, align 8
  %next_in_same_bio.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %next_in_same_bio.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %next_in_same_bio.i.i, align 4
  %orig_bio_private.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 13
  %25 = ptrtoint ptr %orig_bio_private.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %orig_bio_private.i.i, align 8
  %orig_bio_end_io.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %orig_bio_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %orig_bio_end_io.i.i, align 4
  %collision_resolving_node.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %collision_resolving_node.i.i, ptr %collision_resolving_node.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %collision_resolving_node.i.i, ptr %prev.i.i.i, align 8
  %all_blocks_node.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %all_blocks_node.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %all_blocks_node.i.i, ptr %all_blocks_node.i.i, align 4
  %prev.i37.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %prev.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %all_blocks_node.i.i, ptr %prev.i37.i.i, align 8
  %ref_to_list.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %ref_to_list.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %ref_to_list.i.i, ptr %ref_to_list.i.i, align 4
  %prev.i38.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ref_to_list.i.i, ptr %prev.i38.i.i, align 8
  %ref_from_list.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %ref_from_list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %ref_from_list.i.i, ptr %ref_from_list.i.i, align 4
  %prev.i39.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %prev.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ref_from_list.i.i, ptr %prev.i39.i.i, align 8
  %submit_bio_bh_rw.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 15
  %35 = ptrtoint ptr %submit_bio_bh_rw.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %submit_bio_bh_rw.i.i, align 8
  %flush_gen.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %flush_gen.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %flush_gen.i.i, align 8
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %bdev4 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bdev4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdev4, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bd_dev, align 4
  %and.i.i = and i32 %42, 255
  %add.ptr.i.i = getelementptr %struct.list_head, ptr @btrfsic_dev_state_hashtable, i32 %and.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ %add.ptr.i.i, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.lor.rhs.i_crit_edge, label %for.body.i.i

for.cond.i.i.lor.rhs.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bdev.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %44 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bdev.i.i, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bd_dev.i.i, align 4
  %cmp5.i.i = icmp eq i32 %47, %42
  br i1 %cmp5.i.i, label %btrfsic_dev_state_lookup.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

btrfsic_dev_state_lookup.exit:                    ; preds = %for.body.i.i
  %bdev.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -8
  %ds.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %cmp6 = icmp eq ptr %ds.0.le.i.i, null
  br i1 %cmp6, label %btrfsic_dev_state_lookup.exit.lor.rhs.i_crit_edge, label %if.end9

btrfsic_dev_state_lookup.exit.lor.rhs.i_crit_edge: ; preds = %btrfsic_dev_state_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %btrfsic_dev_state_lookup.exit.lor.rhs.i_crit_edge, %for.cond.i.i.lor.rhs.i_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #17
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 340332625, i32 %49)
  %cmp1.not.i = icmp eq i32 %49, 340332625
  br i1 %cmp1.not.i, label %btrfsic_block_free.exit, label %do.body4.i, !prof !439

do.body4.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #14, !srcloc !446
  unreachable

btrfsic_block_free.exit:                          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %call7.i.i.i) #14
  br label %cleanup51

if.end9:                                          ; preds = %btrfsic_dev_state_lookup.exit
  %50 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ds.0.le.i.i, ptr %dev_state.i.i, align 4
  %51 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dev_bytenr, align 8
  %dev_bytenr12 = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %dev_bytenr12 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %dev_bytenr12, align 8
  %54 = ptrtoint ptr %block_ctx to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %block_ctx, align 8
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %call7.i.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %logical_bytenr, align 8
  %57 = trunc i32 %is_metadata to i8
  %58 = ptrtoint ptr %is_metadata.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %is_metadata.i.i, align 4
  %bf.shl = shl i8 %57, 7
  %bf.clear = and i8 %bf.load, 87
  %bf.set = or i8 %bf.clear, %bf.shl
  %59 = trunc i32 %is_iodone to i8
  %bf.value16 = shl i8 %59, 5
  %bf.shl17 = and i8 %bf.value16, 32
  %bf.set19 = or i8 %bf.set, %bf.shl17
  %60 = trunc i32 %never_written to i8
  %bf.value23 = shl i8 %60, 3
  %bf.shl24 = and i8 %bf.value23, 8
  %bf.set26 = or i8 %bf.set19, %bf.shl24
  store i8 %bf.set26, ptr %is_metadata.i.i, align 4
  %61 = ptrtoint ptr %mirror_num.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mirror_num, ptr %mirror_num.i.i, align 8
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state, align 8
  %and = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end9.if.end40_crit_edge, label %do.end33

if.end9.if.end40_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end33:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = tail call fastcc zeroext i8 @btrfsic_get_block_type(ptr noundef %state, ptr noundef nonnull %call7.i.i.i)
  %conv = zext i8 %call35 to i32
  %64 = ptrtoint ptr %bdev.i.i.le to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev.i.i.le, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %additional_string, i32 noundef %conv, i64 noundef %55, ptr noundef %65, i64 noundef %52, i32 noundef %mirror_num) #17
  br label %if.end40

if.end40:                                         ; preds = %do.end33, %if.end9.if.end40_crit_edge
  %all_blocks_list = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 2
  %66 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %all_blocks_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %all_blocks_node.i.i, ptr noundef %all_blocks_list, ptr noundef %67) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_add.exit_crit_edge

if.end40.list_add.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %all_blocks_node.i.i, ptr %prev1.i.i, align 4
  %69 = ptrtoint ptr %all_blocks_node.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %all_blocks_node.i.i, align 4
  %70 = ptrtoint ptr %prev.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %all_blocks_list, ptr %prev.i37.i.i, align 8
  %71 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %all_blocks_node.i.i, ptr %all_blocks_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end40.list_add.exit_crit_edge
  %72 = ptrtoint ptr %dev_bytenr12 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dev_bytenr12, align 8
  %74 = trunc i64 %73 to i32
  %75 = lshr i32 %74, 16
  %76 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_state.i.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bdev.i, align 4
  %80 = ptrtoint ptr %79 to i32
  %.masked.i84 = and i32 %80, 65535
  %and.i85 = xor i32 %.masked.i84, %75
  %add.ptr.i86 = getelementptr %struct.list_head, ptr %block_hashtable, i32 %and.i85
  %81 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i86, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %collision_resolving_node.i.i, ptr noundef %add.ptr.i86, ptr noundef %82) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add.exit.btrfsic_block_hashtable_add.exit_crit_edge

list_add.exit.btrfsic_block_hashtable_add.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_block_hashtable_add.exit

if.end.i.i.i:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %collision_resolving_node.i.i, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %collision_resolving_node.i.i, align 4
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr.i86, ptr %prev.i.i.i, align 8
  %86 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %collision_resolving_node.i.i, ptr %add.ptr.i86, align 4
  br label %btrfsic_block_hashtable_add.exit

btrfsic_block_hashtable_add.exit:                 ; preds = %if.end.i.i.i, %list_add.exit.btrfsic_block_hashtable_add.exit_crit_edge
  %cmp42.not = icmp eq ptr %was_created, null
  br i1 %cmp42.not, label %btrfsic_block_hashtable_add.exit.cleanup51_crit_edge, label %if.then44

btrfsic_block_hashtable_add.exit.cleanup51_crit_edge: ; preds = %btrfsic_block_hashtable_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

if.then44:                                        ; preds = %btrfsic_block_hashtable_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %was_created to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %was_created, align 4
  br label %cleanup51

if.else:                                          ; preds = %btrfsic_block_hashtable_lookup.exit
  %cmp46.not = icmp eq ptr %was_created, null
  br i1 %cmp46.not, label %if.else.cleanup51_crit_edge, label %if.then48

if.else.cleanup51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %was_created to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %was_created, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %if.then48, %if.else.cleanup51_crit_edge, %if.then44, %btrfsic_block_hashtable_add.exit.cleanup51_crit_edge, %btrfsic_block_free.exit, %if.then.cleanup51_crit_edge
  %retval.1 = phi ptr [ null, %btrfsic_block_free.exit ], [ %b.0.le.i, %if.then48 ], [ %b.0.le.i, %if.else.cleanup51_crit_edge ], [ %call7.i.i.i, %btrfsic_block_hashtable_add.exit.cleanup51_crit_edge ], [ %call7.i.i.i, %if.then44 ], [ null, %if.then.cleanup51_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfsic_block_link_lookup_or_add(ptr noundef %state, ptr nocapture noundef readonly %next_block_ctx, ptr noundef %next_block, ptr noundef %from_block, i64 noundef %parent_generation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 1
  %4 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dev_bytenr, align 8
  %dev_state = getelementptr inbounds %struct.btrfsic_block, ptr %from_block, i32 0, i32 3
  %6 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_state, align 4
  %bdev1 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev1, align 4
  %dev_bytenr2 = getelementptr inbounds %struct.btrfsic_block, ptr %from_block, i32 0, i32 4
  %10 = ptrtoint ptr %dev_bytenr2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dev_bytenr2, align 8
  %block_link_hashtable = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 4
  %shr80.i = xor i64 %11, %5
  %12 = trunc i64 %shr80.i to i32
  %13 = lshr i32 %12, 16
  %14 = ptrtoint ptr %3 to i32
  %15 = ptrtoint ptr %9 to i32
  %xor3.i = xor i32 %15, %14
  %xor3.masked.i = and i32 %xor3.i, 65535
  %and.i = xor i32 %13, %xor3.masked.i
  %add.ptr.i = getelementptr %struct.list_head, ptr %block_link_hashtable, i32 %and.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn83.i = load ptr, ptr %add.ptr.i, align 4
  %cmp.not84.i = icmp eq ptr %.pn83.i, %add.ptr.i
  br i1 %cmp.not84.i, label %entry.if.then_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %.pn85.i = phi ptr [ %.pn.i, %for.inc.i.do.body.i_crit_edge ], [ %.pn83.i, %entry.do.body.i_crit_edge ]
  %block_ref_to.i = getelementptr i8, ptr %.pn85.i, i32 8
  %17 = ptrtoint ptr %block_ref_to.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %block_ref_to.i, align 8
  %cmp10.i = icmp eq ptr %18, null
  br i1 %cmp10.i, label %do.body14.i, label %do.body20.i, !prof !438

do.body14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #14, !srcloc !451
  unreachable

do.body20.i:                                      ; preds = %do.body.i
  %block_ref_from.i = getelementptr i8, ptr %.pn85.i, i32 12
  %19 = ptrtoint ptr %block_ref_from.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block_ref_from.i, align 4
  %cmp21.i = icmp eq ptr %20, null
  br i1 %cmp21.i, label %do.body30.i, label %do.end38.i, !prof !438

do.body30.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 520, 0\0A.popsection", ""() #14, !srcloc !452
  unreachable

do.end38.i:                                       ; preds = %do.body20.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i, align 4
  %cmp40.i = icmp eq ptr %24, %3
  br i1 %cmp40.i, label %land.lhs.true.i, label %do.end38.i.for.inc.i_crit_edge

do.end38.i.for.inc.i_crit_edge:                   ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %do.end38.i
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dev_bytenr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %5)
  %cmp43.i = icmp eq i64 %26, %5
  br i1 %cmp43.i, label %land.lhs.true45.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true45.i:                                ; preds = %land.lhs.true.i
  %dev_state47.i = getelementptr inbounds %struct.btrfsic_block, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %dev_state47.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_state47.i, align 4
  %bdev48.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bdev48.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev48.i, align 4
  %cmp49.i = icmp eq ptr %30, %9
  br i1 %cmp49.i, label %land.lhs.true51.i, label %land.lhs.true45.i.for.inc.i_crit_edge

land.lhs.true45.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true51.i:                                ; preds = %land.lhs.true45.i
  %dev_bytenr53.i = getelementptr inbounds %struct.btrfsic_block, ptr %20, i32 0, i32 4
  %31 = ptrtoint ptr %dev_bytenr53.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dev_bytenr53.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %11)
  %cmp54.i = icmp eq i64 %32, %11
  br i1 %cmp54.i, label %btrfsic_block_link_hashtable_lookup.exit, label %land.lhs.true51.i.for.inc.i_crit_edge

land.lhs.true51.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true51.i.for.inc.i_crit_edge, %land.lhs.true45.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %do.end38.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %.pn85.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn85.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %add.ptr.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

btrfsic_block_link_hashtable_lookup.exit:         ; preds = %land.lhs.true51.i
  %l.0.le.i = getelementptr i8, ptr %.pn85.i, i32 -24
  %cmp = icmp eq ptr %l.0.le.i, null
  br i1 %cmp, label %btrfsic_block_link_hashtable_lookup.exit.if.then_crit_edge, label %if.else

btrfsic_block_link_hashtable_lookup.exit.if.then_crit_edge: ; preds = %btrfsic_block_link_hashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %btrfsic_block_link_hashtable_lookup.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3392, i32 noundef 48) #19
  %cmp.not.i42 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i42, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 285673479, ptr %call7.i.i.i, align 8
  %ref_cnt.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 1
  %node_ref_to.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %node_ref_to.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %node_ref_to.i.i, ptr %node_ref_to.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %node_ref_to.i.i, ptr %prev.i.i.i, align 4
  %node_ref_from.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %node_ref_from.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node_ref_from.i.i, ptr %node_ref_from.i.i, align 8
  %prev.i7.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %node_ref_from.i.i, ptr %prev.i7.i.i, align 4
  %collision_resolving_node.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %collision_resolving_node.i.i, ptr %collision_resolving_node.i.i, align 8
  %prev.i8.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %collision_resolving_node.i.i, ptr %prev.i8.i.i, align 4
  %block_ref_to.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 5
  %block_ref_from.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %block_ref_to.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %next_block, ptr %block_ref_to.i.i, align 8
  %43 = ptrtoint ptr %block_ref_from.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %from_block, ptr %block_ref_from.i.i, align 4
  %44 = ptrtoint ptr %ref_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %ref_cnt.i.i, align 4
  %parent_generation5 = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %parent_generation5 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %parent_generation, ptr %parent_generation5, align 8
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 8
  %and = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @btrfsic_print_add_link(ptr noundef %state, ptr noundef nonnull %call7.i.i.i)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %ref_to_list = getelementptr inbounds %struct.btrfsic_block, ptr %from_block, i32 0, i32 10
  %48 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ref_to_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node_ref_to.i.i, ptr noundef %ref_to_list, ptr noundef %49) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %node_ref_to.i.i, ptr %prev1.i.i, align 4
  %51 = ptrtoint ptr %node_ref_to.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %node_ref_to.i.i, align 8
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ref_to_list, ptr %prev.i.i.i, align 4
  %53 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %node_ref_to.i.i, ptr %ref_to_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end8.list_add.exit_crit_edge
  %ref_from_list = getelementptr inbounds %struct.btrfsic_block, ptr %next_block, i32 0, i32 11
  %54 = ptrtoint ptr %ref_from_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ref_from_list, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %node_ref_from.i.i, ptr noundef %ref_from_list, ptr noundef %55) #14
  br i1 %call.i.i43, label %if.end.i.i46, label %list_add.exit.list_add.exit47_crit_edge

list_add.exit.list_add.exit47_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit47

if.end.i.i46:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i44 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %node_ref_from.i.i, ptr %prev1.i.i44, align 4
  %57 = ptrtoint ptr %node_ref_from.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %node_ref_from.i.i, align 8
  %58 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ref_from_list, ptr %prev.i7.i.i, align 4
  %59 = ptrtoint ptr %ref_from_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %node_ref_from.i.i, ptr %ref_from_list, align 4
  br label %list_add.exit47

list_add.exit47:                                  ; preds = %if.end.i.i46, %list_add.exit.list_add.exit47_crit_edge
  %60 = ptrtoint ptr %block_ref_to.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %block_ref_to.i.i, align 8
  %dev_bytenr.i49 = getelementptr inbounds %struct.btrfsic_block, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %dev_bytenr.i49 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %dev_bytenr.i49, align 8
  %64 = ptrtoint ptr %block_ref_from.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %block_ref_from.i.i, align 4
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dev_bytenr1.i, align 8
  %dev_state.i51 = getelementptr inbounds %struct.btrfsic_block, ptr %61, i32 0, i32 3
  %68 = ptrtoint ptr %dev_state.i51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_state.i51, align 4
  %bdev.i52 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %bdev.i52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bdev.i52, align 4
  %dev_state7.i = getelementptr inbounds %struct.btrfsic_block, ptr %65, i32 0, i32 3
  %72 = ptrtoint ptr %dev_state7.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_state7.i, align 4
  %bdev8.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %bdev8.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bdev8.i, align 4
  %cmp.i = icmp eq ptr %61, null
  br i1 %cmp.i, label %do.body13.i, label %do.body19.i, !prof !438

do.body13.i:                                      ; preds = %list_add.exit47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #14, !srcloc !463
  unreachable

do.body19.i:                                      ; preds = %list_add.exit47
  %cmp21.i53 = icmp eq ptr %65, null
  br i1 %cmp21.i53, label %do.body30.i54, label %do.end38.i57, !prof !438

do.body30.i54:                                    ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #14, !srcloc !464
  unreachable

do.end38.i57:                                     ; preds = %do.body19.i
  %shr46.i = xor i64 %67, %63
  %76 = trunc i64 %shr46.i to i32
  %77 = lshr i32 %76, 16
  %78 = ptrtoint ptr %71 to i32
  %xor5.i = xor i32 %77, %78
  %79 = ptrtoint ptr %75 to i32
  %xor9.i = xor i32 %xor5.i, %79
  %and.i55 = and i32 %xor9.i, 65535
  %add.ptr.i56 = getelementptr %struct.list_head, ptr %block_link_hashtable, i32 %and.i55
  %80 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i56, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %collision_resolving_node.i.i, ptr noundef %add.ptr.i56, ptr noundef %81) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end38.i57.cleanup_crit_edge

do.end38.i57.cleanup_crit_edge:                   ; preds = %do.end38.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i:                                     ; preds = %do.end38.i57
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %collision_resolving_node.i.i, ptr %prev1.i.i.i, align 4
  %83 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %81, ptr %collision_resolving_node.i.i, align 8
  %84 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i56, ptr %prev.i8.i.i, align 4
  %85 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %collision_resolving_node.i.i, ptr %add.ptr.i56, align 4
  br label %cleanup

if.else:                                          ; preds = %btrfsic_block_link_hashtable_lookup.exit
  %ref_cnt10 = getelementptr i8, ptr %.pn85.i, i32 -20
  %86 = ptrtoint ptr %ref_cnt10 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ref_cnt10, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %ref_cnt10, align 4
  %parent_generation11 = getelementptr i8, ptr %.pn85.i, i32 16
  %88 = ptrtoint ptr %parent_generation11 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %parent_generation, ptr %parent_generation11, align 8
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state, align 8
  %and13 = and i32 %90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %if.then15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @btrfsic_print_add_link(ptr noundef %state, ptr noundef nonnull %l.0.le.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.else.cleanup_crit_edge, %if.end.i.i.i, %do.end38.i57.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %l.0.le.i, %if.then15 ], [ %l.0.le.i, %if.else.cleanup_crit_edge ], [ %call7.i.i.i, %do.end38.i57.cleanup_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_check_all_ref_blocks(ptr nocapture noundef readonly %state, ptr noundef readonly %block, i32 noundef %recursion_level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %recursion_level)
  %cmp = icmp sgt i32 %recursion_level, 10
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #17
  br label %cleanup

if.end2:                                          ; preds = %entry
  %ref_to_list = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 10
  %2 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn362 = load ptr, ptr %ref_to_list, align 4
  %cmp5.not363 = icmp eq ptr %.pn362, %ref_to_list
  br i1 %cmp5.not363, label %if.end2.cleanup_crit_edge, label %for.body.lr.ph

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end2
  %is_superblock.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 1
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 4
  %dev_state4.i = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 3
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 5
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 2
  %add = add nsw i32 %recursion_level, 1
  %flush_gen153 = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn365 = phi ptr [ %.pn362, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ret.0364 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %and7 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.if.end27_crit_edge, label %do.end12

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

do.end12:                                         ; preds = %for.body
  %5 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end12
  %7 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dev_bytenr.i, align 8
  %11 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.i = icmp eq i64 %10, %12
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i, align 4
  %17 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_state4.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %16, %20
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %21 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %logical_bytenr, align 8
  %23 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_state4.i, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev, align 4
  %27 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dev_bytenr1.i, align 8
  %29 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mirror_num, align 8
  %ref_cnt = getelementptr i8, ptr %.pn365, i32 -4
  %31 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ref_cnt, align 4
  %block_ref_to = getelementptr i8, ptr %.pn365, i32 24
  %33 = ptrtoint ptr %block_ref_to to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %block_ref_to, align 8
  %is_superblock.i242 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %is_superblock.i242 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i243 = load i8, ptr %is_superblock.i242, align 4
  %36 = and i8 %bf.load.i243, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i244 = icmp eq i8 %36, 0
  br i1 %tobool.not.i244, label %if.else14.i259, label %land.lhs.true.i249

land.lhs.true.i249:                               ; preds = %btrfsic_get_block_type.exit
  %37 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i246 = getelementptr inbounds %struct.btrfsic_block, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %dev_bytenr.i246 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dev_bytenr.i246, align 8
  %dev_bytenr1.i247 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 4
  %41 = ptrtoint ptr %dev_bytenr1.i247 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dev_bytenr1.i247, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp.i248 = icmp eq i64 %40, %42
  br i1 %cmp.i248, label %land.lhs.true2.i255, label %land.lhs.true.i249.if.else.thread.i256_crit_edge

land.lhs.true.i249.if.else.thread.i256_crit_edge: ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i256

land.lhs.true2.i255:                              ; preds = %land.lhs.true.i249
  %dev_state.i250 = getelementptr inbounds %struct.btrfsic_block, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %dev_state.i250 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_state.i250, align 4
  %bdev.i251 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bdev.i251 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bdev.i251, align 4
  %dev_state4.i252 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 3
  %47 = ptrtoint ptr %dev_state4.i252 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_state4.i252, align 4
  %bdev5.i253 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bdev5.i253 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdev5.i253, align 4
  %cmp6.i254 = icmp eq ptr %46, %50
  br i1 %cmp6.i254, label %land.lhs.true2.i255.btrfsic_get_block_type.exit261_crit_edge, label %land.lhs.true2.i255.if.else.thread.i256_crit_edge

land.lhs.true2.i255.if.else.thread.i256_crit_edge: ; preds = %land.lhs.true2.i255
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i256

land.lhs.true2.i255.btrfsic_get_block_type.exit261_crit_edge: ; preds = %land.lhs.true2.i255
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit261

if.else.thread.i256:                              ; preds = %land.lhs.true2.i255.if.else.thread.i256_crit_edge, %land.lhs.true.i249.if.else.thread.i256_crit_edge
  br label %btrfsic_get_block_type.exit261

if.else14.i259:                                   ; preds = %btrfsic_get_block_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i243)
  %tobool18.not.i257 = icmp sgt i8 %bf.load.i243, -1
  %..i258 = select i1 %tobool18.not.i257, i32 68, i32 77
  br label %btrfsic_get_block_type.exit261

btrfsic_get_block_type.exit261:                   ; preds = %if.else14.i259, %if.else.thread.i256, %land.lhs.true2.i255.btrfsic_get_block_type.exit261_crit_edge
  %retval.0.i260 = phi i32 [ 83, %land.lhs.true2.i255.btrfsic_get_block_type.exit261_crit_edge ], [ %..i258, %if.else14.i259 ], [ 115, %if.else.thread.i256 ]
  %logical_bytenr18 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 5
  %51 = ptrtoint ptr %logical_bytenr18 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %logical_bytenr18, align 8
  %dev_state20 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 3
  %53 = ptrtoint ptr %dev_state20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_state20, align 4
  %bdev21 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bdev21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bdev21, align 4
  %dev_bytenr23 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 4
  %57 = ptrtoint ptr %dev_bytenr23 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dev_bytenr23, align 8
  %mirror_num25 = getelementptr inbounds %struct.btrfsic_block, ptr %34, i32 0, i32 2
  %59 = ptrtoint ptr %mirror_num25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mirror_num25, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %recursion_level, i32 noundef %retval.0.i, i64 noundef %22, ptr noundef %26, i64 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %retval.0.i260, i64 noundef %52, ptr noundef %56, i64 noundef %58, i32 noundef %60) #17
  br label %if.end27

if.end27:                                         ; preds = %btrfsic_get_block_type.exit261, %for.body.if.end27_crit_edge
  %block_ref_to28 = getelementptr i8, ptr %.pn365, i32 24
  %61 = ptrtoint ptr %block_ref_to28 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %block_ref_to28, align 8
  %never_written = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %never_written to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %never_written, align 4
  %64 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool29.not = icmp eq i8 %64, 0
  br i1 %tobool29.not, label %if.else, label %do.end33

do.end33:                                         ; preds = %if.end27
  %65 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i264 = icmp eq i8 %65, 0
  br i1 %tobool.not.i264, label %if.else14.i279, label %land.lhs.true.i269

land.lhs.true.i269:                               ; preds = %do.end33
  %66 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i266 = getelementptr inbounds %struct.btrfsic_block, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %dev_bytenr.i266 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %dev_bytenr.i266, align 8
  %dev_bytenr1.i267 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %70 = ptrtoint ptr %dev_bytenr1.i267 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dev_bytenr1.i267, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %71)
  %cmp.i268 = icmp eq i64 %69, %71
  br i1 %cmp.i268, label %land.lhs.true2.i275, label %land.lhs.true.i269.if.else.thread.i276_crit_edge

land.lhs.true.i269.if.else.thread.i276_crit_edge: ; preds = %land.lhs.true.i269
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i276

land.lhs.true2.i275:                              ; preds = %land.lhs.true.i269
  %dev_state.i270 = getelementptr inbounds %struct.btrfsic_block, ptr %67, i32 0, i32 3
  %72 = ptrtoint ptr %dev_state.i270 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_state.i270, align 4
  %bdev.i271 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %bdev.i271 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bdev.i271, align 4
  %dev_state4.i272 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %76 = ptrtoint ptr %dev_state4.i272 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_state4.i272, align 4
  %bdev5.i273 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %bdev5.i273 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bdev5.i273, align 4
  %cmp6.i274 = icmp eq ptr %75, %79
  br i1 %cmp6.i274, label %land.lhs.true2.i275.btrfsic_get_block_type.exit281_crit_edge, label %land.lhs.true2.i275.if.else.thread.i276_crit_edge

land.lhs.true2.i275.if.else.thread.i276_crit_edge: ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i276

land.lhs.true2.i275.btrfsic_get_block_type.exit281_crit_edge: ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit281

if.else.thread.i276:                              ; preds = %land.lhs.true2.i275.if.else.thread.i276_crit_edge, %land.lhs.true.i269.if.else.thread.i276_crit_edge
  br label %btrfsic_get_block_type.exit281

if.else14.i279:                                   ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not.i277 = icmp sgt i8 %bf.load, -1
  %..i278 = select i1 %tobool18.not.i277, i32 68, i32 77
  br label %btrfsic_get_block_type.exit281

btrfsic_get_block_type.exit281:                   ; preds = %if.else14.i279, %if.else.thread.i276, %land.lhs.true2.i275.btrfsic_get_block_type.exit281_crit_edge
  %retval.0.i280 = phi i32 [ 83, %land.lhs.true2.i275.btrfsic_get_block_type.exit281_crit_edge ], [ %..i278, %if.else14.i279 ], [ 115, %if.else.thread.i276 ]
  %logical_bytenr39 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 5
  %80 = ptrtoint ptr %logical_bytenr39 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %logical_bytenr39, align 8
  %dev_state41 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %82 = ptrtoint ptr %dev_state41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_state41, align 4
  %bdev42 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %bdev42 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bdev42, align 4
  %dev_bytenr44 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %86 = ptrtoint ptr %dev_bytenr44 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %dev_bytenr44, align 8
  %mirror_num46 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 2
  %88 = ptrtoint ptr %mirror_num46 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mirror_num46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %retval.0.i280, i64 noundef %81, ptr noundef %85, i64 noundef %87, i32 noundef %89) #17
  br label %for.inc

if.else:                                          ; preds = %if.end27
  %90 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool53.not = icmp eq i8 %90, 0
  br i1 %tobool53.not, label %do.end57, label %if.else72

do.end57:                                         ; preds = %if.else
  %91 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i284 = icmp eq i8 %91, 0
  br i1 %tobool.not.i284, label %if.else14.i299, label %land.lhs.true.i289

land.lhs.true.i289:                               ; preds = %do.end57
  %92 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i286 = getelementptr inbounds %struct.btrfsic_block, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %dev_bytenr.i286 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %dev_bytenr.i286, align 8
  %dev_bytenr1.i287 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %96 = ptrtoint ptr %dev_bytenr1.i287 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %dev_bytenr1.i287, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %97)
  %cmp.i288 = icmp eq i64 %95, %97
  br i1 %cmp.i288, label %land.lhs.true2.i295, label %land.lhs.true.i289.if.else.thread.i296_crit_edge

land.lhs.true.i289.if.else.thread.i296_crit_edge: ; preds = %land.lhs.true.i289
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i296

land.lhs.true2.i295:                              ; preds = %land.lhs.true.i289
  %dev_state.i290 = getelementptr inbounds %struct.btrfsic_block, ptr %93, i32 0, i32 3
  %98 = ptrtoint ptr %dev_state.i290 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_state.i290, align 4
  %bdev.i291 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %bdev.i291 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bdev.i291, align 4
  %dev_state4.i292 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %102 = ptrtoint ptr %dev_state4.i292 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_state4.i292, align 4
  %bdev5.i293 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %bdev5.i293 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bdev5.i293, align 4
  %cmp6.i294 = icmp eq ptr %101, %105
  br i1 %cmp6.i294, label %land.lhs.true2.i295.btrfsic_get_block_type.exit301_crit_edge, label %land.lhs.true2.i295.if.else.thread.i296_crit_edge

land.lhs.true2.i295.if.else.thread.i296_crit_edge: ; preds = %land.lhs.true2.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i296

land.lhs.true2.i295.btrfsic_get_block_type.exit301_crit_edge: ; preds = %land.lhs.true2.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit301

if.else.thread.i296:                              ; preds = %land.lhs.true2.i295.if.else.thread.i296_crit_edge, %land.lhs.true.i289.if.else.thread.i296_crit_edge
  br label %btrfsic_get_block_type.exit301

if.else14.i299:                                   ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not.i297 = icmp sgt i8 %bf.load, -1
  %..i298 = select i1 %tobool18.not.i297, i32 68, i32 77
  br label %btrfsic_get_block_type.exit301

btrfsic_get_block_type.exit301:                   ; preds = %if.else14.i299, %if.else.thread.i296, %land.lhs.true2.i295.btrfsic_get_block_type.exit301_crit_edge
  %retval.0.i300 = phi i32 [ 83, %land.lhs.true2.i295.btrfsic_get_block_type.exit301_crit_edge ], [ %..i298, %if.else14.i299 ], [ 115, %if.else.thread.i296 ]
  %logical_bytenr63 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 5
  %106 = ptrtoint ptr %logical_bytenr63 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %logical_bytenr63, align 8
  %dev_state65 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %108 = ptrtoint ptr %dev_state65 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_state65, align 4
  %bdev66 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %bdev66 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bdev66, align 4
  %dev_bytenr68 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %112 = ptrtoint ptr %dev_bytenr68 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %dev_bytenr68, align 8
  %mirror_num70 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 2
  %114 = ptrtoint ptr %mirror_num70 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mirror_num70, align 8
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %retval.0.i300, i64 noundef %107, ptr noundef %111, i64 noundef %113, i32 noundef %115) #17
  br label %for.inc

if.else72:                                        ; preds = %if.else
  %116 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool78.not = icmp eq i8 %116, 0
  br i1 %tobool78.not, label %if.else97, label %do.end82

do.end82:                                         ; preds = %if.else72
  %117 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i304 = icmp eq i8 %117, 0
  br i1 %tobool.not.i304, label %if.else14.i319, label %land.lhs.true.i309

land.lhs.true.i309:                               ; preds = %do.end82
  %118 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i306 = getelementptr inbounds %struct.btrfsic_block, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %dev_bytenr.i306 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %dev_bytenr.i306, align 8
  %dev_bytenr1.i307 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %122 = ptrtoint ptr %dev_bytenr1.i307 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %dev_bytenr1.i307, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %123)
  %cmp.i308 = icmp eq i64 %121, %123
  br i1 %cmp.i308, label %land.lhs.true2.i315, label %land.lhs.true.i309.if.else.thread.i316_crit_edge

land.lhs.true.i309.if.else.thread.i316_crit_edge: ; preds = %land.lhs.true.i309
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i316

land.lhs.true2.i315:                              ; preds = %land.lhs.true.i309
  %dev_state.i310 = getelementptr inbounds %struct.btrfsic_block, ptr %119, i32 0, i32 3
  %124 = ptrtoint ptr %dev_state.i310 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_state.i310, align 4
  %bdev.i311 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %bdev.i311 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bdev.i311, align 4
  %dev_state4.i312 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %128 = ptrtoint ptr %dev_state4.i312 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev_state4.i312, align 4
  %bdev5.i313 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %bdev5.i313 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bdev5.i313, align 4
  %cmp6.i314 = icmp eq ptr %127, %131
  br i1 %cmp6.i314, label %land.lhs.true2.i315.btrfsic_get_block_type.exit321_crit_edge, label %land.lhs.true2.i315.if.else.thread.i316_crit_edge

land.lhs.true2.i315.if.else.thread.i316_crit_edge: ; preds = %land.lhs.true2.i315
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i316

land.lhs.true2.i315.btrfsic_get_block_type.exit321_crit_edge: ; preds = %land.lhs.true2.i315
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit321

if.else.thread.i316:                              ; preds = %land.lhs.true2.i315.if.else.thread.i316_crit_edge, %land.lhs.true.i309.if.else.thread.i316_crit_edge
  br label %btrfsic_get_block_type.exit321

if.else14.i319:                                   ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not.i317 = icmp sgt i8 %bf.load, -1
  %..i318 = select i1 %tobool18.not.i317, i32 68, i32 77
  br label %btrfsic_get_block_type.exit321

btrfsic_get_block_type.exit321:                   ; preds = %if.else14.i319, %if.else.thread.i316, %land.lhs.true2.i315.btrfsic_get_block_type.exit321_crit_edge
  %retval.0.i320 = phi i32 [ 83, %land.lhs.true2.i315.btrfsic_get_block_type.exit321_crit_edge ], [ %..i318, %if.else14.i319 ], [ 115, %if.else.thread.i316 ]
  %logical_bytenr88 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 5
  %132 = ptrtoint ptr %logical_bytenr88 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %logical_bytenr88, align 8
  %dev_state90 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %134 = ptrtoint ptr %dev_state90 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_state90, align 4
  %bdev91 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %bdev91 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bdev91, align 4
  %dev_bytenr93 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %138 = ptrtoint ptr %dev_bytenr93 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %dev_bytenr93, align 8
  %mirror_num95 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 2
  %140 = ptrtoint ptr %mirror_num95 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mirror_num95, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %retval.0.i320, i64 noundef %133, ptr noundef %137, i64 noundef %139, i32 noundef %141) #17
  br label %for.inc

if.else97:                                        ; preds = %if.else72
  %parent_generation = getelementptr i8, ptr %.pn365, i32 32
  %142 = ptrtoint ptr %parent_generation to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %parent_generation, align 8
  %generation = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 6
  %144 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %generation, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %143, i64 %145)
  %cmp99.not = icmp eq i64 %143, %145
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %143)
  %cmp102.not = icmp eq i64 %143, -1
  %or.cond = or i1 %cmp102.not, %cmp99.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %145)
  %cmp107.not = icmp eq i64 %145, -1
  %or.cond241 = or i1 %cmp107.not, %or.cond
  br i1 %or.cond241, label %if.else130, label %do.end112

do.end112:                                        ; preds = %if.else97
  %146 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i324 = icmp eq i8 %146, 0
  br i1 %tobool.not.i324, label %if.else14.i339, label %land.lhs.true.i329

land.lhs.true.i329:                               ; preds = %do.end112
  %147 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i326 = getelementptr inbounds %struct.btrfsic_block, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %dev_bytenr.i326 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %dev_bytenr.i326, align 8
  %dev_bytenr1.i327 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %151 = ptrtoint ptr %dev_bytenr1.i327 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %dev_bytenr1.i327, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %150, i64 %152)
  %cmp.i328 = icmp eq i64 %150, %152
  br i1 %cmp.i328, label %land.lhs.true2.i335, label %land.lhs.true.i329.if.else.thread.i336_crit_edge

land.lhs.true.i329.if.else.thread.i336_crit_edge: ; preds = %land.lhs.true.i329
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i336

land.lhs.true2.i335:                              ; preds = %land.lhs.true.i329
  %dev_state.i330 = getelementptr inbounds %struct.btrfsic_block, ptr %148, i32 0, i32 3
  %153 = ptrtoint ptr %dev_state.i330 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev_state.i330, align 4
  %bdev.i331 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %bdev.i331 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bdev.i331, align 4
  %dev_state4.i332 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %157 = ptrtoint ptr %dev_state4.i332 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev_state4.i332, align 4
  %bdev5.i333 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %bdev5.i333 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bdev5.i333, align 4
  %cmp6.i334 = icmp eq ptr %156, %160
  br i1 %cmp6.i334, label %land.lhs.true2.i335.btrfsic_get_block_type.exit341_crit_edge, label %land.lhs.true2.i335.if.else.thread.i336_crit_edge

land.lhs.true2.i335.if.else.thread.i336_crit_edge: ; preds = %land.lhs.true2.i335
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i336

land.lhs.true2.i335.btrfsic_get_block_type.exit341_crit_edge: ; preds = %land.lhs.true2.i335
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit341

if.else.thread.i336:                              ; preds = %land.lhs.true2.i335.if.else.thread.i336_crit_edge, %land.lhs.true.i329.if.else.thread.i336_crit_edge
  br label %btrfsic_get_block_type.exit341

if.else14.i339:                                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not.i337 = icmp sgt i8 %bf.load, -1
  %..i338 = select i1 %tobool18.not.i337, i32 68, i32 77
  br label %btrfsic_get_block_type.exit341

btrfsic_get_block_type.exit341:                   ; preds = %if.else14.i339, %if.else.thread.i336, %land.lhs.true2.i335.btrfsic_get_block_type.exit341_crit_edge
  %retval.0.i340 = phi i32 [ 83, %land.lhs.true2.i335.btrfsic_get_block_type.exit341_crit_edge ], [ %..i338, %if.else14.i339 ], [ 115, %if.else.thread.i336 ]
  %logical_bytenr118 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 5
  %161 = ptrtoint ptr %logical_bytenr118 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %logical_bytenr118, align 8
  %dev_state120 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %163 = ptrtoint ptr %dev_state120 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev_state120, align 4
  %bdev121 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %bdev121 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bdev121, align 4
  %dev_bytenr123 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %167 = ptrtoint ptr %dev_bytenr123 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %dev_bytenr123, align 8
  %mirror_num125 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 2
  %169 = ptrtoint ptr %mirror_num125 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mirror_num125, align 8
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %retval.0.i340, i64 noundef %162, ptr noundef %166, i64 noundef %168, i32 noundef %170, i64 noundef %145, i64 noundef %143) #17
  br label %for.inc

if.else130:                                       ; preds = %if.else97
  %flush_gen = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 16
  %171 = ptrtoint ptr %flush_gen to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %flush_gen, align 8
  %dev_state133 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 3
  %173 = ptrtoint ptr %dev_state133 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev_state133, align 4
  %last_flush_gen = getelementptr inbounds %struct.btrfsic_dev_state, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %last_flush_gen to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %last_flush_gen, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %172, i64 %176)
  %cmp134 = icmp ugt i64 %172, %176
  br i1 %cmp134, label %do.end139, label %if.else158

do.end139:                                        ; preds = %if.else130
  %177 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i344 = icmp eq i8 %177, 0
  br i1 %tobool.not.i344, label %if.else14.i359, label %land.lhs.true.i349

land.lhs.true.i349:                               ; preds = %do.end139
  %178 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i346 = getelementptr inbounds %struct.btrfsic_block, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %dev_bytenr.i346 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %dev_bytenr.i346, align 8
  %dev_bytenr1.i347 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %182 = ptrtoint ptr %dev_bytenr1.i347 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %dev_bytenr1.i347, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %181, i64 %183)
  %cmp.i348 = icmp eq i64 %181, %183
  br i1 %cmp.i348, label %land.lhs.true2.i355, label %land.lhs.true.i349.if.else.thread.i356_crit_edge

land.lhs.true.i349.if.else.thread.i356_crit_edge: ; preds = %land.lhs.true.i349
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i356

land.lhs.true2.i355:                              ; preds = %land.lhs.true.i349
  %dev_state.i350 = getelementptr inbounds %struct.btrfsic_block, ptr %179, i32 0, i32 3
  %184 = ptrtoint ptr %dev_state.i350 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev_state.i350, align 4
  %bdev.i351 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %bdev.i351 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bdev.i351, align 4
  %bdev5.i353 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %174, i32 0, i32 1
  %188 = ptrtoint ptr %bdev5.i353 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bdev5.i353, align 4
  %cmp6.i354 = icmp eq ptr %187, %189
  br i1 %cmp6.i354, label %land.lhs.true2.i355.btrfsic_get_block_type.exit361_crit_edge, label %land.lhs.true2.i355.if.else.thread.i356_crit_edge

land.lhs.true2.i355.if.else.thread.i356_crit_edge: ; preds = %land.lhs.true2.i355
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i356

land.lhs.true2.i355.btrfsic_get_block_type.exit361_crit_edge: ; preds = %land.lhs.true2.i355
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit361

if.else.thread.i356:                              ; preds = %land.lhs.true2.i355.if.else.thread.i356_crit_edge, %land.lhs.true.i349.if.else.thread.i356_crit_edge
  br label %btrfsic_get_block_type.exit361

if.else14.i359:                                   ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not.i357 = icmp sgt i8 %bf.load, -1
  %..i358 = select i1 %tobool18.not.i357, i32 68, i32 77
  br label %btrfsic_get_block_type.exit361

btrfsic_get_block_type.exit361:                   ; preds = %if.else14.i359, %if.else.thread.i356, %land.lhs.true2.i355.btrfsic_get_block_type.exit361_crit_edge
  %retval.0.i360 = phi i32 [ 83, %land.lhs.true2.i355.btrfsic_get_block_type.exit361_crit_edge ], [ %..i358, %if.else14.i359 ], [ 115, %if.else.thread.i356 ]
  %logical_bytenr145 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 5
  %190 = ptrtoint ptr %logical_bytenr145 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %logical_bytenr145, align 8
  %bdev148 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %174, i32 0, i32 1
  %192 = ptrtoint ptr %bdev148 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bdev148, align 4
  %dev_bytenr150 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 4
  %194 = ptrtoint ptr %dev_bytenr150 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %dev_bytenr150, align 8
  %mirror_num152 = getelementptr inbounds %struct.btrfsic_block, ptr %62, i32 0, i32 2
  %196 = ptrtoint ptr %mirror_num152 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mirror_num152, align 8
  %198 = ptrtoint ptr %flush_gen153 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %flush_gen153, align 8
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %retval.0.i360, i64 noundef %191, ptr noundef %193, i64 noundef %195, i32 noundef %197, i64 noundef %199, i64 noundef %176) #17
  br label %for.inc

if.else158:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #16
  %call160 = tail call fastcc i32 @btrfsic_check_all_ref_blocks(ptr noundef %state, ptr noundef %62, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call160)
  %cmp161 = icmp eq i32 %call160, -1
  %spec.select = select i1 %cmp161, i32 -1, i32 %ret.0364
  br label %for.inc

for.inc:                                          ; preds = %if.else158, %btrfsic_get_block_type.exit361, %btrfsic_get_block_type.exit341, %btrfsic_get_block_type.exit321, %btrfsic_get_block_type.exit301, %btrfsic_get_block_type.exit281
  %ret.1 = phi i32 [ -1, %btrfsic_get_block_type.exit281 ], [ -1, %btrfsic_get_block_type.exit321 ], [ -1, %btrfsic_get_block_type.exit341 ], [ -1, %btrfsic_get_block_type.exit361 ], [ -1, %btrfsic_get_block_type.exit301 ], [ %spec.select, %if.else158 ]
  %200 = ptrtoint ptr %.pn365 to i32
  call void @__asan_load4_noabort(i32 %200)
  %.pn = load ptr, ptr %.pn365, align 4
  %cmp5.not = icmp eq ptr %.pn, %ref_to_list
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfsic_print_add_link(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %l) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cnt = getelementptr inbounds %struct.btrfsic_block_link, ptr %l, i32 0, i32 1
  %0 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_cnt, align 4
  %block_ref_from = getelementptr inbounds %struct.btrfsic_block_link, ptr %l, i32 0, i32 6
  %2 = ptrtoint ptr %block_ref_from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_ref_from, align 4
  %is_superblock.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %is_superblock.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_superblock.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %latest_superblock.i = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %6 = ptrtoint ptr %latest_superblock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %latest_superblock.i, align 8
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dev_bytenr.i, align 8
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dev_bytenr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i = icmp eq i64 %9, %11
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.thread.i_crit_edge

land.lhs.true.i.if.else.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i, align 4
  %dev_state4.i = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dev_state4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_state4.i, align 4
  %bdev5.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bdev5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev5.i, align 4
  %cmp6.i = icmp eq ptr %15, %19
  br i1 %cmp6.i, label %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge, label %land.lhs.true2.i.if.else.thread.i_crit_edge

land.lhs.true2.i.if.else.thread.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit

if.else.thread.i:                                 ; preds = %land.lhs.true2.i.if.else.thread.i_crit_edge, %land.lhs.true.i.if.else.thread.i_crit_edge
  br label %btrfsic_get_block_type.exit

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool18.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool18.not.i, i32 68, i32 77
  br label %btrfsic_get_block_type.exit

btrfsic_get_block_type.exit:                      ; preds = %if.else14.i, %if.else.thread.i, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge
  %retval.0.i = phi i32 [ 83, %land.lhs.true2.i.btrfsic_get_block_type.exit_crit_edge ], [ %..i, %if.else14.i ], [ 115, %if.else.thread.i ]
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %logical_bytenr, align 8
  %dev_state = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_state, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dev_bytenr, align 8
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %mirror_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mirror_num, align 8
  %block_ref_to = getelementptr inbounds %struct.btrfsic_block_link, ptr %l, i32 0, i32 5
  %30 = ptrtoint ptr %block_ref_to to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %block_ref_to, align 8
  %is_superblock.i28 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %is_superblock.i28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i29 = load i8, ptr %is_superblock.i28, align 4
  %33 = and i8 %bf.load.i29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i30 = icmp eq i8 %33, 0
  br i1 %tobool.not.i30, label %if.else14.i45, label %land.lhs.true.i35

land.lhs.true.i35:                                ; preds = %btrfsic_get_block_type.exit
  %latest_superblock.i31 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %34 = ptrtoint ptr %latest_superblock.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %latest_superblock.i31, align 8
  %dev_bytenr.i32 = getelementptr inbounds %struct.btrfsic_block, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %dev_bytenr.i32 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dev_bytenr.i32, align 8
  %dev_bytenr1.i33 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 4
  %38 = ptrtoint ptr %dev_bytenr1.i33 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dev_bytenr1.i33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp.i34 = icmp eq i64 %37, %39
  br i1 %cmp.i34, label %land.lhs.true2.i41, label %land.lhs.true.i35.if.else.thread.i42_crit_edge

land.lhs.true.i35.if.else.thread.i42_crit_edge:   ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i42

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i35
  %dev_state.i36 = getelementptr inbounds %struct.btrfsic_block, ptr %35, i32 0, i32 3
  %40 = ptrtoint ptr %dev_state.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_state.i36, align 4
  %bdev.i37 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bdev.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev.i37, align 4
  %dev_state4.i38 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 3
  %44 = ptrtoint ptr %dev_state4.i38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_state4.i38, align 4
  %bdev5.i39 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bdev5.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev5.i39, align 4
  %cmp6.i40 = icmp eq ptr %43, %47
  br i1 %cmp6.i40, label %land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge, label %land.lhs.true2.i41.if.else.thread.i42_crit_edge

land.lhs.true2.i41.if.else.thread.i42_crit_edge:  ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i42

land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_get_block_type.exit47

if.else.thread.i42:                               ; preds = %land.lhs.true2.i41.if.else.thread.i42_crit_edge, %land.lhs.true.i35.if.else.thread.i42_crit_edge
  br label %btrfsic_get_block_type.exit47

if.else14.i45:                                    ; preds = %btrfsic_get_block_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i29)
  %tobool18.not.i43 = icmp sgt i8 %bf.load.i29, -1
  %..i44 = select i1 %tobool18.not.i43, i32 68, i32 77
  br label %btrfsic_get_block_type.exit47

btrfsic_get_block_type.exit47:                    ; preds = %if.else14.i45, %if.else.thread.i42, %land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge
  %retval.0.i46 = phi i32 [ 83, %land.lhs.true2.i41.btrfsic_get_block_type.exit47_crit_edge ], [ %..i44, %if.else14.i45 ], [ 115, %if.else.thread.i42 ]
  %logical_bytenr8 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 5
  %48 = ptrtoint ptr %logical_bytenr8 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %logical_bytenr8, align 8
  %dev_state10 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 3
  %50 = ptrtoint ptr %dev_state10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_state10, align 4
  %bdev11 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bdev11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev11, align 4
  %dev_bytenr13 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 4
  %54 = ptrtoint ptr %dev_bytenr13 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dev_bytenr13, align 8
  %mirror_num15 = getelementptr inbounds %struct.btrfsic_block, ptr %31, i32 0, i32 2
  %56 = ptrtoint ptr %mirror_num15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mirror_num15, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %1, i32 noundef %retval.0.i, i64 noundef %21, ptr noundef %25, i64 noundef %27, i32 noundef %29, i32 noundef %retval.0.i46, i64 noundef %49, ptr noundef %53, i64 noundef %55, i32 noundef %57) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_create_link_to_next_block(ptr noundef %state, ptr noundef %block, ptr nocapture noundef readonly %block_ctx, i64 noundef %next_bytenr, i32 noundef %limit_nesting, ptr noundef %next_block_ctx, ptr nocapture noundef writeonly %next_blockp, i32 noundef %force_iodone_flag, ptr nocapture noundef %num_copiesp, ptr nocapture noundef %mirror_nump, ptr nocapture noundef readonly %disk_key, i64 noundef %parent_generation) unnamed_addr #0 align 64 {
entry:
  %block_was_created = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_was_created) #14
  %2 = ptrtoint ptr %block_was_created to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %block_was_created, align 4, !annotation !443
  %3 = ptrtoint ptr %next_blockp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %next_blockp, align 4
  %4 = ptrtoint ptr %num_copiesp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_copiesp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %metablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 8
  %6 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %metablock_size, align 4
  %conv = zext i32 %7 to i64
  %call = tail call i32 @btrfs_num_copies(ptr noundef %1, i64 noundef %next_bytenr, i64 noundef %conv) #14
  %8 = ptrtoint ptr %num_copiesp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %num_copiesp, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %next_bytenr, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %mirror_nump, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %12 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mirror_nump, align 4
  %14 = ptrtoint ptr %num_copiesp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_copiesp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5 = icmp sgt i32 %13, %15
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  %and10 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end18_crit_edge, label %do.end15

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %13) #17
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end8.if.end18_crit_edge
  %metablock_size19 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 8
  %18 = ptrtoint ptr %metablock_size19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %metablock_size19, align 4
  %20 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mirror_nump, align 4
  %call20 = tail call fastcc i32 @btrfsic_map_block(ptr noundef %state, i64 noundef %next_bytenr, i32 noundef %19, ptr noundef %next_block_ctx, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end18
  %22 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mirror_nump, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i64 noundef %next_bytenr, i32 noundef %23) #17
  %mem_to_free.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 6
  %24 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_to_free.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.end25.btrfsic_release_block_ctx.exit_crit_edge, label %if.then.i

do.end25.btrfsic_release_block_ctx.exit_crit_edge: ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit

if.then.i:                                        ; preds = %do.end25
  %datav.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 4
  %26 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %datav.i, align 8
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %do.body6.i, label %do.body12.i, !prof !438

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i:                                      ; preds = %if.then.i
  %pagev.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 5
  %28 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pagev.i, align 4
  %tobool13.not.i = icmp eq ptr %29, null
  br i1 %tobool13.not.i, label %do.body23.i, label %do.end31.i, !prof !438

do.body23.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i:                                       ; preds = %do.body12.i
  %len.i = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 2
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 8
  %conv.i = zext i32 %31 to i64
  %sub.i = add nuw nsw i64 %conv.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv32.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i)
  %cmp.not72.i = icmp eq i32 %conv32.i, 0
  br i1 %cmp.not72.i, label %do.end31.i.while.end.i_crit_edge, label %do.end31.i.while.body.i_crit_edge

do.end31.i.while.body.i_crit_edge:                ; preds = %do.end31.i
  br label %while.body.i

do.end31.i.while.end.i_crit_edge:                 ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end48.i.while.body.i_crit_edge, %do.end31.i.while.body.i_crit_edge
  %num_pages.073.i = phi i32 [ %dec.i, %if.end48.i.while.body.i_crit_edge ], [ %conv32.i, %do.end31.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %num_pages.073.i, -1
  %32 = ptrtoint ptr %datav.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %datav.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %33, i32 %dec.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %tobool35.not.i = icmp eq ptr %35, null
  br i1 %tobool35.not.i, label %while.body.i.if.end39.i_crit_edge, label %if.then36.i

while.body.i.if.end39.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then36.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %while.body.i.if.end39.i_crit_edge
  %37 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pagev.i, align 4
  %arrayidx41.i = getelementptr ptr, ptr %38, i32 %dec.i
  %39 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx41.i, align 4
  %tobool42.not.i = icmp eq ptr %40, null
  br i1 %tobool42.not.i, label %if.end39.i.if.end48.i_crit_edge, label %if.then43.i

if.end39.i.if.end48.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %40, i32 noundef 0) #14
  %41 = ptrtoint ptr %pagev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pagev.i, align 4
  %arrayidx47.i = getelementptr ptr, ptr %42, i32 %dec.i
  %43 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx47.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end48.i_crit_edge
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end48.i.while.end.i_crit_edge, label %if.end48.i.while.body.i_crit_edge

if.end48.i.while.body.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end48.i.while.end.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end48.i.while.end.i_crit_edge, %do.end31.i.while.end.i_crit_edge
  %44 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem_to_free.i, align 8
  tail call void @kfree(ptr noundef %45) #14
  %46 = ptrtoint ptr %mem_to_free.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %mem_to_free.i, align 8
  %47 = ptrtoint ptr %pagev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %pagev.i, align 4
  %48 = ptrtoint ptr %datav.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %datav.i, align 8
  br label %btrfsic_release_block_ctx.exit

btrfsic_release_block_ctx.exit:                   ; preds = %while.end.i, %do.end25.btrfsic_release_block_ctx.exit_crit_edge
  %49 = ptrtoint ptr %next_blockp to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %next_blockp, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_iodone_flag)
  %tobool29.not = icmp eq i32 %force_iodone_flag, 0
  %lnot.ext = zext i1 %tobool29.not to i32
  %50 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mirror_nump, align 4
  %call30 = call fastcc ptr @btrfsic_block_lookup_or_add(ptr noundef %state, ptr noundef %next_block_ctx, ptr noundef nonnull @.str.172, i32 noundef 1, i32 noundef %force_iodone_flag, i32 noundef %lnot.ext, i32 noundef %51, ptr noundef nonnull %block_was_created)
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  %mem_to_free.i218 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 6
  %52 = ptrtoint ptr %mem_to_free.i218 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mem_to_free.i218, align 8
  %tobool.not.i219 = icmp eq ptr %53, null
  br i1 %tobool.not.i219, label %if.then33.btrfsic_release_block_ctx.exit249_crit_edge, label %if.then.i222

if.then33.btrfsic_release_block_ctx.exit249_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit249

if.then.i222:                                     ; preds = %if.then33
  %datav.i220 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 4
  %54 = ptrtoint ptr %datav.i220 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %datav.i220, align 8
  %tobool1.not.i221 = icmp eq ptr %55, null
  br i1 %tobool1.not.i221, label %do.body6.i223, label %do.body12.i226, !prof !438

do.body6.i223:                                    ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i226:                                   ; preds = %if.then.i222
  %pagev.i224 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 5
  %56 = ptrtoint ptr %pagev.i224 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pagev.i224, align 4
  %tobool13.not.i225 = icmp eq ptr %57, null
  br i1 %tobool13.not.i225, label %do.body23.i227, label %do.end31.i234, !prof !438

do.body23.i227:                                   ; preds = %do.body12.i226
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i234:                                    ; preds = %do.body12.i226
  %len.i228 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 2
  %58 = ptrtoint ptr %len.i228 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i228, align 8
  %conv.i229 = zext i32 %59 to i64
  %sub.i230 = add nuw nsw i64 %conv.i229, 4095
  %shr.i231 = lshr i64 %sub.i230, 12
  %conv32.i232 = trunc i64 %shr.i231 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i232)
  %cmp.not72.i233 = icmp eq i32 %conv32.i232, 0
  br i1 %cmp.not72.i233, label %do.end31.i234.while.end.i248_crit_edge, label %do.end31.i234.while.body.i239_crit_edge

do.end31.i234.while.body.i239_crit_edge:          ; preds = %do.end31.i234
  br label %while.body.i239

do.end31.i234.while.end.i248_crit_edge:           ; preds = %do.end31.i234
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i248

while.body.i239:                                  ; preds = %if.end48.i247.while.body.i239_crit_edge, %do.end31.i234.while.body.i239_crit_edge
  %num_pages.073.i235 = phi i32 [ %dec.i236, %if.end48.i247.while.body.i239_crit_edge ], [ %conv32.i232, %do.end31.i234.while.body.i239_crit_edge ]
  %dec.i236 = add nsw i32 %num_pages.073.i235, -1
  %60 = ptrtoint ptr %datav.i220 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %datav.i220, align 8
  %arrayidx.i237 = getelementptr ptr, ptr %61, i32 %dec.i236
  %62 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i237, align 4
  %tobool35.not.i238 = icmp eq ptr %63, null
  br i1 %tobool35.not.i238, label %while.body.i239.if.end39.i243_crit_edge, label %if.then36.i240

while.body.i239.if.end39.i243_crit_edge:          ; preds = %while.body.i239
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i243

if.then36.i240:                                   ; preds = %while.body.i239
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx.i237, align 4
  br label %if.end39.i243

if.end39.i243:                                    ; preds = %if.then36.i240, %while.body.i239.if.end39.i243_crit_edge
  %65 = ptrtoint ptr %pagev.i224 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pagev.i224, align 4
  %arrayidx41.i241 = getelementptr ptr, ptr %66, i32 %dec.i236
  %67 = ptrtoint ptr %arrayidx41.i241 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx41.i241, align 4
  %tobool42.not.i242 = icmp eq ptr %68, null
  br i1 %tobool42.not.i242, label %if.end39.i243.if.end48.i247_crit_edge, label %if.then43.i245

if.end39.i243.if.end48.i247_crit_edge:            ; preds = %if.end39.i243
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i247

if.then43.i245:                                   ; preds = %if.end39.i243
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %68, i32 noundef 0) #14
  %69 = ptrtoint ptr %pagev.i224 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pagev.i224, align 4
  %arrayidx47.i244 = getelementptr ptr, ptr %70, i32 %dec.i236
  %71 = ptrtoint ptr %arrayidx47.i244 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx47.i244, align 4
  br label %if.end48.i247

if.end48.i247:                                    ; preds = %if.then43.i245, %if.end39.i243.if.end48.i247_crit_edge
  %cmp.not.i246 = icmp eq i32 %dec.i236, 0
  br i1 %cmp.not.i246, label %if.end48.i247.while.end.i248_crit_edge, label %if.end48.i247.while.body.i239_crit_edge

if.end48.i247.while.body.i239_crit_edge:          ; preds = %if.end48.i247
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i239

if.end48.i247.while.end.i248_crit_edge:           ; preds = %if.end48.i247
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i248

while.end.i248:                                   ; preds = %if.end48.i247.while.end.i248_crit_edge, %do.end31.i234.while.end.i248_crit_edge
  %72 = ptrtoint ptr %mem_to_free.i218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mem_to_free.i218, align 8
  call void @kfree(ptr noundef %73) #14
  %74 = ptrtoint ptr %mem_to_free.i218 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %mem_to_free.i218, align 8
  %75 = ptrtoint ptr %pagev.i224 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %pagev.i224, align 4
  %76 = ptrtoint ptr %datav.i220 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %datav.i220, align 8
  br label %btrfsic_release_block_ctx.exit249

btrfsic_release_block_ctx.exit249:                ; preds = %while.end.i248, %if.then33.btrfsic_release_block_ctx.exit249_crit_edge
  %77 = ptrtoint ptr %next_blockp to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %next_blockp, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %78 = ptrtoint ptr %block_was_created to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %block_was_created, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool35.not = icmp eq i32 %79, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %generation = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 6
  %80 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 -1, ptr %generation, align 8
  br label %if.end78.thread

if.else:                                          ; preds = %if.end34
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state, align 8
  %and38 = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else.if.end69_crit_edge, label %if.then40

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then40:                                        ; preds = %if.else
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 5
  %83 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %logical_bytenr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %next_bytenr)
  %cmp41.not = icmp eq i64 %84, %next_bytenr
  br i1 %cmp41.not, label %if.then40.do.end60_crit_edge, label %land.lhs.true

if.then40.do.end60_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

land.lhs.true:                                    ; preds = %if.then40
  %is_metadata = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 1
  %85 = ptrtoint ptr %is_metadata to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load = load i8, ptr %is_metadata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool43.not = icmp sgt i8 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %cmp46 = icmp eq i64 %84, 0
  %or.cond = select i1 %tobool43.not, i1 %cmp46, i1 false
  br i1 %or.cond, label %land.lhs.true.do.end60_crit_edge, label %do.end51

land.lhs.true.do.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

do.end51:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 3
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bdev, align 4
  %dev_bytenr = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 1
  %90 = ptrtoint ptr %dev_bytenr to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %dev_bytenr, align 8
  %92 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mirror_nump, align 4
  %call53 = call fastcc zeroext i8 @btrfsic_get_block_type(ptr noundef %state, ptr noundef nonnull %call30)
  %conv54 = zext i8 %call53 to i32
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i64 noundef %next_bytenr, ptr noundef %89, i64 noundef %91, i32 noundef %93, i32 noundef %conv54, i64 noundef %84) #17
  br label %if.end69

do.end60:                                         ; preds = %land.lhs.true.do.end60_crit_edge, %if.then40.do.end60_crit_edge
  %dev62 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 3
  %94 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev62, align 4
  %bdev63 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %bdev63 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bdev63, align 4
  %dev_bytenr64 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 1
  %98 = ptrtoint ptr %dev_bytenr64 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %dev_bytenr64, align 8
  %100 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mirror_nump, align 4
  %call65 = call fastcc zeroext i8 @btrfsic_get_block_type(ptr noundef %state, ptr noundef nonnull %call30)
  %conv66 = zext i8 %call65 to i32
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i64 noundef %next_bytenr, ptr noundef %97, i64 noundef %99, i32 noundef %101, i32 noundef %conv66) #17
  br label %if.end69

if.end69:                                         ; preds = %do.end60, %do.end51, %if.else.if.end69_crit_edge
  %logical_bytenr70 = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 5
  %102 = ptrtoint ptr %logical_bytenr70 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %next_bytenr, ptr %logical_bytenr70, align 8
  %103 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mirror_nump, align 4
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 2
  %105 = ptrtoint ptr %mirror_num to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %mirror_num, align 8
  %dev71 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 3
  %106 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev71, align 4
  %bdev72 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %bdev72 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bdev72, align 4
  %dev_bytenr73 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 1
  %110 = ptrtoint ptr %dev_bytenr73 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %dev_bytenr73, align 8
  %dev74 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 3
  %112 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev74, align 4
  %bdev75 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %bdev75 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bdev75, align 4
  %dev_bytenr76 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 1
  %116 = ptrtoint ptr %dev_bytenr76 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %dev_bytenr76, align 8
  %block_link_hashtable = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 4
  %shr80.i = xor i64 %117, %111
  %118 = trunc i64 %shr80.i to i32
  %119 = lshr i32 %118, 16
  %120 = ptrtoint ptr %109 to i32
  %121 = ptrtoint ptr %115 to i32
  %xor3.i = xor i32 %121, %120
  %xor3.masked.i = and i32 %xor3.i, 65535
  %and.i = xor i32 %119, %xor3.masked.i
  %add.ptr.i = getelementptr %struct.list_head, ptr %block_link_hashtable, i32 %and.i
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn83.i = load ptr, ptr %add.ptr.i, align 4
  %cmp.not84.i = icmp eq ptr %.pn83.i, %add.ptr.i
  br i1 %cmp.not84.i, label %if.end69.if.end78.thread_crit_edge, label %if.end69.do.body.i_crit_edge

if.end69.do.body.i_crit_edge:                     ; preds = %if.end69
  br label %do.body.i

if.end69.if.end78.thread_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.thread

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end69.do.body.i_crit_edge
  %.pn85.i = phi ptr [ %.pn.i, %for.inc.i.do.body.i_crit_edge ], [ %.pn83.i, %if.end69.do.body.i_crit_edge ]
  %block_ref_to.i = getelementptr i8, ptr %.pn85.i, i32 8
  %123 = ptrtoint ptr %block_ref_to.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %block_ref_to.i, align 8
  %cmp10.i = icmp eq ptr %124, null
  br i1 %cmp10.i, label %do.body14.i, label %do.body20.i, !prof !438

do.body14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #14, !srcloc !451
  unreachable

do.body20.i:                                      ; preds = %do.body.i
  %block_ref_from.i = getelementptr i8, ptr %.pn85.i, i32 12
  %125 = ptrtoint ptr %block_ref_from.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %block_ref_from.i, align 4
  %cmp21.i = icmp eq ptr %126, null
  br i1 %cmp21.i, label %do.body30.i, label %do.end38.i, !prof !438

do.body30.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 520, 0\0A.popsection", ""() #14, !srcloc !452
  unreachable

do.end38.i:                                       ; preds = %do.body20.i
  %dev_state.i = getelementptr inbounds %struct.btrfsic_block, ptr %124, i32 0, i32 3
  %127 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_state.i, align 4
  %bdev.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bdev.i, align 4
  %cmp40.i = icmp eq ptr %130, %109
  br i1 %cmp40.i, label %land.lhs.true.i, label %do.end38.i.for.inc.i_crit_edge

do.end38.i.for.inc.i_crit_edge:                   ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %do.end38.i
  %dev_bytenr.i = getelementptr inbounds %struct.btrfsic_block, ptr %124, i32 0, i32 4
  %131 = ptrtoint ptr %dev_bytenr.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %dev_bytenr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %111)
  %cmp43.i = icmp eq i64 %132, %111
  br i1 %cmp43.i, label %land.lhs.true45.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true45.i:                                ; preds = %land.lhs.true.i
  %dev_state47.i = getelementptr inbounds %struct.btrfsic_block, ptr %126, i32 0, i32 3
  %133 = ptrtoint ptr %dev_state47.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_state47.i, align 4
  %bdev48.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %bdev48.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bdev48.i, align 4
  %cmp49.i = icmp eq ptr %136, %115
  br i1 %cmp49.i, label %land.lhs.true51.i, label %land.lhs.true45.i.for.inc.i_crit_edge

land.lhs.true45.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true51.i:                                ; preds = %land.lhs.true45.i
  %dev_bytenr53.i = getelementptr inbounds %struct.btrfsic_block, ptr %126, i32 0, i32 4
  %137 = ptrtoint ptr %dev_bytenr53.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %dev_bytenr53.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %138, i64 %117)
  %cmp54.i = icmp eq i64 %138, %117
  br i1 %cmp54.i, label %if.end78, label %land.lhs.true51.i.for.inc.i_crit_edge

land.lhs.true51.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true51.i.for.inc.i_crit_edge, %land.lhs.true45.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %do.end38.i.for.inc.i_crit_edge
  %139 = ptrtoint ptr %.pn85.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pn.i = load ptr, ptr %.pn85.i, align 4
  %cmp.not.i250 = icmp eq ptr %.pn.i, %add.ptr.i
  br i1 %cmp.not.i250, label %for.inc.i.if.end78.thread_crit_edge, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.inc.i.if.end78.thread_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.thread

if.end78.thread:                                  ; preds = %for.inc.i.if.end78.thread_crit_edge, %if.end69.if.end78.thread_crit_edge, %if.then36
  %disk_key79301 = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 7
  %140 = call ptr @memcpy(ptr %disk_key79301, ptr %disk_key, i32 17)
  br label %if.then82

if.end78:                                         ; preds = %land.lhs.true51.i
  %l.0.le.i = getelementptr i8, ptr %.pn85.i, i32 -24
  %disk_key79 = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 7
  %141 = call ptr @memcpy(ptr %disk_key79, ptr %disk_key, i32 17)
  %cmp80 = icmp eq ptr %l.0.le.i, null
  br i1 %cmp80, label %if.end78.if.then82_crit_edge, label %if.else95

if.end78.if.then82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then82

if.then82:                                        ; preds = %if.end78.if.then82_crit_edge, %if.end78.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %142 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3392, i32 noundef 48) #19
  %cmp.not.i251 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i251, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.then82
  %mem_to_free.i253 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 6
  %143 = ptrtoint ptr %mem_to_free.i253 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mem_to_free.i253, align 8
  %tobool.not.i254 = icmp eq ptr %144, null
  br i1 %tobool.not.i254, label %if.then86.btrfsic_release_block_ctx.exit284_crit_edge, label %if.then.i257

if.then86.btrfsic_release_block_ctx.exit284_crit_edge: ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfsic_release_block_ctx.exit284

if.then.i257:                                     ; preds = %if.then86
  %datav.i255 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 4
  %145 = ptrtoint ptr %datav.i255 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %datav.i255, align 8
  %tobool1.not.i256 = icmp eq ptr %146, null
  br i1 %tobool1.not.i256, label %do.body6.i258, label %do.body12.i261, !prof !438

do.body6.i258:                                    ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i261:                                   ; preds = %if.then.i257
  %pagev.i259 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 5
  %147 = ptrtoint ptr %pagev.i259 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pagev.i259, align 4
  %tobool13.not.i260 = icmp eq ptr %148, null
  br i1 %tobool13.not.i260, label %do.body23.i262, label %do.end31.i269, !prof !438

do.body23.i262:                                   ; preds = %do.body12.i261
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i269:                                    ; preds = %do.body12.i261
  %len.i263 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 2
  %149 = ptrtoint ptr %len.i263 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len.i263, align 8
  %conv.i264 = zext i32 %150 to i64
  %sub.i265 = add nuw nsw i64 %conv.i264, 4095
  %shr.i266 = lshr i64 %sub.i265, 12
  %conv32.i267 = trunc i64 %shr.i266 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i267)
  %cmp.not72.i268 = icmp eq i32 %conv32.i267, 0
  br i1 %cmp.not72.i268, label %do.end31.i269.while.end.i283_crit_edge, label %do.end31.i269.while.body.i274_crit_edge

do.end31.i269.while.body.i274_crit_edge:          ; preds = %do.end31.i269
  br label %while.body.i274

do.end31.i269.while.end.i283_crit_edge:           ; preds = %do.end31.i269
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i283

while.body.i274:                                  ; preds = %if.end48.i282.while.body.i274_crit_edge, %do.end31.i269.while.body.i274_crit_edge
  %num_pages.073.i270 = phi i32 [ %dec.i271, %if.end48.i282.while.body.i274_crit_edge ], [ %conv32.i267, %do.end31.i269.while.body.i274_crit_edge ]
  %dec.i271 = add nsw i32 %num_pages.073.i270, -1
  %151 = ptrtoint ptr %datav.i255 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %datav.i255, align 8
  %arrayidx.i272 = getelementptr ptr, ptr %152, i32 %dec.i271
  %153 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i272, align 4
  %tobool35.not.i273 = icmp eq ptr %154, null
  br i1 %tobool35.not.i273, label %while.body.i274.if.end39.i278_crit_edge, label %if.then36.i275

while.body.i274.if.end39.i278_crit_edge:          ; preds = %while.body.i274
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i278

if.then36.i275:                                   ; preds = %while.body.i274
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %arrayidx.i272, align 4
  br label %if.end39.i278

if.end39.i278:                                    ; preds = %if.then36.i275, %while.body.i274.if.end39.i278_crit_edge
  %156 = ptrtoint ptr %pagev.i259 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pagev.i259, align 4
  %arrayidx41.i276 = getelementptr ptr, ptr %157, i32 %dec.i271
  %158 = ptrtoint ptr %arrayidx41.i276 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx41.i276, align 4
  %tobool42.not.i277 = icmp eq ptr %159, null
  br i1 %tobool42.not.i277, label %if.end39.i278.if.end48.i282_crit_edge, label %if.then43.i280

if.end39.i278.if.end48.i282_crit_edge:            ; preds = %if.end39.i278
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i282

if.then43.i280:                                   ; preds = %if.end39.i278
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %159, i32 noundef 0) #14
  %160 = ptrtoint ptr %pagev.i259 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pagev.i259, align 4
  %arrayidx47.i279 = getelementptr ptr, ptr %161, i32 %dec.i271
  %162 = ptrtoint ptr %arrayidx47.i279 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %arrayidx47.i279, align 4
  br label %if.end48.i282

if.end48.i282:                                    ; preds = %if.then43.i280, %if.end39.i278.if.end48.i282_crit_edge
  %cmp.not.i281 = icmp eq i32 %dec.i271, 0
  br i1 %cmp.not.i281, label %if.end48.i282.while.end.i283_crit_edge, label %if.end48.i282.while.body.i274_crit_edge

if.end48.i282.while.body.i274_crit_edge:          ; preds = %if.end48.i282
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i274

if.end48.i282.while.end.i283_crit_edge:           ; preds = %if.end48.i282
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i283

while.end.i283:                                   ; preds = %if.end48.i282.while.end.i283_crit_edge, %do.end31.i269.while.end.i283_crit_edge
  %163 = ptrtoint ptr %mem_to_free.i253 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mem_to_free.i253, align 8
  call void @kfree(ptr noundef %164) #14
  %165 = ptrtoint ptr %mem_to_free.i253 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %mem_to_free.i253, align 8
  %166 = ptrtoint ptr %pagev.i259 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %pagev.i259, align 4
  %167 = ptrtoint ptr %datav.i255 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %datav.i255, align 8
  br label %btrfsic_release_block_ctx.exit284

btrfsic_release_block_ctx.exit284:                ; preds = %while.end.i283, %if.then86.btrfsic_release_block_ctx.exit284_crit_edge
  %168 = ptrtoint ptr %next_blockp to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %next_blockp, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.then82
  %169 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 285673479, ptr %call7.i.i.i, align 8
  %ref_cnt.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 1
  %node_ref_to.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 2
  %170 = ptrtoint ptr %node_ref_to.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %node_ref_to.i.i, ptr %node_ref_to.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %171 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %node_ref_to.i.i, ptr %prev.i.i.i, align 4
  %node_ref_from.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 3
  %172 = ptrtoint ptr %node_ref_from.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %node_ref_from.i.i, ptr %node_ref_from.i.i, align 8
  %prev.i7.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %173 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %node_ref_from.i.i, ptr %prev.i7.i.i, align 4
  %collision_resolving_node.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 4
  %174 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %collision_resolving_node.i.i, ptr %collision_resolving_node.i.i, align 8
  %prev.i8.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %175 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %collision_resolving_node.i.i, ptr %prev.i8.i.i, align 4
  %block_ref_to.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 5
  %block_ref_from.i.i = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 6
  %176 = ptrtoint ptr %block_ref_to.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call30, ptr %block_ref_to.i.i, align 8
  %177 = ptrtoint ptr %block_ref_from.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %block, ptr %block_ref_from.i.i, align 4
  %178 = ptrtoint ptr %ref_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %ref_cnt.i.i, align 4
  %parent_generation88 = getelementptr inbounds %struct.btrfsic_block_link, ptr %call7.i.i.i, i32 0, i32 7
  %179 = ptrtoint ptr %parent_generation88 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %parent_generation, ptr %parent_generation88, align 8
  %180 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %state, align 8
  %and90 = and i32 %181, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end87.if.end93_crit_edge, label %if.then92

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @btrfsic_print_add_link(ptr noundef %state, ptr noundef nonnull %call7.i.i.i)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end87.if.end93_crit_edge
  %ref_to_list = getelementptr inbounds %struct.btrfsic_block, ptr %block, i32 0, i32 10
  %182 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ref_to_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node_ref_to.i.i, ptr noundef %ref_to_list, ptr noundef %183) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end93.list_add.exit_crit_edge

if.end93.list_add.exit_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %node_ref_to.i.i, ptr %prev1.i.i, align 4
  %185 = ptrtoint ptr %node_ref_to.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %183, ptr %node_ref_to.i.i, align 8
  %186 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %ref_to_list, ptr %prev.i.i.i, align 4
  %187 = ptrtoint ptr %ref_to_list to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %node_ref_to.i.i, ptr %ref_to_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end93.list_add.exit_crit_edge
  %ref_from_list = getelementptr inbounds %struct.btrfsic_block, ptr %call30, i32 0, i32 11
  %188 = ptrtoint ptr %ref_from_list to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ref_from_list, align 4
  %call.i.i285 = call zeroext i1 @__list_add_valid(ptr noundef %node_ref_from.i.i, ptr noundef %ref_from_list, ptr noundef %189) #14
  br i1 %call.i.i285, label %if.end.i.i288, label %list_add.exit.list_add.exit289_crit_edge

list_add.exit.list_add.exit289_crit_edge:         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit289

if.end.i.i288:                                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i286 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %prev1.i.i286 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %node_ref_from.i.i, ptr %prev1.i.i286, align 4
  %191 = ptrtoint ptr %node_ref_from.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %189, ptr %node_ref_from.i.i, align 8
  %192 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %ref_from_list, ptr %prev.i7.i.i, align 4
  %193 = ptrtoint ptr %ref_from_list to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %node_ref_from.i.i, ptr %ref_from_list, align 4
  br label %list_add.exit289

list_add.exit289:                                 ; preds = %if.end.i.i288, %list_add.exit.list_add.exit289_crit_edge
  %block_link_hashtable94 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 4
  %194 = ptrtoint ptr %block_ref_to.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %block_ref_to.i.i, align 8
  %dev_bytenr.i291 = getelementptr inbounds %struct.btrfsic_block, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %dev_bytenr.i291 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %dev_bytenr.i291, align 8
  %198 = ptrtoint ptr %block_ref_from.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %block_ref_from.i.i, align 4
  %dev_bytenr1.i = getelementptr inbounds %struct.btrfsic_block, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %dev_bytenr1.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %dev_bytenr1.i, align 8
  %dev_state.i293 = getelementptr inbounds %struct.btrfsic_block, ptr %195, i32 0, i32 3
  %202 = ptrtoint ptr %dev_state.i293 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev_state.i293, align 4
  %bdev.i294 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %bdev.i294 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bdev.i294, align 4
  %dev_state7.i = getelementptr inbounds %struct.btrfsic_block, ptr %199, i32 0, i32 3
  %206 = ptrtoint ptr %dev_state7.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev_state7.i, align 4
  %bdev8.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %bdev8.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bdev8.i, align 4
  %cmp.i = icmp eq ptr %195, null
  br i1 %cmp.i, label %do.body13.i, label %do.body19.i, !prof !438

do.body13.i:                                      ; preds = %list_add.exit289
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #14, !srcloc !463
  unreachable

do.body19.i:                                      ; preds = %list_add.exit289
  %cmp21.i295 = icmp eq ptr %199, null
  br i1 %cmp21.i295, label %do.body30.i296, label %do.end38.i299, !prof !438

do.body30.i296:                                   ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #14, !srcloc !464
  unreachable

do.end38.i299:                                    ; preds = %do.body19.i
  %shr46.i = xor i64 %201, %197
  %210 = trunc i64 %shr46.i to i32
  %211 = lshr i32 %210, 16
  %212 = ptrtoint ptr %205 to i32
  %xor5.i = xor i32 %211, %212
  %213 = ptrtoint ptr %209 to i32
  %xor9.i = xor i32 %xor5.i, %213
  %and.i297 = and i32 %xor9.i, 65535
  %add.ptr.i298 = getelementptr %struct.list_head, ptr %block_link_hashtable94, i32 %and.i297
  %214 = ptrtoint ptr %add.ptr.i298 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i298, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %collision_resolving_node.i.i, ptr noundef %add.ptr.i298, ptr noundef %215) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end38.i299.if.end107_crit_edge

do.end38.i299.if.end107_crit_edge:                ; preds = %do.end38.i299
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.end.i.i.i:                                     ; preds = %do.end38.i299
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %collision_resolving_node.i.i, ptr %prev1.i.i.i, align 4
  %217 = ptrtoint ptr %collision_resolving_node.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %215, ptr %collision_resolving_node.i.i, align 8
  %218 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %add.ptr.i298, ptr %prev.i8.i.i, align 4
  %219 = ptrtoint ptr %add.ptr.i298 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %collision_resolving_node.i.i, ptr %add.ptr.i298, align 4
  br label %if.end107

if.else95:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit_nesting)
  %cmp96 = icmp eq i32 %limit_nesting, 0
  br i1 %cmp96, label %if.then98, label %if.else95.if.end124_crit_edge

if.else95.if.end124_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then98:                                        ; preds = %if.else95
  %ref_cnt99 = getelementptr i8, ptr %.pn85.i, i32 -20
  %220 = ptrtoint ptr %ref_cnt99 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ref_cnt99, align 4
  %inc = add i32 %221, 1
  store i32 %inc, ptr %ref_cnt99, align 4
  %parent_generation100 = getelementptr i8, ptr %.pn85.i, i32 16
  %222 = ptrtoint ptr %parent_generation100 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %parent_generation, ptr %parent_generation100, align 8
  %223 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %state, align 8
  %and102 = and i32 %224, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then98.if.end124_crit_edge, label %if.then104

if.then98.if.end124_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then104:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @btrfsic_print_add_link(ptr noundef %state, ptr noundef nonnull %l.0.le.i)
  br label %if.end124

if.end107:                                        ; preds = %if.end.i.i.i, %do.end38.i299.if.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit_nesting)
  %cmp108 = icmp slt i32 %limit_nesting, 1
  br i1 %cmp108, label %if.end107.if.end124_crit_edge, label %if.then112

if.end107.if.end124_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then112:                                       ; preds = %if.end107
  %call113 = call fastcc i32 @btrfsic_read_block(ptr noundef %next_block_ctx)
  %len = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %next_block_ctx, i32 0, i32 2
  %225 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call113, i32 %226)
  %cmp114 = icmp slt i32 %call113, %226
  br i1 %cmp114, label %do.end119, label %if.then112.if.end124_crit_edge

if.then112.if.end124_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

do.end119:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #16
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i64 noundef %next_bytenr) #17
  call fastcc void @btrfsic_release_block_ctx(ptr noundef %next_block_ctx)
  %227 = ptrtoint ptr %next_blockp to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %next_blockp, align 4
  br label %cleanup

if.end124:                                        ; preds = %if.then112.if.end124_crit_edge, %if.end107.if.end124_crit_edge, %if.then104, %if.then98.if.end124_crit_edge, %if.else95.if.end124_crit_edge
  %storemerge = phi ptr [ %call30, %if.then112.if.end124_crit_edge ], [ null, %if.end107.if.end124_crit_edge ], [ null, %if.then104 ], [ null, %if.then98.if.end124_crit_edge ], [ null, %if.else95.if.end124_crit_edge ]
  %228 = ptrtoint ptr %next_blockp to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %storemerge, ptr %next_blockp, align 4
  %229 = ptrtoint ptr %mirror_nump to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mirror_nump, align 4
  %inc125 = add i32 %230, 1
  store i32 %inc125, ptr %mirror_nump, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end119, %btrfsic_release_block_ctx.exit284, %btrfsic_release_block_ctx.exit249, %btrfsic_release_block_ctx.exit, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %btrfsic_release_block_ctx.exit ], [ -1, %btrfsic_release_block_ctx.exit249 ], [ -1, %btrfsic_release_block_ctx.exit284 ], [ -1, %do.end119 ], [ 0, %if.end124 ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_was_created) #14
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_read_block(ptr nocapture noundef %block_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %datav = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %datav, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !439

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1539, 0\0A.popsection", ""() #14, !srcloc !465
  unreachable

do.body9:                                         ; preds = %entry
  %pagev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 5
  %2 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pagev, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.body27, label %do.body18, !prof !439

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1540, 0\0A.popsection", ""() #14, !srcloc !466
  unreachable

do.body27:                                        ; preds = %do.body9
  %mem_to_free = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 6
  %4 = ptrtoint ptr %mem_to_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_to_free, align 8
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %do.end44, label %do.body36, !prof !439

do.body36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1541, 0\0A.popsection", ""() #14, !srcloc !467
  unreachable

do.end44:                                         ; preds = %do.body27
  %dev_bytenr45 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %dev_bytenr45 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dev_bytenr45, align 8
  %and1 = and i64 %7, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.end52, label %do.end50

do.end50:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i64 noundef %7) #17
  br label %cleanup134

if.end52:                                         ; preds = %do.end44
  %len = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %conv53 = zext i32 %9 to i64
  %sub = add nuw nsw i64 %conv53, 4095
  %shr = lshr i64 %sub, 12
  %conv54 = trunc i64 %shr to i32
  %10 = shl nuw nsw i32 %conv54, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3392) #18
  %11 = ptrtoint ptr %mem_to_free to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %mem_to_free, align 8
  %tobool58.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool58.not, label %if.end52.cleanup134_crit_edge, label %if.end60

if.end52.cleanup134_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup134

if.end60:                                         ; preds = %if.end52
  %12 = ptrtoint ptr %datav to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %datav, align 8
  %add.ptr = getelementptr ptr, ptr %call8.i.i, i32 %conv54
  %13 = ptrtoint ptr %pagev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %pagev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv54)
  %cmp6513.not = icmp eq i32 %conv54, 0
  br i1 %cmp6513.not, label %if.end60.for.end132_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  br label %for.body

if.end60.for.end132_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end132

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %conv54
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end60.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end60.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %14 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pagev, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.014
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %17 = load ptr, ptr %pagev, align 4
  %arrayidx70 = getelementptr ptr, ptr %17, i32 %i.014
  %18 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %19, null
  br i1 %tobool71.not, label %for.body.cleanup134_crit_edge, label %for.cond

for.body.cleanup134_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup134

for.end:                                          ; preds = %for.cond
  br i1 %cmp6513.not, label %for.end.for.end132_crit_edge, label %for.body78.lr.ph

for.end.for.end132_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end132

for.body78.lr.ph:                                 ; preds = %for.end
  %20 = ptrtoint ptr %dev_bytenr45 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dev_bytenr45, align 8
  %dev = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %block_ctx, i32 0, i32 3
  br label %for.body78

for.body78:                                       ; preds = %cleanup.for.body78_crit_edge, %for.body78.lr.ph
  %i.120 = phi i32 [ 0, %for.body78.lr.ph ], [ %j.0.lcssa, %cleanup.for.body78_crit_edge ]
  %dev_bytenr.019 = phi i64 [ %21, %for.body78.lr.ph ], [ %add118, %cleanup.for.body78_crit_edge ]
  %sub79 = sub i32 %conv54, %i.120
  %call80 = tail call ptr @btrfs_bio_alloc(i32 noundef %sub79) #14
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %bdev = getelementptr inbounds %struct.btrfsic_dev_state, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call80, i32 0, i32 3
  %26 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %27, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call80, i32 0, i32 1
  %28 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %29, %25
  br i1 %cmp.not.i, label %for.body78.bio_set_dev.exit_crit_edge, label %if.then.i

for.body78.bio_set_dev.exit_crit_edge:            ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %27, -2177
  %30 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %for.body78.bio_set_dev.exit_crit_edge
  %31 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call80) #14
  %shr81 = lshr i64 %dev_bytenr.019, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call80, i32 0, i32 8
  %32 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %shr81, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call80, i32 0, i32 2
  %33 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bi_opf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.120, i32 %conv54)
  %cmp8315 = icmp ult i32 %i.120, %conv54
  br i1 %cmp8315, label %bio_set_dev.exit.for.body85_crit_edge, label %bio_set_dev.exit.do.end101_crit_edge

bio_set_dev.exit.do.end101_crit_edge:             ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

bio_set_dev.exit.for.body85_crit_edge:            ; preds = %bio_set_dev.exit
  br label %for.body85

for.body85:                                       ; preds = %for.inc93.for.body85_crit_edge, %bio_set_dev.exit.for.body85_crit_edge
  %j.016 = phi i32 [ %inc94, %for.inc93.for.body85_crit_edge ], [ %i.120, %bio_set_dev.exit.for.body85_crit_edge ]
  %34 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pagev, align 4
  %arrayidx87 = getelementptr ptr, ptr %35, i32 %j.016
  %36 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx87, align 4
  %call88 = tail call i32 @bio_add_page(ptr noundef %call80, ptr noundef %37, i32 noundef 4096, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 4096
  br i1 %cmp89.not, label %for.inc93, label %for.body85.for.end95_crit_edge

for.body85.for.end95_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end95

for.inc93:                                        ; preds = %for.body85
  %inc94 = add nuw nsw i32 %j.016, 1
  %exitcond26.not = icmp eq i32 %inc94, %conv54
  br i1 %exitcond26.not, label %for.inc93.for.end95_crit_edge, label %for.inc93.for.body85_crit_edge

for.inc93.for.body85_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body85

for.inc93.for.end95_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end95

for.end95:                                        ; preds = %for.inc93.for.end95_crit_edge, %for.body85.for.end95_crit_edge
  %j.0.lcssa = phi i32 [ %conv54, %for.inc93.for.end95_crit_edge ], [ %j.016, %for.body85.for.end95_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %i.120)
  %cmp96 = icmp eq i32 %j.0.lcssa, %i.120
  br i1 %cmp96, label %for.end95.do.end101_crit_edge, label %if.end104

for.end95.do.end101_crit_edge:                    ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

do.end101:                                        ; preds = %for.end95.do.end101_crit_edge, %bio_set_dev.exit.do.end101_crit_edge
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #17
  br label %cleanup134

if.end104:                                        ; preds = %for.end95
  %call105 = tail call i32 @submit_bio_wait(ptr noundef %call80) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %cleanup, label %do.end110

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %block_ctx to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %block_ctx, align 8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %bdev113 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bdev113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev113, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i64 noundef %39, ptr noundef %43) #17
  tail call void @bio_put(ptr noundef %call80) #14
  br label %cleanup134

cleanup:                                          ; preds = %if.end104
  tail call void @bio_put(ptr noundef %call80) #14
  %sub116 = sub i32 %j.0.lcssa, %i.120
  %mul = shl i32 %sub116, 12
  %conv117 = zext i32 %mul to i64
  %add118 = add i64 %dev_bytenr.019, %conv117
  %cmp76 = icmp ult i32 %j.0.lcssa, %conv54
  br i1 %cmp76, label %cleanup.for.body78_crit_edge, label %cleanup.for.body124_crit_edge

cleanup.for.body124_crit_edge:                    ; preds = %cleanup
  br label %for.body124

cleanup.for.body78_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body78

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %cleanup.for.body124_crit_edge
  %i.323 = phi i32 [ %inc131, %for.body124.for.body124_crit_edge ], [ 0, %cleanup.for.body124_crit_edge ]
  %44 = ptrtoint ptr %pagev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pagev, align 4
  %arrayidx126 = getelementptr ptr, ptr %45, i32 %i.323
  %46 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx126, align 4
  %call127 = tail call ptr @page_address(ptr noundef %47) #14
  %48 = ptrtoint ptr %datav to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %datav, align 8
  %arrayidx129 = getelementptr ptr, ptr %49, i32 %i.323
  %50 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call127, ptr %arrayidx129, align 4
  %inc131 = add nuw nsw i32 %i.323, 1
  %exitcond27.not = icmp eq i32 %inc131, %conv54
  br i1 %exitcond27.not, label %for.body124.for.end132_crit_edge, label %for.body124.for.body124_crit_edge

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body124

for.body124.for.end132_crit_edge:                 ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end132

for.end132:                                       ; preds = %for.body124.for.end132_crit_edge, %for.end.for.end132_crit_edge, %if.end60.for.end132_crit_edge
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 8
  br label %cleanup134

cleanup134:                                       ; preds = %for.end132, %do.end110, %do.end101, %for.body.cleanup134_crit_edge, %if.end52.cleanup134_crit_edge, %do.end50
  %retval.2 = phi i32 [ %52, %for.end132 ], [ -1, %do.end50 ], [ -12, %if.end52.cleanup134_crit_edge ], [ -1, %do.end101 ], [ -1, %do.end110 ], [ -1, %for.body.cleanup134_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_bio_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfsic_process_superblock_dev_mirror(ptr noundef %state, ptr noundef %dev_state, ptr noundef %device, i32 noundef %superblock_mirror_num, ptr nocapture noundef writeonly %selected_dev_state, ptr nocapture noundef writeonly %selected_super) unnamed_addr #0 align 64 {
entry:
  %tmp_next_block_ctx = alloca %struct.btrfsic_block_data_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %superblock_mirror_num)
  %tobool.not.i239 = icmp eq i32 %superblock_mirror_num, 0
  %mul.i = mul i32 %superblock_mirror_num, 12
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl i64 16384, %sh_prom.i
  %retval.0.i = select i1 %tobool.not.i239, i64 65536, i64 %shl.i
  %add = or i64 %retval.0.i, 4096
  %commit_total_bytes = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 22
  %4 = ptrtoint ptr %commit_total_bytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %commit_total_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %5)
  %cmp = icmp ugt i64 %add, %5
  br i1 %cmp, label %entry.cleanup150_crit_edge, label %if.end

entry.cleanup150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup150

if.end:                                           ; preds = %entry
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %shr = lshr exact i64 %retval.0.i, 12
  %conv = trunc i64 %shr to i32
  %call2 = tail call ptr @read_cache_page_gfp(ptr noundef %9, i32 noundef %conv, i32 noundef 3136) #14
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup150_crit_edge, label %if.end5

if.end.cleanup150_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup150

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @page_address(ptr noundef %call2) #14
  %bytenr.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 2
  %10 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %bytenr.i, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %retval.0.i)
  %cmp8.not = icmp eq i64 %12, %retval.0.i
  br i1 %cmp8.not, label %lor.lhs.false, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false:                                    ; preds = %if.end5
  %magic.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 4
  %13 = ptrtoint ptr %magic.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %magic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6864128300807315277, i64 %14)
  %cmp11.not = icmp eq i64 %14, 6864128300807315277
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %uuid = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 21
  %uuid14 = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 27, i32 12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %uuid14, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %lor.lhs.false17, label %lor.lhs.false13.out_crit_edge

lor.lhs.false13.out_crit_edge:                    ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %nodesize.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 15
  %15 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %nodesize.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %metablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 8
  %18 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %metablock_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp19.not = icmp eq i32 %17, %19
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false17.out_crit_edge

lor.lhs.false17.out_crit_edge:                    ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %sectorsize.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 14
  %20 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %sectorsize.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %datablock_size = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 9
  %23 = ptrtoint ptr %datablock_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %datablock_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp23.not = icmp eq i32 %22, %24
  br i1 %cmp23.not, label %if.end26, label %lor.lhs.false21.out_crit_edge

lor.lhs.false21.out_crit_edge:                    ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end26:                                         ; preds = %lor.lhs.false21
  %block_hashtable = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 3
  %25 = trunc i64 %retval.0.i to i32
  %26 = lshr i32 %25, 16
  %27 = ptrtoint ptr %3 to i32
  %.masked.i = and i32 %27, 65535
  %and.i = xor i32 %.masked.i, %26
  %add.ptr.i = getelementptr %struct.list_head, ptr %block_hashtable, i32 %and.i
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn28.i = load ptr, ptr %add.ptr.i, align 4
  %cmp.not29.i = icmp eq ptr %.pn28.i, %add.ptr.i
  br i1 %cmp.not29.i, label %if.end26.if.then30_crit_edge, label %if.end26.for.body.i_crit_edge

if.end26.for.body.i_crit_edge:                    ; preds = %if.end26
  br label %for.body.i

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end26.for.body.i_crit_edge
  %.pn30.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn28.i, %if.end26.for.body.i_crit_edge ]
  %dev_state.i = getelementptr i8, ptr %.pn30.i, i32 -48
  %29 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_state.i, align 4
  %bdev6.i = getelementptr inbounds %struct.btrfsic_dev_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bdev6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev6.i, align 4
  %cmp7.i = icmp eq ptr %32, %3
  br i1 %cmp7.i, label %land.lhs.true.i240, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i240:                               ; preds = %for.body.i
  %dev_bytenr9.i = getelementptr i8, ptr %.pn30.i, i32 -44
  %33 = ptrtoint ptr %dev_bytenr9.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dev_bytenr9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %retval.0.i)
  %cmp10.i = icmp eq i64 %34, %retval.0.i
  br i1 %cmp10.i, label %btrfsic_block_hashtable_lookup.exit, label %land.lhs.true.i240.for.inc.i_crit_edge

land.lhs.true.i240.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i240.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn30.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %add.ptr.i
  br i1 %cmp.not.i, label %for.inc.i.if.then30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.then30_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

btrfsic_block_hashtable_lookup.exit:              ; preds = %land.lhs.true.i240
  %b.0.le.i = getelementptr i8, ptr %.pn30.i, i32 -60
  %cmp28 = icmp eq ptr %b.0.le.i, null
  br i1 %cmp28, label %btrfsic_block_hashtable_lookup.exit.if.then30_crit_edge, label %btrfsic_block_hashtable_lookup.exit.if.end71_crit_edge

btrfsic_block_hashtable_lookup.exit.if.end71_crit_edge: ; preds = %btrfsic_block_hashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

btrfsic_block_hashtable_lookup.exit.if.then30_crit_edge: ; preds = %btrfsic_block_hashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

if.then30:                                        ; preds = %btrfsic_block_hashtable_lookup.exit.if.then30_crit_edge, %for.inc.i.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %call31 = tail call fastcc ptr @btrfsic_block_alloc()
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then30.out_crit_edge, label %if.end35

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end35:                                         ; preds = %if.then30
  %dev_bytenr36 = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 4
  %36 = ptrtoint ptr %dev_bytenr36 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %retval.0.i, ptr %dev_bytenr36, align 8
  %dev_state37 = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 3
  %37 = ptrtoint ptr %dev_state37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev_state, ptr %dev_state37, align 4
  %logical_bytenr = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 5
  %38 = ptrtoint ptr %logical_bytenr to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %retval.0.i, ptr %logical_bytenr, align 8
  %generation.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 5
  %39 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %generation.i, align 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #14
  %generation = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 6
  %42 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %generation, align 8
  %is_metadata = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 1
  %43 = ptrtoint ptr %is_metadata to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %is_metadata, align 4
  %bf.set44 = and i8 %bf.load, 23
  %bf.clear46 = or i8 %bf.set44, -32
  store i8 %bf.clear46, ptr %is_metadata, align 4
  %add48 = add i32 %superblock_mirror_num, 1
  %mirror_num = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 2
  %44 = ptrtoint ptr %mirror_num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add48, ptr %mirror_num, align 8
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 8
  %and = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end35.if.end69_crit_edge, label %do.body

if.end35.if.end69_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

do.body:                                          ; preds = %if.end35
  %47 = tail call i32 @llvm.read_register.i32(metadata !428) #14
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !468
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.244, i32 noundef 696, ptr noundef nonnull @.str.245) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %name, align 8
  %call53 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end62_crit_edge

rcu_read_lock.exit.do.end62_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true
  %.b237 = load i1, ptr @btrfsic_process_superblock_dev_mirror.__warned, align 1
  br i1 %.b237, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfsic_process_superblock_dev_mirror.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 761, ptr noundef nonnull @.str.236) #14
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge, %rcu_read_lock.exit.do.end62_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %52, i32 0, i32 1
  %bdev66 = getelementptr inbounds %struct.btrfsic_dev_state, ptr %dev_state, i32 0, i32 1
  %53 = ptrtoint ptr %bdev66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bdev66, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.235, ptr noundef %3, ptr noundef %str, i64 noundef %retval.0.i, ptr noundef %54, i64 noundef %retval.0.i, i32 noundef %superblock_mirror_num) #17
  tail call fastcc void @rcu_read_unlock()
  br label %if.end69

if.end69:                                         ; preds = %do.end62, %if.end35.if.end69_crit_edge
  %all_blocks_node = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 9
  %all_blocks_list = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 2
  %55 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %all_blocks_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %all_blocks_node, ptr noundef %all_blocks_list, ptr noundef %56) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end69.list_add.exit_crit_edge

if.end69.list_add.exit_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %all_blocks_node, ptr %prev1.i.i, align 4
  %58 = ptrtoint ptr %all_blocks_node to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %all_blocks_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfsic_block, ptr %call31, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %all_blocks_list, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %all_blocks_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %all_blocks_node, ptr %all_blocks_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end69.list_add.exit_crit_edge
  tail call fastcc void @btrfsic_block_hashtable_add(ptr noundef nonnull %call31, ptr noundef %block_hashtable)
  br label %if.end71

if.end71:                                         ; preds = %list_add.exit, %btrfsic_block_hashtable_lookup.exit.if.end71_crit_edge
  %superblock_tmp.0 = phi ptr [ %call31, %list_add.exit ], [ %b.0.le.i, %btrfsic_block_hashtable_lookup.exit.if.end71_crit_edge ]
  %generation.i242 = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 5
  %61 = ptrtoint ptr %generation.i242 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %generation.i242, align 1
  %63 = tail call i64 @llvm.bswap.i64(i64 %62) #14
  %max_superblock_generation = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 6
  %64 = ptrtoint ptr %max_superblock_generation to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %max_superblock_generation, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %65)
  %cmp73 = icmp ugt i64 %63, %65
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %cmp77 = icmp eq i64 %65, 0
  %or.cond = or i1 %cmp73, %cmp77
  br i1 %or.cond, label %if.then79, label %if.end71.if.end82_crit_edge

if.end71.if.end82_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %66 = call ptr @memcpy(ptr %selected_super, ptr %call6, i32 4096)
  %67 = ptrtoint ptr %selected_dev_state to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dev_state, ptr %selected_dev_state, align 4
  %68 = ptrtoint ptr %generation.i242 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %generation.i242, align 1
  %70 = tail call i64 @llvm.bswap.i64(i64 %69) #14
  %71 = ptrtoint ptr %max_superblock_generation to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %max_superblock_generation, align 8
  %latest_superblock = getelementptr inbounds %struct.btrfsic_state, ptr %state, i32 0, i32 7
  %72 = ptrtoint ptr %latest_superblock to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %superblock_tmp.0, ptr %latest_superblock, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end71.if.end82_crit_edge
  %log_root.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 8
  %chunk_root.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.btrfs_super_block, ptr %call6, i32 0, i32 6
  %mem_to_free.i247 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx, i32 0, i32 6
  %datav.i249 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx, i32 0, i32 4
  %pagev.i253 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx, i32 0, i32 5
  %len.i257 = getelementptr inbounds %struct.btrfsic_block_data_ctx, ptr %tmp_next_block_ctx, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc142.for.body_crit_edge, %if.end82
  %pass.0314 = phi i32 [ 0, %if.end82 ], [ %inc143, %for.inc142.for.body_crit_edge ]
  %73 = zext i32 %pass.0314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %pass.0314, label %for.body.sw.epilog_crit_edge [
    i32 0, label %for.body.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb87
    i32 2, label %sw.bb89
  ]

for.body.sw.epilog.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb87:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.bb89:                                          ; preds = %for.body
  %74 = ptrtoint ptr %log_root.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %log_root.i, align 1
  %76 = tail call i64 @llvm.bswap.i64(i64 %75) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %cmp91 = icmp eq i64 %75, 0
  br i1 %cmp91, label %sw.bb89.for.end144_crit_edge, label %sw.bb89.sw.epilog_crit_edge

sw.bb89.sw.epilog_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb89.for.end144_crit_edge:                     ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end144

sw.epilog.sink.split:                             ; preds = %sw.bb87, %for.body.sw.epilog.sink.split_crit_edge
  %chunk_root.i.sink = phi ptr [ %chunk_root.i, %sw.bb87 ], [ %root.i, %for.body.sw.epilog.sink.split_crit_edge ]
  %tmp_disk_key.sroa.0.0.ph = phi i64 [ 216172782113783808, %sw.bb87 ], [ 72057594037927936, %for.body.sw.epilog.sink.split_crit_edge ]
  %additional_string.0.ph = phi ptr [ @.str.238, %sw.bb87 ], [ @.str.237, %for.body.sw.epilog.sink.split_crit_edge ]
  %77 = ptrtoint ptr %chunk_root.i.sink to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %chunk_root.i.sink, align 1
  %79 = tail call i64 @llvm.bswap.i64(i64 %78) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb89.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %tmp_disk_key.sroa.0.0 = phi i64 [ -1, %for.body.sw.epilog_crit_edge ], [ -360287970189639681, %sw.bb89.sw.epilog_crit_edge ], [ %tmp_disk_key.sroa.0.0.ph, %sw.epilog.sink.split ]
  %next_bytenr.0 = phi i64 [ -1, %for.body.sw.epilog_crit_edge ], [ %76, %sw.bb89.sw.epilog_crit_edge ], [ %79, %sw.epilog.sink.split ]
  %additional_string.0 = phi ptr [ null, %for.body.sw.epilog_crit_edge ], [ @.str.239, %sw.bb89.sw.epilog_crit_edge ], [ %additional_string.0.ph, %sw.epilog.sink.split ]
  %80 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %metablock_size, align 4
  %conv96 = zext i32 %81 to i64
  %call97 = tail call i32 @btrfs_num_copies(ptr noundef %1, i64 noundef %next_bytenr.0, i64 noundef %conv96) #14
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state, align 8
  %and99 = and i32 %83, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %sw.epilog.if.end107_crit_edge, label %do.end104

sw.epilog.if.end107_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

do.end104:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %next_bytenr.0, i32 noundef %call97) #17
  br label %if.end107

if.end107:                                        ; preds = %do.end104, %sw.epilog.if.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call97)
  %cmp109.not311 = icmp slt i32 %call97, 1
  br i1 %cmp109.not311, label %if.end107.for.inc142_crit_edge, label %if.end107.for.body111_crit_edge

if.end107.for.body111_crit_edge:                  ; preds = %if.end107
  br label %for.body111

if.end107.for.inc142_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc142

for.body111:                                      ; preds = %for.inc.for.body111_crit_edge, %if.end107.for.body111_crit_edge
  %mirror_num85.0313 = phi i32 [ %inc, %for.inc.for.body111_crit_edge ], [ 1, %if.end107.for.body111_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp_next_block_ctx) #14
  %84 = call ptr @memset(ptr %tmp_next_block_ctx, i32 255, i32 40)
  %85 = ptrtoint ptr %metablock_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %metablock_size, align 4
  %call113 = call fastcc i32 @btrfsic_map_block(ptr noundef %state, i64 noundef %next_bytenr.0, i32 noundef %86, ptr noundef nonnull %tmp_next_block_ctx, i32 noundef %mirror_num85.0313)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end121, label %do.end118

do.end118:                                        ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #16
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, i64 noundef %next_bytenr.0, i32 noundef %mirror_num85.0313) #17
  br label %cleanup135.thread288

if.end121:                                        ; preds = %for.body111
  %call122 = call fastcc ptr @btrfsic_block_lookup_or_add(ptr noundef %state, ptr noundef nonnull %tmp_next_block_ctx, ptr noundef %additional_string.0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %mirror_num85.0313, ptr noundef null)
  %cmp123 = icmp eq ptr %call122, null
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end121
  %87 = ptrtoint ptr %mem_to_free.i247 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mem_to_free.i247, align 8
  %tobool.not.i244 = icmp eq ptr %88, null
  br i1 %tobool.not.i244, label %if.then125.cleanup135.thread288_crit_edge, label %if.then.i245

if.then125.cleanup135.thread288_crit_edge:        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup135.thread288

if.then.i245:                                     ; preds = %if.then125
  %89 = ptrtoint ptr %datav.i249 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %datav.i249, align 8
  %tobool1.not.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i, label %do.body6.i, label %do.body12.i, !prof !438

do.body6.i:                                       ; preds = %if.then.i245
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i:                                      ; preds = %if.then.i245
  %91 = ptrtoint ptr %pagev.i253 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pagev.i253, align 4
  %tobool13.not.i = icmp eq ptr %92, null
  br i1 %tobool13.not.i, label %do.body23.i, label %do.end31.i, !prof !438

do.body23.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i:                                       ; preds = %do.body12.i
  %93 = ptrtoint ptr %len.i257 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len.i257, align 8
  %conv.i = zext i32 %94 to i64
  %sub.i = add nuw nsw i64 %conv.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv32.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i)
  %cmp.not72.i = icmp eq i32 %conv32.i, 0
  br i1 %cmp.not72.i, label %do.end31.i.while.end.i_crit_edge, label %do.end31.i.while.body.i_crit_edge

do.end31.i.while.body.i_crit_edge:                ; preds = %do.end31.i
  br label %while.body.i

do.end31.i.while.end.i_crit_edge:                 ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end48.i.while.body.i_crit_edge, %do.end31.i.while.body.i_crit_edge
  %num_pages.073.i = phi i32 [ %dec.i, %if.end48.i.while.body.i_crit_edge ], [ %conv32.i, %do.end31.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %num_pages.073.i, -1
  %arrayidx.i = getelementptr ptr, ptr %90, i32 %dec.i
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i, align 4
  %tobool35.not.i = icmp eq ptr %96, null
  br i1 %tobool35.not.i, label %while.body.i.if.end39.i_crit_edge, label %if.then36.i

while.body.i.if.end39.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then36.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %while.body.i.if.end39.i_crit_edge
  %arrayidx41.i = getelementptr ptr, ptr %92, i32 %dec.i
  %98 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx41.i, align 4
  %tobool42.not.i = icmp eq ptr %99, null
  br i1 %tobool42.not.i, label %if.end39.i.if.end48.i_crit_edge, label %if.then43.i

if.end39.i.if.end48.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %99, i32 noundef 0) #14
  %100 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %arrayidx41.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end48.i_crit_edge
  %cmp.not.i246 = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i246, label %if.end48.i.while.end.i_crit_edge, label %if.end48.i.while.body.i_crit_edge

if.end48.i.while.body.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end48.i.while.end.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end48.i.while.end.i_crit_edge, %do.end31.i.while.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %88) #14
  br label %cleanup135.thread288

if.end126:                                        ; preds = %if.end121
  %disk_key = getelementptr inbounds %struct.btrfsic_block, ptr %call122, i32 0, i32 7
  %101 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %tmp_disk_key.sroa.0.0, ptr %disk_key, align 8
  %tmp_disk_key.sroa.7.0.disk_key.sroa_idx = getelementptr inbounds %struct.btrfsic_block, ptr %call122, i32 0, i32 7, i32 1
  %102 = ptrtoint ptr %tmp_disk_key.sroa.7.0.disk_key.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -124, ptr %tmp_disk_key.sroa.7.0.disk_key.sroa_idx, align 8
  %tmp_disk_key.sroa.9.0.disk_key.sroa_idx = getelementptr inbounds %struct.btrfsic_block, ptr %call122, i32 0, i32 7, i32 2
  %103 = ptrtoint ptr %tmp_disk_key.sroa.9.0.disk_key.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 0, ptr %tmp_disk_key.sroa.9.0.disk_key.sroa_idx, align 1
  %generation127 = getelementptr inbounds %struct.btrfsic_block, ptr %call122, i32 0, i32 6
  %104 = ptrtoint ptr %generation127 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 -1, ptr %generation127, align 8
  %call128 = call fastcc ptr @btrfsic_block_link_lookup_or_add(ptr noundef %state, ptr noundef nonnull %tmp_next_block_ctx, ptr noundef nonnull %call122, ptr noundef %superblock_tmp.0, i64 noundef -1)
  %105 = ptrtoint ptr %mem_to_free.i247 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mem_to_free.i247, align 8
  %tobool.not.i248 = icmp eq ptr %106, null
  br i1 %tobool.not.i248, label %if.end126.cleanup_crit_edge, label %if.then.i251

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i251:                                     ; preds = %if.end126
  %107 = ptrtoint ptr %datav.i249 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %datav.i249, align 8
  %tobool1.not.i250 = icmp eq ptr %108, null
  br i1 %tobool1.not.i250, label %do.body6.i252, label %do.body12.i255, !prof !438

do.body6.i252:                                    ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1508, 0\0A.popsection", ""() #14, !srcloc !444
  unreachable

do.body12.i255:                                   ; preds = %if.then.i251
  %109 = ptrtoint ptr %pagev.i253 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pagev.i253, align 4
  %tobool13.not.i254 = icmp eq ptr %110, null
  br i1 %tobool13.not.i254, label %do.body23.i256, label %do.end31.i263, !prof !438

do.body23.i256:                                   ; preds = %do.body12.i255
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/check-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #14, !srcloc !445
  unreachable

do.end31.i263:                                    ; preds = %do.body12.i255
  %111 = ptrtoint ptr %len.i257 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i257, align 8
  %conv.i258 = zext i32 %112 to i64
  %sub.i259 = add nuw nsw i64 %conv.i258, 4095
  %shr.i260 = lshr i64 %sub.i259, 12
  %conv32.i261 = trunc i64 %shr.i260 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i261)
  %cmp.not72.i262 = icmp eq i32 %conv32.i261, 0
  br i1 %cmp.not72.i262, label %do.end31.i263.while.end.i277_crit_edge, label %do.end31.i263.while.body.i268_crit_edge

do.end31.i263.while.body.i268_crit_edge:          ; preds = %do.end31.i263
  br label %while.body.i268

do.end31.i263.while.end.i277_crit_edge:           ; preds = %do.end31.i263
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i277

while.body.i268:                                  ; preds = %if.end48.i276.while.body.i268_crit_edge, %do.end31.i263.while.body.i268_crit_edge
  %num_pages.073.i264 = phi i32 [ %dec.i265, %if.end48.i276.while.body.i268_crit_edge ], [ %conv32.i261, %do.end31.i263.while.body.i268_crit_edge ]
  %dec.i265 = add nsw i32 %num_pages.073.i264, -1
  %arrayidx.i266 = getelementptr ptr, ptr %108, i32 %dec.i265
  %113 = ptrtoint ptr %arrayidx.i266 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i266, align 4
  %tobool35.not.i267 = icmp eq ptr %114, null
  br i1 %tobool35.not.i267, label %while.body.i268.if.end39.i272_crit_edge, label %if.then36.i269

while.body.i268.if.end39.i272_crit_edge:          ; preds = %while.body.i268
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i272

if.then36.i269:                                   ; preds = %while.body.i268
  call void @__sanitizer_cov_trace_pc() #16
  %115 = ptrtoint ptr %arrayidx.i266 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %arrayidx.i266, align 4
  br label %if.end39.i272

if.end39.i272:                                    ; preds = %if.then36.i269, %while.body.i268.if.end39.i272_crit_edge
  %arrayidx41.i270 = getelementptr ptr, ptr %110, i32 %dec.i265
  %116 = ptrtoint ptr %arrayidx41.i270 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx41.i270, align 4
  %tobool42.not.i271 = icmp eq ptr %117, null
  br i1 %tobool42.not.i271, label %if.end39.i272.if.end48.i276_crit_edge, label %if.then43.i274

if.end39.i272.if.end48.i276_crit_edge:            ; preds = %if.end39.i272
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i276

if.then43.i274:                                   ; preds = %if.end39.i272
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %117, i32 noundef 0) #14
  %118 = ptrtoint ptr %arrayidx41.i270 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %arrayidx41.i270, align 4
  br label %if.end48.i276

if.end48.i276:                                    ; preds = %if.then43.i274, %if.end39.i272.if.end48.i276_crit_edge
  %cmp.not.i275 = icmp eq i32 %dec.i265, 0
  br i1 %cmp.not.i275, label %if.end48.i276.while.end.i277_crit_edge, label %if.end48.i276.while.body.i268_crit_edge

if.end48.i276.while.body.i268_crit_edge:          ; preds = %if.end48.i276
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i268

if.end48.i276.while.end.i277_crit_edge:           ; preds = %if.end48.i276
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i277

while.end.i277:                                   ; preds = %if.end48.i276.while.end.i277_crit_edge, %do.end31.i263.while.end.i277_crit_edge
  tail call void @kfree(ptr noundef nonnull %106) #14
  br label %cleanup

cleanup135.thread288:                             ; preds = %while.end.i, %if.then125.cleanup135.thread288_crit_edge, %do.end118
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx) #14
  br label %out

cleanup:                                          ; preds = %while.end.i277, %if.end126.cleanup_crit_edge
  %cmp129 = icmp eq ptr %call128, null
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_next_block_ctx) #14
  br i1 %cmp129, label %cleanup.out_crit_edge, label %for.inc

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc:                                          ; preds = %cleanup
  %inc = add i32 %mirror_num85.0313, 1
  %cmp109.not = icmp sgt i32 %inc, %call97
  br i1 %cmp109.not, label %for.inc.for.inc142_crit_edge, label %for.inc.for.body111_crit_edge

for.inc.for.body111_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body111

for.inc.for.inc142_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc142

for.inc142:                                       ; preds = %for.inc.for.inc142_crit_edge, %if.end107.for.inc142_crit_edge
  %inc143 = add nuw nsw i32 %pass.0314, 1
  %exitcond.not = icmp eq i32 %inc143, 3
  br i1 %exitcond.not, label %for.inc142.for.end144_crit_edge, label %for.inc142.for.body_crit_edge

for.inc142.for.body_crit_edge:                    ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc142.for.end144_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end144

for.end144:                                       ; preds = %for.inc142.for.end144_crit_edge, %sw.bb89.for.end144_crit_edge
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %state, align 8
  %and146 = and i32 %120, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %for.end144.out_crit_edge, label %if.then148

for.end144.out_crit_edge:                         ; preds = %for.end144
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then148:                                       ; preds = %for.end144
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @btrfsic_dump_tree_sub(ptr noundef %state, ptr noundef %superblock_tmp.0, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.then148, %for.end144.out_crit_edge, %cleanup.out_crit_edge, %cleanup135.thread288, %if.then30.out_crit_edge, %lor.lhs.false21.out_crit_edge, %lor.lhs.false17.out_crit_edge, %lor.lhs.false13.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end5.out_crit_edge
  %ret.4 = phi i32 [ 0, %if.then148 ], [ 0, %for.end144.out_crit_edge ], [ 0, %lor.lhs.false21.out_crit_edge ], [ 0, %lor.lhs.false17.out_crit_edge ], [ 0, %lor.lhs.false13.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.end5.out_crit_edge ], [ -1, %if.then30.out_crit_edge ], [ -1, %cleanup135.thread288 ], [ -1, %cleanup.out_crit_edge ]
  %121 = getelementptr inbounds %struct.page, ptr %call2, i32 0, i32 1
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  %and.i.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i279, label %if.then.i.i, !prof !439

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %123, -1
  br label %_compound_head.exit.i

if.end.i.i279:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %call2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i279, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %124, %if.end.i.i279 ]
  %125 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %126 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i.i.i.i = icmp eq i32 %127, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !438

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %125, ptr noundef nonnull @.str.247) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !469
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !471
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@btrfsic_process_superblock_dev_mirror, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !473

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %125, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup150_crit_edge

folio_put_testzero.exit.i.i.cleanup150_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup150

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %125) #14
  br label %cleanup150

cleanup150:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup150_crit_edge, %if.end.cleanup150_crit_edge, %entry.cleanup150_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup150_crit_edge ], [ -1, %if.end.cleanup150_crit_edge ], [ %ret.4, %folio_put_testzero.exit.i.i.cleanup150_crit_edge ], [ %ret.4, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #11 align 64 {
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.244, i32 noundef 724, ptr noundef nonnull @.str.246) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !474
  %0 = tail call i32 @llvm.read_register.i32(metadata !428) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !181, !182, !183, !185, !187, !188, !189, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !321, !322, !323, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !339, !340, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !360, !361, !363, !364, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !383, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !402, !404, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !422, !423, !425, !426, !427}
!llvm.named.register.sp = !{!428}
!llvm.module.flags = !{!429, !430, !431, !432, !433, !434, !435, !436}
!llvm.ident = !{!437}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/check-integrity.c", i32 2745, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfsic_mount._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfsic_mount._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/check-integrity.c", i32 2750, i32 3}
!8 = !{ptr @btrfsic_mount._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @btrfsic_mount._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @btrfsic_mount.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/btrfs/check-integrity.c", i32 2759, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/btrfs/check-integrity.c", i32 2838, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @btrfsic_unmount._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @btrfsic_unmount._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/check-integrity.c", i32 2865, i32 4}
!20 = !{ptr @btrfsic_unmount._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @btrfsic_unmount._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @btrfsic_mutex, !23, !"btrfsic_mutex", i1 false, i1 false}
!23 = !{!"../fs/btrfs/check-integrity.c", i32 323, i32 21}
!24 = distinct !{null, !25, !"btrfsic_is_initialized", i1 false, i1 false}
!25 = !{!"../fs/btrfs/check-integrity.c", i32 324, i32 12}
!26 = !{ptr @btrfsic_dev_state_hashtable, !27, !"btrfsic_dev_state_hashtable", i1 false, i1 false}
!27 = !{!"../fs/btrfs/check-integrity.c", i32 325, i32 43}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/check-integrity.c", i32 2665, i32 4}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__btrfsic_submit_bio._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @__btrfsic_submit_bio._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/check-integrity.c", i32 2682, i32 5}
!35 = !{ptr @__btrfsic_submit_bio._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__btrfsic_submit_bio._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/check-integrity.c", i32 2694, i32 4}
!39 = !{ptr @__btrfsic_submit_bio._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @__btrfsic_submit_bio._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/check-integrity.c", i32 2700, i32 5}
!43 = !{ptr @__btrfsic_submit_bio._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @__btrfsic_submit_bio._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/check-integrity.c", i32 1720, i32 5}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @btrfsic_process_written_block._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @btrfsic_process_written_block._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/check-integrity.c", i32 1728, i32 5}
!52 = !{ptr @btrfsic_process_written_block._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @btrfsic_process_written_block._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @btrfsic_process_written_block._entry.28, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../fs/btrfs/check-integrity.c", i32 1736, i32 6}
!56 = !{ptr @btrfsic_process_written_block._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/btrfs/check-integrity.c", i32 1751, i32 6}
!59 = !{ptr @btrfsic_process_written_block._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @btrfsic_process_written_block._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/check-integrity.c", i32 1760, i32 6}
!63 = !{ptr @btrfsic_process_written_block._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @btrfsic_process_written_block._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @btrfsic_process_written_block._entry.36, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../fs/btrfs/check-integrity.c", i32 1771, i32 5}
!67 = !{ptr @btrfsic_process_written_block._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @btrfsic_process_written_block._entry.38, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../fs/btrfs/check-integrity.c", i32 1777, i32 5}
!70 = !{ptr @btrfsic_process_written_block._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/btrfs/check-integrity.c", i32 1785, i32 4}
!73 = !{ptr @btrfsic_process_written_block._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @btrfsic_process_written_block._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/btrfs/check-integrity.c", i32 1789, i32 4}
!77 = !{ptr @btrfsic_process_written_block._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @btrfsic_process_written_block._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/btrfs/check-integrity.c", i32 1804, i32 4}
!81 = !{ptr @btrfsic_process_written_block._entry.46, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @btrfsic_process_written_block._entry_ptr.48, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/btrfs/check-integrity.c", i32 1895, i32 6}
!85 = !{ptr @btrfsic_process_written_block._entry.49, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @btrfsic_process_written_block._entry_ptr.51, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/btrfs/check-integrity.c", i32 1907, i32 5}
!89 = !{ptr @btrfsic_process_written_block._entry.52, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @btrfsic_process_written_block._entry_ptr.54, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/btrfs/check-integrity.c", i32 1934, i32 5}
!93 = !{ptr @btrfsic_process_written_block._entry.55, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @btrfsic_process_written_block._entry_ptr.57, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/btrfs/check-integrity.c", i32 1953, i32 5}
!97 = !{ptr @btrfsic_process_written_block._entry.58, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @btrfsic_process_written_block._entry_ptr.60, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/btrfs/check-integrity.c", i32 2010, i32 4}
!101 = !{ptr @btrfsic_process_written_block._entry.61, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @btrfsic_process_written_block._entry_ptr.63, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/btrfs/check-integrity.c", i32 2021, i32 5}
!105 = !{ptr @btrfsic_process_written_block._entry.64, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @btrfsic_process_written_block._entry_ptr.66, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @btrfsic_dump_tree_sub.buf, !108, !"buf", i1 false, i1 false}
!108 = !{!"../fs/btrfs/check-integrity.c", i32 2431, i32 14}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/btrfs/check-integrity.c", i32 2443, i32 28}
!111 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/btrfs/check-integrity.c", i32 2448, i32 3}
!113 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @btrfsic_dump_tree_sub._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @btrfsic_dump_tree_sub._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @btrfsic_dump_tree_sub._entry.70, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../fs/btrfs/check-integrity.c", i32 2451, i32 2}
!118 = !{ptr @btrfsic_dump_tree_sub._entry_ptr.71, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/btrfs/check-integrity.c", i32 2454, i32 3}
!121 = !{ptr @btrfsic_dump_tree_sub._entry.72, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @btrfsic_dump_tree_sub._entry_ptr.74, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.76, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/btrfs/check-integrity.c", i32 2459, i32 3}
!125 = !{ptr @btrfsic_dump_tree_sub._entry.75, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @btrfsic_dump_tree_sub._entry_ptr.77, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/btrfs/check-integrity.c", i32 2466, i32 4}
!129 = !{ptr @btrfsic_dump_tree_sub._entry.78, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @btrfsic_dump_tree_sub._entry_ptr.80, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/btrfs/check-integrity.c", i32 2470, i32 30}
!133 = !{ptr @.str.82, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/btrfs/check-integrity.c", i32 2472, i32 30}
!135 = !{ptr @btrfsic_dump_tree_sub._entry.83, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../fs/btrfs/check-integrity.c", i32 2475, i32 4}
!137 = !{ptr @btrfsic_dump_tree_sub._entry_ptr.84, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @btrfsic_dump_tree_sub._entry.85, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../fs/btrfs/check-integrity.c", i32 2480, i32 3}
!140 = !{ptr @btrfsic_dump_tree_sub._entry_ptr.86, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/btrfs/check-integrity.c", i32 2601, i32 4}
!143 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @btrfsic_cmp_log_and_dev_bytenr._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @btrfsic_cmp_log_and_dev_bytenr._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/btrfs/check-integrity.c", i32 2616, i32 3}
!148 = !{ptr @btrfsic_cmp_log_and_dev_bytenr._entry.89, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @btrfsic_cmp_log_and_dev_bytenr._entry_ptr.91, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.93, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/btrfs/check-integrity.c", i32 2626, i32 4}
!152 = !{ptr @btrfsic_cmp_log_and_dev_bytenr._entry.92, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @btrfsic_cmp_log_and_dev_bytenr._entry_ptr.94, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.95, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/btrfs/check-integrity.c", i32 1497, i32 3}
!156 = !{ptr @.str.96, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @btrfsic_map_block._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @btrfsic_map_block._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.97, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/btrfs/check-integrity.c", i32 2336, i32 4}
!161 = !{ptr @.str.98, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @btrfsic_is_block_ref_by_superblock._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @btrfsic_is_block_ref_by_superblock._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.100, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/btrfs/check-integrity.c", i32 2347, i32 4}
!166 = !{ptr @btrfsic_is_block_ref_by_superblock._entry.99, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @btrfsic_is_block_ref_by_superblock._entry_ptr.101, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.102, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/btrfs/check-integrity.c", i32 2093, i32 4}
!170 = !{ptr @.str.103, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @btrfsic_process_written_superblock._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @btrfsic_process_written_superblock._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.105, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/btrfs/check-integrity.c", i32 2102, i32 4}
!175 = !{ptr @btrfsic_process_written_superblock._entry.104, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @btrfsic_process_written_superblock._entry_ptr.106, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.107, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/btrfs/check-integrity.c", i32 2134, i32 24}
!179 = !{ptr @.str.109, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/btrfs/check-integrity.c", i32 2138, i32 5}
!181 = !{ptr @btrfsic_process_written_superblock._entry.108, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @btrfsic_process_written_superblock._entry_ptr.110, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.111, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/btrfs/check-integrity.c", i32 2143, i32 24}
!185 = !{ptr @.str.113, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/btrfs/check-integrity.c", i32 2147, i32 5}
!187 = !{ptr @btrfsic_process_written_superblock._entry.112, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @btrfsic_process_written_superblock._entry_ptr.114, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.115, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/btrfs/check-integrity.c", i32 2152, i32 24}
!191 = !{ptr @.str.117, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/btrfs/check-integrity.c", i32 2158, i32 5}
!193 = !{ptr @btrfsic_process_written_superblock._entry.116, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @btrfsic_process_written_superblock._entry_ptr.118, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.120, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/btrfs/check-integrity.c", i32 2165, i32 4}
!197 = !{ptr @btrfsic_process_written_superblock._entry.119, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @btrfsic_process_written_superblock._entry_ptr.121, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.123, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/btrfs/check-integrity.c", i32 2171, i32 5}
!201 = !{ptr @btrfsic_process_written_superblock._entry.122, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @btrfsic_process_written_superblock._entry_ptr.124, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.126, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/btrfs/check-integrity.c", i32 2177, i32 5}
!205 = !{ptr @btrfsic_process_written_superblock._entry.125, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @btrfsic_process_written_superblock._entry_ptr.127, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.128, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/btrfs/check-integrity.c", i32 2554, i32 4}
!209 = !{ptr @.str.129, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @btrfsic_block_lookup_or_add._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @btrfsic_block_lookup_or_add._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.131, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/btrfs/check-integrity.c", i32 2566, i32 4}
!214 = !{ptr @btrfsic_block_lookup_or_add._entry.130, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @btrfsic_block_lookup_or_add._entry_ptr.132, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.133, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/btrfs/check-integrity.c", i32 2378, i32 2}
!218 = !{ptr @.str.134, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @btrfsic_print_add_link._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @btrfsic_print_add_link._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.135, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/btrfs/check-integrity.c", i32 2238, i32 4}
!223 = !{ptr @.str.136, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @btrfsic_check_all_ref_blocks._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.138, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/btrfs/check-integrity.c", i32 2249, i32 4}
!228 = !{ptr @btrfsic_check_all_ref_blocks._entry.137, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr.139, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.141, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/btrfs/check-integrity.c", i32 2262, i32 4}
!232 = !{ptr @btrfsic_check_all_ref_blocks._entry.140, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr.142, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.144, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/btrfs/check-integrity.c", i32 2271, i32 4}
!236 = !{ptr @btrfsic_check_all_ref_blocks._entry.143, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr.145, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.147, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/btrfs/check-integrity.c", i32 2280, i32 4}
!240 = !{ptr @btrfsic_check_all_ref_blocks._entry.146, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr.148, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.150, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/btrfs/check-integrity.c", i32 2294, i32 4}
!244 = !{ptr @btrfsic_check_all_ref_blocks._entry.149, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr.151, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.153, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/btrfs/check-integrity.c", i32 2306, i32 4}
!248 = !{ptr @btrfsic_check_all_ref_blocks._entry.152, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @btrfsic_check_all_ref_blocks._entry_ptr.154, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.155, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/btrfs/check-integrity.c", i32 912, i32 5}
!252 = !{ptr @.str.156, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @btrfsic_process_metablock._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @btrfsic_process_metablock._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.158, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/btrfs/check-integrity.c", i32 939, i32 5}
!257 = !{ptr @btrfsic_process_metablock._entry.157, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @btrfsic_process_metablock._entry_ptr.159, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.161, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/btrfs/check-integrity.c", i32 1036, i32 5}
!261 = !{ptr @btrfsic_process_metablock._entry.160, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @btrfsic_process_metablock._entry_ptr.162, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.164, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/btrfs/check-integrity.c", i32 1060, i32 5}
!265 = !{ptr @btrfsic_process_metablock._entry.163, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @btrfsic_process_metablock._entry_ptr.165, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.166, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/btrfs/check-integrity.c", i32 1190, i32 4}
!269 = !{ptr @btrfsic_create_link_to_next_block._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @btrfsic_create_link_to_next_block._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.168, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/btrfs/check-integrity.c", i32 1199, i32 3}
!273 = !{ptr @btrfsic_create_link_to_next_block._entry.167, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @btrfsic_create_link_to_next_block._entry_ptr.169, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @btrfsic_create_link_to_next_block._entry.170, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../fs/btrfs/check-integrity.c", i32 1205, i32 3}
!277 = !{ptr @btrfsic_create_link_to_next_block._entry_ptr.171, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.172, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/btrfs/check-integrity.c", i32 1213, i32 24}
!280 = !{ptr @.str.174, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/btrfs/check-integrity.c", i32 1231, i32 5}
!282 = !{ptr @btrfsic_create_link_to_next_block._entry.173, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @btrfsic_create_link_to_next_block._entry_ptr.175, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.177, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/btrfs/check-integrity.c", i32 1239, i32 5}
!286 = !{ptr @btrfsic_create_link_to_next_block._entry.176, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @btrfsic_create_link_to_next_block._entry_ptr.178, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.180, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/btrfs/check-integrity.c", i32 1293, i32 4}
!290 = !{ptr @btrfsic_create_link_to_next_block._entry.179, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @btrfsic_create_link_to_next_block._entry_ptr.181, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.182, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/btrfs/check-integrity.c", i32 1543, i32 3}
!294 = !{ptr @.str.183, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @btrfsic_read_block._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @btrfsic_read_block._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.185, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/btrfs/check-integrity.c", i32 1579, i32 4}
!299 = !{ptr @btrfsic_read_block._entry.184, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @btrfsic_read_block._entry_ptr.186, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.188, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/btrfs/check-integrity.c", i32 1583, i32 4}
!303 = !{ptr @btrfsic_read_block._entry.187, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @btrfsic_read_block._entry_ptr.189, !302, !"_entry_ptr", i1 false, i1 false}
!305 = distinct !{null, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!307 = !{ptr @.str.191, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/btrfs/check-integrity.c", i32 1329, i32 3}
!309 = !{ptr @.str.192, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @btrfsic_handle_extent_data._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @btrfsic_handle_extent_data._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.194, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/btrfs/check-integrity.c", i32 1340, i32 4}
!314 = !{ptr @btrfsic_handle_extent_data._entry.193, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @btrfsic_handle_extent_data._entry_ptr.195, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @btrfsic_handle_extent_data._entry.196, !317, !"_entry", i1 false, i1 false}
!317 = !{!"../fs/btrfs/check-integrity.c", i32 1349, i32 3}
!318 = !{ptr @btrfsic_handle_extent_data._entry_ptr.197, !317, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.199, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/btrfs/check-integrity.c", i32 1367, i32 3}
!321 = !{ptr @btrfsic_handle_extent_data._entry.198, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @btrfsic_handle_extent_data._entry_ptr.200, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @btrfsic_handle_extent_data._entry.201, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../fs/btrfs/check-integrity.c", i32 1385, i32 4}
!325 = !{ptr @btrfsic_handle_extent_data._entry_ptr.202, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.204, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/btrfs/check-integrity.c", i32 1393, i32 5}
!328 = !{ptr @btrfsic_handle_extent_data._entry.203, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @btrfsic_handle_extent_data._entry_ptr.205, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.207, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/btrfs/check-integrity.c", i32 1396, i32 5}
!332 = !{ptr @btrfsic_handle_extent_data._entry.206, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @btrfsic_handle_extent_data._entry_ptr.208, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @btrfsic_handle_extent_data._entry.209, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../fs/btrfs/check-integrity.c", i32 1402, i32 5}
!336 = !{ptr @btrfsic_handle_extent_data._entry_ptr.210, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.212, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/btrfs/check-integrity.c", i32 1426, i32 6}
!339 = !{ptr @btrfsic_handle_extent_data._entry.211, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @btrfsic_handle_extent_data._entry_ptr.213, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.214, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/btrfs/check-integrity.c", i32 2056, i32 4}
!343 = !{ptr @.str.215, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @btrfsic_bio_end_io._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @btrfsic_bio_end_io._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.217, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/btrfs/check-integrity.c", i32 2067, i32 5}
!348 = !{ptr @btrfsic_bio_end_io._entry.216, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @btrfsic_bio_end_io._entry_ptr.218, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.219, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/btrfs/check-integrity.c", i32 606, i32 3}
!352 = !{ptr @.str.220, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @btrfsic_process_superblock._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @btrfsic_process_superblock._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @btrfsic_process_superblock._entry.221, !356, !"_entry", i1 false, i1 false}
!356 = !{!"../fs/btrfs/check-integrity.c", i32 621, i32 5}
!357 = !{ptr @btrfsic_process_superblock._entry_ptr.222, !356, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @btrfsic_process_superblock._entry.223, !359, !"_entry", i1 false, i1 false}
!359 = !{!"../fs/btrfs/check-integrity.c", i32 627, i32 5}
!360 = !{ptr @btrfsic_process_superblock._entry_ptr.224, !359, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @btrfsic_process_superblock._entry.225, !362, !"_entry", i1 false, i1 false}
!362 = !{!"../fs/btrfs/check-integrity.c", i32 635, i32 5}
!363 = !{ptr @btrfsic_process_superblock._entry_ptr.226, !362, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @btrfsic_process_superblock._entry.227, !365, !"_entry", i1 false, i1 false}
!365 = !{!"../fs/btrfs/check-integrity.c", i32 642, i32 4}
!366 = !{ptr @btrfsic_process_superblock._entry_ptr.228, !365, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.230, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../fs/btrfs/check-integrity.c", i32 655, i32 5}
!369 = !{ptr @btrfsic_process_superblock._entry.229, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @btrfsic_process_superblock._entry_ptr.231, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.233, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../fs/btrfs/check-integrity.c", i32 678, i32 5}
!373 = !{ptr @btrfsic_process_superblock._entry.232, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @btrfsic_process_superblock._entry_ptr.234, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.235, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/btrfs/check-integrity.c", i32 756, i32 4}
!377 = distinct !{null, !376, !"__warned", i1 false, i1 false}
!378 = !{ptr @.str.236, !376, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.237, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../fs/btrfs/check-integrity.c", i32 792, i32 24}
!381 = !{ptr @.str.238, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/btrfs/check-integrity.c", i32 798, i32 24}
!383 = !{ptr @.str.239, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../fs/btrfs/check-integrity.c", i32 804, i32 24}
!385 = !{ptr @.str.240, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/btrfs/check-integrity.c", i32 814, i32 4}
!387 = !{ptr @btrfsic_process_superblock_dev_mirror._entry, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @btrfsic_process_superblock_dev_mirror._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.242, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/btrfs/check-integrity.c", i32 825, i32 5}
!391 = !{ptr @btrfsic_process_superblock_dev_mirror._entry.241, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @btrfsic_process_superblock_dev_mirror._entry_ptr.243, !390, !"_entry_ptr", i1 false, i1 false}
!393 = distinct !{null, !394, !"__warned", i1 false, i1 false}
!394 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!395 = !{ptr @.str.244, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.245, !394, !"<string literal>", i1 false, i1 false}
!397 = distinct !{null, !398, !"__warned", i1 false, i1 false}
!398 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!399 = !{ptr @.str.246, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.247, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../include/linux/mm.h", i32 717, i32 2}
!402 = !{ptr @.str.248, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/btrfs/check-integrity.c", i32 1604, i32 2}
!404 = !{ptr @.str.249, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @btrfsic_dump_database._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @btrfsic_dump_database._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.251, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/btrfs/check-integrity.c", i32 1608, i32 3}
!409 = !{ptr @btrfsic_dump_database._entry.250, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @btrfsic_dump_database._entry_ptr.252, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.254, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../fs/btrfs/check-integrity.c", i32 1614, i32 4}
!413 = !{ptr @btrfsic_dump_database._entry.253, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @btrfsic_dump_database._entry_ptr.255, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.257, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../fs/btrfs/check-integrity.c", i32 1628, i32 4}
!417 = !{ptr @btrfsic_dump_database._entry.256, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @btrfsic_dump_database._entry_ptr.258, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.260, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../fs/btrfs/check-integrity.c", i32 1641, i32 3}
!421 = !{ptr @btrfsic_dump_database._entry.259, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @btrfsic_dump_database._entry_ptr.261, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.262, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../fs/btrfs/check-integrity.c", i32 2393, i32 2}
!425 = !{ptr @.str.263, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @btrfsic_print_rem_link._entry, !424, !"_entry", i1 false, i1 false}
!427 = !{ptr @btrfsic_print_rem_link._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!428 = !{!"sp"}
!429 = !{i32 1, !"wchar_size", i32 2}
!430 = !{i32 1, !"min_enum_size", i32 4}
!431 = !{i32 8, !"branch-target-enforcement", i32 0}
!432 = !{i32 8, !"sign-return-address", i32 0}
!433 = !{i32 8, !"sign-return-address-all", i32 0}
!434 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!435 = !{i32 7, !"uwtable", i32 1}
!436 = !{i32 7, !"frame-pointer", i32 2}
!437 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!438 = !{!"branch_weights", i32 1, i32 2000}
!439 = !{!"branch_weights", i32 2000, i32 1}
!440 = !{i64 2158850081, i64 2158850573, i64 2158850118, i64 2158850174, i64 2158850208, i64 2158850232, i64 2158850273, i64 2158850294, i64 2158850322, i64 2158850356}
!441 = !{i64 2158534672, i64 2158535163, i64 2158534709, i64 2158534765, i64 2158534799, i64 2158534823, i64 2158534864, i64 2158534885, i64 2158534913, i64 2158534947}
!442 = !{i64 2158713456, i64 2158713948, i64 2158713493, i64 2158713549, i64 2158713583, i64 2158713607, i64 2158713648, i64 2158713669, i64 2158713697, i64 2158713731}
!443 = !{!"auto-init"}
!444 = !{i64 2158639407, i64 2158639899, i64 2158639444, i64 2158639500, i64 2158639534, i64 2158639558, i64 2158639599, i64 2158639620, i64 2158639648, i64 2158639682}
!445 = !{i64 2158641021, i64 2158641513, i64 2158641058, i64 2158641114, i64 2158641148, i64 2158641172, i64 2158641213, i64 2158641234, i64 2158641262, i64 2158641296}
!446 = !{i64 2158532788, i64 2158533279, i64 2158532825, i64 2158532881, i64 2158532915, i64 2158532939, i64 2158532980, i64 2158533001, i64 2158533029, i64 2158533063}
!447 = !{i64 2158725721, i64 2158726213, i64 2158725758, i64 2158725814, i64 2158725848, i64 2158725872, i64 2158725913, i64 2158725934, i64 2158725962, i64 2158725996}
!448 = !{i64 2158731162, i64 2158731654, i64 2158731199, i64 2158731255, i64 2158731289, i64 2158731313, i64 2158731354, i64 2158731375, i64 2158731403, i64 2158731437}
!449 = !{i64 2158560321, i64 2158560812, i64 2158560358, i64 2158560414, i64 2158560448, i64 2158560472, i64 2158560513, i64 2158560534, i64 2158560562, i64 2158560596}
!450 = !{i64 2158571458, i64 2158571949, i64 2158571495, i64 2158571551, i64 2158571585, i64 2158571609, i64 2158571650, i64 2158571671, i64 2158571699, i64 2158571733}
!451 = !{i64 2158549457, i64 2158549948, i64 2158549494, i64 2158549550, i64 2158549584, i64 2158549608, i64 2158549649, i64 2158549670, i64 2158549698, i64 2158549732}
!452 = !{i64 2158551110, i64 2158551601, i64 2158551147, i64 2158551203, i64 2158551237, i64 2158551261, i64 2158551302, i64 2158551323, i64 2158551351, i64 2158551385}
!453 = !{i64 2158573079, i64 2158573570, i64 2158573116, i64 2158573172, i64 2158573206, i64 2158573230, i64 2158573271, i64 2158573292, i64 2158573320, i64 2158573354}
!454 = !{i64 2158536560, i64 2158537051, i64 2158536597, i64 2158536653, i64 2158536687, i64 2158536711, i64 2158536752, i64 2158536773, i64 2158536801, i64 2158536835}
!455 = !{i64 2158732800, i64 2158733292, i64 2158732837, i64 2158732893, i64 2158732927, i64 2158732951, i64 2158732992, i64 2158733013, i64 2158733041, i64 2158733075}
!456 = distinct !{!456, !457}
!457 = !{!"llvm.loop.peeled.count", i32 1}
!458 = !{i64 2158591012, i64 2158591503, i64 2158591049, i64 2158591105, i64 2158591139, i64 2158591163, i64 2158591204, i64 2158591225, i64 2158591253, i64 2158591287}
!459 = !{i64 2158605738, i64 2158606230, i64 2158605775, i64 2158605831, i64 2158605865, i64 2158605889, i64 2158605930, i64 2158605951, i64 2158605979, i64 2158606013}
!460 = distinct !{!460, !457}
!461 = !{i64 2158589376, i64 2158589867, i64 2158589413, i64 2158589469, i64 2158589503, i64 2158589527, i64 2158589568, i64 2158589589, i64 2158589617, i64 2158589651}
!462 = !{i64 2158601410, i64 2158601902, i64 2158601447, i64 2158601503, i64 2158601537, i64 2158601561, i64 2158601602, i64 2158601623, i64 2158601651, i64 2158601685}
!463 = !{i64 2158542204, i64 2158542695, i64 2158542241, i64 2158542297, i64 2158542331, i64 2158542355, i64 2158542396, i64 2158542417, i64 2158542445, i64 2158542479}
!464 = !{i64 2158543857, i64 2158544348, i64 2158543894, i64 2158543950, i64 2158543984, i64 2158544008, i64 2158544049, i64 2158544070, i64 2158544098, i64 2158544132}
!465 = !{i64 2158642808, i64 2158643300, i64 2158642845, i64 2158642901, i64 2158642935, i64 2158642959, i64 2158643000, i64 2158643021, i64 2158643049, i64 2158643083}
!466 = !{i64 2158644420, i64 2158644912, i64 2158644457, i64 2158644513, i64 2158644547, i64 2158644571, i64 2158644612, i64 2158644633, i64 2158644661, i64 2158644695}
!467 = !{i64 2158646044, i64 2158646536, i64 2158646081, i64 2158646137, i64 2158646171, i64 2158646195, i64 2158646236, i64 2158646257, i64 2158646285, i64 2158646319}
!468 = !{i64 2149333094}
!469 = !{i64 2153301373, i64 2153301856, i64 2153301410, i64 2153301466, i64 2153301500, i64 2153301524, i64 2153301565, i64 2153301586, i64 2153301614, i64 2153301648}
!470 = !{i64 2148594032}
!471 = !{i64 2148508765, i64 2148508797, i64 2148508826, i64 2148508860, i64 2148508891, i64 2148508914}
!472 = !{i64 2148594261}
!473 = !{i64 2148318973, i64 2148318978, i64 2148318991, i64 2148319035, i64 2148319069, i64 2148319090}
!474 = !{i64 2149333360}
