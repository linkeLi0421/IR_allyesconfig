; ModuleID = '/llk/IR_all_yes/fs/f2fs/checkpoint.c_pt.bc'
source_filename = "../fs/f2fs/checkpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.78 = type { ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
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
%struct.f2fs_io_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, i8, i32, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, i8 }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.xarray, %struct.xarray, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, [3 x i32], i32, %struct.xarray, %struct.list_head, [2 x i32], %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.anon.67 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ino_entry = type { %struct.list_head, i32, i32 }
%struct.node_info = type { i32, i32, i32, i8, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.f2fs_orphan_block = type { [1020 x i32], i32, i16, i16, i32, i32 }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.f2fs_dev_info = type { ptr, [64 x i8], i32, i32, i32, i32, ptr, ptr }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.free_nid = type { %struct.list_head, i32, i32 }
%struct.dirty_seglist_info = type { ptr, [8 x ptr], ptr, %struct.mutex, [8 x i32], ptr }
%struct.f2fs_stat_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i64], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [4 x i32], [2 x i32], [2 x i32], i32, i64, i64, i64 }
%struct.anon.92 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.f2fs_journal = type <{ %union.anon.86, %union.anon.87 }>
%union.anon.86 = type { i16 }
%union.anon.87 = type { %struct.nat_journal }
%struct.nat_journal = type { [38 x %struct.nat_journal_entry], [11 x i8] }
%struct.nat_journal_entry = type <{ i32, %struct.f2fs_nat_entry }>
%struct.f2fs_nat_entry = type <{ i8, i32, i32 }>
%struct.cp_control = type { i32, i64, i64, i64 }
%struct.ckpt_req = type { %struct.completion, %struct.llist_node, i32, i64 }
%struct.llist_node = type { ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/f2fs/checkpoint.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014access invalid blkaddr:%u\00", [36 x i8] zeroinitializer }, align 32
@f2fs_meta_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @f2fs_write_meta_page, ptr null, ptr @f2fs_write_meta_pages, ptr @f2fs_set_meta_page_dirty, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_invalidate_page, ptr @f2fs_release_page, ptr null, ptr null, ptr @f2fs_migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ino_entry_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f2fs_acquire_orphan_inode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_acquire_orphan_inode = private unnamed_addr constant [26 x i8] c"f2fs_acquire_orphan_inode\00", align 1
@f2fs_acquire_orphan_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.f2fs_acquire_orphan_inode, ptr @.str, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@f2fs_acquire_orphan_inode._entry_ptr = internal global ptr @f2fs_acquire_orphan_inode._entry, section ".printk_index", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016write access unavailable, skipping orphan cleanup\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016orphan cleanup on readonly fs\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Start checkpoint disabled!\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start block_ops\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"finish block_ops\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013f2fs_flush_nat_entries failed err:%d, stop checkpoint\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013do_checkpoint failed err:%d, stop checkpoint\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015checkpoint: version = %llx\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"finish checkpoint\00", [46 x i8] zeroinitializer }, align 32
@f2fs_init_ino_entry_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&im->ino_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f2fs_ino_entry\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f2fs_inode_entry\00", [47 x i8] zeroinitializer }, align 32
@f2fs_inode_entry_slab = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f2fs_ckpt-%u:%u\00", [16 x i8] zeroinitializer }, align 32
@f2fs_init_ckpt_req_control.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cprc->ckpt_wait_queue\00", [41 x i8] zeroinitializer }, align 32
@f2fs_init_ckpt_req_control.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cprc->stat_lock\00", [47 x i8] zeroinitializer }, align 32
@f2fs_grab_cache_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_grab_cache_page = private unnamed_addr constant [21 x i8] c"f2fs_grab_cache_page\00", align 1
@f2fs_grab_cache_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.f2fs_grab_cache_page, ptr @.str.21, i32 2572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_grab_cache_page._entry_ptr = internal global ptr @f2fs_grab_cache_page._entry, section ".printk_index", align 4
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Inconsistent error blkaddr:%u, sit bitmap:%d\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_writepage = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_writepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_writepages = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_writepages.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_set_page_dirty = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_set_page_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.21, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: orphan failed (ino=%x), run fsck to fix.\00", [49 x i8] zeroinitializer }, align 32
@__func__.recover_orphan_inode = private unnamed_addr constant [21 x i8] c"recover_orphan_inode\00", align 1
@f2fs_kvmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kvmalloc = private unnamed_addr constant [14 x i8] c"f2fs_kvmalloc\00", align 1
@f2fs_kvmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.f2fs_kvmalloc, ptr @.str.21, i32 3236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kvmalloc._entry_ptr = internal global ptr @f2fs_kvmalloc._entry, section ".printk_index", align 4
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014invalid cp_pack_total_block_count:%u\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014invalid crc_offset: %zu\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014invalid crc value\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__tracepoint_f2fs_sync_dirty_inodes_enter = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_sync_dirty_inodes_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_sync_dirty_inodes_exit = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_sync_dirty_inodes_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_f2fs_write_checkpoint = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_write_checkpoint.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015Disable nat_bits due to no space\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015Rebuild and enable nat_bits\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__const.__write_checkpoint_sync.cpc = private unnamed_addr constant { i32, [4 x i8], i64, i64, i64 } { i32 4, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0 }, align 8
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 47, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 189, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"f2fs_meta_aops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 454, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"ino_entry_slab\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 26, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 604, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 698, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 703, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1612, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1626, i32 52 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1632, i32 52 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1664, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1676, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1689, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1693, i32 52 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1708, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1720, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1724, i32 49 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"f2fs_inode_entry_slab\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 27, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1875, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1909, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1911, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2571, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 260, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 151, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 414, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 717, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 788, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1258, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 695, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 723, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2650, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 36, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 680, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 3236, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 876, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 846, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 853, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 452, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1160, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1308, i32 4 }
@___asan_gen_.218 = private constant [24 x i8] c"../fs/f2fs/checkpoint.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1313, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 378, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 87, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @f2fs_acquire_orphan_inode._entry, ptr @f2fs_acquire_orphan_inode._entry_ptr, ptr @f2fs_grab_cache_page._entry, ptr @f2fs_grab_cache_page._entry_ptr, ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @f2fs_kvmalloc._entry, ptr @f2fs_kvmalloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @f2fs_meta_aops, ptr @ino_entry_slab, ptr @f2fs_acquire_orphan_inode._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @f2fs_init_ino_entry_info.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @f2fs_inode_entry_slab, ptr @.str.17, ptr @f2fs_init_ckpt_req_control.__key, ptr @.str.18, ptr @f2fs_init_ckpt_req_control.__key.19, ptr @.str.20, ptr @f2fs_grab_cache_page._rs, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @f2fs_kvmalloc._rs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @xa_init_flags.__key, ptr @.str.45, ptr @init_completion.__key, ptr @.str.46], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_meta_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ino_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_acquire_orphan_inode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_acquire_orphan_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_ino_entry_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_inode_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_ckpt_req_control.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_init_ckpt_req_control.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_grab_cache_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_grab_cache_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kvmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kvmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_stop_checkpoint(ptr noundef %sbi, i1 noundef zeroext %end_io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @f2fs_build_fault_attr(ptr noundef %sbi, i32 noundef 0, i32 noundef 0) #14
  %cp_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock.i) #14
  %ckpt.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %0 = ptrtoint ptr %ckpt.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ckpt.i.i, align 4
  %ckpt_flags1.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ckpt_flags1.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ckpt_flags1.i.i, align 1
  %4 = or i32 %3, 134217728
  store i32 %4, ptr %ckpt_flags1.i.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock.i, i32 noundef %call2.i) #14
  br i1 %end_io, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_flush_merged_writes(ptr noundef %sbi) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_build_fault_attr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_flush_merged_writes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_grab_meta_page(ptr nocapture noundef readonly %sbi, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %0 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  %call116 = tail call fastcc ptr @f2fs_grab_cache_page(ptr noundef %3, i32 noundef %index)
  %tobool.not17 = icmp eq ptr %call116, null
  br i1 %tobool.not17, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %if.then.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %call1 = tail call fastcc ptr @f2fs_grab_cache_page(ptr noundef %3, i32 noundef %index)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then.if.then_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.if.then_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call1.lcssa = phi ptr [ %call116, %entry.if.end_crit_edge ], [ %call1, %if.then.if.end_crit_edge ]
  tail call void @f2fs_wait_on_page_writeback(ptr noundef nonnull %call1.lcssa, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true) #14
  %4 = getelementptr inbounds %struct.page, ptr %call1.lcssa, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call1.lcssa to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i11 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i11)
  %tobool.not.i.i.i12 = icmp eq i32 %and.i.i.i.i11, 0
  br i1 %tobool.not.i.i.i12, label %folio_flags.exit.i.i, label %if.then.i.i.i13, !prof !146

if.then.i.i.i13:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14
  br i1 %tobool.i.not.i, label %if.then5, label %folio_flags.exit.i.i.if.end6_crit_edge

folio_flags.exit.i.i.if.end6_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %folio_flags.exit.i.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %call1.lcssa, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call1.lcssa) #14
  br label %if.end6

if.end6:                                          ; preds = %SetPageUptodate.exit, %folio_flags.exit.i.i.if.end6_crit_edge
  ret ptr %call1.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_grab_cache_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef 3, i32 noundef 0) #14
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 1
  %6 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end4.if.then16_crit_edge, label %if.end.i

if.end4.if.then16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.end.i:                                         ; preds = %if.end4
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 2
  %8 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.then16_crit_edge, label %if.end3.i

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #14, !srcloc !148
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fault_info.i, align 4
  %13 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i, label %if.end3.i.if.then16_crit_edge, label %if.then7

if.end3.i.if.then16_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.then7:                                         ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #14
  %15 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_grab_cache_page._rs, ptr noundef nonnull @__func__.f2fs_grab_cache_page) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %do.end

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %i_sb.i.i1 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i1, align 4
  %s_fs_info.i.i.i2 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i2, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 2), align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %s_id, ptr noundef %24, ptr noundef nonnull @__func__.f2fs_grab_cache_page, ptr noundef %25) #17
  br label %cleanup

if.then16:                                        ; preds = %if.end3.i.if.then16_crit_edge, %if.end.i.if.then16_crit_edge, %if.end4.if.then16_crit_edge
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %26 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef 7, i32 noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.end, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.then16 ], [ %call.i, %entry.cleanup_crit_edge ], [ null, %do.end ], [ null, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_get_meta_page(ptr noundef %sbi, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %index, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %index, i1 noundef zeroext %is_meta) unnamed_addr #0 align 64 {
entry:
  %fio = alloca %struct.f2fs_io_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %0 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio) #14
  %4 = getelementptr inbounds i8, ptr %fio, i32 52
  %5 = call ptr @memset(ptr %4, i32 255, i32 40)
  %6 = ptrtoint ptr %fio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sbi, ptr %fio, align 4
  %ino = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 1
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ino, align 4
  %type = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %type, align 4
  %temp = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 3
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %temp, align 4
  %op = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 4
  %10 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %op, align 4
  %op_flags = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 5
  %11 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12288, ptr %op_flags, align 4
  %new_blkaddr = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 6
  %12 = ptrtoint ptr %new_blkaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %index, ptr %new_blkaddr, align 4
  %old_blkaddr = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 7
  %13 = ptrtoint ptr %old_blkaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %index, ptr %old_blkaddr, align 4
  %page2 = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 8
  %need_lock = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 13
  %14 = ptrtoint ptr %need_lock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %need_lock, align 4
  %in_list = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 14
  %15 = ptrtoint ptr %in_list to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %in_list, align 4
  %is_por = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 15
  %lnot = xor i1 %is_meta, true
  %frombool3 = zext i1 %lnot to i8
  %16 = call ptr @memset(ptr %page2, i32 0, i32 21)
  %17 = ptrtoint ptr %is_por to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool3, ptr %is_por, align 1
  %retry = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 16
  %18 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %retry, align 2
  %compr_blocks = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 17
  %19 = ptrtoint ptr %compr_blocks to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %compr_blocks, align 4
  %encrypted = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 18
  %20 = ptrtoint ptr %encrypted to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %encrypted, align 4
  %io_type = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 19
  %21 = call ptr @memset(ptr %io_type, i32 0, i32 17)
  br i1 %is_meta, label %entry.repeat.preheader_crit_edge, label %if.then, !prof !146

entry.repeat.preheader_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %repeat.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %op_flags, align 4
  br label %repeat.preheader

repeat.preheader:                                 ; preds = %if.then, %entry.repeat.preheader_crit_edge
  br label %repeat

repeat:                                           ; preds = %repeat.backedge, %repeat.preheader
  %call11 = call fastcc ptr @f2fs_grab_cache_page(ptr noundef %3, i32 noundef %index)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #16
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %if.then34, %if.then13
  br label %repeat

if.end15:                                         ; preds = %repeat
  %23 = getelementptr inbounds %struct.page, ptr %call11, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %call11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.22) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %27, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %if.end19, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  br label %cleanup

if.end19:                                         ; preds = %folio_flags.exit.i.i
  %35 = ptrtoint ptr %page2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call11, ptr %page2, align 4
  %call21 = call i32 @f2fs_submit_page_bio(ptr noundef nonnull %fio) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call11, i32 noundef 1)
  %36 = inttoptr i32 %call21 to ptr
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @f2fs_update_iostat(ptr noundef %sbi, i32 noundef 20, i64 noundef 4096) #14
  call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 788) #14
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %23, align 4
  %and.i.i68 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i72, label %if.then.i.i71, !prof !146

if.then.i.i71:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i70 = add i32 %38, -1
  br label %_compound_head.exit.i76

if.end.i.i72:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %call11 to i32
  br label %_compound_head.exit.i76

_compound_head.exit.i76:                          ; preds = %if.end.i.i72, %if.then.i.i71
  %retval.0.i.i73 = phi i32 [ %sub.i.i70, %if.then.i.i71 ], [ %39, %if.end.i.i72 ]
  %40 = inttoptr i32 %retval.0.i.i73 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i.i.i74 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i74)
  %tobool.not.i.i.i75 = icmp eq i32 %and.i.i.i.i74, 0
  br i1 %tobool.not.i.i.i75, label %folio_flags.exit.i.i78, label %if.then.i.i.i77, !prof !146

if.then.i.i.i77:                                  ; preds = %_compound_head.exit.i76
  call void @__sanitizer_cov_trace_pc() #16
  %44 = inttoptr i32 %retval.0.i.i73 to ptr
  call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.22) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i78:                           ; preds = %_compound_head.exit.i76
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #14
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %40, align 4
  %and.i.i4.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i78.if.then.i_crit_edge

folio_flags.exit.i.i78.if.then.i_crit_edge:       ; preds = %folio_flags.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i78
  call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #14
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #14, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i78.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %40) #14
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping26 = getelementptr inbounds %struct.page, ptr %call11, i32 0, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %mapping26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mapping26, align 4
  %cmp.not = icmp eq ptr %49, %3
  br i1 %cmp.not, label %if.end35, label %if.then34, !prof !146

if.then34:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call11, i32 noundef 1)
  br label %repeat.backedge

if.end35:                                         ; preds = %lock_page.exit
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %23, align 4
  %and.i.i79 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i83, label %if.then.i.i82, !prof !146

if.then.i.i82:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i81 = add i32 %51, -1
  br label %_compound_head.exit.i87

if.end.i.i83:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %call11 to i32
  br label %_compound_head.exit.i87

_compound_head.exit.i87:                          ; preds = %if.end.i.i83, %if.then.i.i82
  %retval.0.i.i84 = phi i32 [ %sub.i.i81, %if.then.i.i82 ], [ %52, %if.end.i.i83 ]
  %53 = inttoptr i32 %retval.0.i.i84 to ptr
  %54 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i85 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i85)
  %tobool.not.i.i.i86 = icmp eq i32 %and.i.i.i.i85, 0
  br i1 %tobool.not.i.i.i86, label %folio_flags.exit.i.i90, label %if.then.i.i.i88, !prof !146

if.then.i.i.i88:                                  ; preds = %_compound_head.exit.i87
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.22) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i90:                           ; preds = %_compound_head.exit.i87
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %53, align 4
  %59 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i89 = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i89, label %if.then46, label %PageUptodate.exit93

PageUptodate.exit93:                              ; preds = %folio_flags.exit.i.i90
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  br label %cleanup

if.then46:                                        ; preds = %folio_flags.exit.i.i90
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call11, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %PageUptodate.exit93, %if.then23, %PageUptodate.exit
  %retval.0 = phi ptr [ %36, %if.then23 ], [ inttoptr (i32 -5 to ptr), %if.then46 ], [ %call11, %PageUptodate.exit93 ], [ %call11, %PageUptodate.exit ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio) #14
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_get_meta_page_retry(ptr noundef %sbi, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %retry

retry:                                            ; preds = %if.then.retry_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %if.then.retry_crit_edge ]
  %call = tail call fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %index, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %retry.if.end5_crit_edge

retry.if.end5_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %retry
  %cmp = icmp eq ptr %call, inttoptr (i32 -5 to ptr)
  %inc = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count.0)
  %cmp3 = icmp ult i32 %count.0, 8
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then.retry_crit_edge, label %if.end

if.then.retry_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_build_fault_attr(ptr noundef %sbi, i32 noundef 0, i32 noundef 0) #14
  %cp_lock.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 17
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock.i.i) #14
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %0 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %4 = or i32 %3, 134217728
  store i32 %4, ptr %ckpt_flags1.i.i.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock.i.i, i32 noundef %call2.i.i) #14
  tail call void @f2fs_flush_merged_writes(ptr noundef %sbi) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end, %retry.if.end5_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_get_tmp_page(ptr noundef %sbi, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %index, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %blkaddr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body175 [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 0, label %sw.bb19
    i32 5, label %sw.bb34
    i32 6, label %entry.sw.bb75_crit_edge
    i32 7, label %entry.sw.bb75_crit_edge280
    i32 8, label %entry.sw.bb75_crit_edge281
    i32 9, label %sw.bb142
  ]

entry.sw.bb75_crit_edge281:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb75

entry.sw.bb75_crit_edge280:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb75

entry.sw.bb75_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb75

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %1 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sm_info.i, align 8
  %main_segments = getelementptr inbounds %struct.f2fs_sm_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %main_segments to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %main_segments, align 4
  %sub = add i32 %4, 54
  %div = udiv i32 %sub, 55
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %blkaddr)
  %cmp.not = icmp ugt i32 %div, %blkaddr
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge, !prof !146

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %sm_info.i230 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %sm_info.i230 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm_info.i230, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  %main_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %main_blkaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %main_blkaddr, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %9 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %raw_super.i, align 8
  %main_blkaddr7 = getelementptr inbounds %struct.f2fs_super_block, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %main_blkaddr7 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %main_blkaddr7, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %13, %cond.false ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %blkaddr)
  %cmp8.not = icmp ugt i32 %cond, %blkaddr
  br i1 %cmp8.not, label %lor.rhs, label %cond.end.return_crit_edge, !prof !146

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.rhs:                                          ; preds = %cond.end
  %ssa_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %6, i32 0, i32 7
  %14 = ptrtoint ptr %ssa_blkaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssa_blkaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %blkaddr)
  %cmp10 = icmp ugt i32 %15, %blkaddr
  br i1 %cmp10, label %lor.rhs.return_crit_edge, label %lor.rhs.sw.epilog_crit_edge, !prof !152

lor.rhs.sw.epilog_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb19:                                          ; preds = %entry
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %16 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm_info.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %sit_base_addr = getelementptr inbounds %struct.sit_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sit_base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sit_base_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %blkaddr)
  %cmp21.not = icmp ugt i32 %21, %blkaddr
  br i1 %cmp21.not, label %lor.rhs22, label %sw.bb19.return_crit_edge, !prof !146

sw.bb19.return_crit_edge:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.rhs22:                                        ; preds = %sw.bb19
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %22 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %raw_super.i.i, align 8
  %cp_blkaddr.i = getelementptr inbounds %struct.f2fs_super_block, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %cp_blkaddr.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %cp_blkaddr.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %cur_cp_pack.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 16
  %27 = ptrtoint ptr %cur_cp_pack.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_cp_pack.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i = icmp eq i32 %28, 2
  br i1 %cmp.i, label %if.then.i, label %lor.rhs22.__start_cp_addr.exit_crit_edge

lor.rhs22.__start_cp_addr.exit_crit_edge:         ; preds = %lor.rhs22
  call void @__sanitizer_cov_trace_pc() #16
  br label %__start_cp_addr.exit

if.then.i:                                        ; preds = %lor.rhs22
  call void @__sanitizer_cov_trace_pc() #16
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %29 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blocks_per_seg.i, align 4
  %add.i = add i32 %30, %26
  br label %__start_cp_addr.exit

__start_cp_addr.exit:                             ; preds = %if.then.i, %lor.rhs22.__start_cp_addr.exit_crit_edge
  %start_addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %26, %lor.rhs22.__start_cp_addr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start_addr.0.i, i32 %blkaddr)
  %cmp24 = icmp ugt i32 %start_addr.0.i, %blkaddr
  br i1 %cmp24, label %__start_cp_addr.exit.return_crit_edge, label %__start_cp_addr.exit.sw.epilog_crit_edge, !prof !152

__start_cp_addr.exit.sw.epilog_crit_edge:         ; preds = %__start_cp_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

__start_cp_addr.exit.return_crit_edge:            ; preds = %__start_cp_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb34:                                          ; preds = %entry
  %sm_info.i233 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %31 = ptrtoint ptr %sm_info.i233 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm_info.i233, align 8
  %tobool36.not = icmp eq ptr %32, null
  br i1 %tobool36.not, label %cond.end50, label %cond.end50.thread

cond.end50:                                       ; preds = %sw.bb34
  %raw_super.i235 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %33 = ptrtoint ptr %raw_super.i235 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %raw_super.i235, align 8
  %segment0_blkaddr = getelementptr inbounds %struct.f2fs_super_block, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %segment0_blkaddr to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %segment0_blkaddr, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %segment_count49 = getelementptr inbounds %struct.f2fs_super_block, ptr %34, i32 0, i32 12
  %38 = ptrtoint ptr %segment_count49 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %segment_count49, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %log_blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %41 = ptrtoint ptr %log_blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %log_blocks_per_seg, align 8
  %shl = shl i32 %40, %42
  %add52 = add i32 %shl, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %blkaddr)
  %cmp53.not = icmp ugt i32 %add52, %blkaddr
  br i1 %cmp53.not, label %cond.false60, label %cond.end50.return_crit_edge, !prof !146

cond.end50.return_crit_edge:                      ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cond.end50.thread:                                ; preds = %sw.bb34
  %seg0_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %32, i32 0, i32 5
  %43 = ptrtoint ptr %seg0_blkaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seg0_blkaddr, align 4
  %segment_count = getelementptr inbounds %struct.f2fs_sm_info, ptr %32, i32 0, i32 8
  %45 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %segment_count, align 4
  %log_blocks_per_seg265 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %47 = ptrtoint ptr %log_blocks_per_seg265 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %log_blocks_per_seg265, align 8
  %shl266 = shl i32 %46, %48
  %add52267 = add i32 %shl266, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add52267, i32 %blkaddr)
  %cmp53.not268 = icmp ugt i32 %add52267, %blkaddr
  br i1 %cmp53.not268, label %cond.true57, label %cond.end50.thread.return_crit_edge, !prof !146

cond.end50.thread.return_crit_edge:               ; preds = %cond.end50.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cond.true57:                                      ; preds = %cond.end50.thread
  call void @__sanitizer_cov_trace_pc() #16
  %main_blkaddr59 = getelementptr inbounds %struct.f2fs_sm_info, ptr %32, i32 0, i32 6
  %49 = ptrtoint ptr %main_blkaddr59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %main_blkaddr59, align 4
  br label %cond.end63

cond.false60:                                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %raw_super.i235 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %raw_super.i235, align 8
  %main_blkaddr62 = getelementptr inbounds %struct.f2fs_super_block, ptr %52, i32 0, i32 23
  %53 = ptrtoint ptr %main_blkaddr62 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %main_blkaddr62, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false60, %cond.true57
  %cond64 = phi i32 [ %50, %cond.true57 ], [ %55, %cond.false60 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond64, i32 %blkaddr)
  %cmp65 = icmp ugt i32 %cond64, %blkaddr
  br i1 %cmp65, label %cond.end63.return_crit_edge, label %cond.end63.sw.epilog_crit_edge, !prof !152

cond.end63.sw.epilog_crit_edge:                   ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.end63.return_crit_edge:                      ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb75:                                          ; preds = %entry.sw.bb75_crit_edge, %entry.sw.bb75_crit_edge280, %entry.sw.bb75_crit_edge281
  %sm_info.i242 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %56 = ptrtoint ptr %sm_info.i242 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sm_info.i242, align 8
  %tobool77.not = icmp eq ptr %57, null
  br i1 %tobool77.not, label %cond.end94, label %cond.end94.thread

cond.end94:                                       ; preds = %sw.bb75
  %raw_super.i244 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %58 = ptrtoint ptr %raw_super.i244 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %raw_super.i244, align 8
  %segment0_blkaddr83 = getelementptr inbounds %struct.f2fs_super_block, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %segment0_blkaddr83 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %segment0_blkaddr83, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %segment_count93 = getelementptr inbounds %struct.f2fs_super_block, ptr %59, i32 0, i32 12
  %63 = ptrtoint ptr %segment_count93 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %segment_count93, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %log_blocks_per_seg96 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %66 = ptrtoint ptr %log_blocks_per_seg96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %log_blocks_per_seg96, align 8
  %shl97 = shl i32 %65, %67
  %add98 = add i32 %shl97, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %add98, i32 %blkaddr)
  %cmp99.not = icmp ugt i32 %add98, %blkaddr
  br i1 %cmp99.not, label %cond.false106, label %cond.end94.if.then119_crit_edge, !prof !146

cond.end94.if.then119_crit_edge:                  ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then119

cond.end94.thread:                                ; preds = %sw.bb75
  %seg0_blkaddr80 = getelementptr inbounds %struct.f2fs_sm_info, ptr %57, i32 0, i32 5
  %68 = ptrtoint ptr %seg0_blkaddr80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %seg0_blkaddr80, align 4
  %segment_count90 = getelementptr inbounds %struct.f2fs_sm_info, ptr %57, i32 0, i32 8
  %70 = ptrtoint ptr %segment_count90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %segment_count90, align 4
  %log_blocks_per_seg96274 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %72 = ptrtoint ptr %log_blocks_per_seg96274 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %log_blocks_per_seg96274, align 8
  %shl97275 = shl i32 %71, %73
  %add98276 = add i32 %shl97275, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %add98276, i32 %blkaddr)
  %cmp99.not277 = icmp ugt i32 %add98276, %blkaddr
  br i1 %cmp99.not277, label %cond.true103, label %cond.end94.thread.if.then119_crit_edge, !prof !146

cond.end94.thread.if.then119_crit_edge:           ; preds = %cond.end94.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then119

cond.true103:                                     ; preds = %cond.end94.thread
  call void @__sanitizer_cov_trace_pc() #16
  %main_blkaddr105 = getelementptr inbounds %struct.f2fs_sm_info, ptr %57, i32 0, i32 6
  %74 = ptrtoint ptr %main_blkaddr105 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %main_blkaddr105, align 4
  br label %cond.end109

cond.false106:                                    ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %raw_super.i244 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %raw_super.i244, align 8
  %main_blkaddr108 = getelementptr inbounds %struct.f2fs_super_block, ptr %77, i32 0, i32 23
  %78 = ptrtoint ptr %main_blkaddr108 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %main_blkaddr108, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false106, %cond.true103
  %81 = phi i32 [ %73, %cond.true103 ], [ %67, %cond.false106 ]
  %cond110 = phi i32 [ %75, %cond.true103 ], [ %80, %cond.false106 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond110, i32 %blkaddr)
  %cmp111 = icmp ugt i32 %cond110, %blkaddr
  br i1 %cmp111, label %cond.end109.if.then119_crit_edge, label %if.else, !prof !152

cond.end109.if.then119_crit_edge:                 ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then119

if.then119:                                       ; preds = %cond.end109.if.then119_crit_edge, %cond.end94.thread.if.then119_crit_edge, %cond.end94.if.then119_crit_edge
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.1, i32 noundef %blkaddr) #14
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #14
  br label %return

if.else:                                          ; preds = %cond.end109
  %type.off.i = add nsw i32 %type, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 2
  br i1 %switch.i, label %if.end.i, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.else
  %82 = zext i32 %blkaddr to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %blkaddr, label %cond.false.i [
    i32 -2, label %if.end.i.cond.end9.i_crit_edge
    i32 0, label %if.end.i.cond.end9.i_crit_edge282
  ]

if.end.i.cond.end9.i_crit_edge282:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end9.i

if.end.i.cond.end9.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end9.i

cond.false.i:                                     ; preds = %if.end.i
  br i1 %tobool77.not, label %cond.false5.i, label %cond.true3.i

cond.true3.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %seg0_blkaddr.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %57, i32 0, i32 5
  %83 = ptrtoint ptr %seg0_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %seg0_blkaddr.i, align 4
  br label %cond.end.i

cond.false5.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %raw_super.i.i252 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %85 = ptrtoint ptr %raw_super.i.i252 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %raw_super.i.i252, align 8
  %segment0_blkaddr.i = getelementptr inbounds %struct.f2fs_super_block, ptr %86, i32 0, i32 18
  %87 = ptrtoint ptr %segment0_blkaddr.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %segment0_blkaddr.i, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #14
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false5.i, %cond.true3.i
  %cond.i = phi i32 [ %84, %cond.true3.i ], [ %89, %cond.false5.i ]
  %sub.i = sub i32 %blkaddr, %cond.i
  %shr.i = lshr i32 %sub.i, %81
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %57, i32 0, i32 1
  %90 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %free_info.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %sub8.i = sub i32 %shr.i, %93
  br label %cond.end9.i

cond.end9.i:                                      ; preds = %cond.end.i, %if.end.i.cond.end9.i_crit_edge, %if.end.i.cond.end9.i_crit_edge282
  %cond10.i = phi i32 [ %sub8.i, %cond.end.i ], [ -1, %if.end.i.cond.end9.i_crit_edge ], [ -1, %if.end.i.cond.end9.i_crit_edge282 ]
  br i1 %tobool77.not, label %cond.false16.i, label %cond.true13.i

cond.true13.i:                                    ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %seg0_blkaddr15.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %57, i32 0, i32 5
  %94 = ptrtoint ptr %seg0_blkaddr15.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %seg0_blkaddr15.i, align 4
  br label %cond.end19.i

cond.false16.i:                                   ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %raw_super.i75.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %96 = ptrtoint ptr %raw_super.i75.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %raw_super.i75.i, align 8
  %segment0_blkaddr18.i = getelementptr inbounds %struct.f2fs_super_block, ptr %97, i32 0, i32 18
  %98 = ptrtoint ptr %segment0_blkaddr18.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %segment0_blkaddr18.i, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #14
  br label %cond.end19.i

cond.end19.i:                                     ; preds = %cond.false16.i, %cond.true13.i
  %cond20.i = phi i32 [ %95, %cond.true13.i ], [ %100, %cond.false16.i ]
  %sub21.i = sub i32 %blkaddr, %cond20.i
  %blocks_per_seg.i253 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %101 = ptrtoint ptr %blocks_per_seg.i253 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %blocks_per_seg.i253, align 4
  %sub22.i = add i32 %102, -1
  %and.i = and i32 %sub22.i, %sub21.i
  %103 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %57, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %104, i32 0, i32 14
  %105 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sentries.i.i, align 4
  %cur_valid_map.i = getelementptr %struct.seg_entry, ptr %106, i32 %cond10.i, i32 1
  %107 = ptrtoint ptr %cur_valid_map.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur_valid_map.i, align 4
  %shr.i.i = lshr i32 %and.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 %shr.i.i
  %and.i.i = and i32 %and.i, 7
  %sub.i.i = xor i32 %and.i.i, 7
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %109 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i.i = zext i8 %110 to i32
  %and1.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool25.i = icmp ne i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp28.i = icmp ne i32 %type, 7
  %111 = or i1 %cmp28.i, %tobool25.i
  br i1 %111, label %cond.end19.i.return_crit_edge, label %if.then29.i

cond.end19.i.return_crit_edge:                    ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then29.i:                                      ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.24, i32 noundef %blkaddr, i32 noundef 0) #14
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i.i) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #14
  br label %return

sw.bb142:                                         ; preds = %entry
  %sm_info.i254 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %112 = ptrtoint ptr %sm_info.i254 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sm_info.i254, align 8
  %tobool144.not = icmp eq ptr %113, null
  br i1 %tobool144.not, label %cond.end151, label %cond.end151.thread

cond.end151:                                      ; preds = %sw.bb142
  %raw_super.i256 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %114 = ptrtoint ptr %raw_super.i256 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %raw_super.i256, align 8
  %segment0_blkaddr150 = getelementptr inbounds %struct.f2fs_super_block, ptr %115, i32 0, i32 18
  %116 = ptrtoint ptr %segment0_blkaddr150 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %segment0_blkaddr150, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %blkaddr)
  %cmp153 = icmp ugt i32 %118, %blkaddr
  br i1 %cmp153, label %cond.end151.return_crit_edge, label %cond.false160, !prof !152

cond.end151.return_crit_edge:                     ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cond.end151.thread:                               ; preds = %sw.bb142
  %seg0_blkaddr147 = getelementptr inbounds %struct.f2fs_sm_info, ptr %113, i32 0, i32 5
  %119 = ptrtoint ptr %seg0_blkaddr147 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %seg0_blkaddr147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %blkaddr)
  %cmp153279 = icmp ugt i32 %120, %blkaddr
  br i1 %cmp153279, label %cond.end151.thread.return_crit_edge, label %cond.true157, !prof !152

cond.end151.thread.return_crit_edge:              ; preds = %cond.end151.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cond.true157:                                     ; preds = %cond.end151.thread
  call void @__sanitizer_cov_trace_pc() #16
  %main_blkaddr159 = getelementptr inbounds %struct.f2fs_sm_info, ptr %113, i32 0, i32 6
  %121 = ptrtoint ptr %main_blkaddr159 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %main_blkaddr159, align 4
  br label %cond.end163

cond.false160:                                    ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %raw_super.i256 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %raw_super.i256, align 8
  %main_blkaddr162 = getelementptr inbounds %struct.f2fs_super_block, ptr %124, i32 0, i32 23
  %125 = ptrtoint ptr %main_blkaddr162 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %main_blkaddr162, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  br label %cond.end163

cond.end163:                                      ; preds = %cond.false160, %cond.true157
  %cond164 = phi i32 [ %122, %cond.true157 ], [ %127, %cond.false160 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond164, i32 %blkaddr)
  %cmp165.not = icmp ugt i32 %cond164, %blkaddr
  br i1 %cmp165.not, label %cond.end163.sw.epilog_crit_edge, label %cond.end163.return_crit_edge, !prof !146

cond.end163.return_crit_edge:                     ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cond.end163.sw.epilog_crit_edge:                  ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #14, !srcloc !153
  unreachable

sw.epilog:                                        ; preds = %cond.end163.sw.epilog_crit_edge, %cond.end63.sw.epilog_crit_edge, %__start_cp_addr.exit.sw.epilog_crit_edge, %lor.rhs.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %cond.end163.return_crit_edge, %cond.end151.thread.return_crit_edge, %cond.end151.return_crit_edge, %if.then29.i, %cond.end19.i.return_crit_edge, %if.else.return_crit_edge, %if.then119, %cond.end63.return_crit_edge, %cond.end50.thread.return_crit_edge, %cond.end50.return_crit_edge, %__start_cp_addr.exit.return_crit_edge, %sw.bb19.return_crit_edge, %lor.rhs.return_crit_edge, %cond.end.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %if.then119 ], [ false, %sw.bb.return_crit_edge ], [ false, %lor.rhs.return_crit_edge ], [ false, %__start_cp_addr.exit.return_crit_edge ], [ false, %cond.end63.return_crit_edge ], [ false, %cond.end163.return_crit_edge ], [ false, %cond.end.return_crit_edge ], [ false, %sw.bb19.return_crit_edge ], [ false, %cond.end50.return_crit_edge ], [ false, %cond.end151.return_crit_edge ], [ false, %cond.end50.thread.return_crit_edge ], [ true, %if.else.return_crit_edge ], [ false, %if.then29.i ], [ %tobool25.i, %cond.end19.i.return_crit_edge ], [ false, %cond.end151.thread.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_ra_meta_pages(ptr noundef %sbi, i32 noundef %start, i32 noundef %nrpages, i32 noundef %type, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  %fio = alloca %struct.f2fs_io_info, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio) #14
  %0 = getelementptr inbounds i8, ptr %fio, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %2 = ptrtoint ptr %fio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sbi, ptr %fio, align 4
  %type2 = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 2
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %type2, align 4
  %op_flags = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 5
  %conv = select i1 %sync, i32 12288, i32 524288
  %4 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %op_flags, align 4
  %is_por = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp = icmp eq i32 %type, 5
  %frombool5 = zext i1 %cmp to i8
  %5 = ptrtoint ptr %is_por to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool5, ptr %is_por, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #14
  %6 = call ptr @memset(ptr %plug, i32 255, i32 24)
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !152

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = and i32 %conv, 532480
  %8 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %op_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @blk_start_plug(ptr noundef nonnull %plug) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrpages)
  %cmp13129 = icmp sgt i32 %nrpages, 0
  br i1 %cmp13129, label %for.body.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %new_blkaddr50 = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 6
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %nm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 9
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %page64 = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dec132.in = phi i32 [ %nrpages, %for.body.lr.ph ], [ %dec132, %for.inc.for.body_crit_edge ]
  %blkno.0130 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %dec132 = add nsw i32 %dec132.in, -1
  %call = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %blkno.0130, i32 noundef %type)
  br i1 %call, label %if.end16, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end16:                                         ; preds = %for.body
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %type, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
    i32 3, label %if.end16.sw.epilog_crit_edge
    i32 0, label %if.end16.sw.epilog_crit_edge136
    i32 5, label %if.end16.sw.epilog_crit_edge137
  ]

if.end16.sw.epilog_crit_edge137:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end16.sw.epilog_crit_edge136:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  %10 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nm_info.i, align 8
  %max_nid = getelementptr inbounds %struct.f2fs_nm_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %max_nid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_nid, align 4
  %div = udiv i32 %13, 455
  call void @__sanitizer_cov_trace_cmp4(i32 %blkno.0130, i32 %div)
  %cmp18.not = icmp ult i32 %blkno.0130, %div
  br i1 %cmp18.not, label %sw.bb.if.end27_crit_edge, label %if.then26, !prof !146

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %sw.bb.if.end27_crit_edge
  %blkno.1 = phi i32 [ 0, %if.then26 ], [ %blkno.0130, %sw.bb.if.end27_crit_edge ]
  %mul = mul i32 %blkno.1, 455
  %div.i = udiv i32 %mul, 455
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %shl.i = shl nuw nsw i32 %div.i, 1
  %add.i = add i32 %shl.i, %15
  %16 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blocks_per_seg.i, align 4
  %sub.i = add i32 %17, 16777215
  %and.i = and i32 %sub.i, %div.i
  %sub1.i = sub i32 %add.i, %and.i
  %nat_bitmap.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %11, i32 0, i32 22
  %18 = ptrtoint ptr %nat_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nat_bitmap.i, align 4
  %shr.i.i = lshr i32 %div.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shr.i.i
  %and.i.i = and i32 %div.i, 7
  %sub.i.i = xor i32 %and.i.i, 7
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i.i = zext i8 %21 to i32
  %and1.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  %add4.i = select i1 %tobool.not.i, i32 0, i32 %17
  %spec.select.i = add i32 %sub1.i, %add4.i
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end16
  %22 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sm_info.i, align 8
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %sw.bb29
  %24 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %raw_super.i, align 8
  %segment_count34 = getelementptr inbounds %struct.f2fs_super_block, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %segment_count34 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %segment_count34, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_cmp4(i32 %blkno.0130, i32 %28)
  %cmp36.not = icmp ult i32 %blkno.0130, %28
  br i1 %cmp36.not, label %cond.false.i.i, label %cond.end.out_crit_edge, !prof !146

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

cond.end.thread:                                  ; preds = %sw.bb29
  %segment_count = getelementptr inbounds %struct.f2fs_sm_info, ptr %23, i32 0, i32 8
  %29 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %segment_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blkno.0130, i32 %30)
  %cmp36.not111 = icmp ult i32 %blkno.0130, %30
  br i1 %cmp36.not111, label %cond.true.i.i, label %cond.end.thread.out_crit_edge, !prof !146

cond.end.thread.out_crit_edge:                    ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

cond.true.i.i:                                    ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  %mul46112 = mul i32 %blkno.0130, 55
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %23, align 4
  %div.i97113 = udiv i32 %mul46112, 55
  %sit_base_addr.i114 = getelementptr inbounds %struct.sit_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sit_base_addr.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sit_base_addr.i114, align 4
  %add.i98115 = add i32 %34, %div.i97113
  %35 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %segment_count, align 4
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul46 = mul i32 %blkno.0130, 55
  call void @__asan_load4_noabort(i32 0)
  %37 = load ptr, ptr null, align 2147483648
  %div.i97 = udiv i32 %mul46, 55
  %sit_base_addr.i = getelementptr inbounds %struct.sit_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %sit_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sit_base_addr.i, align 4
  %add.i98 = add i32 %39, %div.i97
  %40 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %raw_super.i, align 8
  %segment_count3.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %segment_count3.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %segment_count3.i.i, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43) #14
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %add.i98120 = phi i32 [ %add.i98115, %cond.true.i.i ], [ %add.i98, %cond.false.i.i ]
  %div.i97118 = phi i32 [ %div.i97113, %cond.true.i.i ], [ %div.i97, %cond.false.i.i ]
  %45 = phi ptr [ %32, %cond.true.i.i ], [ %37, %cond.false.i.i ]
  %mul46116 = phi i32 [ %mul46112, %cond.true.i.i ], [ %mul46, %cond.false.i.i ]
  %cond.i.i = phi i32 [ %36, %cond.true.i.i ], [ %44, %cond.false.i.i ]
  %sub.i.i99 = add i32 %cond.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i99, i32 %mul46116)
  %cmp.i.i = icmp ult i32 %sub.i.i99, %mul46116
  br i1 %cmp.i.i, label %do.body6.i.i, label %check_seg_range.exit.i, !prof !152

do.body6.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/segment.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 694, 0\0A.popsection", ""() #14, !srcloc !154
  unreachable

check_seg_range.exit.i:                           ; preds = %cond.end.i.i
  %sit_bitmap.i = getelementptr inbounds %struct.sit_info, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %sit_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sit_bitmap.i, align 4
  %shr.i.i100 = lshr i32 %div.i97118, 3
  %add.ptr.i.i101 = getelementptr i8, ptr %47, i32 %shr.i.i100
  %and.i.i102 = and i32 %div.i97118, 7
  %sub.i25.i = xor i32 %and.i.i102, 7
  %shl.i.i103 = shl nuw i32 1, %sub.i25.i
  %48 = ptrtoint ptr %add.ptr.i.i101 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.i.i101, align 1
  %conv.i.i104 = zext i8 %49 to i32
  %and1.i.i105 = and i32 %shl.i.i103, %conv.i.i104
  %sit_bitmap_mir.i = getelementptr inbounds %struct.sit_info, ptr %45, i32 0, i32 6
  %50 = ptrtoint ptr %sit_bitmap_mir.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sit_bitmap_mir.i, align 8
  %add.ptr.i27.i = getelementptr i8, ptr %51, i32 %shr.i.i100
  %52 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i27.i, align 1
  %conv.i31.i = zext i8 %53 to i32
  %and1.i32.i = and i32 %shl.i.i103, %conv.i31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i105, i32 %and1.i32.i)
  %cmp.not.i = icmp eq i32 %and1.i.i105, %and1.i32.i
  br i1 %cmp.not.i, label %if.end.i, label %do.body3.i

do.body3.i:                                       ; preds = %check_seg_range.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/segment.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 769, 0\0A.popsection", ""() #14, !srcloc !155
  unreachable

if.end.i:                                         ; preds = %check_seg_range.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i105)
  %tobool.not.i106 = icmp eq i32 %and1.i.i105, 0
  br i1 %tobool.not.i106, label %if.end.i.sw.epilog_crit_edge, label %if.then11.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sit_blocks.i = getelementptr inbounds %struct.sit_info, ptr %45, i32 0, i32 2
  %54 = ptrtoint ptr %sit_blocks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sit_blocks.i, align 8
  %add12.i = add i32 %55, %add.i98120
  br label %sw.epilog

do.body:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #14, !srcloc !156
  unreachable

sw.epilog:                                        ; preds = %if.then11.i, %if.end.i.sw.epilog_crit_edge, %if.end27, %if.end16.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge136, %if.end16.sw.epilog_crit_edge137
  %blkno.0130.sink = phi i32 [ %spec.select.i, %if.end27 ], [ %add12.i, %if.then11.i ], [ %add.i98120, %if.end.i.sw.epilog_crit_edge ], [ %blkno.0130, %if.end16.sw.epilog_crit_edge ], [ %blkno.0130, %if.end16.sw.epilog_crit_edge136 ], [ %blkno.0130, %if.end16.sw.epilog_crit_edge137 ]
  %blkno.2 = phi i32 [ %blkno.1, %if.end27 ], [ %blkno.0130, %if.then11.i ], [ %blkno.0130, %if.end.i.sw.epilog_crit_edge ], [ %blkno.0130, %if.end16.sw.epilog_crit_edge ], [ %blkno.0130, %if.end16.sw.epilog_crit_edge136 ], [ %blkno.0130, %if.end16.sw.epilog_crit_edge137 ]
  %56 = ptrtoint ptr %new_blkaddr50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %blkno.0130.sink, ptr %new_blkaddr50, align 4
  %57 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_mapping.i, align 8
  %call56 = call fastcc ptr @f2fs_grab_cache_page(ptr noundef %60, i32 noundef %blkno.0130.sink)
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %sw.epilog.for.inc_crit_edge, label %if.end59

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end59:                                         ; preds = %sw.epilog
  %61 = getelementptr inbounds %struct.page, ptr %call56, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i107 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107)
  %tobool.not.i.i108 = icmp eq i32 %and.i.i107, 0
  br i1 %tobool.not.i.i108, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i109 = add i32 %63, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %call56 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i109, %if.then.i.i ], [ %64, %if.end.i.i ]
  %65 = inttoptr i32 %retval.0.i.i to ptr
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.22) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %65, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i, label %if.end63, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call56, i32 noundef 1)
  br label %for.inc

if.end63:                                         ; preds = %folio_flags.exit.i.i
  %73 = ptrtoint ptr %page64 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call56, ptr %page64, align 4
  %call65 = call i32 @f2fs_submit_page_bio(ptr noundef nonnull %fio) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  %not.tobool66.not = xor i1 %tobool66.not, true
  %cond67 = zext i1 %not.tobool66.not to i32
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call56, i32 noundef %cond67)
  br i1 %tobool66.not, label %if.then69, label %if.end63.for.inc_crit_edge

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_update_iostat(ptr noundef %sbi, i32 noundef 20, i64 noundef 4096) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %if.end63.for.inc_crit_edge, %PageUptodate.exit, %sw.epilog.for.inc_crit_edge
  %inc = add i32 %blkno.2, 1
  %cmp13 = icmp ugt i32 %dec132.in, 1
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %cond.end.thread.out_crit_edge, %cond.end.out_crit_edge, %for.body.out_crit_edge, %if.end.out_crit_edge
  %blkno.0.lcssa = phi i32 [ %start, %if.end.out_crit_edge ], [ %blkno.0130, %cond.end.thread.out_crit_edge ], [ %inc, %for.inc.out_crit_edge ], [ %blkno.0130, %cond.end.out_crit_edge ], [ %blkno.0130, %for.body.out_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #14
  %sub = sub i32 %blkno.0.lcssa, %start
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #14
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio) #14
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef %unlock) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlock)
  %tobool1.not = icmp eq i32 %unlock, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !152

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !146

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.25) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #14, !srcloc !157
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !146

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !152

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #14, !srcloc !158
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_page(ptr noundef nonnull %page) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end.if.end13_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i17 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !146

if.then.i.i20:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i19 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i21:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %18, %if.end.i.i21 ]
  %19 = inttoptr i32 %retval.0.i.i22 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !152

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.26) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !159
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !163

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %19) #14
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_submit_page_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_iostat(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_ra_meta_pages_cond(ptr noundef %sbi, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %0 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %index, i32 noundef 0, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.f2fs_put_page.exit_crit_edge, label %lor.lhs.false

entry.f2fs_put_page.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_put_page.exit

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and.i.i17.i14 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i14)
  %tobool.not.i.i18.i15 = icmp eq i32 %and.i.i17.i14, 0
  br i1 %tobool.not.i.i18.i15, label %if.end.i.i21.i18, label %if.then.i.i20.i17, !prof !146

if.end.i:                                         ; preds = %folio_flags.exit.i.i
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %4, align 4
  %and.i.i17.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !146

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i19.i = add i32 %18, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %19, %if.end.i.i21.i ]
  %20 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #14
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !152

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.26) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !159
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #14, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_ra_meta_pages_cond, %if.then.i.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !163

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge

folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_put_page.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %20) #14
  br label %f2fs_put_page.exit

f2fs_put_page.exit:                               ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge, %entry.f2fs_put_page.exit_crit_edge
  %call6 = tail call i32 @f2fs_ra_meta_pages(ptr noundef %sbi, i32 noundef %index, i32 noundef 256, i32 noundef 5, i1 noundef zeroext true)
  br label %if.end7

if.then.i.i20.i17:                                ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i19.i16 = add i32 %16, -1
  br label %_compound_head.exit.i23.i23

if.end.i.i21.i18:                                 ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i23.i23

_compound_head.exit.i23.i23:                      ; preds = %if.end.i.i21.i18, %if.then.i.i20.i17
  %retval.0.i.i22.i19 = phi i32 [ %sub.i.i19.i16, %if.then.i.i20.i17 ], [ %24, %if.end.i.i21.i18 ]
  %25 = inttoptr i32 %retval.0.i.i22.i19 to ptr
  %_refcount.i.i.i.i.i.i20 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i20, i32 noundef 4) #14
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i.i22 = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i.i22, label %if.then.i.i.i.i.i24, label %do.end5.i.i.i.i.i28, !prof !152

if.then.i.i.i.i.i24:                              ; preds = %_compound_head.exit.i23.i23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.26) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !159
  unreachable

do.end5.i.i.i.i.i28:                              ; preds = %_compound_head.exit.i23.i23
  %call.i.i.i10.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i20, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i20, i32 1, i32 3, i32 1) #14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i20, ptr %_refcount.i.i.i.i.i.i20, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i20) #14, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i.i.i.i26 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i26)
  %cmp.i.i.i.i.i.i.i.i27 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i26, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_ra_meta_pages_cond, %if.then.i.i.i.i.i.i30)) #14
          to label %folio_put_testzero.exit.i.i.i31 [label %if.then.i.i.i.i.i.i30], !srcloc !163

if.then.i.i.i.i.i.i30:                            ; preds = %do.end5.i.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i.i29 = zext i1 %cmp.i.i.i.i.i.i.i.i27 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i29) #14
  br label %folio_put_testzero.exit.i.i.i31

folio_put_testzero.exit.i.i.i31:                  ; preds = %if.then.i.i.i.i.i.i30, %do.end5.i.i.i.i.i28
  br i1 %cmp.i.i.i.i.i.i.i.i27, label %if.then.i4.i.i32, label %folio_put_testzero.exit.i.i.i31.if.end7_crit_edge

folio_put_testzero.exit.i.i.i31.if.end7_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then.i4.i.i32:                                 ; preds = %folio_put_testzero.exit.i.i.i31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %25) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then.i4.i.i32, %folio_put_testzero.exit.i.i.i31.if.end7_crit_edge, %f2fs_put_page.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_sync_meta_pages(ptr noundef %sbi, i32 noundef %type, i32 noundef %nr_to_write, i32 noundef %io_type) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  %pvec = alloca %struct.pagevec, align 4
  %wbc = alloca %struct.writeback_control, align 8
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %0 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #14
  %5 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #14
  %6 = call ptr @memset(ptr %wbc, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #14
  %7 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %8 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %9 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  call void @blk_start_plug(ptr noundef nonnull %plug) #14
  %call.i125 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %3, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not126, label %entry.cleanup44_crit_edge, label %for.cond.preheader.lr.ph

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup44

for.cond.preheader.lr.ph:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %nr_to_write)
  %cmp4.not = icmp eq i32 %nr_to_write, 2147483647
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cleanup38.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %call.i129 = phi i32 [ %call.i125, %for.cond.preheader.lr.ph ], [ %call.i, %cleanup38.for.cond.preheader_crit_edge ]
  %nwritten.0128 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %nwritten.3, %cleanup38.for.cond.preheader_crit_edge ]
  %prev.0127 = phi i32 [ -1, %for.cond.preheader.lr.ph ], [ %prev.4, %cleanup38.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp117 = icmp sgt i32 %call.i129, 0
  br i1 %cmp117, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0121 = phi i32 [ %inc36, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nwritten.1119 = phi i32 [ %nwritten.2.ph, %for.inc.for.body_crit_edge ], [ %nwritten.0128, %for.cond.preheader.for.body_crit_edge ]
  %prev.1118 = phi i32 [ %prev.3.ph, %for.inc.for.body_crit_edge ], [ %prev.0127, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0121
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %prev.1118)
  %cmp2 = icmp eq i32 %prev.1118, -1
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %index3 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index3, align 4
  %sub = add i32 %13, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %prev.2 = phi i32 [ %sub, %if.then ], [ %prev.1118, %for.body.if.end_crit_edge ]
  br i1 %cmp4.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %index5 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index5, align 4
  %add = add i32 %prev.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp6.not = icmp eq i32 %15, %add
  br i1 %cmp6.not, label %land.lhs.true.if.end8_crit_edge, label %if.then7

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %16 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then7.stop_crit_edge, label %if.then.i72

if.then7.stop_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop

if.then.i72:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  call void @__pagevec_release(ptr noundef nonnull %pvec) #14
  br label %stop

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 788) #14
  %18 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i73 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.end.i.i77, label %if.then.i.i76, !prof !146

if.then.i.i76:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i75 = add i32 %20, -1
  br label %_compound_head.exit.i79

if.end.i.i77:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i79

_compound_head.exit.i79:                          ; preds = %if.end.i.i77, %if.then.i.i76
  %retval.0.i.i78 = phi i32 [ %sub.i.i75, %if.then.i.i76 ], [ %21, %if.end.i.i77 ]
  %22 = inttoptr i32 %retval.0.i.i78 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i79
  call void @__sanitizer_cov_trace_pc() #16
  %26 = inttoptr i32 %retval.0.i.i78 to ptr
  call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.22) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i79
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #14
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %22, align 4
  %and.i.i4.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i80_crit_edge

folio_flags.exit.i.i.if.then.i80_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i80

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #14
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #14, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i80_crit_edge

folio_trylock.exit.i.if.then.i80_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i80

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_page.exit

if.then.i80:                                      ; preds = %folio_trylock.exit.i.if.then.i80_crit_edge, %folio_flags.exit.i.i.if.then.i80_crit_edge
  call void @__folio_lock(ptr noundef %22) #14
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i80, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping9 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %mapping9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapping9, align 4
  %cmp10.not = icmp eq ptr %31, %3
  br i1 %cmp10.not, label %if.end14, label %lock_page.exit.continue_unlock_crit_edge, !prof !146

lock_page.exit.continue_unlock_crit_edge:         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %continue_unlock

continue_unlock:                                  ; preds = %if.end18.continue_unlock_crit_edge, %PageDirty.exit.continue_unlock_crit_edge, %lock_page.exit.continue_unlock_crit_edge
  call void @unlock_page(ptr noundef %11) #14
  br label %for.inc

if.end14:                                         ; preds = %lock_page.exit
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i = icmp eq i32 %37, -1
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %18, align 4
  %and.i13.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !152

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !146

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i15.i = add i32 %39, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %40, %if.end.i17.i ]
  %41 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.25) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #14, !srcloc !164
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !146

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i22.i = add i32 %39, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %11 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %42, %if.end.i24.i ]
  %43 = inttoptr i32 %retval.0.i25.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool16.not = icmp eq i32 %46, 0
  br i1 %tobool16.not, label %PageDirty.exit.continue_unlock_crit_edge, label %if.end18

PageDirty.exit.continue_unlock_crit_edge:         ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %continue_unlock

if.end18:                                         ; preds = %PageDirty.exit
  call void @f2fs_wait_on_page_writeback(ptr noundef %11, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true) #14
  %call19 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %11) #14
  br i1 %call19, label %if.end21, label %if.end18.continue_unlock_crit_edge

if.end18.continue_unlock_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %continue_unlock

if.end21:                                         ; preds = %if.end18
  %call22 = call fastcc i32 @__f2fs_write_meta_page(ptr noundef %11, ptr noundef nonnull %wbc, i32 noundef %io_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  call void @unlock_page(ptr noundef %11) #14
  br label %for.end

if.end25:                                         ; preds = %if.end21
  %inc = add i32 %nwritten.1119, 1
  %index26 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %index26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_to_write)
  %cmp27.not = icmp slt i32 %inc, %nr_to_write
  br i1 %cmp27.not, label %if.end25.for.inc_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %continue_unlock
  %prev.3.ph = phi i32 [ %prev.2, %continue_unlock ], [ %48, %if.end25.for.inc_crit_edge ]
  %nwritten.2.ph = phi i32 [ %nwritten.1119, %continue_unlock ], [ %inc, %if.end25.for.inc_crit_edge ]
  %inc36 = add nuw nsw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc36, %call.i129
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge, %if.then24, %for.cond.preheader.for.end_crit_edge
  %prev.4 = phi i32 [ %prev.2, %if.then24 ], [ %prev.0127, %for.cond.preheader.for.end_crit_edge ], [ %prev.3.ph, %for.inc.for.end_crit_edge ], [ %48, %if.end25.for.end_crit_edge ]
  %nwritten.3 = phi i32 [ %nwritten.1119, %if.then24 ], [ %nwritten.0128, %for.cond.preheader.for.end_crit_edge ], [ %nwritten.2.ph, %for.inc.for.end_crit_edge ], [ %inc, %if.end25.for.end_crit_edge ]
  %49 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i81 = icmp eq i8 %50, 0
  br i1 %tobool.not.i81, label %for.end.cleanup38_crit_edge, label %if.then.i82

for.end.cleanup38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

if.then.i82:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__pagevec_release(ptr noundef nonnull %pvec) #14
  br label %cleanup38

cleanup38:                                        ; preds = %if.then.i82, %for.end.cleanup38_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 428, i32 noundef 0) #14
  %call.i84 = call i32 @__cond_resched() #14
  %call.i = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %3, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #14
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cleanup38.stop_crit_edge, label %cleanup38.for.cond.preheader_crit_edge

cleanup38.for.cond.preheader_crit_edge:           ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

cleanup38.stop_crit_edge:                         ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop

stop:                                             ; preds = %cleanup38.stop_crit_edge, %if.then.i72, %if.then7.stop_crit_edge
  %nwritten.5 = phi i32 [ %nwritten.1119, %if.then.i72 ], [ %nwritten.1119, %if.then7.stop_crit_edge ], [ %nwritten.3, %cleanup38.stop_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nwritten.5)
  %tobool41.not = icmp eq i32 %nwritten.5, 0
  br i1 %tobool41.not, label %stop.cleanup44_crit_edge, label %if.then42

stop.cleanup44_crit_edge:                         ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup44

if.then42:                                        ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_submit_merged_write(ptr noundef %sbi, i32 noundef %type) #14
  br label %cleanup44

cleanup44:                                        ; preds = %if.then42, %stop.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %nwritten.5151 = phi i32 [ 0, %stop.cleanup44_crit_edge ], [ %nwritten.5, %if.then42 ], [ 0, %entry.cleanup44_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  ret i32 %nwritten.5151
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__f2fs_write_meta_page(ptr noundef %page, ptr noundef %wbc, i32 noundef %io_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %2, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %3, %if.end.i.i.i ]
  %4 = inttoptr i32 %retval.0.i.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !146

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_test_swapbacked.exit.i.i.i.i:               ; preds = %_compound_head.exit.i.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge, label %land.rhs.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i3.i.i

land.rhs.i.i.i.i:                                 ; preds = %folio_test_swapbacked.exit.i.i.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapcache.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !146

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_test_swapcache.exit.i.i.i:                  ; preds = %land.rhs.i.i.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i, !prof !146

folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i.i = tail call ptr @swapcache_mapping(ptr noundef %4) #14
  br label %F2FS_P_SB.exit

if.end.i3.i.i:                                    ; preds = %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge
  %mapping.i.i.i = getelementptr inbounds %struct.anon.67, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping.i.i.i, align 4
  br label %F2FS_P_SB.exit

F2FS_P_SB.exit:                                   ; preds = %if.end.i3.i.i, %if.then.i2.i.i
  %retval.0.i4.i.i = phi ptr [ %call2.i.i.i, %if.then.i2.i.i ], [ %17, %if.end.i3.i.i ]
  %18 = ptrtoint ptr %retval.0.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i4.i.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  tail call fastcc void @trace_f2fs_writepage(ptr noundef %page)
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %28 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.i.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %F2FS_P_SB.exit.redirty_out_crit_edge, !prof !146

F2FS_P_SB.exit.redirty_out_crit_edge:             ; preds = %F2FS_P_SB.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %redirty_out

if.end:                                           ; preds = %F2FS_P_SB.exit
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %23, i32 0, i32 5
  %29 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %s_flag.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %if.end11, label %if.end.redirty_out_crit_edge, !prof !146

if.end.redirty_out_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %redirty_out

if.end11:                                         ; preds = %if.end
  %for_reclaim = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %32 = ptrtoint ptr %for_reclaim to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %for_reclaim, align 4
  %33 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool12.not = icmp eq i16 %33, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %land.lhs.true

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end11
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %sm_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %23, i32 0, i32 11
  %36 = ptrtoint ptr %sm_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm_info, align 8
  %ssa_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %ssa_blkaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ssa_blkaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %39)
  %cmp = icmp ult i32 %35, %39
  br i1 %cmp, label %land.lhs.true.redirty_out_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true.redirty_out_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %redirty_out

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  tail call void @f2fs_do_write_meta_page(ptr noundef %23, ptr noundef %page, i32 noundef %io_type) #14
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %23, i32 0, i32 69, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #14
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #14, !srcloc !165
  %41 = ptrtoint ptr %for_reclaim to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load16 = load i16, ptr %for_reclaim, align 4
  %42 = and i16 %bf.load16, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool20.not = icmp eq i16 %42, 0
  br i1 %tobool20.not, label %if.end14.if.end22_crit_edge, label %if.then21

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_submit_merged_write_cond(ptr noundef %23, ptr noundef null, ptr noundef %page, i32 noundef 0, i32 noundef 2) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end14.if.end22_crit_edge
  tail call void @unlock_page(ptr noundef %page) #14
  %43 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i49 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %ckpt_flags1.i.i.i49 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %ckpt_flags1.i.i.i49, align 1
  %47 = and i32 %46, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.i.i50.not = icmp eq i32 %47, 0
  br i1 %tobool.i.i.i50.not, label %if.end22.cleanup_crit_edge, label %if.then30, !prof !146

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_submit_merged_write(ptr noundef %23, i32 noundef 2) #14
  br label %cleanup

redirty_out:                                      ; preds = %land.lhs.true.redirty_out_crit_edge, %if.end.redirty_out_crit_edge, %F2FS_P_SB.exit.redirty_out_crit_edge
  %call32 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #14
  br label %cleanup

cleanup:                                          ; preds = %redirty_out, %if.then30, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ 524288, %redirty_out ], [ 0, %if.then30 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_submit_merged_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_write_meta_page(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__f2fs_write_meta_page(ptr noundef %page, ptr noundef %wbc, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_write_meta_pages(ptr nocapture noundef readonly %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_flag.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.skip_write_crit_edge, !prof !146

entry.skip_write_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_write

if.end:                                           ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %9 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %5, i32 0, i32 69, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 8
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdi.i, align 8
  %dirty_exceeded.i = getelementptr inbounds %struct.backing_dev_info, ptr %16, i32 0, i32 11, i32 19
  %17 = ptrtoint ptr %dirty_exceeded.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_exceeded.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %retval.0.i = select i1 %tobool.not.i, i32 2048, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %12, %retval.0.i
  br i1 %cmp5, label %land.lhs.true.skip_write_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true.skip_write_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_write

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %cp_global_sem = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 19
  %call9 = tail call i32 @down_write_trylock(ptr noundef %cp_global_sem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.skip_write_crit_edge, label %if.end12

if.end8.skip_write_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_write

if.end12:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping, align 4
  tail call fastcc void @trace_f2fs_writepages(ptr noundef %20, ptr noundef %wbc)
  %21 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %if.end4.i, label %if.end12.nr_pages_to_write.exit_crit_edge

if.end12.nr_pages_to_write.exit_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %nr_pages_to_write.exit

if.end4.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wbc, align 8
  store i32 256, ptr %wbc, align 8
  %sub.i.neg = add i32 %24, -256
  br label %nr_pages_to_write.exit

nr_pages_to_write.exit:                           ; preds = %if.end4.i, %if.end12.nr_pages_to_write.exit_crit_edge
  %retval.0.i46.neg50 = phi i32 [ %sub.i.neg, %if.end4.i ], [ 0, %if.end12.nr_pages_to_write.exit_crit_edge ]
  %25 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wbc, align 8
  %call14 = tail call i32 @f2fs_sync_meta_pages(ptr noundef %5, i32 noundef 2, i32 noundef %26, i32 noundef 6)
  tail call void @up_write(ptr noundef %cp_global_sem) #14
  %27 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wbc, align 8
  %.neg = sub i32 %retval.0.i46.neg50, %call14
  %sub17 = add i32 %.neg, %28
  %29 = tail call i32 @llvm.smax.i32(i32 %sub17, i32 0)
  %30 = ptrtoint ptr %wbc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %wbc, align 8
  br label %cleanup

skip_write:                                       ; preds = %if.end8.skip_write_crit_edge, %land.lhs.true.skip_write_crit_edge, %entry.skip_write_crit_edge
  %arrayidx.i47 = getelementptr %struct.f2fs_sb_info, ptr %5, i32 0, i32 69, i32 4
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i47, i32 noundef 4) #14
  %31 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i47, align 4
  %pages_skipped = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 1
  %33 = ptrtoint ptr %pages_skipped to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pages_skipped, align 4
  %conv23 = add i32 %34, %32
  store i32 %conv23, ptr %pages_skipped, align 4
  %35 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mapping, align 4
  tail call fastcc void @trace_f2fs_writepages(ptr noundef %36, ptr noundef %wbc)
  br label %cleanup

cleanup:                                          ; preds = %skip_write, %nr_pages_to_write.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_set_meta_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_f2fs_set_page_dirty(ptr noundef %page)
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i13 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.end.i.i17, label %if.then.i.i16, !prof !146

if.then.i.i16:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i15 = add i32 %2, -1
  br label %_compound_head.exit.i21

if.end.i.i17:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i21

_compound_head.exit.i21:                          ; preds = %if.end.i.i17, %if.then.i.i16
  %retval.0.i.i18 = phi i32 [ %sub.i.i15, %if.then.i.i16 ], [ %3, %if.end.i.i17 ]
  %4 = inttoptr i32 %retval.0.i.i18 to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i19 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i19)
  %tobool.not.i.i.i20 = icmp eq i32 %and.i.i.i.i19, 0
  br i1 %tobool.not.i.i.i20, label %folio_flags.exit.i.i, label %if.then.i.i.i22, !prof !146

if.then.i.i.i22:                                  ; preds = %_compound_head.exit.i21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i21
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14
  br i1 %tobool.i.not.i, label %if.then, label %folio_flags.exit.i.i.if.end_crit_edge

folio_flags.exit.i.i.if.end_crit_edge:            ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %folio_flags.exit.i.i
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !146

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %SetPageUptodate.exit, %folio_flags.exit.i.i.if.end_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i = icmp eq i32 %18, -1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %0, align 4
  %and.i13.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !152

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !146

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i15.i = add i32 %20, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %21, %if.end.i17.i ]
  %22 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.25) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #14, !srcloc !164
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !146

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i22.i = add i32 %20, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %23, %if.end.i24.i ]
  %24 = inttoptr i32 %retval.0.i25.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not = icmp eq i32 %27, 0
  br i1 %tobool2.not, label %if.then3, label %PageDirty.exit.return_crit_edge

PageDirty.exit.return_crit_edge:                  ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then3:                                         ; preds = %PageDirty.exit
  %call4 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %page) #14
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i23 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i23, label %if.end.i.i.i, label %if.then.i.i.i24, !prof !146

if.then.i.i.i24:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %29, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i24
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i24 ], [ %30, %if.end.i.i.i ]
  %31 = inttoptr i32 %retval.0.i.i.i to ptr
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !146

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_test_swapbacked.exit.i.i.i.i:               ; preds = %_compound_head.exit.i.i
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %37 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge, label %land.rhs.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i3.i.i

land.rhs.i.i.i.i:                                 ; preds = %folio_test_swapbacked.exit.i.i.i.i
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %32, align 4
  %and.i.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapcache.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !146

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.22) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

folio_test_swapcache.exit.i.i.i:                  ; preds = %land.rhs.i.i.i.i
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %31, align 4
  %42 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i, !prof !146

folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i.i = tail call ptr @swapcache_mapping(ptr noundef %31) #14
  br label %F2FS_P_SB.exit

if.end.i3.i.i:                                    ; preds = %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge
  %mapping.i.i.i = getelementptr inbounds %struct.anon.67, ptr %31, i32 0, i32 2
  %43 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mapping.i.i.i, align 4
  br label %F2FS_P_SB.exit

F2FS_P_SB.exit:                                   ; preds = %if.end.i3.i.i, %if.then.i2.i.i
  %retval.0.i4.i.i = phi ptr [ %call2.i.i.i, %if.then.i2.i.i ], [ %44, %if.end.i3.i.i ]
  %45 = ptrtoint ptr %retval.0.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retval.0.i4.i.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %50, i32 0, i32 69, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #14
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #14, !srcloc !148
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %50, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_flag.i.i) #14
  tail call fastcc void @set_page_private_reference(ptr noundef %page)
  br label %return

return:                                           ; preds = %F2FS_P_SB.exit, %PageDirty.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %F2FS_P_SB.exit ], [ 0, %PageDirty.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_invalidate_page(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_release_page(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_add_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__add_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef 0, i32 noundef %type)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef %devidx, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp = icmp eq i32 %type, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !166
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @radix_tree_lookup(ptr noundef %arrayidx, i32 noundef %ino) #14
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i64, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %rcu_read_lock.exit
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.33) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !167
  %4 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i.i71 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit, %entry.if.end_crit_edge
  %e.0 = phi ptr [ %call, %rcu_read_unlock.exit ], [ null, %entry.if.end_crit_edge ]
  %ino_lock = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 1
  br label %retry

retry:                                            ; preds = %if.then11, %if.end
  %e.1 = phi ptr [ %e.0, %if.end ], [ null, %if.then11 ]
  %tobool.not = icmp eq ptr %e.1, null
  br i1 %tobool.not, label %if.then2, label %retry.if.end4_crit_edge

retry.if.end4_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %retry
  %8 = load ptr, ptr @ino_entry_slab, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3136) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 35904) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then.i.i, %if.then2.if.end4_crit_edge, %retry.if.end4_crit_edge
  %new.1 = phi ptr [ null, %retry.if.end4_crit_edge ], [ %call.i.i, %if.then2.if.end4_crit_edge ], [ %call2.i.i, %if.then.i.i ]
  %call5 = tail call i32 @radix_tree_preload(i32 noundef 35904) #14
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %call7 = tail call ptr @radix_tree_lookup(ptr noundef %arrayidx, i32 noundef %ino) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end4.if.end31_crit_edge

if.end4.if.end31_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then9:                                         ; preds = %if.end4
  %tobool10.not = icmp eq ptr %new.1, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  br label %retry

if.end13:                                         ; preds = %if.then9
  %call15 = tail call i32 @radix_tree_insert(ptr noundef %arrayidx, i32 noundef %ino, ptr noundef nonnull %new.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end26, label %do.body20, !prof !146

do.body20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #14, !srcloc !168
  unreachable

if.end26:                                         ; preds = %if.end13
  %9 = call ptr @memset(ptr %new.1, i32 0, i32 16)
  %ino27 = getelementptr inbounds %struct.ino_entry, ptr %new.1, i32 0, i32 1
  %10 = ptrtoint ptr %ino27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ino, ptr %ino27, align 8
  %ino_list = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 2
  %prev.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i73 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %new.1, ptr noundef %12, ptr noundef %ino_list) #14
  br i1 %call.i.i73, label %if.end.i.i, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %new.1, ptr %prev.i, align 4
  %14 = ptrtoint ptr %new.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ino_list, ptr %new.1, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %new.1, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %new.1, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end26.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp28.not = icmp eq i32 %type, 0
  br i1 %cmp28.not, label %list_add_tail.exit.if.end31_crit_edge, label %if.then29

list_add_tail.exit.if.end31_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then29:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %ino_num = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 3
  %17 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ino_num, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %ino_num, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %list_add_tail.exit.if.end31_crit_edge, %if.end4.if.end31_crit_edge
  %e.2 = phi ptr [ %new.1, %if.then29 ], [ %new.1, %list_add_tail.exit.if.end31_crit_edge ], [ %call7, %if.end4.if.end31_crit_edge ]
  br i1 %cmp, label %if.then33, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %dirty_device = getelementptr inbounds %struct.ino_entry, ptr %e.2, i32 0, i32 2
  %shr.i = lshr i32 %devidx, 3
  %add.ptr.i = getelementptr i8, ptr %dirty_device, i32 %shr.i
  %and.i = and i32 %devidx, 7
  %sub.i = xor i32 %and.i, 7
  %shl.i = shl nuw i32 1, %sub.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  %21 = trunc i32 %shl.i to i8
  %conv1.i = or i8 %20, %21
  store i8 %conv1.i, ptr %add.ptr.i, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  %22 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, ptrtoint (ptr @radix_tree_preloads to i32)
  %28 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %28) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %29 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %tobool36.not = icmp eq ptr %new.1, null
  %cmp37.not = icmp eq ptr %e.2, %new.1
  %or.cond = select i1 %tobool36.not, i1 true, i1 %cmp37.not
  br i1 %or.cond, label %if.end34.if.end39_crit_edge, label %if.then38

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %33 = load ptr, ptr @ino_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %new.1) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_remove_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__remove_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef %type)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__remove_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type
  %ino_lock = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %call = tail call ptr @radix_tree_lookup(ptr noundef %arrayidx, i32 noundef %ino) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call3 = tail call ptr @radix_tree_delete(ptr noundef %arrayidx, i32 noundef %ino) #14
  %ino_num = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 3
  %8 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ino_num, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %ino_num, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  %10 = load ptr, ptr @ino_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_del.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_exist_written_data(ptr noundef %sbi, i32 noundef %ino, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %mode
  %ino_lock = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %mode, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %call = tail call ptr @radix_tree_lookup(ptr noundef %arrayidx, i32 noundef %ino) #14
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  %tobool = icmp ne ptr %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_release_ino_entry(ptr noundef %sbi, i1 noundef zeroext %all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %not.all = xor i1 %all, true
  %cond = zext i1 %not.all to i32
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.036 = phi i32 [ %cond, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %i.036
  %ino_lock = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %i.036, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %ino_list = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %i.036, i32 2
  %0 = ptrtoint ptr %ino_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ino_list, align 4
  %cmp10.not33 = icmp eq ptr %1, %ino_list
  br i1 %cmp10.not33, label %for.body.for.end_crit_edge, label %for.body11.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body11.lr.ph:                                 ; preds = %for.body
  %ino_num = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %i.036, i32 3
  br label %for.body11

for.body11:                                       ; preds = %list_del.exit.for.body11_crit_edge, %for.body11.lr.ph
  %e.034 = phi ptr [ %1, %for.body11.lr.ph ], [ %tmp.0, %list_del.exit.for.body11_crit_edge ]
  %2 = ptrtoint ptr %e.034 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %e.034, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.034) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body11.list_del.exit_crit_edge

for.body11.list_del.exit_crit_edge:               ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.034, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %e.034 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body11.list_del.exit_crit_edge
  %9 = ptrtoint ptr %e.034 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %e.034, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %e.034, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ino = getelementptr inbounds %struct.ino_entry, ptr %e.034, i32 0, i32 1
  %11 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ino, align 4
  %call = tail call ptr @radix_tree_delete(ptr noundef %arrayidx, i32 noundef %12) #14
  %13 = load ptr, ptr @ino_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %e.034) #14
  %14 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ino_num, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %ino_num, align 4
  %cmp10.not = icmp eq ptr %tmp.0, %ino_list
  br i1 %cmp10.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body11_crit_edge

list_del.exit.for.body11_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end20, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_set_dirty_device(ptr noundef %sbi, i32 noundef %ino, i32 noundef %devidx, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__add_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef %devidx, i32 noundef %type)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_is_dirty_device(ptr noundef %sbi, i32 noundef %ino, i32 noundef %devidx, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type
  %ino_lock = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 %type, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %call = tail call ptr @radix_tree_lookup(ptr noundef %arrayidx, i32 noundef %ino) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dirty_device = getelementptr inbounds %struct.ino_entry, ptr %call, i32 0, i32 2
  %shr.i = lshr i32 %devidx, 3
  %add.ptr.i = getelementptr i8, ptr %dirty_device, i32 %shr.i
  %and.i = and i32 %devidx, 7
  %sub.i = xor i32 %and.i, 7
  %shl.i = shl nuw i32 1, %sub.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %1 to i32
  %and1.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp ne i32 %and1.i, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %is_dirty.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %tobool3.not, %land.lhs.true ]
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  ret i1 %is_dirty.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_acquire_orphan_inode(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ino_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %0 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %if.end.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end.i:                                         ; preds = %entry
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %2 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6_crit_edge, label %if.end3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #14, !srcloc !148
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #14
  %5 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %fault_info.i, align 4
  %7 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i, label %if.end3.i.if.end6_crit_edge, label %if.then

if.end3.i.if.end6_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %fault_info.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_acquire_orphan_inode._rs, ptr noundef nonnull @__func__.f2fs_acquire_orphan_inode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 6) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 6), align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %s_id, ptr noundef %12, ptr noundef nonnull @__func__.f2fs_acquire_orphan_inode, ptr noundef %13) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 3
  %14 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ino_num, align 4
  %max_orphans = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 32
  %16 = ptrtoint ptr %max_orphans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_orphans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp ult i32 %15, %17
  br i1 %cmp.not, label %if.else, label %if.end6.if.end11_crit_edge, !prof !146

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw i32 %15, 1
  %18 = ptrtoint ptr %ino_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc, ptr %ino_num, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end6.if.end11_crit_edge
  %err.0 = phi i32 [ 0, %if.else ], [ -28, %if.end6.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end11 ], [ -28, %do.end ], [ -28, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_release_orphan_inode(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ino_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ino_lock) #14
  %ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 3
  %0 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ino_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !152

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #14, !srcloc !170
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %ino_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %ino_num, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ino_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_add_orphan_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call fastcc void @__add_ino_entry(ptr noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef 0)
  tail call void @f2fs_update_inode_page(ptr noundef %inode) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_inode_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_remove_orphan_inode(ptr noundef %sbi, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__remove_ino_entry(ptr noundef %sbi, i32 noundef %ino, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_recover_orphan_inodes(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  %ni.i = alloca %struct.node_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_flags1 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags1, align 4
  %ckpt.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i, align 4
  %ckpt_flags1.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i, align 1
  %8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.not, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup50

if.end:                                           ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bd_read_only.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lor.rhs.i:                                        ; preds = %if.end
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 17
  %13 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bd_read_only.i.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.if.then4_crit_edge

lor.rhs.i.if.then4_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 12
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end5, label %bdev_read_only.exit.if.then4_crit_edge

bdev_read_only.exit.if.then4_crit_edge:           ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.then4:                                         ; preds = %bdev_read_only.exit.if.then4_crit_edge, %lor.rhs.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.5) #14
  br label %cleanup50

if.end5:                                          ; preds = %bdev_read_only.exit
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.6) #14
  %22 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sbi, align 8
  %s_flags9 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_flags9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags9, align 4
  %and10 = and i32 %25, -2
  store i32 %and10, ptr %s_flags9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %call14 = tail call i32 @f2fs_enable_quota_files(ptr noundef %sbi, i1 noundef zeroext %tobool6) #14
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %26 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %raw_super.i.i, align 8
  %cp_blkaddr.i = getelementptr inbounds %struct.f2fs_super_block, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %cp_blkaddr.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %cp_blkaddr.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  %cur_cp_pack.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 16
  %31 = ptrtoint ptr %cur_cp_pack.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_cp_pack.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i = icmp eq i32 %32, 2
  br i1 %cmp.i, label %if.then.i, label %if.end11.__start_cp_addr.exit_crit_edge

if.end11.__start_cp_addr.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %__start_cp_addr.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %33 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blocks_per_seg.i, align 4
  %add.i = add i32 %34, %30
  br label %__start_cp_addr.exit

__start_cp_addr.exit:                             ; preds = %if.then.i, %if.end11.__start_cp_addr.exit_crit_edge
  %start_addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %30, %if.end11.__start_cp_addr.exit_crit_edge ]
  %add = add i32 %start_addr.0.i, 1
  %cp_payload.i = getelementptr inbounds %struct.f2fs_super_block, ptr %27, i32 0, i32 31
  %35 = ptrtoint ptr %cp_payload.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %cp_payload.i, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #14
  %add17 = add i32 %add, %37
  %38 = ptrtoint ptr %ckpt.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ckpt.i.i, align 4
  %cp_pack_start_sum.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %cp_pack_start_sum.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %cp_pack_start_sum.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  %43 = xor i32 %37, -1
  %sub20 = add i32 %42, %43
  %call21 = tail call i32 @f2fs_ra_meta_pages(ptr noundef %sbi, i32 noundef %add17, i32 noundef %sub20, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %cmp129.not = icmp eq i32 %sub20, 0
  br i1 %cmp129.not, label %__start_cp_addr.exit.for.end43_crit_edge, label %for.body.lr.ph

__start_cp_addr.exit.for.end43_crit_edge:         ; preds = %__start_cp_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.body.lr.ph:                                   ; preds = %__start_cp_addr.exit
  %blk_addr.i = getelementptr inbounds %struct.node_info, ptr %ni.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc42, %for.inc41.for.body_crit_edge ]
  %add22 = add i32 %i.0130, %add17
  %call.i = call fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %add22, i1 noundef zeroext true) #14
  %cmp.i93 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %call.i to i32
  br label %out

if.end27:                                         ; preds = %for.body
  %call28 = call ptr @page_address(ptr noundef %call.i) #14
  %entry_count = getelementptr inbounds %struct.f2fs_orphan_block, ptr %call28, i32 0, i32 4
  %45 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %entry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp30127.not = icmp eq i32 %46, 0
  br i1 %cmp30127.not, label %if.end27.for.inc41_crit_edge, label %if.end27.for.body31_crit_edge

if.end27.for.body31_crit_edge:                    ; preds = %if.end27
  br label %for.body31

if.end27.for.inc41_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41

for.body31:                                       ; preds = %recover_orphan_inode.exit.thread.for.body31_crit_edge, %if.end27.for.body31_crit_edge
  %j.0128 = phi i32 [ %inc, %recover_orphan_inode.exit.thread.for.body31_crit_edge ], [ 0, %if.end27.for.body31_crit_edge ]
  %arrayidx = getelementptr [1020 x i32], ptr %call28, i32 0, i32 %j.0128
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni.i) #14
  %50 = call ptr @memset(ptr %ni.i, i32 255, i32 16)
  %51 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sbi, align 8
  %call.i94 = call ptr @f2fs_iget_retry(ptr noundef %52, i32 noundef %49) #14
  %cmp.i.i = icmp ugt ptr %call.i94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %for.body31
  %cmp.i95 = icmp eq ptr %call.i94, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i95, label %do.body5.i, label %recover_orphan_inode.exit, !prof !152

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 652, 0\0A.popsection", ""() #14, !srcloc !172
  unreachable

if.end12.i:                                       ; preds = %for.body31
  %call13.i = call i32 @f2fs_dquot_initialize(ptr noundef %call.i94) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %call.i94) #14
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  call void @clear_nlink(ptr noundef %call.i94) #14
  call void @iput(ptr noundef %call.i94) #14
  %call17.i = call i32 @f2fs_get_node_info(ptr noundef %sbi, i32 noundef %49, ptr noundef nonnull %ni.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %53 = ptrtoint ptr %blk_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blk_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp21.not.i = icmp eq i32 %54, 0
  br i1 %cmp21.not.i, label %recover_orphan_inode.exit.thread, label %if.end20.i.cleanup_crit_edge

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

recover_orphan_inode.exit.thread:                 ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #14
  %inc = add nuw i32 %j.0128, 1
  %55 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %entry_count, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %cmp30 = icmp ult i32 %inc, %57
  br i1 %cmp30, label %recover_orphan_inode.exit.thread.for.body31_crit_edge, label %recover_orphan_inode.exit.thread.for.inc41_crit_edge

recover_orphan_inode.exit.thread.for.inc41_crit_edge: ; preds = %recover_orphan_inode.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41

recover_orphan_inode.exit.thread.for.body31_crit_edge: ; preds = %recover_orphan_inode.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body31

recover_orphan_inode.exit:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %call.i94 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #14
  call fastcc void @f2fs_put_page(ptr noundef %call.i, i32 noundef 1)
  br label %out

cleanup:                                          ; preds = %if.end20.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.then15.i
  %err.0.i = phi i32 [ %call13.i, %if.then15.i ], [ -5, %if.end20.i.cleanup_crit_edge ], [ %call17.i, %if.end16.i.cleanup_crit_edge ]
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i.i) #14
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.recover_orphan_inode, i32 noundef %49) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #14
  call fastcc void @f2fs_put_page(ptr noundef %call.i, i32 noundef 1)
  br label %out

for.inc41:                                        ; preds = %recover_orphan_inode.exit.thread.for.inc41_crit_edge, %if.end27.for.inc41_crit_edge
  call fastcc void @f2fs_put_page(ptr noundef %call.i, i32 noundef 1)
  %inc42 = add nuw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc42, %sub20
  br i1 %exitcond.not, label %for.inc41.for.end43_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %__start_cp_addr.exit.for.end43_crit_edge
  %cp_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 17
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock.i) #14
  %59 = ptrtoint ptr %ckpt.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ckpt.i.i, align 4
  %ckpt_flags1.i.i97 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %ckpt_flags1.i.i97 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %ckpt_flags1.i.i97, align 1
  %63 = and i32 %62, -33554433
  store i32 %63, ptr %ckpt_flags1.i.i97, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock.i, i32 noundef %call2.i) #14
  br label %out

out:                                              ; preds = %for.end43, %cleanup, %recover_orphan_inode.exit, %if.then25
  %err.3 = phi i32 [ 0, %for.end43 ], [ %58, %recover_orphan_inode.exit ], [ %err.0.i, %cleanup ], [ %44, %if.then25 ]
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  call void @_set_bit(i32 noundef 7, ptr noundef %s_flag.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool44.not = icmp eq i32 %call14, 0
  br i1 %tobool44.not, label %out.if.end47_crit_edge, label %if.then45

out.if.end47_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then45:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sbi, align 8
  call void @f2fs_quota_off_umount(ptr noundef %65) #14
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %out.if.end47_crit_edge
  %66 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sbi, align 8
  %s_flags49 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %s_flags49 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %3, ptr %s_flags49, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.end47, %if.then4, %entry.cleanup50_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %err.3, %if.end47 ], [ 0, %entry.cleanup50_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_enable_quota_files(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_quota_off_umount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_get_valid_checkpoint(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  %cp1_version = alloca i64, align 8
  %cp2_version = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super, align 8
  %blocksize = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 46
  %2 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocksize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp1_version) #14
  %4 = ptrtoint ptr %cp1_version to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %cp1_version, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp2_version) #14
  %5 = ptrtoint ptr %cp2_version to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %cp2_version, align 8
  %cp_payload.i = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %cp_payload.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %cp_payload.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %add = add i32 %8, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 %add) #14
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %retval.0.i = select i1 %10, i32 -1, i32 %11
  %fault_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %12 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %entry.f2fs_kvzalloc.exit_crit_edge, label %if.end.i.i.i

entry.f2fs_kvzalloc.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_kvzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %inject_type.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %14 = ptrtoint ptr %inject_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inject_type.i.i.i, align 4
  %and.i.i.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.f2fs_kvzalloc.exit_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.f2fs_kvzalloc.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_kvzalloc.exit

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i.i, ptr %fault_info.i.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i.i) #14, !srcloc !148
  %call.i.i14.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i.i, i32 noundef 4) #14
  %17 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %fault_info.i.i.i, align 4
  %19 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not.i.i.i = icmp ult i32 %18, %20
  br i1 %cmp.not.i.i.i, label %if.end3.i.i.i.f2fs_kvzalloc.exit_crit_edge, label %if.then.i.i

if.end3.i.i.i.f2fs_kvzalloc.exit_crit_edge:       ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_kvzalloc.exit

if.then.i.i:                                      ; preds = %if.end3.i.i.i
  %call.i.i15.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #14
  %21 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %fault_info.i.i.i, align 4
  %call1.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kvmalloc._rs, ptr noundef nonnull @__func__.f2fs_kvmalloc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.f2fs_kvzalloc.exit.thread_crit_edge, label %do.end.i.i

if.then.i.i.f2fs_kvzalloc.exit.thread_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_kvzalloc.exit.thread

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sbi, align 8
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 1), align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0) #14
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %s_id.i.i, ptr noundef %24, ptr noundef nonnull @__func__.f2fs_kvmalloc, ptr noundef %25) #17
  br label %f2fs_kvzalloc.exit.thread

f2fs_kvzalloc.exit.thread:                        ; preds = %do.end.i.i, %if.then.i.i.f2fs_kvzalloc.exit.thread_crit_edge
  %ckpt122 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %26 = ptrtoint ptr %ckpt122 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ckpt122, align 4
  br label %cleanup62

f2fs_kvzalloc.exit:                               ; preds = %if.end3.i.i.i.f2fs_kvzalloc.exit_crit_edge, %if.end.i.i.i.f2fs_kvzalloc.exit_crit_edge, %entry.f2fs_kvzalloc.exit_crit_edge
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #18
  %ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %27 = ptrtoint ptr %ckpt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i, ptr %ckpt, align 4
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %f2fs_kvzalloc.exit.cleanup62_crit_edge, label %if.end

f2fs_kvzalloc.exit.cleanup62_crit_edge:           ; preds = %f2fs_kvzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup62

if.end:                                           ; preds = %f2fs_kvzalloc.exit
  %cp_blkaddr = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %cp_blkaddr to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %cp_blkaddr, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %call5 = call fastcc ptr @validate_checkpoint(ptr noundef %sbi, i32 noundef %30, ptr noundef nonnull %cp1_version)
  %log_blocks_per_seg = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %log_blocks_per_seg to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %log_blocks_per_seg, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %sh_prom = zext i32 %33 to i64
  %shl = shl nuw i64 1, %sh_prom
  %34 = trunc i64 %shl to i32
  %conv7 = add i32 %30, %34
  %call8 = call fastcc ptr @validate_checkpoint(ptr noundef %sbi, i32 noundef %conv7, ptr noundef nonnull %cp2_version)
  %tobool9.not = icmp eq ptr %call5, null
  %tobool10.not = icmp eq ptr %call8, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %cp2_version to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cp2_version, align 8
  %37 = ptrtoint ptr %cp1_version to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cp1_version, align 8
  %sub = sub i64 %36, %38
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp sgt i64 %sub, 0
  %call8.call5 = select i1 %cmp, ptr %call8, ptr %call5
  br label %if.end24

if.else15:                                        ; preds = %if.end
  %39 = select i1 %tobool9.not, i1 %tobool10.not, i1 false
  %call5.mux = select i1 %tobool9.not, ptr %call8, ptr %call5
  br i1 %39, label %if.else15.fail_no_cp_crit_edge, label %if.else15.if.end24_crit_edge

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.else15.fail_no_cp_crit_edge:                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_no_cp

if.end24:                                         ; preds = %if.else15.if.end24_crit_edge, %if.then11
  %cur_page.0 = phi ptr [ %call8.call5, %if.then11 ], [ %call5.mux, %if.else15.if.end24_crit_edge ]
  %call25 = tail call ptr @page_address(ptr noundef nonnull %cur_page.0) #14
  %40 = ptrtoint ptr %ckpt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ckpt, align 4
  %42 = call ptr @memcpy(ptr %41, ptr %call25, i32 %3)
  %cmp27 = icmp eq ptr %cur_page.0, %call5
  %spec.select = select i1 %cmp27, i32 1, i32 2
  %43 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 16
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select, ptr %43, align 8
  %call33 = tail call i32 @f2fs_sanity_check_ckpt(ptr noundef %sbi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end24.free_fail_no_cp_crit_edge

if.end24.free_fail_no_cp_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_fail_no_cp

if.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp37 = icmp ult i32 %add, 2
  br i1 %cmp37, label %if.end36.done_crit_edge, label %if.end40

if.end36.done_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end40:                                         ; preds = %if.end36
  %45 = ptrtoint ptr %cp_blkaddr to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %cp_blkaddr, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %cmp42 = icmp eq ptr %cur_page.0, %call8
  br i1 %cmp42, label %if.then44, label %if.end40.for.body.preheader_crit_edge

if.end40.for.body.preheader_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.preheader

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %log_blocks_per_seg to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %log_blocks_per_seg, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %shl46 = shl nuw i32 1, %50
  %add47 = add i32 %shl46, %47
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then44, %if.end40.for.body.preheader_crit_edge
  %cp_blk_no.0 = phi i32 [ %add47, %if.then44 ], [ %47, %if.end40.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0130 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %51 = ptrtoint ptr %ckpt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ckpt, align 4
  %add53 = add i32 %i.0130, %cp_blk_no.0
  %call.i = tail call fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %add53, i1 noundef zeroext true) #14
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %call.i to i32
  br label %free_fail_no_cp

for.inc:                                          ; preds = %for.body
  %call59 = tail call ptr @page_address(ptr noundef %call.i) #14
  %mul = mul i32 %i.0130, %3
  %add.ptr = getelementptr i8, ptr %52, i32 %mul
  %54 = call ptr @memcpy(ptr %add.ptr, ptr %call59, i32 %3)
  tail call fastcc void @f2fs_put_page(ptr noundef %call.i, i32 noundef 1)
  %inc = add nuw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %i.0130, %8
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %if.end36.done_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef %call5, i32 noundef 1)
  tail call fastcc void @f2fs_put_page(ptr noundef %call8, i32 noundef 1)
  br label %cleanup62

free_fail_no_cp:                                  ; preds = %cleanup, %if.end24.free_fail_no_cp_crit_edge
  %err.2 = phi i32 [ %53, %cleanup ], [ -117, %if.end24.free_fail_no_cp_crit_edge ]
  tail call fastcc void @f2fs_put_page(ptr noundef %call5, i32 noundef 1)
  tail call fastcc void @f2fs_put_page(ptr noundef %call8, i32 noundef 1)
  br label %fail_no_cp

fail_no_cp:                                       ; preds = %free_fail_no_cp, %if.else15.fail_no_cp_crit_edge
  %err.3 = phi i32 [ %err.2, %free_fail_no_cp ], [ -117, %if.else15.fail_no_cp_crit_edge ]
  %55 = ptrtoint ptr %ckpt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ckpt, align 4
  tail call void @kvfree(ptr noundef %56) #14
  br label %cleanup62

cleanup62:                                        ; preds = %fail_no_cp, %done, %f2fs_kvzalloc.exit.cleanup62_crit_edge, %f2fs_kvzalloc.exit.thread
  %retval.0 = phi i32 [ %err.3, %fail_no_cp ], [ 0, %done ], [ -12, %f2fs_kvzalloc.exit.cleanup62_crit_edge ], [ -12, %f2fs_kvzalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp2_version) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp1_version) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @validate_checkpoint(ptr noundef %sbi, i32 noundef %cp_addr, ptr nocapture noundef %version) unnamed_addr #0 align 64 {
entry:
  %cp_page_1 = alloca ptr, align 4
  %cp_page_2 = alloca ptr, align 4
  %cp_block = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_page_1) #14
  %0 = ptrtoint ptr %cp_page_1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cp_page_1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_page_2) #14
  %1 = ptrtoint ptr %cp_page_2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cp_page_2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_block) #14
  %2 = ptrtoint ptr %cp_block to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cp_block, align 4
  %call = call fastcc i32 @get_checkpoint_version(ptr noundef %sbi, i32 noundef %cp_addr, ptr noundef nonnull %cp_block, ptr noundef nonnull %cp_page_1, ptr noundef %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cp_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cp_block, align 4
  %cp_pack_total_block_count = getelementptr inbounds %struct.f2fs_checkpoint, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %cp_pack_total_block_count to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %cp_pack_total_block_count, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %8 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks_per_seg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.38, i32 noundef %7) #14
  br label %invalid_cp

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %version, align 8
  %sub = add i32 %cp_addr, -1
  %add = add i32 %sub, %7
  %call5 = call fastcc i32 @get_checkpoint_version(ptr noundef %sbi, i32 noundef %add, ptr noundef nonnull %cp_block, ptr noundef nonnull %cp_page_2, ptr noundef %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.invalid_cp_crit_edge

if.end3.invalid_cp_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %invalid_cp

if.end8:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %11)
  %cmp9 = icmp eq i64 %13, %11
  %14 = ptrtoint ptr %cp_page_2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cp_page_2, align 4
  tail call fastcc void @f2fs_put_page(ptr noundef %15, i32 noundef 1)
  br i1 %cmp9, label %if.then10, label %if.end8.invalid_cp_crit_edge

if.end8.invalid_cp_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %invalid_cp

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %cp_page_1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cp_page_1, align 4
  br label %cleanup

invalid_cp:                                       ; preds = %if.end8.invalid_cp_crit_edge, %if.end3.invalid_cp_crit_edge, %if.then1
  %18 = ptrtoint ptr %cp_page_1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp_page_1, align 4
  tail call fastcc void @f2fs_put_page(ptr noundef %19, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %invalid_cp, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %invalid_cp ], [ %17, %if.then10 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_block) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_page_2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_page_1) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_sanity_check_ckpt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_dirty_page(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 -24576, label %entry.if.end_crit_edge
    i16 -32768, label %entry.if.end_crit_edge44
    i16 16384, label %entry.if.end_crit_edge45
  ]

entry.if.end_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge44, %entry.if.end_crit_edge45
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 34, i32 %cond
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #14
  br i1 %cmp, label %if.end.if.then21_crit_edge, label %lor.lhs.false

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %8 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mount_opt, align 8
  %and20 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end.if.then21_crit_edge
  %cond.i = phi i32 [ 23, %lor.lhs.false.if.then21_crit_edge ], [ 3, %if.end.if.then21_crit_edge ]
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i.i, align 4
  %16 = shl nuw nsw i32 1, %cond.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end.i:                                         ; preds = %if.then21
  tail call void @_set_bit(i32 noundef %cond.i, ptr noundef %flags.i.i) #14
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %20 = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %dirty_list.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 20
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %13, i32 0, i32 33, i32 %cond
  %prev.i.i = getelementptr %struct.f2fs_sb_info, ptr %13, i32 0, i32 33, i32 %cond, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty_list.i, ptr noundef %22, ptr noundef %arrayidx.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.i.if.end5.i_crit_edge

if.then3.i.if.end5.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end.i.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dirty_list.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i, ptr %dirty_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %dirty_list.i, ptr %22, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.i.i, %if.then3.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %arrayidx6.i = getelementptr %struct.f2fs_sb_info, ptr %13, i32 0, i32 109, i32 %cond
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %arrayidx6.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end5.i, %if.then21.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %dirty_pages.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 10
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pages.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %dirty_pages.i, i32 1, i32 3, i32 1) #14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pages.i, ptr %dirty_pages.i, i32 1, ptr elementtype(i32) %dirty_pages.i) #14, !srcloc !148
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i40 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i.i40, align 16
  %34 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inode, align 8
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %36)
  %cmp.i = icmp ne i16 %36, 16384
  %cond.i41 = zext i1 %cmp.i to i32
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %33, i32 0, i32 69, i32 %cond.i41
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #14
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #14, !srcloc !148
  br i1 %cmp.i, label %if.end22.inc_page_count.exit.i_crit_edge, label %if.then.i.i

if.end22.inc_page_count.exit.i_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %inc_page_count.exit.i

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %s_flag.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_flag.i.i.i) #14
  br label %inc_page_count.exit.i

inc_page_count.exit.i:                            ; preds = %if.then.i.i, %if.end22.inc_page_count.exit.i_crit_edge
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %38 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_flags.i, align 4
  %and3.i = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i42 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i42, label %inc_page_count.exit.i.inode_inc_dirty_pages.exit_crit_edge, label %if.then.i

inc_page_count.exit.i.inode_inc_dirty_pages.exit_crit_edge: ; preds = %inc_page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_inc_dirty_pages.exit

if.then.i:                                        ; preds = %inc_page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i10.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i.i10.i, align 16
  %arrayidx.i11.i = getelementptr %struct.f2fs_sb_info, ptr %43, i32 0, i32 69, i32 2
  %call.i.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i11.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i11.i, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i11.i, ptr %arrayidx.i11.i, i32 1, ptr elementtype(i32) %arrayidx.i11.i) #14, !srcloc !148
  %s_flag.i.i13.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %43, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_flag.i.i13.i) #14
  br label %inode_inc_dirty_pages.exit

inode_inc_dirty_pages.exit:                       ; preds = %if.then.i, %inc_page_count.exit.i.inode_inc_dirty_pages.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #14
  tail call fastcc void @set_page_private_reference(ptr noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %inode_inc_dirty_pages.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_page_private_reference(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !152

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !173
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %PagePrivate.exit.if.end_crit_edge

PagePrivate.exit.if.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %PagePrivate.exit
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !146

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !152

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.42) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #14, !srcloc !174
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #14, !srcloc !148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@set_page_private_reference, %if.then.i.i.i.i)) #14
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !163

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %9, i32 noundef 1) #14
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i7 = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i7, label %if.then.i8, label %SetPagePrivate.exit, !prof !152

if.then.i8:                                       ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !175
  unreachable

SetPagePrivate.exit:                              ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %page) #14
  %private1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %private1.i, align 4
  br label %if.end

if.end:                                           ; preds = %SetPagePrivate.exit, %PagePrivate.exit.if.end_crit_edge
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %private) #14
  tail call void @_set_bit(i32 noundef 5, ptr noundef %private) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_remove_dirty_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 -24576, label %entry.if.end_crit_edge
    i16 -32768, label %entry.if.end_crit_edge38
    i16 16384, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge38, %entry.if.end_crit_edge39
  br i1 %cmp, label %if.end.if.end23_crit_edge, label %land.lhs.true20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true20:                                  ; preds = %if.end
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %8 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mount_opt, align 8
  %and21 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.if.end23_crit_edge

land.lhs.true20.if.end23_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true20.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %cond.i = phi i32 [ 23, %land.lhs.true20.if.end23_crit_edge ], [ 3, %if.end.if.end23_crit_edge ]
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 34, i32 %cond
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #14
  %dirty_pages.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_pages.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %dirty_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dirty_pages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end23.__remove_dirty_inode.exit_crit_edge

if.end23.__remove_dirty_inode.exit_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %__remove_dirty_inode.exit

lor.lhs.false.i:                                  ; preds = %if.end23
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i, align 4
  %14 = shl nuw nsw i32 1, %cond.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.__remove_dirty_inode.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__remove_dirty_inode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__remove_dirty_inode.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dirty_list.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dirty_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dirty_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %22 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %dirty_list.i, ptr %dirty_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dirty_list.i, ptr %prev.i3.i.i, align 4
  tail call void @_clear_bit(i32 noundef %cond.i, ptr noundef %flags.i.i) #14
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %27, i32 0, i32 109, i32 %cond
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  br label %__remove_dirty_inode.exit

__remove_dirty_inode.exit:                        ; preds = %list_del_init.exit.i, %lor.lhs.false.i.__remove_dirty_inode.exit_crit_edge, %if.end23.__remove_dirty_inode.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #14
  br label %cleanup

cleanup:                                          ; preds = %__remove_dirty_inode.exit, %land.lhs.true20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_sync_dirty_inodes(ptr noundef %sbi, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %conv = zext i1 %cmp to i32
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 %cond
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = sext i32 %3 to i64
  tail call fastcc void @trace_f2fs_sync_dirty_inodes_enter(ptr noundef %1, i32 noundef %conv, i64 noundef %conv.i)
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i86 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i86 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i86, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not87 = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not87, label %if.end.lr.ph, label %entry.cleanup_crit_edge, !prof !146

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 34, i32 %type
  %arrayidx13 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 33, i32 %type
  br label %if.end

if.end:                                           ; preds = %if.end46.if.end_crit_edge, %if.end.lr.ph
  %ino.088 = phi i32 [ 0, %if.end.lr.ph ], [ %ino.2, %if.end46.if.end_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #14
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx13, align 4
  %cmp.i.not = icmp eq ptr %10, %arrayidx13
  br i1 %cmp.i.not, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %10, i32 -1016
  %call27 = tail call ptr @igrab(ptr noundef %add.ptr) #14
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #14
  %tobool30.not = icmp eq ptr %call27, null
  br i1 %tobool30.not, label %if.else43, label %if.then31

if.then31:                                        ; preds = %if.end26
  %i_ino = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cp_task = getelementptr inbounds %struct.f2fs_inode_info, ptr %call27, i32 0, i32 14
  %17 = ptrtoint ptr %cp_task to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %cp_task, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %call34 = tail call i32 @filemap_fdatawrite(ptr noundef %19) #14
  %20 = ptrtoint ptr %cp_task to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cp_task, align 4
  tail call void @iput(ptr noundef nonnull %call27) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %ino.088, i32 %12)
  %cmp37 = icmp eq i32 %ino.088, %12
  br i1 %cmp37, label %if.then31.if.end46.sink.split_crit_edge, label %if.then31.if.end46_crit_edge

if.then31.if.end46_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then31.if.end46.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.sink.split

if.else43:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_submit_merged_write(ptr noundef %sbi, i32 noundef 0) #14
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %if.else43, %if.then31.if.end46.sink.split_crit_edge
  %.sink = phi i32 [ 1105, %if.else43 ], [ 1096, %if.then31.if.end46.sink.split_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.then31.if.end46_crit_edge
  %ino.2 = phi i32 [ %12, %if.then31.if.end46_crit_edge ], [ %ino.088, %if.end46.sink.split ]
  %21 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %25 = and i32 %24, 134217728
  %tobool.i.i.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.i.i.not, label %if.end46.if.end_crit_edge, label %if.end46.cleanup_crit_edge, !prof !146

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end46.if.end_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup:                                          ; preds = %if.end46.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then16 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end46.cleanup_crit_edge ]
  %26 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sbi, align 8
  %call.i.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i84 = sext i32 %29 to i64
  tail call fastcc void @trace_f2fs_sync_dirty_inodes_exit(ptr noundef %27, i32 noundef %conv, i64 noundef %conv.i84)
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_sync_dirty_inodes_enter(ptr noundef %sb, i32 noundef %type, i64 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_sync_dirty_inodes_enter, i32 0, i32 1), ptr blockaddress(@trace_f2fs_sync_dirty_inodes_enter, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !146

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !176
  %call42 = tail call i32 @__traceiter_f2fs_sync_dirty_inodes_enter(ptr noundef null, ptr noundef %sb, i32 noundef %type, i64 noundef %count) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !177
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !146

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_sync_dirty_inodes_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_sync_dirty_inodes_enter, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_f2fs_sync_dirty_inodes_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_f2fs_sync_dirty_inodes_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1708, ptr noundef nonnull @.str.29) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %31 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
define internal fastcc void @trace_f2fs_sync_dirty_inodes_exit(ptr noundef %sb, i32 noundef %type, i64 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_sync_dirty_inodes_exit, i32 0, i32 1), ptr blockaddress(@trace_f2fs_sync_dirty_inodes_exit, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !146

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %call42 = tail call i32 @__traceiter_f2fs_sync_dirty_inodes_exit(ptr noundef null, ptr noundef %sb, i32 noundef %type, i64 noundef %count) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !146

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_sync_dirty_inodes_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_sync_dirty_inodes_exit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_f2fs_sync_dirty_inodes_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_f2fs_sync_dirty_inodes_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1715, ptr noundef nonnull @.str.29) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %31 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_sync_inode_meta(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 33, i32 2
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not37 = icmp eq i32 %1, 0
  br i1 %tobool.not37, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %conv.i = sext i32 %1 to i64
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %arrayidx4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 34, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %dec38.in = phi i64 [ %conv.i, %while.body.lr.ph ], [ %dec38, %if.end21.while.body_crit_edge ]
  %dec38 = add i64 %dec38.in, -1
  %2 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %6 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %while.body.cleanup_crit_edge, !prof !146

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @_raw_spin_lock(ptr noundef %arrayidx4) #14
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %8, %arrayidx
  br i1 %cmp.i.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx4) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %8, i32 -1024
  %call11 = tail call ptr @igrab(ptr noundef %add.ptr) #14
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx4) #14
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %if.end10.if.end21_crit_edge, label %if.then15

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then15:                                        ; preds = %if.end10
  %call16 = tail call i32 @sync_inode_metadata(ptr noundef nonnull %call11, i32 noundef 0) #14
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call11, i32 0, i32 8
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.then15.if.end20_crit_edge, label %if.then19

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_update_inode_page(ptr noundef nonnull %call11) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then15.if.end20_crit_edge
  tail call void @iput(ptr noundef nonnull %call11) #14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end10.if.end21_crit_edge
  %tobool.not = icmp eq i64 %dec38, 0
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end21.cleanup_crit_edge, %if.then7, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_wait_on_all_pages(ptr noundef %sbi, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 %type
  %call.i.i.i26 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not27 = icmp eq i32 %14, 0
  br i1 %tobool.not27, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %cp_wait = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 23
  br label %if.end

if.end:                                           ; preds = %if.end15.if.end_crit_edge, %if.end.lr.ph
  %15 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %19 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.i.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.i.i.not, label %if.end9, label %if.end.for.end_crit_edge, !prof !146

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end9:                                          ; preds = %if.end
  %20 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %type, label %if.end9.if.end15_crit_edge [
    i32 4, label %if.then10
    i32 7, label %if.then13
  ]

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call i32 @f2fs_sync_meta_pages(ptr noundef %sbi, i32 noundef 2, i32 noundef 2147483647, i32 noundef 11)
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_submit_merged_write(ptr noundef %sbi, i32 noundef 0) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10, %if.end9.if.end15_crit_edge
  call void @prepare_to_wait(ptr noundef %cp_wait, ptr noundef nonnull %wait, i32 noundef 2) #14
  %call17 = call i32 @io_schedule_timeout(i32 noundef 2) #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end15.for.end_crit_edge, label %if.end15.if.end_crit_edge

if.end15.if.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %cp_wait18 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 23
  call void @finish_wait(ptr noundef %cp_wait18, ptr noundef nonnull %wait) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @f2fs_get_sectors_written(ptr nocapture noundef readonly %sbi) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_ndevs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 122
  %0 = ptrtoint ptr %s_ndevs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_ndevs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp sgt i32 %1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call8.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %2)
  %cmp9.i = icmp ult i32 %call8.i, %2
  br i1 %cmp.i, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %devs = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 123
  br label %for.body

for.body:                                         ; preds = %get_sectors_written.exit.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %get_sectors_written.exit.for.body_crit_edge ]
  %sectors.027 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %get_sectors_written.exit.for.body_crit_edge ]
  br i1 %cmp9.i, label %do.body.lr.ph.i, label %for.body.get_sectors_written.exit_crit_edge

for.body.get_sectors_written.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_sectors_written.exit

do.body.lr.ph.i:                                  ; preds = %for.body
  %3 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devs, align 4
  %arrayidx = getelementptr %struct.f2fs_dev_info, ptr %4, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %bd_stats.i = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bd_stats.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_stats.i, align 8
  %9 = ptrtoint ptr %8 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call11.i = phi i32 [ %call8.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %res.010.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add3.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %9
  %12 = inttoptr i32 %add.i to ptr
  %arrayidx2.i = getelementptr %struct.disk_stats, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 4
  %add3.i = add i32 %14, %res.010.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i9 = icmp ult i32 %call.i, %2
  br i1 %cmp.i9, label %do.body.i.do.body.i_crit_edge, label %do.body.i.get_sectors_written.exit_crit_edge

do.body.i.get_sectors_written.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_sectors_written.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

get_sectors_written.exit:                         ; preds = %do.body.i.get_sectors_written.exit_crit_edge, %for.body.get_sectors_written.exit_crit_edge
  %res.0.lcssa.i = phi i32 [ 0, %for.body.get_sectors_written.exit_crit_edge ], [ %add3.i, %do.body.i.get_sectors_written.exit_crit_edge ]
  %conv.i = zext i32 %res.0.lcssa.i to i64
  %add = add i64 %sectors.027, %conv.i
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %get_sectors_written.exit.return_crit_edge, label %get_sectors_written.exit.for.body_crit_edge

get_sectors_written.exit.for.body_crit_edge:      ; preds = %get_sectors_written.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

get_sectors_written.exit.return_crit_edge:        ; preds = %get_sectors_written.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  br i1 %cmp9.i, label %do.body.lr.ph.i13, label %if.end.get_sectors_written.exit25_crit_edge

if.end.get_sectors_written.exit25_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_sectors_written.exit25

do.body.lr.ph.i13:                                ; preds = %if.end
  %15 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev, align 4
  %bd_stats.i12 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bd_stats.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_stats.i12, align 8
  %21 = ptrtoint ptr %20 to i32
  br label %do.body.i22

do.body.i22:                                      ; preds = %do.body.i22.do.body.i22_crit_edge, %do.body.lr.ph.i13
  %call11.i14 = phi i32 [ %call8.i, %do.body.lr.ph.i13 ], [ %call.i20, %do.body.i22.do.body.i22_crit_edge ]
  %res.010.i15 = phi i32 [ 0, %do.body.lr.ph.i13 ], [ %add3.i19, %do.body.i22.do.body.i22_crit_edge ]
  %arrayidx.i16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i14
  %22 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i16, align 4
  %add.i17 = add i32 %23, %21
  %24 = inttoptr i32 %add.i17 to ptr
  %arrayidx2.i18 = getelementptr %struct.disk_stats, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx2.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i18, align 4
  %add3.i19 = add i32 %26, %res.010.i15
  %call.i20 = tail call i32 @cpumask_next(i32 noundef %call11.i14, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i21 = icmp ult i32 %call.i20, %2
  br i1 %cmp.i21, label %do.body.i22.do.body.i22_crit_edge, label %do.body.i22.get_sectors_written.exit25_crit_edge

do.body.i22.get_sectors_written.exit25_crit_edge: ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_sectors_written.exit25

do.body.i22.do.body.i22_crit_edge:                ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i22

get_sectors_written.exit25:                       ; preds = %do.body.i22.get_sectors_written.exit25_crit_edge, %if.end.get_sectors_written.exit25_crit_edge
  %res.0.lcssa.i23 = phi i32 [ 0, %if.end.get_sectors_written.exit25_crit_edge ], [ %add3.i19, %do.body.i22.get_sectors_written.exit25_crit_edge ]
  %conv.i24 = zext i32 %res.0.lcssa.i23 to i64
  br label %return

return:                                           ; preds = %get_sectors_written.exit25, %get_sectors_written.exit.return_crit_edge
  %retval.0 = phi i64 [ %conv.i24, %get_sectors_written.exit25 ], [ %add, %get_sectors_written.exit.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef %cpc) local_unnamed_addr #0 align 64 {
entry:
  %wbc.i = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %0 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ckpt.i, align 4
  %2 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi, align 8
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_ndevs.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 122
  %6 = ptrtoint ptr %s_ndevs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ndevs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i = icmp sgt i32 %7, 1
  br i1 %cmp.i.i, label %for.body.lr.ph.i, label %if.then.i

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %devs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 123
  %8 = ptrtoint ptr %devs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devs.i, align 4
  br label %for.body.i

if.then.i:                                        ; preds = %lor.lhs.false
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bd_read_only.i.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.rhs.i.i:                                      ; preds = %if.then.i
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 17
  %14 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i.i, label %f2fs_hw_is_readonly.exit, label %lor.rhs.i.i.cleanup_crit_edge

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i:                                       ; preds = %bdev_read_only.exit21.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.f2fs_dev_info, ptr %9, i32 %i.024.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %bd_read_only.i11.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bd_read_only.i11.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bd_read_only.i11.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i12.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i12.i, label %lor.rhs.i17.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.rhs.i17.i:                                    ; preds = %for.body.i
  %bd_disk.i13.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 17
  %24 = ptrtoint ptr %bd_disk.i13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd_disk.i13.i, align 8
  %part0.i.i14.i = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %part0.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part0.i.i14.i, align 4
  %bd_read_only.i.i15.i = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %bd_read_only.i.i15.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bd_read_only.i.i15.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i16.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i16.i, label %bdev_read_only.exit21.i, label %lor.rhs.i17.i.cleanup_crit_edge

lor.rhs.i17.i.cleanup_crit_edge:                  ; preds = %lor.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

bdev_read_only.exit21.i:                          ; preds = %lor.rhs.i17.i
  %state.i.i18.i = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 12
  %30 = ptrtoint ptr %state.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i.i18.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i = icmp eq i32 %32, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %bdev_read_only.exit21.i.cleanup_crit_edge

bdev_read_only.exit21.i.cleanup_crit_edge:        ; preds = %bdev_read_only.exit21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

f2fs_hw_is_readonly.exit:                         ; preds = %lor.rhs.i.i
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 12
  %33 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i.i.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %phi.cmp.i.not = icmp eq i32 %35, 0
  br i1 %phi.cmp.i.not, label %f2fs_hw_is_readonly.exit.if.end_crit_edge, label %f2fs_hw_is_readonly.exit.cleanup_crit_edge

f2fs_hw_is_readonly.exit.cleanup_crit_edge:       ; preds = %f2fs_hw_is_readonly.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

f2fs_hw_is_readonly.exit.if.end_crit_edge:        ; preds = %f2fs_hw_is_readonly.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %f2fs_hw_is_readonly.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %36 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %s_flag.i, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %if.end.if.end8_crit_edge, label %if.then5, !prof !146

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %39 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %40)
  %cmp.not = icmp eq i32 %40, 64
  br i1 %cmp.not, label %if.end7, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.7) #14
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %41 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %42)
  %cmp10.not = icmp eq i32 %42, 128
  br i1 %cmp10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %cp_global_sem = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 19
  tail call void @down_write(ptr noundef %cp_global_sem) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %43 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %s_flag.i, align 4
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i186.not = icmp eq i32 %45, 0
  br i1 %tobool.i186.not, label %land.lhs.true, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end12
  %46 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpc, align 8
  %48 = and i32 %47, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %lor.lhs.false20, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %and22 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false20.if.end27_crit_edge, label %land.lhs.true24

lor.lhs.false20.if.end27_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true24:                                  ; preds = %lor.lhs.false20
  %discard_blks = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 62
  %50 = ptrtoint ptr %discard_blks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %discard_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool25.not = icmp eq i32 %51, 0
  br i1 %tobool25.not, label %land.lhs.true24.outthread-pre-split_crit_edge, label %land.lhs.true24.if.end27_crit_edge

land.lhs.true24.if.end27_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true24.outthread-pre-split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %outthread-pre-split

if.end27:                                         ; preds = %land.lhs.true24.if.end27_crit_edge, %lor.lhs.false20.if.end27_crit_edge, %if.end12.if.end27_crit_edge
  %52 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %56 = and i32 %55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.i.i.not = icmp eq i32 %56, 0
  br i1 %tobool.i.i.i.not, label %if.end36, label %if.end27.outthread-pre-split_crit_edge, !prof !146

if.end27.outthread-pre-split_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %outthread-pre-split

if.end36:                                         ; preds = %if.end27
  %57 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sbi, align 8
  %59 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpc, align 8
  tail call fastcc void @trace_f2fs_write_checkpoint(ptr noundef %58, i32 noundef %60, ptr noundef nonnull @.str.8)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc.i) #14
  %61 = call ptr @memset(ptr %wbc.i, i32 0, i32 64)
  %62 = ptrtoint ptr %wbc.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2147483647, ptr %wbc.i, align 8
  %63 = getelementptr inbounds { i32, i32, i64, i64, i32, i8, i8, [2 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32 }, ptr %wbc.i, i32 0, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %63, align 8
  tail call void @f2fs_flush_inline_data(ptr noundef %sbi) #14
  %cp_rwsem.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 20
  %raw_super.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %s_qf_names.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 8
  %arrayidx4.i.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 8, i32 1
  %arrayidx9.i.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 8, i32 2
  %quota_sem.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 68
  %arrayidx.i.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 2
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %node_change.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 22
  %arrayidx.i88.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  br label %retry_flush_quotas.i

retry_flush_quotas.i:                             ; preds = %retry_flush_quotas.backedge.i, %if.end36
  %cnt.0.i = phi i32 [ 0, %if.end36 ], [ %cnt.0.be.i, %retry_flush_quotas.backedge.i ]
  tail call void @down_write(ptr noundef %cp_rwsem.i.i) #14
  %65 = ptrtoint ptr %raw_super.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %raw_super.i.i.i.i, align 8
  %feature.i.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %66, i32 0, i32 34
  %67 = ptrtoint ptr %feature.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %feature.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %tobool.not.i.i.i187 = icmp sgt i32 %68, -1
  br i1 %tobool.not.i.i.i187, label %if.end.i.i.i, label %retry_flush_quotas.i.if.end.i.i_crit_edge

retry_flush_quotas.i.if.end.i.i_crit_edge:        ; preds = %retry_flush_quotas.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %retry_flush_quotas.i
  %69 = ptrtoint ptr %s_qf_names.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_qf_names.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %70, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %71 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx4.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool5.not.i.i.i, label %is_journalled_quota.exit.i.i, label %lor.lhs.false.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.if.end.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

is_journalled_quota.exit.i.i:                     ; preds = %lor.lhs.false.i.i.i
  %73 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx9.i.i.i, align 8
  %tobool10.not.i.not.i.i = icmp eq ptr %74, null
  br i1 %tobool10.not.i.not.i.i, label %is_journalled_quota.exit.i.i.retry_flush_dents.i_crit_edge, label %is_journalled_quota.exit.i.i.if.end.i.i_crit_edge

is_journalled_quota.exit.i.i.if.end.i.i_crit_edge: ; preds = %is_journalled_quota.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

is_journalled_quota.exit.i.i.retry_flush_dents.i_crit_edge: ; preds = %is_journalled_quota.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_flush_dents.i

if.end.i.i:                                       ; preds = %is_journalled_quota.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge, %retry_flush_quotas.i.if.end.i.i_crit_edge
  %call1.i.i = tail call i32 @down_write_trylock(ptr noundef %quota_sem.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i188 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i188, label %if.end.i.i.if.then.i190_crit_edge, label %if.end3.i.i

if.end.i.i.if.then.i190_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i190

if.end3.i.i:                                      ; preds = %if.end.i.i
  %75 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %s_flag.i, align 4
  %77 = and i32 %76, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.end3.i.i.__need_flush_quota.exit.thread104.i_crit_edge

if.end3.i.i.__need_flush_quota.exit.thread104.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__need_flush_quota.exit.thread104.i

if.else.i.i:                                      ; preds = %if.end3.i.i
  %78 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %s_flag.i, align 4
  %80 = and i32 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i29.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.i29.not.i.i, label %if.else8.i.i, label %if.else.i.i.__need_flush_quota.exit.thread104.i_crit_edge

if.else.i.i.__need_flush_quota.exit.thread104.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__need_flush_quota.exit.thread104.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %81 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %s_flag.i, align 4
  %83 = and i32 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i31.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool.i31.not.i.i, label %__need_flush_quota.exit.i, label %__need_flush_quota.exit.thread106.i

__need_flush_quota.exit.thread106.i:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %s_flag.i) #14
  tail call void @up_write(ptr noundef %quota_sem.i.i) #14
  br label %if.then.i190

__need_flush_quota.exit.thread104.i:              ; preds = %if.else.i.i.__need_flush_quota.exit.thread104.i_crit_edge, %if.end3.i.i.__need_flush_quota.exit.thread104.i_crit_edge
  tail call void @up_write(ptr noundef %quota_sem.i.i) #14
  br label %retry_flush_dents.i

__need_flush_quota.exit.i:                        ; preds = %if.else8.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #14
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool13.not.i.not.i = icmp eq i32 %85, 0
  tail call void @up_write(ptr noundef %quota_sem.i.i) #14
  br i1 %tobool13.not.i.not.i, label %__need_flush_quota.exit.i.retry_flush_dents.i_crit_edge, label %__need_flush_quota.exit.i.if.then.i190_crit_edge

__need_flush_quota.exit.i.if.then.i190_crit_edge: ; preds = %__need_flush_quota.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i190

__need_flush_quota.exit.i.retry_flush_dents.i_crit_edge: ; preds = %__need_flush_quota.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_flush_dents.i

if.then.i190:                                     ; preds = %__need_flush_quota.exit.i.if.then.i190_crit_edge, %__need_flush_quota.exit.thread106.i, %if.end.i.i.if.then.i190_crit_edge
  %inc.i189 = add i32 %cnt.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i189)
  %cmp.i = icmp sgt i32 %inc.i189, 8
  br i1 %cmp.i, label %cleanup.thread.i, label %if.end.i

cleanup.thread.i:                                 ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 11, ptr noundef %s_flag.i) #14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %s_flag.i) #14
  br label %retry_flush_dents.i

if.end.i:                                         ; preds = %if.then.i190
  tail call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  %86 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sbi, align 8
  %s_umount.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 14
  %call2.i = tail call i32 @down_read_trylock(ptr noundef %s_umount.i) #14
  %88 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sbi, align 8
  %call4.i = tail call i32 @f2fs_quota_sync(ptr noundef %89, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.retry_flush_quotas.backedge.i_crit_edge, label %if.then5.i

if.end.i.retry_flush_quotas.backedge.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_flush_quotas.backedge.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sbi, align 8
  %s_umount7.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 14
  tail call void @up_read(ptr noundef %s_umount7.i) #14
  br label %retry_flush_quotas.backedge.i

retry_flush_dents.i:                              ; preds = %cleanup.thread.i, %__need_flush_quota.exit.i.retry_flush_dents.i_crit_edge, %__need_flush_quota.exit.thread104.i, %is_journalled_quota.exit.i.i.retry_flush_dents.i_crit_edge
  %cnt.1.i = phi i32 [ %cnt.0.i, %__need_flush_quota.exit.i.retry_flush_dents.i_crit_edge ], [ %cnt.0.i, %__need_flush_quota.exit.thread104.i ], [ %inc.i189, %cleanup.thread.i ], [ %cnt.0.i, %is_journalled_quota.exit.i.i.retry_flush_dents.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #14
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool12.not.i = icmp eq i32 %93, 0
  br i1 %tobool12.not.i, label %if.end20.i, label %if.then13.i

if.then13.i:                                      ; preds = %retry_flush_dents.i
  tail call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  %call14.i = tail call i32 @f2fs_sync_dirty_inodes(ptr noundef %sbi, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.retry_flush_quotas.backedge.i_crit_edge, label %if.then13.i.block_operations.exit.thread_crit_edge

if.then13.i.block_operations.exit.thread_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %block_operations.exit.thread

if.then13.i.retry_flush_quotas.backedge.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_flush_quotas.backedge.i

retry_flush_quotas.backedge.i:                    ; preds = %if.then23.i.retry_flush_quotas.backedge.i_crit_edge, %if.then13.i.retry_flush_quotas.backedge.i_crit_edge, %if.then5.i, %if.end.i.retry_flush_quotas.backedge.i_crit_edge
  %.sink.i = phi i32 [ 1239, %if.then23.i.retry_flush_quotas.backedge.i_crit_edge ], [ 1212, %if.end.i.retry_flush_quotas.backedge.i_crit_edge ], [ 1212, %if.then5.i ], [ 1223, %if.then13.i.retry_flush_quotas.backedge.i_crit_edge ]
  %cnt.0.be.i = phi i32 [ %cnt.1.i, %if.then23.i.retry_flush_quotas.backedge.i_crit_edge ], [ %inc.i189, %if.end.i.retry_flush_quotas.backedge.i_crit_edge ], [ %inc.i189, %if.then5.i ], [ %cnt.1.i, %if.then13.i.retry_flush_quotas.backedge.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 0) #14
  %call.i87.i = tail call i32 @__cond_resched() #14
  br label %retry_flush_quotas.i

if.end20.i:                                       ; preds = %retry_flush_dents.i
  tail call void @down_write(ptr noundef %node_change.i) #14
  %call.i.i.i89.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i88.i, i32 noundef 4) #14
  %94 = ptrtoint ptr %arrayidx.i88.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %arrayidx.i88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool22.not.i = icmp eq i32 %95, 0
  br i1 %tobool22.not.i, label %retry_flush_nodes.preheader.i, label %if.then23.i

retry_flush_nodes.preheader.i:                    ; preds = %if.end20.i
  %node_write.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 21
  tail call void @down_write(ptr noundef %node_write.i) #14
  %arrayidx.i93.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i94112.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i93.i, i32 noundef 4) #14
  %96 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %arrayidx.i93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool33.not113.i = icmp eq i32 %97, 0
  br i1 %tobool33.not113.i, label %retry_flush_nodes.preheader.i.if.end45.i_crit_edge, label %if.then34.lr.ph.i

retry_flush_nodes.preheader.i.if.end45.i_crit_edge: ; preds = %retry_flush_nodes.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then34.lr.ph.i:                                ; preds = %retry_flush_nodes.preheader.i
  %arrayidx.i191 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 71, i32 1
  br label %if.then34.i

if.then23.i:                                      ; preds = %if.end20.i
  tail call void @up_write(ptr noundef %node_change.i) #14
  tail call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  %call25.i = tail call i32 @f2fs_sync_inode_meta(ptr noundef %sbi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then23.i.retry_flush_quotas.backedge.i_crit_edge, label %if.then23.i.block_operations.exit.thread_crit_edge

if.then23.i.block_operations.exit.thread_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %block_operations.exit.thread

if.then23.i.retry_flush_quotas.backedge.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_flush_quotas.backedge.i

if.then34.i:                                      ; preds = %if.end42.i.if.then34.i_crit_edge, %if.then34.lr.ph.i
  call void @up_write(ptr noundef %node_write.i) #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i191, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx.i191, i32 1, i32 3, i32 1) #14
  %98 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i191, ptr %arrayidx.i191, i32 1, ptr elementtype(i32) %arrayidx.i191) #14, !srcloc !148
  %call36.i = call i32 @f2fs_sync_node_pages(ptr noundef %sbi, ptr noundef nonnull %wbc.i, i1 noundef zeroext false, i32 noundef 10) #14
  %call.i.i83.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i191, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx.i191, i32 1, i32 3, i32 1) #14
  %99 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i191, ptr %arrayidx.i191, i32 1, ptr elementtype(i32) %arrayidx.i191) #14, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool39.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool39.not.i, label %if.end42.i, label %block_operations.exit

if.end42.i:                                       ; preds = %if.then34.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1256, i32 noundef 0) #14
  %call.i97.i = call i32 @__cond_resched() #14
  call void @down_write(ptr noundef %node_write.i) #14
  %call.i.i.i94.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i93.i, i32 noundef 4) #14
  %100 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %arrayidx.i93.i, align 4
  %tobool33.not.i = icmp eq i32 %101, 0
  br i1 %tobool33.not.i, label %if.end42.i.if.end45.i_crit_edge, label %if.end42.i.if.then34.i_crit_edge

if.end42.i.if.then34.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then34.i

if.end42.i.if.end45.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end42.i.if.end45.i_crit_edge, %retry_flush_nodes.preheader.i.if.end45.i_crit_edge
  %102 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ckpt.i, align 4
  %nm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 9
  %104 = ptrtoint ptr %nm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %nm_info.i.i.i, align 8
  %next_scan_nid.i.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %next_scan_nid.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %next_scan_nid.i.i, align 4
  %nid_list_lock.i.i.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %105, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %nid_list_lock.i.i.i) #14
  %nid_cnt.i.i.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %105, i32 0, i32 16
  %108 = ptrtoint ptr %nid_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nid_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i.i.i = icmp eq i32 %109, 0
  br i1 %cmp.i.i.i, label %if.end45.i.if.end42_crit_edge, label %if.end.i.i98.i

if.end45.i.if.end42_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.end.i.i98.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  %free_nid_list.i.i.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %105, i32 0, i32 15
  %110 = ptrtoint ptr %free_nid_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %free_nid_list.i.i.i, align 4
  %nid2.i.i.i = getelementptr inbounds %struct.free_nid, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %nid2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nid2.i.i.i, align 4
  br label %if.end42

block_operations.exit.thread:                     ; preds = %if.then23.i.block_operations.exit.thread_crit_edge, %if.then13.i.block_operations.exit.thread_crit_edge
  %retval.0.i193.ph = phi i32 [ %call14.i, %if.then13.i.block_operations.exit.thread_crit_edge ], [ %call25.i, %if.then23.i.block_operations.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i) #14
  br label %outthread-pre-split

block_operations.exit:                            ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @up_write(ptr noundef %node_change.i) #14
  call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i) #14
  br label %outthread-pre-split

if.end42:                                         ; preds = %if.end.i.i98.i, %if.end45.i.if.end42_crit_edge
  %last_nid.0.i.i = phi i32 [ %107, %if.end45.i.if.end42_crit_edge ], [ %113, %if.end.i.i98.i ]
  call void @_raw_spin_unlock(ptr noundef %nid_list_lock.i.i.i) #14
  %total_valid_block_count.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 61
  %114 = ptrtoint ptr %total_valid_block_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %total_valid_block_count.i.i.i, align 4
  %conv.i99.i = zext i32 %115 to i64
  %116 = call i64 @llvm.bswap.i64(i64 %conv.i99.i) #14
  %valid_block_count.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %103, i32 0, i32 2
  %117 = ptrtoint ptr %valid_block_count.i.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %valid_block_count.i.i, align 1
  %total_valid_node_count.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 56
  %118 = ptrtoint ptr %total_valid_node_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %total_valid_node_count.i.i.i, align 8
  %120 = call i32 @llvm.bswap.i32(i32 %119) #14
  %valid_node_count.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %103, i32 0, i32 13
  %121 = ptrtoint ptr %valid_node_count.i.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %valid_node_count.i.i, align 1
  %total_valid_inode_count.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 72
  %call.i.i.i100.i = call i64 @__percpu_counter_sum(ptr noundef %total_valid_inode_count.i.i.i) #14
  %122 = call i64 @llvm.smax.i64(i64 %call.i.i.i100.i, i64 0) #14
  %conv5.i.i = trunc i64 %122 to i32
  %123 = call i32 @llvm.bswap.i32(i32 %conv5.i.i) #14
  %valid_inode_count.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %103, i32 0, i32 14
  %124 = ptrtoint ptr %valid_inode_count.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %123, ptr %valid_inode_count.i.i, align 1
  %125 = call i32 @llvm.bswap.i32(i32 %last_nid.0.i.i) #14
  %next_free_nid.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %103, i32 0, i32 15
  %126 = ptrtoint ptr %next_free_nid.i.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %125, ptr %next_free_nid.i.i, align 1
  call void @up_write(ptr noundef %node_change.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i) #14
  %127 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sbi, align 8
  %129 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cpc, align 8
  call fastcc void @trace_f2fs_write_checkpoint(ptr noundef %128, i32 noundef %130, ptr noundef nonnull @.str.9)
  call void @f2fs_flush_merged_writes(ptr noundef %sbi) #14
  %131 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cpc, align 8
  %and46 = and i32 %132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end42.if.end62_crit_edge, label %if.then48

if.end42.if.end62_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then48:                                        ; preds = %if.end42
  %call49 = call zeroext i1 @f2fs_exist_trim_candidates(ptr noundef %sbi, ptr noundef %cpc) #14
  br i1 %call49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  call void @up_write(ptr noundef %node_write.i) #14
  call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  br label %outthread-pre-split

if.end51:                                         ; preds = %if.then48
  %133 = ptrtoint ptr %nm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %nm_info.i.i.i, align 8
  %arrayidx = getelementptr %struct.f2fs_nm_info, ptr %134, i32 0, i32 12, i32 1
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp53 = icmp eq i32 %136, 0
  br i1 %cmp53, label %land.lhs.true54, label %if.end51.if.end62_crit_edge

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

land.lhs.true54:                                  ; preds = %if.end51
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %137 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sm_info.i.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %dirty_sentries = getelementptr inbounds %struct.sit_info, ptr %140, i32 0, i32 11
  %141 = ptrtoint ptr %dirty_sentries to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dirty_sentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp56 = icmp eq i32 %142, 0
  br i1 %cmp56, label %land.lhs.true57, label %land.lhs.true54.if.end62_crit_edge

land.lhs.true54.if.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %dirty_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %138, i32 0, i32 2
  %143 = ptrtoint ptr %dirty_info.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dirty_info.i.i, align 4
  %arrayidx.i196 = getelementptr %struct.dirty_seglist_info, ptr %144, i32 0, i32 4, i32 7
  %145 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp59 = icmp eq i32 %146, 0
  br i1 %cmp59, label %if.then60, label %land.lhs.true57.if.end62_crit_edge

land.lhs.true57.if.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_flush_sit_entries(ptr noundef %sbi, ptr noundef %cpc) #14
  call void @f2fs_clear_prefree_segments(ptr noundef %sbi, ptr noundef %cpc) #14
  call void @up_write(ptr noundef %node_write.i) #14
  call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  br label %outthread-pre-split

if.end62:                                         ; preds = %land.lhs.true57.if.end62_crit_edge, %land.lhs.true54.if.end62_crit_edge, %if.end51.if.end62_crit_edge, %if.end42.if.end62_crit_edge
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %1, align 1
  %149 = call i64 @llvm.bswap.i64(i64 %148) #14
  %inc = add i64 %149, 1
  %150 = call i64 @llvm.bswap.i64(i64 %inc)
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %150, ptr %1, align 1
  %call64 = call i32 @f2fs_flush_nat_entries(ptr noundef %sbi, ptr noundef %cpc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end84, label %if.then66

if.then66:                                        ; preds = %if.end62
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.10, i32 noundef %call64) #14
  %152 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i.i200 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %153, i32 0, i32 10
  %154 = ptrtoint ptr %ckpt_flags1.i.i.i200 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %ckpt_flags1.i.i.i200, align 1
  %156 = and i32 %155, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i.i.i201.not = icmp eq i32 %156, 0
  br i1 %tobool.i.i.i201.not, label %do.body77, label %if.then66.stop_crit_edge, !prof !152

if.then66.stop_crit_edge:                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop

do.body77:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1665, 0\0A.popsection", ""() #14, !srcloc !182
  unreachable

if.end84:                                         ; preds = %if.end62
  call void @f2fs_flush_sit_entries(ptr noundef %sbi, ptr noundef %cpc) #14
  call void @f2fs_save_inmem_curseg(ptr noundef %sbi) #14
  %call85 = call fastcc i32 @do_checkpoint(ptr noundef %sbi, ptr noundef %cpc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.else, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.11, i32 noundef %call85) #14
  %157 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i.i203 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %158, i32 0, i32 10
  %159 = ptrtoint ptr %ckpt_flags1.i.i.i203 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %ckpt_flags1.i.i.i203, align 1
  %161 = and i32 %160, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.i.i.i204.not = icmp eq i32 %161, 0
  br i1 %tobool.i.i.i204.not, label %do.body99, label %do.end107, !prof !152

do.body99:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1677, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

do.end107:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_release_discard_addrs(ptr noundef %sbi) #14
  br label %if.end108

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_clear_prefree_segments(ptr noundef %sbi, ptr noundef %cpc) #14
  br label %if.end108

if.end108:                                        ; preds = %if.else, %do.end107
  call void @f2fs_restore_inmem_curseg(ptr noundef %sbi) #14
  br label %stop

stop:                                             ; preds = %if.end108, %if.then66.stop_crit_edge
  %err.0 = phi i32 [ %call64, %if.then66.stop_crit_edge ], [ %call85, %if.end108 ]
  call void @up_write(ptr noundef %node_write.i) #14
  call void @up_write(ptr noundef %cp_rwsem.i.i) #14
  %stat_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %162 = ptrtoint ptr %stat_info to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %stat_info, align 8
  %cp_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %163, i32 0, i32 89
  %164 = ptrtoint ptr %cp_count to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cp_count, align 8
  %inc109 = add i32 %165, 1
  store i32 %inc109, ptr %cp_count, align 8
  %166 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cpc, align 8
  %and111 = and i32 %167, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %stop.if.end114_crit_edge, label %if.then113

stop.if.end114_crit_edge:                         ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then113:                                       ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.12, i64 noundef %inc) #14
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %stop.if.end114_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %168 = load volatile i32, ptr @jiffies, align 128
  %last_time.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 24
  %169 = ptrtoint ptr %last_time.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %last_time.i, align 4
  %170 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sbi, align 8
  %172 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cpc, align 8
  call fastcc void @trace_f2fs_write_checkpoint(ptr noundef %171, i32 noundef %173, ptr noundef nonnull @.str.13)
  br label %outthread-pre-split

outthread-pre-split:                              ; preds = %if.end114, %if.then60, %if.then50, %block_operations.exit, %block_operations.exit.thread, %if.end27.outthread-pre-split_crit_edge, %land.lhs.true24.outthread-pre-split_crit_edge
  %err.1.ph = phi i32 [ %retval.0.i193.ph, %block_operations.exit.thread ], [ -5, %if.end27.outthread-pre-split_crit_edge ], [ 0, %land.lhs.true24.outthread-pre-split_crit_edge ], [ 0, %if.then50 ], [ %err.0, %if.end114 ], [ 0, %if.then60 ], [ %call36.i, %block_operations.exit ]
  %174 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr = load i32, ptr %cpc, align 8
  br label %out

out:                                              ; preds = %outthread-pre-split, %land.lhs.true.out_crit_edge
  %175 = phi i32 [ %.pr, %outthread-pre-split ], [ %47, %land.lhs.true.out_crit_edge ]
  %err.1 = phi i32 [ %err.1.ph, %outthread-pre-split ], [ 0, %land.lhs.true.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %175)
  %cmp118.not = icmp eq i32 %175, 128
  br i1 %cmp118.not, label %out.cleanup_crit_edge, label %if.then119

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then119:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %cp_global_sem120 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 19
  call void @up_write(ptr noundef %cp_global_sem120) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %out.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %f2fs_hw_is_readonly.exit.cleanup_crit_edge, %bdev_read_only.exit21.i.cleanup_crit_edge, %lor.rhs.i17.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.rhs.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %f2fs_hw_is_readonly.exit.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ %err.1, %if.then119 ], [ %err.1, %out.cleanup_crit_edge ], [ -30, %if.then.i.cleanup_crit_edge ], [ -30, %lor.rhs.i.i.cleanup_crit_edge ], [ -30, %bdev_read_only.exit21.i.cleanup_crit_edge ], [ -30, %for.body.i.cleanup_crit_edge ], [ -30, %lor.rhs.i17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_write_checkpoint(ptr noundef %sb, i32 noundef %reason, ptr noundef %msg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_write_checkpoint, i32 0, i32 1), ptr blockaddress(@trace_f2fs_write_checkpoint, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !146

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !184
  %call42 = tail call i32 @__traceiter_f2fs_write_checkpoint(ptr noundef null, ptr noundef %sb, i32 noundef %reason, ptr noundef %msg) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !146

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_write_checkpoint, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_write_checkpoint, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_f2fs_write_checkpoint.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_f2fs_write_checkpoint.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1445, ptr noundef nonnull @.str.29) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %31 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
declare dso_local zeroext i1 @f2fs_exist_trim_candidates(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_flush_sit_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_clear_prefree_segments(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_flush_nat_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_save_inmem_curseg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_checkpoint(ptr noundef %sbi, ptr nocapture noundef readonly %cpc) unnamed_addr #0 align 64 {
entry:
  %desc.i.i10.i = alloca %struct.anon.92, align 8
  %desc.i.i.i = alloca %struct.anon.92, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %0 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ckpt.i, align 4
  %nm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 9
  %2 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nm_info.i, align 8
  %ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 3
  %4 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino_num, align 8
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %6 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_super.i.i, align 8
  %cp_payload.i = getelementptr inbounds %struct.f2fs_super_block, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %cp_payload.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %cp_payload.i, align 1
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %10 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %curseg_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curseg_array.i, align 4
  %call4 = tail call i32 @f2fs_sync_meta_pages(ptr noundef %sbi, i32 noundef 2, i32 noundef 2147483647, i32 noundef 11)
  %14 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm_info.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %cmp8.i.i.i = icmp slt i64 %call.i.i.i, 0
  %18 = tail call i64 @llvm.abs.i64(i64 %call.i.i.i, i1 false) #14
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %18, i32 0) #20, !srcloc !186
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %18, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #20, !srcloc !187
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %20, 0
  %div181.i2.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %sub210.i.i.i = sub nsw i64 0, %div181.i2.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i2.i.i
  %mounted_time.i = getelementptr inbounds %struct.sit_info, ptr %17, i32 0, i32 17
  %21 = ptrtoint ptr %mounted_time.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mounted_time.i, align 8
  %elapsed_time13.i = getelementptr inbounds %struct.sit_info, ptr %17, i32 0, i32 16
  %23 = ptrtoint ptr %elapsed_time13.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %elapsed_time13.i, align 8
  %25 = tail call i64 @llvm.usub.sat.i64(i64 %spec.select.i.i.i, i64 %22) #14
  %retval.0.i = add i64 %25, %24
  %26 = tail call i64 @llvm.bswap.i64(i64 %retval.0.i)
  %elapsed_time = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %elapsed_time to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %elapsed_time, align 1
  %28 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm_info.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free_info.i.i, align 4
  %free_segments.i = getelementptr inbounds %struct.free_segmap_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %free_segments.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %free_segments.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %free_segment_count = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %free_segment_count to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %free_segment_count, align 1
  %36 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %curseg_array.i.i, align 4
  %segno.i = getelementptr %struct.curseg_info, ptr %39, i32 3, i32 6
  %40 = ptrtoint ptr %segno.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %segno.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %arrayidx8 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 6, i32 0
  %43 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx8, align 1
  %44 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i337 = getelementptr inbounds %struct.f2fs_sm_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %curseg_array.i.i337 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %curseg_array.i.i337, align 4
  %next_blkoff.i = getelementptr %struct.curseg_info, ptr %47, i32 3, i32 7
  %48 = ptrtoint ptr %next_blkoff.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %next_blkoff.i, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %arrayidx11 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 7, i32 0
  %51 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %arrayidx11, align 1
  %52 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i339 = getelementptr inbounds %struct.f2fs_sm_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %curseg_array.i.i339 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %curseg_array.i.i339, align 4
  %alloc_type.i = getelementptr %struct.curseg_info, ptr %55, i32 3, i32 4
  %56 = ptrtoint ptr %alloc_type.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %alloc_type.i, align 4
  %arrayidx15 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 20, i32 3
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx15, align 1
  %59 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i.1 = getelementptr inbounds %struct.f2fs_sm_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %curseg_array.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curseg_array.i.i.1, align 4
  %segno.i.1 = getelementptr %struct.curseg_info, ptr %61, i32 4, i32 6
  %62 = ptrtoint ptr %segno.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %segno.i.1, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %arrayidx8.1 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx8.1, align 1
  %66 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i337.1 = getelementptr inbounds %struct.f2fs_sm_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %curseg_array.i.i337.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %curseg_array.i.i337.1, align 4
  %next_blkoff.i.1 = getelementptr %struct.curseg_info, ptr %69, i32 4, i32 7
  %70 = ptrtoint ptr %next_blkoff.i.1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %next_blkoff.i.1, align 4
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %arrayidx11.1 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %arrayidx11.1, align 1
  %74 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i339.1 = getelementptr inbounds %struct.f2fs_sm_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %curseg_array.i.i339.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %curseg_array.i.i339.1, align 4
  %alloc_type.i.1 = getelementptr %struct.curseg_info, ptr %77, i32 4, i32 4
  %78 = ptrtoint ptr %alloc_type.i.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %alloc_type.i.1, align 4
  %arrayidx15.1 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 20, i32 4
  %80 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx15.1, align 1
  %81 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i.2 = getelementptr inbounds %struct.f2fs_sm_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %curseg_array.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %curseg_array.i.i.2, align 4
  %segno.i.2 = getelementptr %struct.curseg_info, ptr %83, i32 5, i32 6
  %84 = ptrtoint ptr %segno.i.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %segno.i.2, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %arrayidx8.2 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 6, i32 2
  %87 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %arrayidx8.2, align 1
  %88 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i337.2 = getelementptr inbounds %struct.f2fs_sm_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %curseg_array.i.i337.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %curseg_array.i.i337.2, align 4
  %next_blkoff.i.2 = getelementptr %struct.curseg_info, ptr %91, i32 5, i32 7
  %92 = ptrtoint ptr %next_blkoff.i.2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %next_blkoff.i.2, align 4
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %arrayidx11.2 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 7, i32 2
  %95 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %94, ptr %arrayidx11.2, align 1
  %96 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i339.2 = getelementptr inbounds %struct.f2fs_sm_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %curseg_array.i.i339.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %curseg_array.i.i339.2, align 4
  %alloc_type.i.2 = getelementptr %struct.curseg_info, ptr %99, i32 5, i32 4
  %100 = ptrtoint ptr %alloc_type.i.2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %alloc_type.i.2, align 4
  %arrayidx15.2 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 20, i32 5
  %102 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx15.2, align 1
  %103 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i341 = getelementptr inbounds %struct.f2fs_sm_info, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %curseg_array.i.i341 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %curseg_array.i.i341, align 4
  %segno.i342 = getelementptr %struct.curseg_info, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %segno.i342 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %segno.i342, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %arrayidx21 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 8, i32 0
  %109 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %arrayidx21, align 1
  %110 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i344 = getelementptr inbounds %struct.f2fs_sm_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %curseg_array.i.i344 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %curseg_array.i.i344, align 4
  %next_blkoff.i345 = getelementptr %struct.curseg_info, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %next_blkoff.i345 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %next_blkoff.i345, align 4
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %arrayidx24 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 9, i32 0
  %117 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %arrayidx24, align 1
  %118 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i347 = getelementptr inbounds %struct.f2fs_sm_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %curseg_array.i.i347 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %curseg_array.i.i347, align 4
  %alloc_type.i348 = getelementptr %struct.curseg_info, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %alloc_type.i348 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %alloc_type.i348, align 4
  %arrayidx29 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 20, i32 0
  %124 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx29, align 1
  %125 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i341.1 = getelementptr inbounds %struct.f2fs_sm_info, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %curseg_array.i.i341.1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %curseg_array.i.i341.1, align 4
  %segno.i342.1 = getelementptr %struct.curseg_info, ptr %127, i32 1, i32 6
  %128 = ptrtoint ptr %segno.i342.1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %segno.i342.1, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %arrayidx21.1 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 8, i32 1
  %131 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %130, ptr %arrayidx21.1, align 1
  %132 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i344.1 = getelementptr inbounds %struct.f2fs_sm_info, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %curseg_array.i.i344.1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %curseg_array.i.i344.1, align 4
  %next_blkoff.i345.1 = getelementptr %struct.curseg_info, ptr %135, i32 1, i32 7
  %136 = ptrtoint ptr %next_blkoff.i345.1 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %next_blkoff.i345.1, align 4
  %138 = tail call i16 @llvm.bswap.i16(i16 %137)
  %arrayidx24.1 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 9, i32 1
  %139 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %arrayidx24.1, align 1
  %140 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i347.1 = getelementptr inbounds %struct.f2fs_sm_info, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %curseg_array.i.i347.1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %curseg_array.i.i347.1, align 4
  %alloc_type.i348.1 = getelementptr %struct.curseg_info, ptr %143, i32 1, i32 4
  %144 = ptrtoint ptr %alloc_type.i348.1 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %alloc_type.i348.1, align 4
  %arrayidx29.1 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 20, i32 1
  %146 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx29.1, align 1
  %147 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i341.2 = getelementptr inbounds %struct.f2fs_sm_info, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %curseg_array.i.i341.2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %curseg_array.i.i341.2, align 4
  %segno.i342.2 = getelementptr %struct.curseg_info, ptr %149, i32 2, i32 6
  %150 = ptrtoint ptr %segno.i342.2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %segno.i342.2, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151)
  %arrayidx21.2 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 8, i32 2
  %153 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %152, ptr %arrayidx21.2, align 1
  %154 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i344.2 = getelementptr inbounds %struct.f2fs_sm_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %curseg_array.i.i344.2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %curseg_array.i.i344.2, align 4
  %next_blkoff.i345.2 = getelementptr %struct.curseg_info, ptr %157, i32 2, i32 7
  %158 = ptrtoint ptr %next_blkoff.i345.2 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %next_blkoff.i345.2, align 4
  %160 = tail call i16 @llvm.bswap.i16(i16 %159)
  %arrayidx24.2 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 9, i32 2
  %161 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 %160, ptr %arrayidx24.2, align 1
  %162 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i347.2 = getelementptr inbounds %struct.f2fs_sm_info, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %curseg_array.i.i347.2 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %curseg_array.i.i347.2, align 4
  %alloc_type.i348.2 = getelementptr %struct.curseg_info, ptr %165, i32 2, i32 4
  %166 = ptrtoint ptr %alloc_type.i348.2 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %alloc_type.i348.2, align 4
  %arrayidx29.2 = getelementptr %struct.f2fs_checkpoint, ptr %1, i32 0, i32 20, i32 2
  %168 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx29.2, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %call33 = tail call i32 @f2fs_npages_for_summary_flush(ptr noundef %sbi, i1 noundef zeroext false) #14
  %cp_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 17
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call33)
  %cmp40 = icmp ult i32 %call33, 3
  %ckpt_flags1.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 10
  %170 = ptrtoint ptr %ckpt_flags1.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %ckpt_flags1.i, align 1
  %172 = and i32 %171, -67108865
  %masksel = select i1 %cmp40, i32 67108864, i32 0
  %.sink484 = or i32 %172, %masksel
  store i32 %.sink484, ptr %ckpt_flags1.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call37) #14
  %sub = add i32 %5, 1019
  %div = udiv i32 %sub, 1020
  %add44 = add i32 %169, 1
  %add45 = add i32 %add44, %div
  %173 = tail call i32 @llvm.bswap.i32(i32 %add45)
  %cp_pack_start_sum = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 12
  %174 = ptrtoint ptr %cp_pack_start_sum to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %173, ptr %cp_pack_start_sum, align 1
  %175 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cpc, align 8
  %and.i350 = and i32 %176, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i350)
  %tobool.i.not = icmp eq i32 %and.i350, 0
  %add53 = add nuw nsw i32 %div, 2
  %add54 = add i32 %add53, %169
  %add49 = add i32 %169, %div
  %add50 = add i32 %add49, 5
  %add54.sink = select i1 %tobool.i.not, i32 %add54, i32 %add50
  %add55 = add i32 %add54.sink, %call33
  %177 = tail call i32 @llvm.bswap.i32(i32 %add55)
  %178 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 11
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_storeN_noabort(i32 %179, i32 4)
  store i32 %177, ptr %178, align 1
  %180 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ino_num, align 8
  %182 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ckpt.i, align 4
  %184 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cpc, align 8
  %and.i351 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i351)
  %tobool.not.i = icmp eq i32 %and.i351, 0
  br i1 %tobool.not.i, label %entry.do.body8.i_crit_edge, label %if.then.i

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8.i

if.then.i:                                        ; preds = %entry
  %cp_pack_total_block_count.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %183, i32 0, i32 11
  %186 = ptrtoint ptr %cp_pack_total_block_count.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %cp_pack_total_block_count.i, align 1
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #14
  %189 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %nm_info.i, align 8
  %nat_bits_blocks.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %190, i32 0, i32 23
  %191 = ptrtoint ptr %nat_bits_blocks.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %nat_bits_blocks.i, align 4
  %add.i = add i32 %192, %188
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %193 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %blocks_per_seg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %194)
  %cmp.i = icmp ugt i32 %add.i, %194
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #14
  %195 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %196, i32 0, i32 10
  %197 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %199 = and i32 %198, 2147483647
  store i32 %199, ptr %ckpt_flags1.i.i.i, align 1
  br label %do.body8.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  %ckpt_flags1.i.i101.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %183, i32 0, i32 10
  %200 = ptrtoint ptr %ckpt_flags1.i.i101.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %ckpt_flags1.i.i101.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %201)
  %tobool.i.i.not.i = icmp sgt i32 %201, -1
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i, label %if.else.i.do.body8.i_crit_edge

if.else.i.do.body8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %call4.i = tail call zeroext i1 @f2fs_nat_bitmap_enabled(ptr noundef %sbi) #14
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.do.body8.i_crit_edge

land.lhs.true.i.do.body8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_enable_nat_bits(ptr noundef %sbi) #14
  %call2.i104.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #14
  %202 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i106.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %203, i32 0, i32 10
  %204 = ptrtoint ptr %ckpt_flags1.i.i106.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %ckpt_flags1.i.i106.i, align 1
  %206 = or i32 %205, -2147483648
  store i32 %206, ptr %ckpt_flags1.i.i106.i, align 1
  br label %do.body8.sink.split.i

do.body8.sink.split.i:                            ; preds = %if.then5.i, %if.then2.i
  %call2.i104.i.sink = phi i32 [ %call2.i104.i, %if.then5.i ], [ %call2.i.i, %if.then2.i ]
  %.str.43.sink.i = phi ptr [ @.str.44, %if.then5.i ], [ @.str.43, %if.then2.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call2.i104.i.sink) #14
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull %.str.43.sink.i) #14
  br label %do.body8.i

do.body8.i:                                       ; preds = %do.body8.sink.split.i, %land.lhs.true.i.do.body8.i_crit_edge, %if.else.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock) #14
  %207 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cpc, align 8
  %ckpt_flags1.i107.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %183, i32 0, i32 10
  %209 = ptrtoint ptr %ckpt_flags1.i107.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %ckpt_flags1.i107.i, align 1
  %211 = and i32 %210, -65537
  %and15.i = shl i32 %208, 11
  %212 = and i32 %and15.i, 65536
  %.sink157.i = or i32 %211, %212
  store i32 %.sink157.i, ptr %ckpt_flags1.i107.i, align 1
  %213 = load i32, ptr %cpc, align 8
  %214 = and i32 %.sink157.i, -16777217
  %and21.i = shl i32 %213, 24
  %215 = and i32 %and21.i, 16777216
  %.sink.i = or i32 %215, %214
  store i32 %.sink.i, ptr %ckpt_flags1.i107.i, align 1
  %216 = load i32, ptr %cpc, align 8
  %217 = and i32 %.sink.i, -570425345
  %and27.i = shl i32 %216, 28
  %218 = and i32 %and27.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool32.not.i = icmp eq i32 %181, 0
  %masksel.i = select i1 %tobool32.not.i, i32 0, i32 33554432
  %.sink159.i = or i32 %218, %masksel.i
  %.sink154.i = or i32 %.sink159.i, %217
  %219 = ptrtoint ptr %ckpt_flags1.i107.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 4)
  store i32 %.sink154.i, ptr %ckpt_flags1.i107.i, align 1
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %220 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %s_flag.i.i, align 4
  %222 = and i32 %221, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.i.not.i = icmp eq i32 %222, 0
  br i1 %tobool.i.not.i, label %do.body8.i.if.end38.i_crit_edge, label %if.then37.i

do.body8.i.if.end38.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then37.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  %223 = or i32 %.sink154.i, 268435456
  %224 = ptrtoint ptr %ckpt_flags1.i107.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 4)
  store i32 %223, ptr %ckpt_flags1.i107.i, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %do.body8.i.if.end38.i_crit_edge
  %225 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %s_flag.i.i, align 4
  %227 = ptrtoint ptr %ckpt_flags1.i107.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %ckpt_flags1.i107.i, align 1
  %229 = and i32 %228, -4194305
  %230 = shl i32 %226, 9
  %231 = and i32 %230, 4194304
  %.sink155.i = or i32 %229, %231
  store i32 %.sink155.i, ptr %ckpt_flags1.i107.i, align 1
  %232 = load volatile i32, ptr %s_flag.i.i, align 4
  %233 = and i32 %.sink155.i, -1048577
  %234 = shl i32 %232, 12
  %235 = and i32 %234, 1048576
  %.sink158.i = or i32 %235, %233
  store i32 %.sink158.i, ptr %ckpt_flags1.i107.i, align 1
  %236 = load volatile i32, ptr %s_flag.i.i, align 4
  %237 = and i32 %.sink158.i, -2097153
  %238 = shl i32 %236, 12
  %239 = and i32 %238, 2097152
  %.sink156.i = or i32 %237, %239
  store i32 %.sink156.i, ptr %ckpt_flags1.i107.i, align 1
  %240 = load volatile i32, ptr %s_flag.i.i, align 4
  %241 = and i32 %.sink156.i, -524289
  %242 = shl i32 %240, 8
  %243 = and i32 %242, 524288
  %.sink160.i = or i32 %241, %243
  store i32 %.sink160.i, ptr %ckpt_flags1.i107.i, align 1
  %244 = load volatile i32, ptr %s_flag.i.i, align 4
  %245 = and i32 %244, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.i147.not.i = icmp eq i32 %245, 0
  br i1 %tobool.i147.not.i, label %if.end38.i.update_ckpt_flags.exit_crit_edge, label %if.then56.i

if.end38.i.update_ckpt_flags.exit_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_ckpt_flags.exit

if.then56.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  %246 = or i32 %.sink156.i, 524288
  %247 = ptrtoint ptr %ckpt_flags1.i107.i to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 %246, ptr %ckpt_flags1.i107.i, align 1
  br label %update_ckpt_flags.exit

update_ckpt_flags.exit:                           ; preds = %if.then56.i, %if.end38.i.update_ckpt_flags.exit_crit_edge
  %248 = ptrtoint ptr %ckpt_flags1.i107.i to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %ckpt_flags1.i107.i, align 1
  %250 = and i32 %249, -1073872897
  %251 = or i32 %250, 1073741824
  store i32 %251, ptr %ckpt_flags1.i107.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock, i32 noundef %call11.i) #14
  %252 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ckpt.i, align 4
  %sit_nat_version_bitmap.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %253, i32 0, i32 21
  %ckpt_flags1.i.i.i353 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %253, i32 0, i32 10
  %254 = ptrtoint ptr %ckpt_flags1.i.i.i353 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %255 = load i32, ptr %ckpt_flags1.i.i.i353, align 1
  %256 = and i32 %255, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.i.i.not.i354 = icmp eq i32 %256, 0
  br i1 %tobool.i.i.not.i354, label %if.end.i, label %if.then.i355

if.then.i355:                                     ; preds = %update_ckpt_flags.exit
  call void @__sanitizer_cov_trace_pc() #16
  %nat_ver_bitmap_bytesize.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %253, i32 0, i32 17
  %257 = ptrtoint ptr %nat_ver_bitmap_bytesize.i to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %nat_ver_bitmap_bytesize.i, align 1
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #14
  %add.ptr.i356 = getelementptr i8, ptr %sit_nat_version_bitmap.i, i32 %259
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i356, i32 4
  br label %__bitmap_ptr.exit

if.end.i:                                         ; preds = %update_ckpt_flags.exit
  call void @__sanitizer_cov_trace_pc() #16
  %260 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %raw_super.i.i, align 8
  %cp_payload.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %261, i32 0, i32 31
  %262 = ptrtoint ptr %cp_payload.i.i to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %cp_payload.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp4.not.i = icmp eq i32 %263, 0
  %add.ptr9.i = getelementptr i8, ptr %253, i32 4096
  %spec.select = select i1 %cmp4.not.i, ptr %sit_nat_version_bitmap.i, ptr %add.ptr9.i
  br label %__bitmap_ptr.exit

__bitmap_ptr.exit:                                ; preds = %if.end.i, %if.then.i355
  %retval.0.i358 = phi ptr [ %add.ptr2.i, %if.then.i355 ], [ %spec.select, %if.end.i ]
  %264 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %sm_info.i.i, align 8
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %sit_bitmap.i = getelementptr inbounds %struct.sit_info, ptr %267, i32 0, i32 5
  %268 = ptrtoint ptr %sit_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %sit_bitmap.i, align 4
  %sit_bitmap_mir.i = getelementptr inbounds %struct.sit_info, ptr %267, i32 0, i32 6
  %270 = ptrtoint ptr %sit_bitmap_mir.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %sit_bitmap_mir.i, align 8
  %bitmap_size.i = getelementptr inbounds %struct.sit_info, ptr %267, i32 0, i32 8
  %272 = ptrtoint ptr %bitmap_size.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %bitmap_size.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %269, ptr %271, i32 %273) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i360 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i360, label %get_sit_bitmap.exit, label %do.body2.i

do.body2.i:                                       ; preds = %__bitmap_ptr.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/segment.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 524, 0\0A.popsection", ""() #14, !srcloc !188
  unreachable

get_sit_bitmap.exit:                              ; preds = %__bitmap_ptr.exit
  %274 = call ptr @memcpy(ptr %retval.0.i358, ptr %269, i32 %273)
  %275 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ckpt.i, align 4
  %sit_nat_version_bitmap.i363 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %276, i32 0, i32 21
  %ckpt_flags1.i.i.i364 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %276, i32 0, i32 10
  %277 = ptrtoint ptr %ckpt_flags1.i.i.i364 to i32
  call void @__asan_loadN_noabort(i32 %277, i32 4)
  %278 = load i32, ptr %ckpt_flags1.i.i.i364, align 1
  %279 = and i32 %278, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool.i.i.not.i365 = icmp eq i32 %279, 0
  br i1 %tobool.i.i.not.i365, label %if.end.i372, label %if.then.i366

if.then.i366:                                     ; preds = %get_sit_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr2.i368 = getelementptr i8, ptr %sit_nat_version_bitmap.i363, i32 4
  br label %__bitmap_ptr.exit377

if.end.i372:                                      ; preds = %get_sit_bitmap.exit
  %280 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %raw_super.i.i, align 8
  %cp_payload.i.i370 = getelementptr inbounds %struct.f2fs_super_block, ptr %281, i32 0, i32 31
  %282 = ptrtoint ptr %cp_payload.i.i370 to i32
  call void @__asan_loadN_noabort(i32 %282, i32 4)
  %283 = load i32, ptr %cp_payload.i.i370, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %cmp4.not.i371 = icmp eq i32 %283, 0
  br i1 %cmp4.not.i371, label %if.else10.i375, label %if.end.i372.__bitmap_ptr.exit377_crit_edge

if.end.i372.__bitmap_ptr.exit377_crit_edge:       ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bitmap_ptr.exit377

if.else10.i375:                                   ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #16
  %sit_ver_bitmap_bytesize.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %276, i32 0, i32 16
  %284 = ptrtoint ptr %sit_ver_bitmap_bytesize.i to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %sit_ver_bitmap_bytesize.i, align 1
  %286 = tail call i32 @llvm.bswap.i32(i32 %285) #14
  %add.ptr16.i = getelementptr i8, ptr %sit_nat_version_bitmap.i363, i32 %286
  br label %__bitmap_ptr.exit377

__bitmap_ptr.exit377:                             ; preds = %if.else10.i375, %if.end.i372.__bitmap_ptr.exit377_crit_edge, %if.then.i366
  %retval.0.i376 = phi ptr [ %add.ptr2.i368, %if.then.i366 ], [ %add.ptr16.i, %if.else10.i375 ], [ %sit_nat_version_bitmap.i363, %if.end.i372.__bitmap_ptr.exit377_crit_edge ]
  %287 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %nm_info.i, align 8
  %nat_bitmap.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %288, i32 0, i32 22
  %289 = ptrtoint ptr %nat_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %nat_bitmap.i, align 4
  %nat_bitmap_mir.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %288, i32 0, i32 27
  %291 = ptrtoint ptr %nat_bitmap_mir.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %nat_bitmap_mir.i, align 4
  %bitmap_size.i379 = getelementptr inbounds %struct.f2fs_nm_info, ptr %288, i32 0, i32 28
  %293 = ptrtoint ptr %bitmap_size.i379 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %bitmap_size.i379, align 4
  %bcmp.i380 = tail call i32 @bcmp(ptr %290, ptr %292, i32 %294) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i380)
  %tobool.not.i381 = icmp eq i32 %bcmp.i380, 0
  br i1 %tobool.not.i381, label %get_nat_bitmap.exit, label %do.body2.i382

do.body2.i382:                                    ; preds = %__bitmap_ptr.exit377
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/node.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #14, !srcloc !189
  unreachable

get_nat_bitmap.exit:                              ; preds = %__bitmap_ptr.exit377
  %295 = call ptr @memcpy(ptr %retval.0.i376, ptr %290, i32 %294)
  %checksum_offset.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %1, i32 0, i32 18
  %296 = ptrtoint ptr %checksum_offset.i to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %checksum_offset.i, align 1
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i) #14
  %299 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i.i, i32 0, i32 1
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 129
  %300 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 16)
  %301 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %s_chksum_driver.i.i.i, align 8
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %302, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %304)
  %cmp.not.i.i.i = icmp eq i32 %304, 4
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i, label %do.body2.i.i.i, !prof !146

do.body2.i.i.i:                                   ; preds = %get_nat_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #14, !srcloc !190
  unreachable

do.end7.i.i.i:                                    ; preds = %get_nat_bitmap.exit
  %305 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %302, ptr %desc.i.i.i, align 8
  %306 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 -218816496, ptr %299, align 8
  %call10.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i, ptr noundef %1, i32 noundef %298) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %f2fs_crc32.exit.i, label %do.body20.i.i.i, !prof !146

do.body20.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

f2fs_crc32.exit.i:                                ; preds = %do.end7.i.i.i
  %307 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %299, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %298)
  %cmp.i384 = icmp ult i32 %298, 4092
  br i1 %cmp.i384, label %if.then.i385, label %f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge

f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge: ; preds = %f2fs_crc32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_checkpoint_chksum.exit

if.then.i385:                                     ; preds = %f2fs_crc32.exit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i10.i) #14
  %309 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i10.i, i32 0, i32 1
  %310 = call ptr @memset(ptr %desc.i.i10.i, i32 255, i32 16)
  %311 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %s_chksum_driver.i.i.i, align 8
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %312, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %314)
  %cmp.not.i.i12.i = icmp eq i32 %314, 4
  br i1 %cmp.not.i.i12.i, label %do.end7.i.i16.i, label %do.body2.i.i13.i, !prof !146

do.body2.i.i13.i:                                 ; preds = %if.then.i385
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #14, !srcloc !190
  unreachable

do.end7.i.i16.i:                                  ; preds = %if.then.i385
  %sub.i = sub nuw nsw i32 4092, %298
  %add.i386 = add nuw nsw i32 %298, 4
  %add.ptr.i387 = getelementptr i8, ptr %1, i32 %add.i386
  %315 = ptrtoint ptr %desc.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %312, ptr %desc.i.i10.i, align 8
  %316 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %308, ptr %309, align 8
  %call10.i.i14.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i10.i, ptr noundef %add.ptr.i387, i32 noundef %sub.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i14.i)
  %tobool12.not.i.i15.i = icmp eq i32 %call10.i.i14.i, 0
  br i1 %tobool12.not.i.i15.i, label %f2fs_chksum.exit.i, label %do.body20.i.i17.i, !prof !146

do.body20.i.i17.i:                                ; preds = %do.end7.i.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

f2fs_chksum.exit.i:                               ; preds = %do.end7.i.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  %317 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %309, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i10.i) #14
  br label %f2fs_checkpoint_chksum.exit

f2fs_checkpoint_chksum.exit:                      ; preds = %f2fs_chksum.exit.i, %f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge
  %chksum.0.i = phi i32 [ %318, %f2fs_chksum.exit.i ], [ %308, %f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge ]
  %319 = call i32 @llvm.bswap.i32(i32 %chksum.0.i)
  %320 = ptrtoint ptr %checksum_offset.i to i32
  call void @__asan_loadN_noabort(i32 %320, i32 4)
  %321 = load i32, ptr %checksum_offset.i, align 1
  %322 = call i32 @llvm.bswap.i32(i32 %321)
  %add.ptr = getelementptr i8, ptr %1, i32 %322
  %323 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %319, ptr %add.ptr, align 4
  %324 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %raw_super.i.i, align 8
  %cp_blkaddr.i = getelementptr inbounds %struct.f2fs_super_block, ptr %325, i32 0, i32 19
  %326 = ptrtoint ptr %cp_blkaddr.i to i32
  call void @__asan_loadN_noabort(i32 %326, i32 4)
  %327 = load i32, ptr %cp_blkaddr.i, align 1
  %328 = call i32 @llvm.bswap.i32(i32 %327) #14
  %cur_cp_pack.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 16
  %329 = ptrtoint ptr %cur_cp_pack.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %cur_cp_pack.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %330)
  %cmp.i390 = icmp eq i32 %330, 1
  br i1 %cmp.i390, label %if.then.i393, label %f2fs_checkpoint_chksum.exit.__start_cp_next_addr.exit_crit_edge

f2fs_checkpoint_chksum.exit.__start_cp_next_addr.exit_crit_edge: ; preds = %f2fs_checkpoint_chksum.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__start_cp_next_addr.exit

if.then.i393:                                     ; preds = %f2fs_checkpoint_chksum.exit
  call void @__sanitizer_cov_trace_pc() #16
  %blocks_per_seg.i391 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %331 = ptrtoint ptr %blocks_per_seg.i391 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %blocks_per_seg.i391, align 4
  %add.i392 = add i32 %332, %328
  br label %__start_cp_next_addr.exit

__start_cp_next_addr.exit:                        ; preds = %if.then.i393, %f2fs_checkpoint_chksum.exit.__start_cp_next_addr.exit_crit_edge
  %start_addr.0.i = phi i32 [ %add.i392, %if.then.i393 ], [ %328, %f2fs_checkpoint_chksum.exit.__start_cp_next_addr.exit_crit_edge ]
  %333 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %cpc, align 8
  %and = and i32 %334, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__start_cp_next_addr.exit.if.end82_crit_edge, label %land.lhs.true

__start_cp_next_addr.exit.if.end82_crit_edge:     ; preds = %__start_cp_next_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

land.lhs.true:                                    ; preds = %__start_cp_next_addr.exit
  %335 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %336, i32 0, i32 10
  %337 = ptrtoint ptr %ckpt_flags1.i.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %ckpt_flags1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %338)
  %tobool.i.i.not = icmp sgt i32 %338, -1
  br i1 %tobool.i.i.not, label %land.lhs.true.if.end82_crit_edge, label %if.then65

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then65:                                        ; preds = %land.lhs.true
  %339 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %339, i32 8)
  %340 = load i64, ptr %1, align 1
  %341 = call i64 @llvm.bswap.i64(i64 %340) #14
  %conv67 = zext i32 %chksum.0.i to i64
  %shl = shl nuw i64 %conv67, 32
  %or = or i64 %341, %shl
  %342 = call i64 @llvm.bswap.i64(i64 %or)
  %nat_bits = getelementptr inbounds %struct.f2fs_nm_info, ptr %3, i32 0, i32 24
  %343 = ptrtoint ptr %nat_bits to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %nat_bits, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 %342, ptr %344, align 8
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %346 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %blocks_per_seg, align 4
  %add68 = add i32 %347, %start_addr.0.i
  %nat_bits_blocks = getelementptr inbounds %struct.f2fs_nm_info, ptr %3, i32 0, i32 23
  %348 = ptrtoint ptr %nat_bits_blocks to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %nat_bits_blocks, align 4
  %sub69 = sub i32 %add68, %349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp72464.not = icmp eq i32 %349, 0
  br i1 %cmp72464.not, label %if.then65.if.end82_crit_edge, label %if.then65.for.body74_crit_edge

if.then65.for.body74_crit_edge:                   ; preds = %if.then65
  br label %for.body74

if.then65.if.end82_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %if.then65.for.body74_crit_edge
  %i.2465 = phi i32 [ %inc80, %for.body74.for.body74_crit_edge ], [ 0, %if.then65.for.body74_crit_edge ]
  %350 = ptrtoint ptr %nat_bits to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %nat_bits, align 4
  %shl76 = shl i32 %i.2465, 12
  %add.ptr77 = getelementptr i8, ptr %351, i32 %shl76
  %add78 = add i32 %sub69, %i.2465
  call void @f2fs_update_meta_page(ptr noundef %sbi, ptr noundef %add.ptr77, i32 noundef %add78) #14
  %inc80 = add nuw i32 %i.2465, 1
  %352 = ptrtoint ptr %nat_bits_blocks to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %nat_bits_blocks, align 4
  %cmp72 = icmp ult i32 %inc80, %353
  br i1 %cmp72, label %for.body74.for.body74_crit_edge, label %for.body74.if.end82_crit_edge

for.body74.if.end82_crit_edge:                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body74

if.end82:                                         ; preds = %for.body74.if.end82_crit_edge, %if.then65.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %__start_cp_next_addr.exit.if.end82_crit_edge
  call void @f2fs_update_meta_page(ptr noundef %sbi, ptr noundef %1, i32 noundef %start_addr.0.i) #14
  %start_blk.0466 = add i32 %start_addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add44)
  %cmp86467 = icmp sgt i32 %add44, 1
  br i1 %cmp86467, label %if.end82.for.body88_crit_edge, label %if.end82.for.end93_crit_edge

if.end82.for.end93_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end93

if.end82.for.body88_crit_edge:                    ; preds = %if.end82
  br label %for.body88

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %if.end82.for.body88_crit_edge
  %start_blk.0469 = phi i32 [ %start_blk.0, %for.body88.for.body88_crit_edge ], [ %start_blk.0466, %if.end82.for.body88_crit_edge ]
  %i.3468 = phi i32 [ %inc92, %for.body88.for.body88_crit_edge ], [ 1, %if.end82.for.body88_crit_edge ]
  %mul = shl i32 %i.3468, 12
  %add.ptr89 = getelementptr i8, ptr %1, i32 %mul
  call void @f2fs_update_meta_page(ptr noundef %sbi, ptr noundef %add.ptr89, i32 noundef %start_blk.0469) #14
  %inc92 = add nuw nsw i32 %i.3468, 1
  %start_blk.0 = add i32 %start_blk.0469, 1
  %exitcond.not = icmp eq i32 %i.3468, %169
  br i1 %exitcond.not, label %for.body88.for.end93_crit_edge, label %for.body88.for.body88_crit_edge

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body88

for.body88.for.end93_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end93

for.end93:                                        ; preds = %for.body88.for.end93_crit_edge, %if.end82.for.end93_crit_edge
  %start_blk.0.lcssa = phi i32 [ %start_blk.0466, %if.end82.for.end93_crit_edge ], [ %start_blk.0, %for.body88.for.end93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool94.not = icmp eq i32 %5, 0
  br i1 %tobool94.not, label %for.end93.if.end97_crit_edge, label %if.then95

for.end93.if.end97_crit_edge:                     ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then95:                                        ; preds = %for.end93
  %ino_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 2
  %354 = ptrtoint ptr %ino_list.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %orphan.049.i = load ptr, ptr %ino_list.i, align 4
  %cmp.not50.i = icmp eq ptr %orphan.049.i, %ino_list.i
  br i1 %cmp.not50.i, label %if.then95.write_orphan_inodes.exit_crit_edge, label %for.body.lr.ph.i

if.then95.write_orphan_inodes.exit_crit_edge:     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #16
  br label %write_orphan_inodes.exit

for.body.lr.ph.i:                                 ; preds = %if.then95
  %355 = ptrtoint ptr %ino_num to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %ino_num, align 4
  %sub.i397 = add i32 %356, 1019
  %div.i = udiv i32 %sub.i397, 1020
  %conv.i = trunc i32 %div.i to i16
  %357 = call i16 @llvm.bswap.i16(i16 %conv.i) #14
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %orphan.056.i.ph = phi ptr [ %orphan.0.i437, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %orphan.049.i, %for.body.lr.ph.i ]
  %start_blk.addr.055.i.ph = phi i32 [ %start_blk.addr.1.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %start_blk.0.lcssa, %for.body.lr.ph.i ]
  %orphan_blk.054.i.ph = phi ptr [ %orphan_blk.1.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ null, %for.body.lr.ph.i ]
  %index.052.i.ph = phi i16 [ %inc11.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 1, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %orphan.056.i = phi ptr [ %orphan.0.i, %for.inc.i.for.body.i_crit_edge ], [ %orphan.056.i.ph, %for.body.i.outer ]
  %start_blk.addr.055.i = phi i32 [ %start_blk.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %start_blk.addr.055.i.ph, %for.body.i.outer ]
  %orphan_blk.054.i = phi ptr [ %orphan_blk.1.i, %for.inc.i.for.body.i_crit_edge ], [ %orphan_blk.054.i.ph, %for.body.i.outer ]
  %nentries.053.i = phi i32 [ %inc5.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.outer ]
  %page.051.i = phi ptr [ %page.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %for.body.i.outer ]
  %tobool.not.i398 = icmp eq ptr %page.051.i, null
  br i1 %tobool.not.i398, label %if.then.i399, label %for.body.i.if.end.i400_crit_edge

for.body.i.if.end.i400_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i400

if.then.i399:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i32 %start_blk.addr.055.i, 1
  %call.i = call ptr @f2fs_grab_meta_page(ptr noundef %sbi, i32 noundef %start_blk.addr.055.i) #14
  %call3.i = call ptr @page_address(ptr noundef %call.i) #14
  %358 = call ptr @memset(ptr %call3.i, i32 0, i32 4096)
  br label %if.end.i400

if.end.i400:                                      ; preds = %if.then.i399, %for.body.i.if.end.i400_crit_edge
  %page.1.i = phi ptr [ %page.051.i, %for.body.i.if.end.i400_crit_edge ], [ %call.i, %if.then.i399 ]
  %orphan_blk.1.i = phi ptr [ %orphan_blk.054.i, %for.body.i.if.end.i400_crit_edge ], [ %call3.i, %if.then.i399 ]
  %start_blk.addr.1.i = phi i32 [ %start_blk.addr.055.i, %for.body.i.if.end.i400_crit_edge ], [ %inc.i, %if.then.i399 ]
  %ino.i = getelementptr inbounds %struct.ino_entry, ptr %orphan.056.i, i32 0, i32 1
  %359 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %ino.i, align 4
  %361 = call i32 @llvm.bswap.i32(i32 %360) #14
  %inc5.i = add nuw nsw i32 %nentries.053.i, 1
  %arrayidx6.i = getelementptr [1020 x i32], ptr %orphan_blk.1.i, i32 0, i32 %nentries.053.i
  %362 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %362, i32 4)
  store i32 %361, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %inc5.i)
  %cmp7.i = icmp eq i32 %inc5.i, 1020
  br i1 %cmp7.i, label %for.inc.i.thread, label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i400
  %363 = ptrtoint ptr %orphan.056.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %orphan.0.i = load ptr, ptr %orphan.056.i, align 4
  %cmp.not.i = icmp eq ptr %orphan.0.i, %ino_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.end.i400
  %364 = call i16 @llvm.bswap.i16(i16 %index.052.i.ph) #14
  %blk_addr.i = getelementptr inbounds %struct.f2fs_orphan_block, ptr %orphan_blk.1.i, i32 0, i32 2
  %365 = ptrtoint ptr %blk_addr.i to i32
  call void @__asan_storeN_noabort(i32 %365, i32 2)
  store i16 %364, ptr %blk_addr.i, align 1
  %blk_count.i = getelementptr inbounds %struct.f2fs_orphan_block, ptr %orphan_blk.1.i, i32 0, i32 3
  %366 = ptrtoint ptr %blk_count.i to i32
  call void @__asan_storeN_noabort(i32 %366, i32 2)
  store i16 %357, ptr %blk_count.i, align 1
  %entry_count.i = getelementptr inbounds %struct.f2fs_orphan_block, ptr %orphan_blk.1.i, i32 0, i32 4
  %367 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_storeN_noabort(i32 %367, i32 4)
  store i32 -66912256, ptr %entry_count.i, align 1
  %call10.i = call zeroext i1 @set_page_dirty(ptr noundef %page.1.i) #14
  call fastcc void @f2fs_put_page(ptr noundef %page.1.i, i32 noundef 1) #14
  %inc11.i = add i16 %index.052.i.ph, 1
  %368 = ptrtoint ptr %orphan.056.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %orphan.0.i437 = load ptr, ptr %orphan.056.i, align 4
  %cmp.not.i438 = icmp eq ptr %orphan.0.i437, %ino_list.i
  br i1 %cmp.not.i438, label %for.inc.i.thread.write_orphan_inodes.exit_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.outer

for.inc.i.thread.write_orphan_inodes.exit_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %write_orphan_inodes.exit

for.end.i:                                        ; preds = %for.inc.i
  %tobool18.not.i = icmp eq ptr %page.1.i, null
  br i1 %tobool18.not.i, label %for.end.i.write_orphan_inodes.exit_crit_edge, label %if.then19.i

for.end.i.write_orphan_inodes.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %write_orphan_inodes.exit

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %369 = call i16 @llvm.bswap.i16(i16 %index.052.i.ph) #14
  %blk_addr20.i = getelementptr inbounds %struct.f2fs_orphan_block, ptr %orphan_blk.1.i, i32 0, i32 2
  %370 = ptrtoint ptr %blk_addr20.i to i32
  call void @__asan_storeN_noabort(i32 %370, i32 2)
  store i16 %369, ptr %blk_addr20.i, align 1
  %blk_count21.i = getelementptr inbounds %struct.f2fs_orphan_block, ptr %orphan_blk.1.i, i32 0, i32 3
  %371 = ptrtoint ptr %blk_count21.i to i32
  call void @__asan_storeN_noabort(i32 %371, i32 2)
  store i16 %357, ptr %blk_count21.i, align 1
  %372 = call i32 @llvm.bswap.i32(i32 %inc5.i) #14
  %entry_count22.i = getelementptr inbounds %struct.f2fs_orphan_block, ptr %orphan_blk.1.i, i32 0, i32 4
  %373 = ptrtoint ptr %entry_count22.i to i32
  call void @__asan_storeN_noabort(i32 %373, i32 4)
  store i32 %372, ptr %entry_count22.i, align 1
  %call23.i = call zeroext i1 @set_page_dirty(ptr noundef nonnull %page.1.i) #14
  call fastcc void @f2fs_put_page(ptr noundef nonnull %page.1.i, i32 noundef 1) #14
  br label %write_orphan_inodes.exit

write_orphan_inodes.exit:                         ; preds = %if.then19.i, %for.end.i.write_orphan_inodes.exit_crit_edge, %for.inc.i.thread.write_orphan_inodes.exit_crit_edge, %if.then95.write_orphan_inodes.exit_crit_edge
  %add96 = add i32 %start_blk.0.lcssa, %div
  br label %if.end97

if.end97:                                         ; preds = %write_orphan_inodes.exit, %for.end93.if.end97_crit_edge
  %start_blk.1 = phi i32 [ %add96, %write_orphan_inodes.exit ], [ %start_blk.0.lcssa, %for.end93.if.end97_crit_edge ]
  call void @f2fs_write_data_summaries(ptr noundef %sbi, i32 noundef %start_blk.1) #14
  %add98 = add i32 %start_blk.1, %call33
  %kbytes_written99 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 128
  %374 = ptrtoint ptr %kbytes_written99 to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %kbytes_written99, align 8
  %call100 = call i64 @f2fs_get_sectors_written(ptr noundef %sbi)
  %sectors_written_start = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 127
  %376 = ptrtoint ptr %sectors_written_start to i32
  call void @__asan_load8_noabort(i32 %376)
  %377 = load i64, ptr %sectors_written_start, align 8
  %sub101 = sub i64 %call100, %377
  %shr = lshr i64 %sub101, 1
  %add102 = add i64 %shr, %375
  %378 = call i64 @llvm.bswap.i64(i64 %add102)
  %journal = getelementptr %struct.curseg_info, ptr %13, i32 3, i32 3
  %379 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %journal, align 4
  %381 = getelementptr inbounds %struct.f2fs_journal, ptr %380, i32 0, i32 1
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_storeN_noabort(i32 %382, i32 8)
  store i64 %378, ptr %381, align 1
  %383 = ptrtoint ptr %cpc to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %cpc, align 8
  %and.i401 = and i32 %384, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i401)
  %tobool.i402.not = icmp eq i32 %and.i401, 0
  br i1 %tobool.i402.not, label %if.end97.if.end108_crit_edge, label %if.then106

if.end97.if.end108_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.then106:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_write_node_summaries(ptr noundef %sbi, i32 noundef %add98) #14
  %add107 = add i32 %add98, 3
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end97.if.end108_crit_edge
  %start_blk.2 = phi i32 [ %add107, %if.then106 ], [ %add98, %if.end97.if.end108_crit_edge ]
  %total_valid_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 61
  %385 = ptrtoint ptr %total_valid_block_count to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %total_valid_block_count, align 4
  %last_valid_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 63
  %387 = ptrtoint ptr %last_valid_block_count to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %386, ptr %last_valid_block_count, align 4
  %alloc_valid_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 70
  call void @percpu_counter_set(ptr noundef %alloc_valid_block_count, i64 noundef 0) #14
  %call109 = call i32 @f2fs_sync_meta_pages(ptr noundef %sbi, i32 noundef 2, i32 noundef 2147483647, i32 noundef 11)
  call void @f2fs_wait_on_all_pages(ptr noundef %sbi, i32 noundef 4)
  call void @f2fs_wait_on_all_pages(ptr noundef %sbi, i32 noundef 7)
  %call110 = call i32 @f2fs_flush_device_cache(ptr noundef %sbi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end113:                                        ; preds = %if.end108
  call fastcc void @commit_checkpoint(ptr noundef %sbi, ptr noundef %1, i32 noundef %start_blk.2)
  call void @f2fs_wait_on_all_pages(ptr noundef %sbi, i32 noundef 7)
  %388 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %389, i32 0, i32 34
  %390 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %390, i32 4)
  %391 = load i32, ptr %feature.i, align 1
  %392 = and i32 %391, 19136512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %392)
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %if.end113.if.end149_crit_edge, label %if.then121

if.end113.if.end149_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then121:                                       ; preds = %if.end113
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %394 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %395, i32 0, i32 9
  %396 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %i_mapping.i, align 8
  %398 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %sm_info.i.i, align 8
  %tobool124.not = icmp eq ptr %399, null
  br i1 %tobool124.not, label %cond.false140, label %cond.true138

cond.true138:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #16
  %main_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %399, i32 0, i32 6
  %400 = ptrtoint ptr %main_blkaddr to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %main_blkaddr, align 4
  %seg0_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %399, i32 0, i32 5
  %402 = ptrtoint ptr %seg0_blkaddr to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %seg0_blkaddr, align 4
  %segment_count = getelementptr inbounds %struct.f2fs_sm_info, ptr %399, i32 0, i32 8
  %404 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %segment_count, align 4
  br label %cond.end143

cond.false140:                                    ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #16
  %main_blkaddr127 = getelementptr inbounds %struct.f2fs_super_block, ptr %389, i32 0, i32 23
  %406 = ptrtoint ptr %main_blkaddr127 to i32
  call void @__asan_loadN_noabort(i32 %406, i32 4)
  %407 = load i32, ptr %main_blkaddr127, align 1
  %408 = call i32 @llvm.bswap.i32(i32 %407)
  %segment0_blkaddr = getelementptr inbounds %struct.f2fs_super_block, ptr %389, i32 0, i32 18
  %409 = ptrtoint ptr %segment0_blkaddr to i32
  call void @__asan_loadN_noabort(i32 %409, i32 4)
  %410 = load i32, ptr %segment0_blkaddr, align 1
  %411 = call i32 @llvm.bswap.i32(i32 %410)
  %segment_count142 = getelementptr inbounds %struct.f2fs_super_block, ptr %389, i32 0, i32 12
  %412 = ptrtoint ptr %segment_count142 to i32
  call void @__asan_loadN_noabort(i32 %412, i32 4)
  %413 = load i32, ptr %segment_count142, align 1
  %414 = call i32 @llvm.bswap.i32(i32 %413)
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false140, %cond.true138
  %cond135453 = phi i32 [ %403, %cond.true138 ], [ %411, %cond.false140 ]
  %cond447451 = phi i32 [ %401, %cond.true138 ], [ %408, %cond.false140 ]
  %cond144 = phi i32 [ %405, %cond.true138 ], [ %414, %cond.false140 ]
  %log_blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %415 = ptrtoint ptr %log_blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %log_blocks_per_seg, align 8
  %shl145 = shl i32 %cond144, %416
  %add146 = add i32 %cond135453, -1
  %sub147 = add i32 %add146, %shl145
  %call148 = call i32 @invalidate_mapping_pages(ptr noundef %397, i32 noundef %cond447451, i32 noundef %sub147) #14
  br label %if.end149

if.end149:                                        ; preds = %cond.end143, %if.end113.if.end149_crit_edge
  call void @f2fs_release_ino_entry(ptr noundef %sbi, i1 noundef zeroext false)
  call void @f2fs_reset_fsync_node_info(ptr noundef %sbi) #14
  call void @_clear_bit(i32 noundef 0, ptr noundef %s_flag.i.i) #14
  call void @_clear_bit(i32 noundef 5, ptr noundef %s_flag.i.i) #14
  call void @_clear_bit(i32 noundef 11, ptr noundef %s_flag.i.i) #14
  %stat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 110
  call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %unusable_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 66
  %417 = ptrtoint ptr %unusable_block_count to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 0, ptr %unusable_block_count, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  %418 = ptrtoint ptr %cur_cp_pack.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %cur_cp_pack.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %419)
  %cmp.i423 = icmp eq i32 %419, 1
  %cond.i = select i1 %cmp.i423, i32 2, i32 1
  %420 = ptrtoint ptr %cur_cp_pack.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %cond.i, ptr %cur_cp_pack.i, align 8
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i424 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #14
  %421 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %tobool152.not = icmp eq i32 %422, 0
  br i1 %tobool152.not, label %lor.lhs.false153, label %if.end149.if.then156_crit_edge

if.end149.if.then156_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then156

lor.lhs.false153:                                 ; preds = %if.end149
  %arrayidx.i426 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i427 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i426, i32 noundef 4) #14
  %423 = ptrtoint ptr %arrayidx.i426 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load volatile i32, ptr %arrayidx.i426, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool155.not = icmp eq i32 %424, 0
  br i1 %tobool155.not, label %lor.lhs.false153.do.body158_crit_edge, label %lor.lhs.false153.if.then156_crit_edge

lor.lhs.false153.if.then156_crit_edge:            ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then156

lor.lhs.false153.do.body158_crit_edge:            ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body158

if.then156:                                       ; preds = %lor.lhs.false153.if.then156_crit_edge, %if.end149.if.then156_crit_edge
  call void @_set_bit(i32 noundef 0, ptr noundef %s_flag.i.i) #14
  br label %do.body158

do.body158:                                       ; preds = %if.then156, %lor.lhs.false153.do.body158_crit_edge
  %arrayidx.i430 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %call.i.i.i431 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i430, i32 noundef 4) #14
  %425 = ptrtoint ptr %arrayidx.i430 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load volatile i32, ptr %arrayidx.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %tobool160.not = icmp eq i32 %426, 0
  br i1 %tobool160.not, label %do.end172, label %do.body164, !prof !146

do.body164:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1595, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end172:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #16
  %427 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %ckpt.i, align 4
  %ckpt_flags1.i.i.i433 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %428, i32 0, i32 10
  %429 = ptrtoint ptr %ckpt_flags1.i.i.i433 to i32
  call void @__asan_loadN_noabort(i32 %429, i32 4)
  %430 = load i32, ptr %ckpt_flags1.i.i.i433, align 1
  %431 = and i32 %430, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool.i.i.i.not = icmp eq i32 %431, 0
  %cond180 = select i1 %tobool.i.i.i.not, i32 0, i32 -5, !prof !146
  br label %cleanup

cleanup:                                          ; preds = %do.end172, %if.end108.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond180, %do.end172 ], [ %call110, %if.end108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_release_discard_addrs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_restore_inmem_curseg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_init_ino_entry_info(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.45, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i, align 4
  %ino_lock = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ino_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @f2fs_init_ino_entry_info.__key, i16 noundef signext 3) #14
  %ino_list = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 2
  %2 = ptrtoint ptr %ino_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ino_list, ptr %ino_list, align 4
  %prev.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ino_list, ptr %prev.i, align 4
  %ino_num = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 0, i32 3
  %4 = ptrtoint ptr %ino_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ino_num, align 4
  %arrayidx.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.45, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %xa_flags.i.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2592, ptr %xa_flags.i.1, align 4
  %xa_head.i.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %xa_head.i.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i.1, align 4
  %ino_lock.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ino_lock.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @f2fs_init_ino_entry_info.__key, i16 noundef signext 3) #14
  %ino_list.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1, i32 2
  %7 = ptrtoint ptr %ino_list.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ino_list.1, ptr %ino_list.1, align 4
  %prev.i.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ino_list.1, ptr %prev.i.1, align 4
  %ino_num.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 1, i32 3
  %9 = ptrtoint ptr %ino_num.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ino_num.1, align 4
  %arrayidx.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.45, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %xa_flags.i.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2592, ptr %xa_flags.i.2, align 4
  %xa_head.i.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %xa_head.i.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xa_head.i.2, align 4
  %ino_lock.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ino_lock.2, ptr noundef nonnull @.str.14, ptr noundef nonnull @f2fs_init_ino_entry_info.__key, i16 noundef signext 3) #14
  %ino_list.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2, i32 2
  %12 = ptrtoint ptr %ino_list.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ino_list.2, ptr %ino_list.2, align 4
  %prev.i.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ino_list.2, ptr %prev.i.2, align 4
  %ino_num.2 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 2, i32 3
  %14 = ptrtoint ptr %ino_num.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ino_num.2, align 4
  %arrayidx.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.45, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2592, ptr %xa_flags.i.3, align 4
  %xa_head.i.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.3, align 4
  %ino_lock.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ino_lock.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @f2fs_init_ino_entry_info.__key, i16 noundef signext 3) #14
  %ino_list.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 2
  %17 = ptrtoint ptr %ino_list.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ino_list.3, ptr %ino_list.3, align 4
  %prev.i.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ino_list.3, ptr %prev.i.3, align 4
  %ino_num.3 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  %19 = ptrtoint ptr %ino_num.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ino_num.3, align 4
  %arrayidx.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.4, ptr noundef nonnull @.str.45, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %xa_flags.i.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2592, ptr %xa_flags.i.4, align 4
  %xa_head.i.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %xa_head.i.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %xa_head.i.4, align 4
  %ino_lock.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ino_lock.4, ptr noundef nonnull @.str.14, ptr noundef nonnull @f2fs_init_ino_entry_info.__key, i16 noundef signext 3) #14
  %ino_list.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4, i32 2
  %22 = ptrtoint ptr %ino_list.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %ino_list.4, ptr %ino_list.4, align 4
  %prev.i.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ino_list.4, ptr %prev.i.4, align 4
  %ino_num.4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 27, i32 4, i32 3
  %24 = ptrtoint ptr %ino_num.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ino_num.4, align 4
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %25 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocks_per_seg, align 4
  %sub2 = add i32 %26, -8
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %27 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %raw_super.i.i, align 8
  %cp_payload.i = getelementptr inbounds %struct.f2fs_super_block, ptr %28, i32 0, i32 31
  %29 = ptrtoint ptr %cp_payload.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %cp_payload.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %sub4 = sub i32 %sub2, %31
  %mul = mul i32 %sub4, 1020
  %max_orphans = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 32
  %32 = ptrtoint ptr %max_orphans to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %max_orphans, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_create_checkpoint_caches() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.15, i32 noundef 16, i32 noundef 0, i32 noundef 131072, ptr noundef null) #14
  store ptr %call.i, ptr @ino_entry_slab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %call.i5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 12, i32 noundef 0, i32 noundef 131072, ptr noundef null) #14
  store ptr %call.i5, ptr @f2fs_inode_entry_slab, align 4
  %tobool2.not = icmp eq ptr %call.i5, null
  br i1 %tobool2.not, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load ptr, ptr @ino_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_checkpoint_caches() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ino_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  %1 = load ptr, ptr @f2fs_inode_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_issue_checkpoint(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  %cpc.i = alloca %struct.cp_control, align 8
  %req = alloca %struct.ckpt_req, align 8
  %cpc = alloca %struct.cp_control, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cprc_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %req) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc) #14
  %0 = call ptr @memset(ptr %cpc, i32 255, i32 32)
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %1 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 4, i32 2
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %3 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %s_flag.i.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 %spec.store.select.i, i32 1
  %6 = ptrtoint ptr %cpc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %cpc, align 8
  %and = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i)
  %cmp.not = icmp eq i32 %spec.select.i, 4
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %gc_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 74
  tail call void @down_write(ptr noundef %gc_lock) #14
  %call2 = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc)
  call void @up_write(ptr noundef %gc_lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %cprc_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cprc_info, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc.i) #14
  %9 = call ptr @memcpy(ptr %cpc.i, ptr @__const.__write_checkpoint_sync.cpc, i32 32)
  %gc_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 74
  tail call void @down_write(ptr noundef %gc_lock.i) #14
  %call.i = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc.i) #14
  call void @up_write(ptr noundef %gc_lock.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc.i) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %req, i32 0, i32 1
  %10 = call ptr @memset(ptr %req, i32 0, i32 72)
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #14
  %call.i36 = call i64 @ktime_get() #14
  %queue_time.i = getelementptr inbounds %struct.ckpt_req, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %queue_time.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i36, ptr %queue_time.i, align 8
  %llnode = getelementptr inbounds %struct.ckpt_req, ptr %req, i32 0, i32 1
  %issue_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 6
  %call.i37 = call zeroext i1 @llist_add_batch(ptr noundef %llnode, ptr noundef %llnode, ptr noundef %issue_list) #14
  %queued_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %queued_ckpt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %queued_ckpt, i32 1, i32 3, i32 1) #14
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_ckpt, ptr %queued_ckpt, i32 1, ptr elementtype(i32) %queued_ckpt) #14, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !193
  %head.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 2, i32 1
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %14, %head.i
  br i1 %cmp.i.i.not, label %if.end7.if.end16_crit_edge, label %if.then14

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %ckpt_wait_queue = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 2
  call void @__wake_up(ptr noundef %ckpt_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end7.if.end16_crit_edge
  %15 = ptrtoint ptr %cprc_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cprc_info, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  call void @wait_for_completion(ptr noundef nonnull %req) #14
  br label %if.end20

if.else:                                          ; preds = %if.end16
  %17 = ptrtoint ptr %issue_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %issue_list, align 4
  %cmp.i.i38 = icmp eq ptr %18, null
  br i1 %cmp.i.i38, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @__checkpoint_and_complete_reqs(ptr noundef %sbi) #14
  br label %if.end20

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @wait_for_completion(ptr noundef nonnull %req) #14
  br label %if.end20

if.end20:                                         ; preds = %if.else.i, %if.then.i, %if.then19
  %ret21 = getelementptr inbounds %struct.ckpt_req, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %ret21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then5, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %20, %if.end20 ], [ %call.i, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %req) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_start_ckpt_thread(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cprc_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26
  %0 = ptrtoint ptr %cprc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprc_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %shr = lshr i32 %7, 20
  %and = and i32 %7, 1048575
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @issue_checkpoint_thread, ptr noundef %sbi, i32 noundef -1, ptr noundef nonnull @.str.17, i32 noundef %shr, i32 noundef %and) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %cprc_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cprc_info, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @wake_up_process(ptr noundef %call) #14
  %9 = ptrtoint ptr %cprc_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %cprc_info, align 4
  %ckpt_thread_ioprio = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 1
  %10 = ptrtoint ptr %ckpt_thread_ioprio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ckpt_thread_ioprio, align 4
  %call12 = tail call i32 @set_task_ioprio(ptr noundef %call, i32 noundef %11) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @issue_checkpoint_thread(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ckpt_wait_queue = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 26, i32 2
  %call42 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call42, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %issue_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 26, i32 6
  br label %if.end

if.then:                                          ; preds = %if.end21.if.then_crit_edge, %entry.if.then_crit_edge
  ret i32 0

if.end:                                           ; preds = %if.end21.if.end_crit_edge, %if.end.lr.ph
  %0 = ptrtoint ptr %issue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %issue_list, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @__checkpoint_and_complete_reqs(ptr noundef %data)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1798) #14
  %call7 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call7, label %if.end3.if.end21_crit_edge, label %lor.lhs.false

if.end3.if.end21_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

lor.lhs.false:                                    ; preds = %if.end3
  %2 = ptrtoint ptr %issue_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %issue_list, align 4
  %cmp.i32 = icmp eq ptr %3, null
  br i1 %cmp.i32, label %if.then10, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then10:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call1239 = call i32 @prepare_to_wait_event(ptr noundef %ckpt_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call1340 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call1340, label %if.then10.for.end_crit_edge, label %if.then10.lor.lhs.false14_crit_edge

if.then10.lor.lhs.false14_crit_edge:              ; preds = %if.then10
  br label %lor.lhs.false14

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

lor.lhs.false14:                                  ; preds = %cleanup.lor.lhs.false14_crit_edge, %if.then10.lor.lhs.false14_crit_edge
  %call1241 = phi i32 [ %call12, %cleanup.lor.lhs.false14_crit_edge ], [ %call1239, %if.then10.lor.lhs.false14_crit_edge ]
  %5 = ptrtoint ptr %issue_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %issue_list, align 4
  %cmp.i33 = icmp eq ptr %6, null
  br i1 %cmp.i33, label %if.end18, label %lor.lhs.false14.for.end_crit_edge

lor.lhs.false14.for.end_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end18:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1241)
  %tobool.not = icmp eq i32 %call1241, 0
  br i1 %tobool.not, label %cleanup, label %if.end18.__out_crit_edge

if.end18.__out_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end18
  call void @schedule() #14
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %ckpt_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call13 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call13, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false14_crit_edge

cleanup.lor.lhs.false14_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false14

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false14.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %ckpt_wait_queue, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end18.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end21

if.end21:                                         ; preds = %__out, %lor.lhs.false.if.end21_crit_edge, %if.end3.if.end21_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #14
  br i1 %call, label %if.end21.if.then_crit_edge, label %if.end21.if.end_crit_edge

if.end21.if.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end21.if.then_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_task_ioprio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_stop_ckpt_thread(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cprc_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26
  %0 = ptrtoint ptr %cprc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprc_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cprc_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cprc_info, align 4
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #14
  %issue_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 6
  %3 = ptrtoint ptr %issue_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %issue_list.i, align 4
  %cmp.i.i = icmp eq ptr %4, null
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__checkpoint_and_complete_reqs(ptr noundef %sbi) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_init_ckpt_req_control(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %issued_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %issued_ckpt, i32 noundef 4) #14
  %0 = ptrtoint ptr %issued_ckpt to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %issued_ckpt, align 4
  %total_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 4
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ckpt, i32 noundef 4) #14
  %1 = ptrtoint ptr %total_ckpt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %total_ckpt, align 4
  %queued_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 5
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %queued_ckpt, i32 noundef 4) #14
  %2 = ptrtoint ptr %queued_ckpt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %queued_ckpt, align 4
  %ckpt_thread_ioprio = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 1
  %3 = ptrtoint ptr %ckpt_thread_ioprio to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16387, ptr %ckpt_thread_ioprio, align 4
  %ckpt_wait_queue = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %ckpt_wait_queue, ptr noundef nonnull @.str.18, ptr noundef nonnull @f2fs_init_ckpt_req_control.__key) #14
  %issue_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 6
  %4 = ptrtoint ptr %issue_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %issue_list, align 4
  %stat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %stat_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @f2fs_init_ckpt_req_control.__key.19, i16 noundef signext 3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_writepage(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_writepage, i32 0, i32 1), ptr blockaddress(@trace_f2fs_writepage, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !146

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !194
  %call42 = tail call i32 @__traceiter_f2fs_writepage(ptr noundef null, ptr noundef %page, i32 noundef 2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !146

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_writepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_writepage, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_f2fs_writepage.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_f2fs_writepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1263, ptr noundef nonnull @.str.29) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %31 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_do_write_meta_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_submit_merged_write_cond(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_writepage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_writepages(ptr noundef %inode, ptr noundef %wbc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_writepages, i32 0, i32 1), ptr blockaddress(@trace_f2fs_writepages, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !146

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !196
  %call42 = tail call i32 @__traceiter_f2fs_writepages(ptr noundef null, ptr noundef %inode, ptr noundef %wbc, i32 noundef 2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !197
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !146

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_writepages, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_writepages, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_f2fs_writepages.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_f2fs_writepages.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1395, ptr noundef nonnull @.str.29) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %31 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_writepages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_set_page_dirty(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_set_page_dirty, i32 0, i32 1), ptr blockaddress(@trace_f2fs_set_page_dirty, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #14
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !146

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %call42 = tail call i32 @__traceiter_f2fs_set_page_dirty(ptr noundef null, ptr noundef %page, i32 noundef 2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !146

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_set_page_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_set_page_dirty, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_f2fs_set_page_dirty.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_f2fs_set_page_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1284, ptr noundef nonnull @.str.29) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %31 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_set_page_dirty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !146

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_iget_retry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_node_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_checkpoint_version(ptr noundef %sbi, i32 noundef %cp_addr, ptr nocapture noundef %cp_block, ptr nocapture noundef %cp_page, ptr nocapture noundef writeonly %version) unnamed_addr #0 align 64 {
entry:
  %desc.i.i10.i = alloca %struct.anon.92, align 8
  %desc.i.i.i = alloca %struct.anon.92, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @__get_meta_page(ptr noundef %sbi, i32 noundef %cp_addr, i1 noundef zeroext true) #14
  %0 = ptrtoint ptr %cp_page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %cp_page, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @page_address(ptr noundef %call.i) #14
  %2 = ptrtoint ptr %cp_block to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %cp_block, align 4
  %checksum_offset = getelementptr inbounds %struct.f2fs_checkpoint, ptr %call3, i32 0, i32 18
  %3 = ptrtoint ptr %checksum_offset to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %checksum_offset, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = add i32 %5, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3901, i32 %6)
  %7 = icmp ult i32 %6, -3901
  br i1 %7, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %cp_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cp_page, align 4
  tail call fastcc void @f2fs_put_page(ptr noundef %9, i32 noundef 1)
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.39, i32 noundef %5) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i.i) #14
  %10 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i.i, i32 0, i32 1
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 129
  %11 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 16)
  %12 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_chksum_driver.i.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.not.i.i.i = icmp eq i32 %15, 4
  br i1 %cmp.not.i.i.i, label %do.end7.i.i.i, label %do.body2.i.i.i, !prof !146

do.body2.i.i.i:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #14, !srcloc !190
  unreachable

do.end7.i.i.i:                                    ; preds = %if.end6
  %16 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %desc.i.i.i, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -218816496, ptr %10, align 8
  %call10.i.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i.i, ptr noundef %call3, i32 noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %f2fs_crc32.exit.i, label %do.body20.i.i.i, !prof !146

do.body20.i.i.i:                                  ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

f2fs_crc32.exit.i:                                ; preds = %do.end7.i.i.i
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %5)
  %cmp.i29 = icmp ult i32 %5, 4092
  br i1 %cmp.i29, label %if.then.i, label %f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge

f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge: ; preds = %f2fs_crc32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_checkpoint_chksum.exit

if.then.i:                                        ; preds = %f2fs_crc32.exit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i10.i) #14
  %20 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i10.i, i32 0, i32 1
  %21 = call ptr @memset(ptr %desc.i.i10.i, i32 255, i32 16)
  %22 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_chksum_driver.i.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.not.i.i12.i = icmp eq i32 %25, 4
  br i1 %cmp.not.i.i12.i, label %do.end7.i.i16.i, label %do.body2.i.i13.i, !prof !146

do.body2.i.i13.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #14, !srcloc !190
  unreachable

do.end7.i.i16.i:                                  ; preds = %if.then.i
  %sub.i = sub nuw nsw i32 4092, %5
  %add.i = add nuw nsw i32 %5, 4
  %add.ptr.i = getelementptr i8, ptr %call3, i32 %add.i
  %26 = ptrtoint ptr %desc.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %desc.i.i10.i, align 8
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %20, align 8
  %call10.i.i14.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i10.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i14.i)
  %tobool12.not.i.i15.i = icmp eq i32 %call10.i.i14.i, 0
  br i1 %tobool12.not.i.i15.i, label %f2fs_chksum.exit.i, label %do.body20.i.i17.i, !prof !146

do.body20.i.i17.i:                                ; preds = %do.end7.i.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

f2fs_chksum.exit.i:                               ; preds = %do.end7.i.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i10.i) #14
  br label %f2fs_checkpoint_chksum.exit

f2fs_checkpoint_chksum.exit:                      ; preds = %f2fs_chksum.exit.i, %f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge
  %chksum.0.i = phi i32 [ %29, %f2fs_chksum.exit.i ], [ %19, %f2fs_crc32.exit.i.f2fs_checkpoint_chksum.exit_crit_edge ]
  %30 = ptrtoint ptr %cp_block to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cp_block, align 4
  %checksum_offset.i30 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %checksum_offset.i30 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %checksum_offset.i30, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33) #14
  %add.ptr.i31 = getelementptr i8, ptr %31, i32 %34
  %35 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i31, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %chksum.0.i)
  %cmp9.not = icmp eq i32 %37, %chksum.0.i
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %f2fs_checkpoint_chksum.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %cp_page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cp_page, align 4
  call fastcc void @f2fs_put_page(ptr noundef %39, i32 noundef 1)
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end12:                                         ; preds = %f2fs_checkpoint_chksum.exit
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %31, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41) #14
  %43 = ptrtoint ptr %version to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %version, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -22, %if.then5 ], [ -22, %if.then11 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_sync_dirty_inodes_enter(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_sync_dirty_inodes_exit(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_write_checkpoint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_flush_inline_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_quota_sync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_sync_node_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_npages_for_summary_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_meta_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_write_data_summaries(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_write_node_summaries(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_flush_device_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @commit_checkpoint(ptr noundef %sbi, ptr nocapture noundef readonly %src, i32 noundef %blk_addr) unnamed_addr #0 align 64 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #14
  %0 = call ptr @memset(ptr %wbc, i32 0, i32 64)
  %call = tail call ptr @f2fs_grab_meta_page(ptr noundef %sbi, i32 noundef %blk_addr)
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %call, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext true) #14
  %call1 = tail call ptr @page_address(ptr noundef %call) #14
  %1 = call ptr @memcpy(ptr %call1, ptr %src, i32 4096)
  %call2 = tail call zeroext i1 @set_page_dirty(ptr noundef %call) #14
  %call3 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %call) #14
  br i1 %call3, label %if.end, label %do.body6, !prof !146

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1393, 0\0A.popsection", ""() #14, !srcloc !200
  unreachable

if.end:                                           ; preds = %entry
  %call12 = call fastcc i32 @__f2fs_write_meta_page(ptr noundef %call, ptr noundef nonnull %wbc, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end40, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %2 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %6 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.i.i.not, label %do.body32.critedge, label %if.then21, !prof !146

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @f2fs_put_page(ptr noundef %call, i32 noundef 1)
  br label %cleanup

do.body32.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1402, 0\0A.popsection", ""() #14, !srcloc !201
  unreachable

do.end40:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %do.end40.f2fs_put_page.exit_crit_edge, label %if.end.i

do.end40.f2fs_put_page.exit_crit_edge:            ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_put_page.exit

if.end.i:                                         ; preds = %do.end40
  %7 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i17.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !146

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i19.i = add i32 %9, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %10, %if.end.i.i21.i ]
  %11 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !152

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.26) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !159
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #14, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@commit_checkpoint, %if.then.i.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !163

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge

folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_put_page.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__put_page(ptr noundef %11) #14
  br label %f2fs_put_page.exit

f2fs_put_page.exit:                               ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge, %do.end40.f2fs_put_page.exit_crit_edge
  call void @f2fs_submit_merged_write(ptr noundef %sbi, i32 noundef 4) #14
  br label %cleanup

cleanup:                                          ; preds = %f2fs_put_page.exit, %if.then21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_reset_fsync_node_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_nat_bitmap_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_enable_nat_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__checkpoint_and_complete_reqs(ptr noundef %sbi) unnamed_addr #0 align 64 {
entry:
  %cpc.i = alloca %struct.cp_control, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %issue_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 6
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %issue_list, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %issue_list, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %issue_list) #14, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = inttoptr i32 %asmresult.i.i to ptr
  %call1 = tail call ptr @llist_reverse_order(ptr noundef nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc.i) #14
  %2 = call ptr @memcpy(ptr %cpc.i, ptr @__const.__write_checkpoint_sync.cpc, i32 32)
  %gc_lock.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 74
  tail call void @down_write(ptr noundef %gc_lock.i) #14
  %call.i = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc.i) #14
  call void @up_write(ptr noundef %gc_lock.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc.i) #14
  %issued_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %issued_ckpt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %issued_ckpt, i32 1, i32 3, i32 1) #14
  %3 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %issued_ckpt, ptr %issued_ckpt, i32 1, ptr elementtype(i32) %issued_ckpt) #14, !srcloc !148
  %req.053 = getelementptr i8, ptr %call1, i32 -56
  %cmp.not54 = icmp eq ptr %req.053, inttoptr (i32 -56 to ptr)
  br i1 %cmp.not54, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %req.058 = phi ptr [ %req.0, %land.rhs.land.rhs_crit_edge ], [ %req.053, %if.end.land.rhs_crit_edge ]
  %call1.pn57 = phi ptr [ %5, %land.rhs.land.rhs_crit_edge ], [ %call1, %if.end.land.rhs_crit_edge ]
  %count.056 = phi i64 [ %inc, %land.rhs.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %sum_diff.055 = phi i64 [ %add10, %land.rhs.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %call1.pn57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1.pn57, align 8
  %call7 = call i64 @ktime_get() #14
  %queue_time = getelementptr i8, ptr %call1.pn57, i32 8
  %6 = ptrtoint ptr %queue_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %queue_time, align 8
  %sub.i = sub i64 %call7, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %8 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #14
  %9 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %8) #20, !srcloc !205
  %10 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %8, i64 %9, i32 0) #20, !srcloc !187
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %ret9 = getelementptr i8, ptr %call1.pn57, i32 4
  %11 = ptrtoint ptr %ret9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %ret9, align 4
  call void @complete(ptr noundef %req.058) #14
  %add10 = add i64 %spec.select.i.i.i, %sum_diff.055
  %inc = add i64 %count.056, 1
  %req.0 = getelementptr i8, ptr %5, i32 -56
  %cmp.not = icmp eq ptr %req.0, inttoptr (i32 -56 to ptr)
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %sum_diff.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %add10, %land.rhs.for.end_crit_edge ]
  %count.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %inc, %land.rhs.for.end_crit_edge ]
  %conv = trunc i64 %count.0.lcssa to i32
  %queued_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 5
  %call.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %queued_ckpt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %queued_ckpt, i32 1, i32 3, i32 1) #14
  %12 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_ckpt, ptr %queued_ckpt, i32 %conv, ptr elementtype(i32) %queued_ckpt) #14, !srcloc !165
  %total_ckpt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 4
  %call.i.i51 = call zeroext i1 @__kasan_check_write(ptr noundef %total_ckpt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %total_ckpt, i32 1, i32 3, i32 1) #14
  %13 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ckpt, ptr %total_ckpt, i32 %conv, ptr elementtype(i32) %total_ckpt) #14, !srcloc !148
  %stat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 7
  call void @_raw_spin_lock(ptr noundef %stat_lock) #14
  %call12 = call i64 @div64_u64(i64 noundef %sum_diff.0.lcssa, i64 noundef %count.0.lcssa) #14
  %conv13 = trunc i64 %call12 to i32
  %cur_time = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 8
  %14 = ptrtoint ptr %cur_time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv13, ptr %cur_time, align 4
  %peak_time = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 26, i32 9
  %15 = ptrtoint ptr %peak_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peak_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv13)
  %cmp15 = icmp ult i32 %16, %conv13
  br i1 %cmp15, label %if.then17, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %peak_time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv13, ptr %peak_time, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.end.if.end20_crit_edge
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_reverse_order(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119, !120, !122, !123, !125, !126, !128, !130, !132, !133, !135}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/checkpoint.c", i32 47, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/checkpoint.c", i32 189, i32 4}
!4 = !{ptr @f2fs_meta_aops, !5, !"f2fs_meta_aops", i1 false, i1 false}
!5 = !{!"../fs/f2fs/checkpoint.c", i32 454, i32 39}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/checkpoint.c", i32 604, i32 3}
!8 = !{ptr @f2fs_acquire_orphan_inode._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.f2fs_acquire_orphan_inode, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @f2fs_acquire_orphan_inode._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @f2fs_acquire_orphan_inode._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/checkpoint.c", i32 698, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/f2fs/checkpoint.c", i32 703, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/f2fs/checkpoint.c", i32 1612, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/f2fs/checkpoint.c", i32 1626, i32 52}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/f2fs/checkpoint.c", i32 1632, i32 52}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/f2fs/checkpoint.c", i32 1664, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/f2fs/checkpoint.c", i32 1676, i32 3}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/f2fs/checkpoint.c", i32 1689, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/f2fs/checkpoint.c", i32 1693, i32 52}
!32 = !{ptr @f2fs_init_ino_entry_info.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../fs/f2fs/checkpoint.c", i32 1708, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/f2fs/checkpoint.c", i32 1720, i32 42}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/f2fs/checkpoint.c", i32 1724, i32 49}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/f2fs/checkpoint.c", i32 1875, i32 26}
!41 = !{ptr @f2fs_init_ckpt_req_control.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../fs/f2fs/checkpoint.c", i32 1909, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @f2fs_init_ckpt_req_control.__key.19, !45, !"__key", i1 false, i1 false}
!45 = !{!"../fs/f2fs/checkpoint.c", i32 1911, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ino_entry_slab, !48, !"ino_entry_slab", i1 false, i1 false}
!48 = !{!"../fs/f2fs/checkpoint.c", i32 26, i32 27}
!49 = !{ptr @f2fs_inode_entry_slab, !50, !"f2fs_inode_entry_slab", i1 false, i1 false}
!50 = !{!"../fs/f2fs/checkpoint.c", i32 27, i32 20}
!51 = !{ptr @f2fs_grab_cache_page._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../fs/f2fs/f2fs.h", i32 2571, i32 4}
!53 = !{ptr @__func__.f2fs_grab_cache_page, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @f2fs_grab_cache_page._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @f2fs_grab_cache_page._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/f2fs/checkpoint.c", i32 151, i32 3}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/mm.h", i32 717, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/f2fs.h", i32 1258, i32 1}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/trace/events/f2fs.h", i32 1333, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/f2fs.h", i32 1279, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!92 = !{ptr @__func__.f2fs_kmem_cache_alloc, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @f2fs_kmem_cache_alloc._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/f2fs/checkpoint.c", i32 680, i32 2}
!101 = !{ptr @__func__.recover_orphan_inode, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @f2fs_kvmalloc._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../fs/f2fs/f2fs.h", i32 3236, i32 3}
!104 = !{ptr @__func__.f2fs_kvmalloc, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @f2fs_kvmalloc._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @f2fs_kvmalloc._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/f2fs/checkpoint.c", i32 876, i32 3}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/f2fs/checkpoint.c", i32 846, i32 3}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/f2fs/checkpoint.c", i32 853, i32 3}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/trace/events/f2fs.h", i32 1703, i32 1}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/trace/events/f2fs.h", i32 1710, i32 1}
!122 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/trace/events/f2fs.h", i32 1423, i32 1}
!125 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/f2fs/checkpoint.c", i32 1308, i32 4}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/f2fs/checkpoint.c", i32 1313, i32 4}
!130 = !{ptr @xa_init_flags.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!132 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @init_completion.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../include/linux/completion.h", i32 87, i32 2}
!135 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{i64 2150606893, i64 2150607384, i64 2150606930, i64 2150606986, i64 2150607020, i64 2150607044, i64 2150607085, i64 2150607106, i64 2150607134, i64 2150607168}
!148 = !{i64 2148698148, i64 2148698174, i64 2148698203, i64 2148698237, i64 2148698268, i64 2148698291}
!149 = !{i64 2151356785}
!150 = !{i64 2148707006, i64 2148707038, i64 2148707067, i64 2148707101, i64 2148707132, i64 2148707155}
!151 = !{i64 2148796111}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2157066435, i64 2157066920, i64 2157066472, i64 2157066528, i64 2157066562, i64 2157066586, i64 2157066627, i64 2157066648, i64 2157066676, i64 2157066710}
!154 = !{i64 2155577729, i64 2155578211, i64 2155577766, i64 2155577822, i64 2155577856, i64 2155577880, i64 2155577921, i64 2155577942, i64 2155577970, i64 2155578004}
!155 = !{i64 2155584216, i64 2155584698, i64 2155584253, i64 2155584309, i64 2155584343, i64 2155584367, i64 2155584408, i64 2155584429, i64 2155584457, i64 2155584491}
!156 = !{i64 2157069023, i64 2157069508, i64 2157069060, i64 2157069116, i64 2157069150, i64 2157069174, i64 2157069215, i64 2157069236, i64 2157069264, i64 2157069298}
!157 = !{i64 2150614326, i64 2150614817, i64 2150614363, i64 2150614419, i64 2150614453, i64 2150614477, i64 2150614518, i64 2150614539, i64 2150614567, i64 2150614601}
!158 = !{i64 2155429409, i64 2155429889, i64 2155429446, i64 2155429502, i64 2155429536, i64 2155429560, i64 2155429601, i64 2155429622, i64 2155429650, i64 2155429684}
!159 = !{i64 2153232660, i64 2153233143, i64 2153232697, i64 2153232753, i64 2153232787, i64 2153232811, i64 2153232852, i64 2153232873, i64 2153232901, i64 2153232935}
!160 = !{i64 2148786624}
!161 = !{i64 2148701333, i64 2148701365, i64 2148701394, i64 2148701428, i64 2148701459, i64 2148701482}
!162 = !{i64 2148786853}
!163 = !{i64 2148522746, i64 2148522751, i64 2148522764, i64 2148522808, i64 2148522842, i64 2148522863}
!164 = !{i64 2150716802, i64 2150717293, i64 2150716839, i64 2150716895, i64 2150716929, i64 2150716953, i64 2150716994, i64 2150717015, i64 2150717043, i64 2150717077}
!165 = !{i64 2148700613, i64 2148700639, i64 2148700668, i64 2148700702, i64 2148700733, i64 2148700756}
!166 = !{i64 2149510594}
!167 = !{i64 2149510860}
!168 = !{i64 2157073304, i64 2157073789, i64 2157073341, i64 2157073397, i64 2157073431, i64 2157073455, i64 2157073496, i64 2157073517, i64 2157073545, i64 2157073579}
!169 = !{i64 2151699653}
!170 = !{i64 2157082601, i64 2157083086, i64 2157082638, i64 2157082694, i64 2157082728, i64 2157082752, i64 2157082793, i64 2157082814, i64 2157082842, i64 2157082876}
!171 = !{i8 0, i8 2}
!172 = !{i64 2157084244, i64 2157084729, i64 2157084281, i64 2157084337, i64 2157084371, i64 2157084395, i64 2157084436, i64 2157084457, i64 2157084485, i64 2157084519}
!173 = !{i64 2151065599, i64 2151066090, i64 2151065636, i64 2151065692, i64 2151065726, i64 2151065750, i64 2151065791, i64 2151065812, i64 2151065840, i64 2151065874}
!174 = !{i64 2153256633, i64 2153257117, i64 2153256670, i64 2153256726, i64 2153256760, i64 2153256784, i64 2153256825, i64 2153256846, i64 2153256874, i64 2153256908}
!175 = !{i64 2151070850, i64 2151071023, i64 2151071038, i64 2151071090, i64 2151071149, i64 2151071173, i64 2151071214, i64 2151071235, i64 2151071263, i64 2151071295}
!176 = !{i64 2156854118}
!177 = !{i64 2156854367}
!178 = !{i64 2149519153}
!179 = !{i64 2149520189}
!180 = !{i64 2156871851}
!181 = !{i64 2156872098}
!182 = !{i64 2157114734, i64 2157115220, i64 2157114771, i64 2157114827, i64 2157114861, i64 2157114885, i64 2157114926, i64 2157114947, i64 2157114975, i64 2157115009}
!183 = !{i64 2157116493, i64 2157116979, i64 2157116530, i64 2157116586, i64 2157116620, i64 2157116644, i64 2157116685, i64 2157116706, i64 2157116734, i64 2157116768}
!184 = !{i64 2156648098}
!185 = !{i64 2156648333}
!186 = !{i64 1062389, i64 1062416, i64 1062438, i64 1062466}
!187 = !{i64 1062797, i64 1062824, i64 1062857, i64 1062878, i64 1062905, i64 1062931}
!188 = !{i64 2155572218, i64 2155572700, i64 2155572255, i64 2155572311, i64 2155572345, i64 2155572369, i64 2155572410, i64 2155572431, i64 2155572459, i64 2155572493}
!189 = !{i64 2155493887, i64 2155494366, i64 2155493924, i64 2155493980, i64 2155494014, i64 2155494038, i64 2155494079, i64 2155494100, i64 2155494128, i64 2155494162}
!190 = !{i64 2155383761, i64 2155384241, i64 2155383798, i64 2155383854, i64 2155383888, i64 2155383912, i64 2155383953, i64 2155383974, i64 2155384002, i64 2155384036}
!191 = !{i64 2155385311, i64 2155385791, i64 2155385348, i64 2155385404, i64 2155385438, i64 2155385462, i64 2155385503, i64 2155385524, i64 2155385552, i64 2155385586}
!192 = !{i64 2157112524, i64 2157113010, i64 2157112561, i64 2157112617, i64 2157112651, i64 2157112675, i64 2157112716, i64 2157112737, i64 2157112765, i64 2157112799}
!193 = !{i64 2157123589}
!194 = !{i64 2156468065}
!195 = !{i64 2156468276}
!196 = !{i64 2156610294}
!197 = !{i64 2156610519}
!198 = !{i64 2156521478}
!199 = !{i64 2156521699}
!200 = !{i64 2157104175, i64 2157104661, i64 2157104212, i64 2157104268, i64 2157104302, i64 2157104326, i64 2157104367, i64 2157104388, i64 2157104416, i64 2157104450}
!201 = !{i64 2157105818, i64 2157106304, i64 2157105855, i64 2157105911, i64 2157105945, i64 2157105969, i64 2157106010, i64 2157106031, i64 2157106059, i64 2157106093}
!202 = !{i64 2149316158}
!203 = !{i64 1204916, i64 1204933, i64 1204957, i64 1204983, i64 1205001}
!204 = !{i64 2149316511}
!205 = !{i64 1062102, i64 1062129}
