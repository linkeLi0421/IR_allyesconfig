; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/btrfs-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/btrfs-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.36 }
%union.anon.36 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.87, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.87 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot allocate fs_info\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot allocate root\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot extent buffer\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot allocate path\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot allocate inode\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot allocate block group\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot allocate extent map\00", [37 x i8] zeroinitializer }, align 32
@test_error = dso_local global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [36 x i8] zeroinitializer }, align 32
@test_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/btrfs/tests/btrfs-tests.c\00", [35 x i8] zeroinitializer }, align 32
@btrfs_alloc_dummy_block_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cache->free_space_lock\00", [40 x i8] zeroinitializer }, align 32
@btrfs_run_sanity_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016BTRFS: selftest: sectorsize: %u  nodesize: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrfs_run_sanity_tests\00", [41 x i8] zeroinitializer }, align 32
@btrfs_run_sanity_tests._entry_ptr = internal global ptr @btrfs_run_sanity_tests._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radix_tree_deref_slot_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/radix-tree.h\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@test_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.18, i32 0, ptr @btrfs_test_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@btrfs_init_test_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013btrfs: cannot register test file system\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfs_init_test_fs\00", [45 x i8] zeroinitializer }, align 32
@btrfs_init_test_fs._entry_ptr = internal global ptr @btrfs_init_test_fs._entry, section ".printk_index", align 4
@btrfs_init_test_fs._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.7, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013btrfs: cannot mount test file system\0A\00", [56 x i8] zeroinitializer }, align 32
@btrfs_init_test_fs._entry_ptr.17 = internal global ptr @btrfs_init_test_fs._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"btrfs_test_fs\00", [18 x i8] zeroinitializer }, align 32
@btrfs_test_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @btrfs_alloc_inode, ptr @btrfs_test_destroy_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 23, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 24, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 25, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 26, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 27, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 28, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 29, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"test_error\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 22, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"test_mnt\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 20, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 160, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 236, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 274, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"../include/linux/radix-tree.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 194, i32 9 }
@___asan_gen_.70 = private unnamed_addr constant [10 x i8] c"test_type\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 47, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 76, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 82, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 48, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"btrfs_test_super_ops\00", align 1
@___asan_gen_.92 = private constant [32 x i8] c"../fs/btrfs/tests/btrfs-tests.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 32, i32 38 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @btrfs_init_test_fs._entry, ptr @btrfs_init_test_fs._entry.15, ptr @btrfs_init_test_fs._entry_ptr, ptr @btrfs_init_test_fs._entry_ptr.17, ptr @btrfs_run_sanity_tests._entry, ptr @btrfs_run_sanity_tests._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @test_error, ptr @test_mnt, ptr @.str.7, ptr @btrfs_alloc_dummy_block_group.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @test_type, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @btrfs_test_super_ops], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_alloc_dummy_block_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_run_sanity_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_test_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_test_fs._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_new_test_inode() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @test_mnt, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %2) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -32768, ptr %call, align 8
  %type = getelementptr i8, ptr %call, i32 -852
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %type, align 4
  %location3 = getelementptr i8, ptr %call, i32 -860
  %5 = ptrtoint ptr %location3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 256, ptr %location3, align 4
  %offset = getelementptr i8, ptr %call, i32 -851
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %offset, align 1
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext -32768) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_alloc_dummy_device(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 560) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %alloc_state = getelementptr inbounds %struct.btrfs_device, ptr %call7.i.i, i32 0, i32 30
  tail call void @extent_io_tree_init(ptr noundef null, ptr noundef %alloc_state, i32 noundef 0, ptr noundef null) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %3 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_devices, align 8
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %devices, ptr noundef %6) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %devices, ptr %prev.i, align 4
  %10 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %devices, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_io_tree_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6056) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 448) #10
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %call7.i.i, i32 0, i32 100
  %2 = ptrtoint ptr %fs_devices to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i40, ptr %fs_devices, align 8
  %tobool3.not = icmp eq ptr %call7.i.i40, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %call7.i.i40, i32 0, i32 13
  %3 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %devices, ptr %devices, align 8
  %prev.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %call7.i.i40, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %devices, ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4096) #10
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %call7.i.i, i32 0, i32 43
  %6 = ptrtoint ptr %super_copy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i41, ptr %super_copy, align 8
  %tobool9.not = icmp eq ptr %call7.i.i41, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_devices, align 8
  tail call void @kfree(ptr noundef %8) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @btrfs_init_fs_info(ptr noundef nonnull %call7.i.i) #7
  %nodesize13 = getelementptr inbounds %struct.btrfs_fs_info, ptr %call7.i.i, i32 0, i32 166
  %9 = ptrtoint ptr %nodesize13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nodesize, ptr %nodesize13, align 8
  %sectorsize14 = getelementptr inbounds %struct.btrfs_fs_info, ptr %call7.i.i, i32 0, i32 167
  %10 = ptrtoint ptr %sectorsize14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sectorsize, ptr %sectorsize14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sectorsize)
  %tobool.not.i.i = icmp eq i32 %sectorsize, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sectorsize, i1 true) #7, !range !56
  %sub.i.op.i = xor i32 %11, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %call7.i.i, i32 0, i32 168
  %12 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %sectorsize_bits, align 8
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %call7.i.i, i32 0, i32 149
  tail call void @_set_bit(i32 noundef 5, ptr noundef %fs_state) #7
  %13 = load ptr, ptr @test_mnt, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mnt_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %if.then10 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_fs_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_dummy_fs_info(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #7
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 2
  %tobool.not = icmp eq ptr %fs_info, null
  %2 = getelementptr inbounds i8, ptr %iter, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  br i1 %tobool.not, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

if.end:                                           ; preds = %entry
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %4 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fs_state, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %do.end, label %if.end27, !prof !57

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 161, i32 noundef 9, ptr noundef null) #7
  br label %cleanup71

if.end27:                                         ; preds = %if.end
  %7 = load ptr, ptr @test_mnt, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %s_fs_info, align 16
  %buffer_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 151
  tail call void @_raw_spin_lock(ptr noundef %buffer_lock) #7
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %iter, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %0, align 4
  %buffer_radix = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 152
  %dep_map.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 151, i32 0, i32 0, i32 4
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %if.end27
  %slot.0 = phi ptr [ null, %if.end27 ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool29.not = icmp eq ptr %slot.0, null
  br i1 %tobool29.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call30 = call ptr @radix_tree_next_chunk(ptr noundef %buffer_radix, ptr noundef nonnull %iter, i32 noundef 0) #7
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %for.end, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call30, %lor.rhs.for.body_crit_edge ]
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.radix_tree_deref_slot_protected.exit_crit_edge

for.body.radix_tree_deref_slot_protected.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %radix_tree_deref_slot_protected.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.radix_tree_deref_slot_protected.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.radix_tree_deref_slot_protected.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radix_tree_deref_slot_protected.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @radix_tree_deref_slot_protected.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true3.i.radix_tree_deref_slot_protected.exit_crit_edge, label %if.then.i

land.lhs.true3.i.radix_tree_deref_slot_protected.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radix_tree_deref_slot_protected.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @radix_tree_deref_slot_protected.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 194, ptr noundef nonnull @.str.12) #7
  br label %radix_tree_deref_slot_protected.exit

radix_tree_deref_slot_protected.exit:             ; preds = %if.then.i, %land.lhs.true3.i.radix_tree_deref_slot_protected.exit_crit_edge, %land.lhs.true.i.radix_tree_deref_slot_protected.exit_crit_edge, %for.body.radix_tree_deref_slot_protected.exit_crit_edge
  %13 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slot.1, align 4
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %radix_tree_deref_slot_protected.exit.cleanup_crit_edge, label %if.end36

radix_tree_deref_slot_protected.exit.cleanup_crit_edge: ; preds = %radix_tree_deref_slot_protected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %radix_tree_deref_slot_protected.exit
  %15 = ptrtoint ptr %14 to i32
  %and.i = and i32 %15, 3
  %16 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end36.cleanup_crit_edge [
    i32 0, label %if.end45
    i32 2, label %if.then42
  ]

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iter, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %1, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call ptr @radix_tree_iter_resume(ptr noundef nonnull %slot.1, ptr noundef nonnull %iter) #7
  call void @_raw_spin_unlock(ptr noundef %buffer_lock) #7
  call void @free_extent_buffer_stale(ptr noundef nonnull %14) #7
  call void @_raw_spin_lock(ptr noundef %buffer_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then42, %if.end36.cleanup_crit_edge, %radix_tree_deref_slot_protected.exit.cleanup_crit_edge
  %slot.3 = phi ptr [ %call46, %if.end45 ], [ %slot.1, %radix_tree_deref_slot_protected.exit.cleanup_crit_edge ], [ null, %if.then42 ], [ %slot.1, %if.end36.cleanup_crit_edge ]
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %0, align 4
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %22, %24
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %cleanup
  %slot.addr.0.i = phi ptr [ %slot.3, %cleanup ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %cleanup ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %25 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %26, 1
  store i32 %add.i.i, ptr %iter, align 4
  %27 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %28, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !57

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

for.end:                                          ; preds = %lor.rhs
  call void @_raw_spin_unlock(ptr noundef %buffer_lock) #7
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 19
  call void @btrfs_mapping_tree_free(ptr noundef %mapping_tree) #7
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %29 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_devices, align 8
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devices, align 8
  %cmp.not107 = icmp eq ptr %32, %devices
  br i1 %cmp.not107, label %for.end.for.end69_crit_edge, label %for.end.for.body62_crit_edge

for.end.for.body62_crit_edge:                     ; preds = %for.end
  br label %for.body62

for.end.for.end69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end69

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.end.for.body62_crit_edge
  %dev.0108 = phi ptr [ %tmp.0, %for.body62.for.body62_crit_edge ], [ %32, %for.end.for.body62_crit_edge ]
  %33 = ptrtoint ptr %dev.0108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp.0 = load ptr, ptr %dev.0108, align 8
  %alloc_state.i = getelementptr inbounds %struct.btrfs_device, ptr %dev.0108, i32 0, i32 30
  call void @extent_io_tree_release(ptr noundef %alloc_state.i) #7
  call void @kfree(ptr noundef %dev.0108) #7
  %34 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_devices, align 8
  %devices59 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %35, i32 0, i32 13
  %cmp.not = icmp eq ptr %tmp.0, %devices59
  br i1 %cmp.not, label %for.body62.for.end69_crit_edge, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body62

for.body62.for.end69_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end69

for.end69:                                        ; preds = %for.body62.for.end69_crit_edge, %for.end.for.end69_crit_edge
  call void @btrfs_free_qgroup_config(ptr noundef nonnull %fs_info) #7
  call void @btrfs_free_fs_roots(ptr noundef nonnull %fs_info) #7
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %36 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %super_copy, align 8
  call void @kfree(ptr noundef %37) #7
  call void @btrfs_check_leaked_roots(ptr noundef nonnull %fs_info) #7
  call void @btrfs_extent_buffer_leak_debug_check(ptr noundef nonnull %fs_info) #7
  %38 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fs_devices, align 8
  call void @kfree(ptr noundef %39) #7
  call void @kfree(ptr noundef nonnull %fs_info) #7
  br label %cleanup71

cleanup71:                                        ; preds = %for.end69, %do.end, %entry.cleanup71_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_iter_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer_stale(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mapping_tree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_qgroup_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_fs_roots(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_check_leaked_roots(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_extent_buffer_leak_debug_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_dummy_root(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %root, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end25.critedge, label %do.end, !prof !58

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 205, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end25.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @btrfs_global_root_delete(ptr noundef nonnull %root) #7
  tail call void @btrfs_put_root(ptr noundef nonnull %root) #7
  br label %return

return:                                           ; preds = %if.end25.critedge, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_global_root_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_alloc_dummy_block_group(ptr noundef %fs_info, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 672) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 224) #10
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i24, ptr %free_space_ctl, align 4
  %tobool3.not = icmp eq ptr %call7.i.i24, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %start, align 8
  %conv = zext i32 %length to i64
  %length6 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %length6 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %length6, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %5 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sectorsize, align 4
  %full_stripe_len = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %full_stripe_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %full_stripe_len, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fs_info, ptr %call7.i.i, align 8
  %list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 25
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 25, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 8
  %cluster_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 27
  %11 = ptrtoint ptr %cluster_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %cluster_list, ptr %cluster_list, align 8
  %prev.i25 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 27, i32 1
  %12 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cluster_list, ptr %prev.i25, align 4
  %bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 28
  %13 = ptrtoint ptr %bg_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %bg_list, ptr %bg_list, align 8
  %prev.i26 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 28, i32 1
  %14 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bg_list, ptr %prev.i26, align 4
  tail call void @btrfs_init_free_space_ctl(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i24) #7
  %free_space_lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 41
  tail call void @__mutex_init(ptr noundef %free_space_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @btrfs_alloc_dummy_block_group.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_free_space_ctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_dummy_block_group(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cache, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %1) #7
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  tail call void @kfree(ptr noundef %3) #7
  tail call void @kfree(ptr noundef nonnull %cache) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_remove_free_space_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @btrfs_init_dummy_trans(ptr nocapture noundef writeonly %trans, ptr noundef %fs_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %trans, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %trans, align 8
  %type = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 9
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8192, ptr %type, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %4 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fs_info, ptr %fs_info1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_run_sanity_tests() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @register_filesystem(ptr noundef nonnull @test_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %btrfs_init_test_fs.exit.thread

btrfs_init_test_fs.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @kern_mount(ptr noundef nonnull @test_type) #7
  store ptr %call2.i, ptr @test_mnt, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %btrfs_init_test_fs.exit, label %if.end.i.do.end.preheader_crit_edge

if.end.i.do.end.preheader_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.preheader

btrfs_init_test_fs.exit:                          ; preds = %if.end.i
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  %call10.i = tail call i32 @unregister_filesystem(ptr noundef nonnull @test_type) #7
  %0 = load ptr, ptr @test_mnt, align 4
  %1 = ptrtoint ptr %0 to i32
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %btrfs_init_test_fs.exit.do.end.preheader_crit_edge, label %btrfs_init_test_fs.exit.cleanup_crit_edge

btrfs_init_test_fs.exit.cleanup_crit_edge:        ; preds = %btrfs_init_test_fs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

btrfs_init_test_fs.exit.do.end.preheader_crit_edge: ; preds = %btrfs_init_test_fs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.preheader

do.end.preheader:                                 ; preds = %btrfs_init_test_fs.exit.do.end.preheader_crit_edge, %if.end.i.do.end.preheader_crit_edge
  br label %do.end

for.cond1:                                        ; preds = %if.end24
  %shl = shl nuw nsw i32 %nodesize.064, 1
  %cmp2 = icmp ult i32 %nodesize.064, 32769
  br i1 %cmp2, label %for.cond1.do.end_crit_edge, label %for.end30

for.cond1.do.end_crit_edge:                       ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.cond1.do.end_crit_edge, %do.end.preheader
  %nodesize.064 = phi i32 [ %shl, %for.cond1.do.end_crit_edge ], [ 4096, %do.end.preheader ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 4096, i32 noundef %nodesize.064) #11
  %call5 = tail call i32 @btrfs_test_free_space_cache(i32 noundef 4096, i32 noundef %nodesize.064) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %do.end
  %call9 = tail call i32 @btrfs_test_extent_buffer_operations(i32 noundef 4096, i32 noundef %nodesize.064) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @btrfs_test_extent_io(i32 noundef 4096, i32 noundef %nodesize.064) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @btrfs_test_inodes(i32 noundef 4096, i32 noundef %nodesize.064) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @btrfs_test_qgroups(i32 noundef 4096, i32 noundef %nodesize.064) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @btrfs_test_free_space_tree(i32 noundef 4096, i32 noundef %nodesize.064) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond1, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.end30:                                        ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 @btrfs_test_extent_map() #7
  br label %out

out:                                              ; preds = %for.end30, %if.end24.out_crit_edge, %if.end20.out_crit_edge, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %if.end8.out_crit_edge, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call31, %for.end30 ], [ %call25, %if.end24.out_crit_edge ], [ %call21, %if.end20.out_crit_edge ], [ %call17, %if.end16.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ %call5, %do.end.out_crit_edge ]
  %2 = load ptr, ptr @test_mnt, align 4
  tail call void @kern_unmount(ptr noundef %2) #7
  %call.i61 = tail call i32 @unregister_filesystem(ptr noundef nonnull @test_type) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %btrfs_init_test_fs.exit.cleanup_crit_edge, %btrfs_init_test_fs.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ %1, %btrfs_init_test_fs.exit.cleanup_crit_edge ], [ %call.i, %btrfs_init_test_fs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_free_space_cache(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_extent_buffer_operations(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_extent_io(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_inodes(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_qgroups(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_free_space_tree(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_test_extent_map() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_io_tree_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_test_init_fs_context(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 1936880249) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @btrfs_test_super_ops, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_test_destroy_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 23, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 24, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 25, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 26, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 27, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 28, i32 33}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 29, i32 33}
!14 = !{ptr @test_error, !15, !"test_error", i1 false, i1 false}
!15 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 22, i32 13}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 160, i32 6}
!18 = !{ptr @btrfs_alloc_dummy_block_group.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 236, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 274, i32 4}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @btrfs_run_sanity_tests._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @btrfs_run_sanity_tests._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @test_mnt, !27, !"test_mnt", i1 false, i1 false}
!27 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 20, i32 25}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/radix-tree.h", i32 194, i32 9}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 76, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @btrfs_init_test_fs._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @btrfs_init_test_fs._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 82, i32 3}
!39 = !{ptr @btrfs_init_test_fs._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @btrfs_init_test_fs._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 48, i32 11}
!43 = !{ptr @test_type, !44, !"test_type", i1 false, i1 false}
!44 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 47, i32 32}
!45 = !{ptr @btrfs_test_super_ops, !46, !"btrfs_test_super_ops", i1 false, i1 false}
!46 = !{!"../fs/btrfs/tests/btrfs-tests.c", i32 32, i32 38}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i32 0, i32 33}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"branch_weights", i32 2000, i32 1}
