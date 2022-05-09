; ModuleID = '/llk/IR_all_yes/fs/ocfs2/ioctl.c_pt.bc'
source_filename = "../fs/ocfs2/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.75 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.ocfs2_info_blocksize = type { %struct.ocfs2_info_request, i32, i32 }
%struct.ocfs2_info_request = type { i32, i32, i32, i32 }
%struct.ocfs2_info_clustersize = type { %struct.ocfs2_info_request, i32, i32 }
%struct.ocfs2_info_maxslots = type { %struct.ocfs2_info_request, i32, i32 }
%struct.ocfs2_info_label = type { %struct.ocfs2_info_request, [64 x i8] }
%struct.ocfs2_info_uuid = type <{ %struct.ocfs2_info_request, [33 x i8] }>
%struct.ocfs2_info_fs_features = type { %struct.ocfs2_info_request, i32, i32, i32, i32 }
%struct.ocfs2_info_journal_size = type { %struct.ocfs2_info_request, i64 }
%struct.ocfs2_space_resv = type { i16, i16, i64, i64, i32, i32, [4 x i32] }
%struct.ocfs2_new_group_input = type { i64, i32, i32, i16, i16, i32 }
%struct.reflink_arguments = type { i64, i64, i64 }
%struct.ocfs2_info = type { i64, i32, i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.77, ptr }
%union.anon.77 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_journal = type { i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.work_struct }
%struct.ocfs2_info_freeinode = type { %struct.ocfs2_info_request, [255 x %struct.ocfs2_info_local_freeinode], i32, i32 }
%struct.ocfs2_info_local_freeinode = type { i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.81, %union.anon.85 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.81 = type { i64 }
%union.anon.85 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.86, [16 x i8] }
%union.anon.86 = type { i32 }
%struct.anon.83 = type { i32, i32 }
%struct.ocfs2_info_freefrag = type { %struct.ocfs2_info_request, %struct.ocfs2_info_freefrag_stats, i32, i32 }
%struct.ocfs2_info_freefrag_stats = type { %struct.ocfs2_info_free_chunk_list, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_info_free_chunk_list = type { [32 x i32], [32 x i32] }
%struct.ocfs2_chain_rec = type { i32, i32, i64 }
%struct.ocfs2_group_desc = type { [8 x i8], i16, i16, i16, i16, i32, i32, i64, i64, i64, %struct.ocfs2_block_check, i64, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { [256 x i8], %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_extent_rec] }
%struct.ocfs2_extent_rec = type { i32, %union.anon.88, i64 }
%union.anon.88 = type { i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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

@__func__.ocfs2_fileattr_get = private unnamed_addr constant [19 x i8] c"ocfs2_fileattr_get\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_fileattr_set = private unnamed_addr constant [19 x i8] c"ocfs2_fileattr_set\00", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ocfs2/ioctl.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_info_handle_freeinode = private unnamed_addr constant [28 x i8] c"ocfs2_info_handle_freeinode\00", align 1
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to get alloc inode in slot %u\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"global_bitmap\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inode_alloc:%04d\00", [47 x i8] zeroinitializer }, align 32
@__func__.ocfs2_info_scan_inode_alloc = private unnamed_addr constant [28 x i8] c"ocfs2_info_scan_inode_alloc\00", align 1
@__func__.ocfs2_info_handle_freefrag = private unnamed_addr constant [27 x i8] c"ocfs2_info_handle_freefrag\00", align 1
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to get global_bitmap inode\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ocfs2_info_freefrag_scan_bitmap = private unnamed_addr constant [32 x i8] c"ocfs2_info_freefrag_scan_bitmap\00", align 1
@__func__.ocfs2_info_freefrag_scan_chain = private unnamed_addr constant [31 x i8] c"ocfs2_info_freefrag_scan_chain\00", align 1
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't read the group descriptor # %llu from device.\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [13 x i64] [i64 11, i64 32, i64 1074032385, i64 1075343106, i64 1075343107, i64 1075343108, i64 1076910120, i64 1076910121, i64 1076910122, i64 1076910123, i64 1077964550, i64 2148560645, i64 3222820985]
@__sancov_gen_cov_switch_values.28 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 73, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 867, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 156, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 354, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 359, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"../fs/ocfs2/ocfs2_fs.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 366, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 648, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [20 x i8] c"../fs/ocfs2/ioctl.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 471, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.11, ptr @.str.16, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %do.body [
    i32 -512, label %if.then.cleanup_crit_edge
    i32 -4, label %if.then.cleanup_crit_edge32
    i32 -28, label %if.then.cleanup_crit_edge33
    i32 -122, label %if.then.cleanup_crit_edge34
  ]

if.then.cleanup_crit_edge34:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge33:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge32:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_fileattr_get, i32 noundef 73, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1608
  tail call void @ocfs2_get_inode_flags(ptr noundef %add.ptr.i) #9
  %ip_attr = getelementptr i8, ptr %1, i32 -72
  %4 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ip_attr, align 8
  tail call void @ocfs2_inode_unlock(ptr noundef %1, i32 noundef 0) #9
  %and16 = and i32 %5, 253951
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %and16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.body, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge32, %if.then.cleanup_crit_edge33, %if.then.cleanup_crit_edge34
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_get_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m55 = alloca i64, align 8
  %_m88 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fa, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bh, align 4
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %9 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %10 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %bf.cast.not.i = icmp eq i8 %10, 0
  br i1 %bf.cast.not.i, label %entry.if.end_crit_edge, label %land.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %11 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %12, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %13 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %15 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2.not.i = icmp eq i32 %16, 0
  br i1 %cmp2.not.i, label %fileattr_has_fsx.exit, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fileattr_has_fsx.exit:                            ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %17 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.i.not = icmp eq i32 %18, 0
  br i1 %cmp3.i.not, label %fileattr_has_fsx.exit.if.end_crit_edge, label %fileattr_has_fsx.exit.cleanup_crit_edge

fileattr_has_fsx.exit.cleanup_crit_edge:          ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fileattr_has_fsx.exit.if.end_crit_edge:           ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %fileattr_has_fsx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %1, ptr noundef nonnull %bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end18

if.then5:                                         ; preds = %if.end
  %19 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call4, label %do.body [
    i32 -512, label %if.then5.bail_crit_edge
    i32 -4, label %if.then5.bail_crit_edge149
    i32 -28, label %if.then5.bail_crit_edge150
    i32 -122, label %if.then5.bail_crit_edge151
  ]

if.then5.bail_crit_edge151:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.then5.bail_crit_edge150:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.then5.bail_crit_edge149:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.then5.bail_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %20 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_fileattr_set, i32 noundef 102, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %bail

if.end18:                                         ; preds = %if.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp21 = icmp eq i16 %23, 16384
  %and24 = and i32 %3, -65537
  %spec.select = select i1 %cmp21, i32 %3, i32 %and24
  %ip_attr = getelementptr i8, ptr %1, i32 -72
  %24 = ptrtoint ptr %ip_attr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip_attr, align 8
  %and26 = and i32 %spec.select, 229631
  %and27 = and i32 %25, -229632
  %or = or i32 %and26, %and27
  %xor = xor i32 %spec.select, %25
  %and28 = and i32 %xor, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end18.if.end33_crit_edge, label %land.lhs.true30

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true30:                                  ; preds = %if.end18
  %call31 = call zeroext i1 @capable(i32 noundef 9) #9
  br i1 %call31, label %land.lhs.true30.if.end33_crit_edge, label %land.lhs.true30.bail_unlock_crit_edge

land.lhs.true30.bail_unlock_crit_edge:            ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail_unlock

land.lhs.true30.if.end33_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true30.if.end33_crit_edge, %if.end18.if.end33_crit_edge
  %call34 = call ptr @ocfs2_start_trans(ptr noundef %7, i32 noundef 1) #9
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end65

if.then36:                                        ; preds = %if.end33
  %26 = ptrtoint ptr %call34 to i32
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %26, label %do.body54 [
    i32 -512, label %if.then36.bail_unlock_crit_edge
    i32 -4, label %if.then36.bail_unlock_crit_edge152
    i32 524289, label %if.then36.bail_unlock_crit_edge153
    i32 -28, label %if.then36.bail_unlock_crit_edge154
    i32 -122, label %if.then36.bail_unlock_crit_edge155
  ]

if.then36.bail_unlock_crit_edge155:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail_unlock

if.then36.bail_unlock_crit_edge154:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail_unlock

if.then36.bail_unlock_crit_edge153:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail_unlock

if.then36.bail_unlock_crit_edge152:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail_unlock

if.then36.bail_unlock_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail_unlock

do.body54:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #9
  %28 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1152921504606846976, ptr %_m55, align 8
  %conv59 = sext i32 %26 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.ocfs2_fileattr_set, i32 noundef 122, ptr noundef nonnull @.str, i64 noundef %conv59) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #9
  br label %bail_unlock

if.end65:                                         ; preds = %if.end33
  %29 = ptrtoint ptr %ip_attr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %ip_attr, align 8
  call void @ocfs2_set_inode_flags(ptr noundef %1) #9
  %30 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bh, align 4
  %call67 = call i32 @ocfs2_mark_inode_dirty(ptr noundef %call34, ptr noundef %1, ptr noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end65.if.end98_crit_edge

if.end65.if.end98_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then70:                                        ; preds = %if.end65
  %32 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call67, label %do.body87 [
    i32 -512, label %if.then70.if.end98_crit_edge
    i32 -4, label %if.then70.if.end98_crit_edge156
    i32 -28, label %if.then70.if.end98_crit_edge157
    i32 -122, label %if.then70.if.end98_crit_edge158
  ]

if.then70.if.end98_crit_edge158:                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then70.if.end98_crit_edge157:                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then70.if.end98_crit_edge156:                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then70.if.end98_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.body87:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m88) #9
  %33 = ptrtoint ptr %_m88 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m88, align 8
  %conv92 = sext i32 %call67 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m88, ptr noundef nonnull @__func__.ocfs2_fileattr_set, i32 noundef 131, ptr noundef nonnull @.str, i64 noundef %conv92) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m88) #9
  br label %if.end98

if.end98:                                         ; preds = %do.body87, %if.then70.if.end98_crit_edge, %if.then70.if.end98_crit_edge156, %if.then70.if.end98_crit_edge157, %if.then70.if.end98_crit_edge158, %if.end65.if.end98_crit_edge
  %call99 = call i32 @ocfs2_commit_trans(ptr noundef %7, ptr noundef %call34) #9
  br label %bail_unlock

bail_unlock:                                      ; preds = %if.end98, %do.body54, %if.then36.bail_unlock_crit_edge, %if.then36.bail_unlock_crit_edge152, %if.then36.bail_unlock_crit_edge153, %if.then36.bail_unlock_crit_edge154, %if.then36.bail_unlock_crit_edge155, %land.lhs.true30.bail_unlock_crit_edge
  %status.0 = phi i32 [ %call67, %if.end98 ], [ -1, %land.lhs.true30.bail_unlock_crit_edge ], [ %26, %if.then36.bail_unlock_crit_edge ], [ %26, %if.then36.bail_unlock_crit_edge152 ], [ %26, %if.then36.bail_unlock_crit_edge153 ], [ %26, %if.then36.bail_unlock_crit_edge154 ], [ %26, %if.then36.bail_unlock_crit_edge155 ], [ %26, %do.body54 ]
  call void @ocfs2_inode_unlock(ptr noundef %1, i32 noundef 1) #9
  br label %bail

bail:                                             ; preds = %bail_unlock, %do.body, %if.then5.bail_crit_edge, %if.then5.bail_crit_edge149, %if.then5.bail_crit_edge150, %if.then5.bail_crit_edge151
  %status.1 = phi i32 [ %status.0, %bail_unlock ], [ %call4, %if.then5.bail_crit_edge ], [ %call4, %if.then5.bail_crit_edge149 ], [ %call4, %if.then5.bail_crit_edge150 ], [ %call4, %if.then5.bail_crit_edge151 ], [ %call4, %do.body ]
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh, align 4
  %tobool.not.i147 = icmp eq ptr %35, null
  br i1 %tobool.not.i147, label %bail.cleanup_crit_edge, label %if.then.i

bail.cleanup_crit_edge:                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %35) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %bail.cleanup_crit_edge, %fileattr_has_fsx.exit.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %fileattr_has_fsx.exit.cleanup_crit_edge ], [ %status.1, %bail.cleanup_crit_edge ], [ %status.1, %if.then.i ], [ -95, %lor.lhs.false1.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %oib.i.i = alloca %struct.ocfs2_info_blocksize, align 4
  %oic.i.i = alloca %struct.ocfs2_info_clustersize, align 4
  %oim.i.i = alloca %struct.ocfs2_info_maxslots, align 4
  %oil.i.i = alloca %struct.ocfs2_info_label, align 1
  %oiu.i.i = alloca %struct.ocfs2_info_uuid, align 1
  %oif.i.i = alloca %struct.ocfs2_info_fs_features, align 4
  %oij.i.i = alloca %struct.ocfs2_info_journal_size, align 8
  %bh.i.i52.i = alloca ptr, align 4
  %_m.i.i53.i = alloca i64, align 8
  %_m42.i.i.i = alloca i64, align 8
  %blkno.i54.i = alloca i64, align 8
  %namebuf.i55.i = alloca [40 x i8], align 1
  %_m.i56.i = alloca i64, align 8
  %_m27.i.i = alloca i64, align 8
  %bh.i.i.i.i = alloca ptr, align 4
  %_m.i.i.i.i = alloca i64, align 8
  %bh.i.i.i = alloca ptr, align 4
  %_m.i.i.i = alloca i64, align 8
  %_m40.i.i.i = alloca i64, align 8
  %blkno.i.i = alloca i64, align 8
  %namebuf.i.i = alloca [40 x i8], align 1
  %_m.i.i = alloca i64, align 8
  %_m31.i.i = alloca i64, align 8
  %oir.i16.i = alloca %struct.ocfs2_info_request, align 4
  %oir.i.i = alloca %struct.ocfs2_info_request, align 4
  %req_addr.i = alloca i64, align 8
  %sr = alloca %struct.ocfs2_space_resv, align 8
  %input = alloca %struct.ocfs2_new_group_input, align 8
  %args = alloca %struct.reflink_arguments, align 8
  %info = alloca %struct.ocfs2_info, align 8
  %range = alloca %struct.fstrim_range, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sr) #9
  %2 = call ptr @memset(ptr %sr, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %input) #9
  %3 = call ptr @memset(ptr %input, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #9
  %4 = getelementptr inbounds %struct.reflink_arguments, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct.reflink_arguments, ptr %args, i32 0, i32 2
  %6 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %7 = getelementptr inbounds %struct.ocfs2_info, ptr %info, i32 0, i32 1
  %8 = inttoptr i32 %arg to ptr
  %9 = call ptr @memset(ptr %info, i32 255, i32 16)
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cmd, label %entry.cleanup81_crit_edge [
    i32 1076910120, label %entry.if.end59.i.i_crit_edge
    i32 1076910122, label %entry.if.end59.i.i_crit_edge292
    i32 1076910121, label %entry.if.end59.i.i_crit_edge293
    i32 1076910123, label %entry.if.end59.i.i_crit_edge294
    i32 1074032385, label %sw.bb3
    i32 1075343106, label %entry.sw.bb18_crit_edge
    i32 1075343107, label %entry.sw.bb18_crit_edge295
    i32 1075343108, label %if.end59.i.i146
    i32 -2146406651, label %if.end59.i.i169
    i32 -1072146311, label %sw.bb49
    i32 1077964550, label %sw.bb79
  ]

entry.sw.bb18_crit_edge295:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

entry.if.end59.i.i_crit_edge294:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

entry.if.end59.i.i_crit_edge293:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

entry.if.end59.i.i_crit_edge292:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

entry.if.end59.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end59.i.i:                                     ; preds = %entry.if.end59.i.i_crit_edge, %entry.if.end59.i.i_crit_edge292, %entry.if.end59.i.i_crit_edge293, %entry.if.end59.i.i_crit_edge294
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 48, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !74

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sr, i32 noundef 48) #9
  %12 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !75
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sr, ptr noundef %8, i32 noundef 48) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !74

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i231 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 48, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 48, %res.0.i.i231
  %add.ptr.i.i = getelementptr i8, ptr %sr, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i231)
  br label %cleanup81

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 @ocfs2_change_file_space(ptr noundef %filp, i32 noundef %cmd, ptr noundef nonnull %sr) #9
  br label %cleanup81

sw.bb3:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @capable(i32 noundef 24) #9
  br i1 %call4, label %if.end6, label %sw.bb3.cleanup81_crit_edge

sw.bb3.cleanup81_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end6:                                          ; preds = %sw.bb3
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 867) #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !75
  %and.i = and i32 %18, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1226833921) #9, !srcloc !78
  %asmresult = extractvalue { i32, i32 } %19, 0
  %asmresult8 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup81_crit_edge

if.end6.cleanup81_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup81_crit_edge

if.end12.cleanup81_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @ocfs2_group_extend(ptr noundef %1, i32 noundef %asmresult8) #9
  tail call void @mnt_drop_write_file(ptr noundef %filp) #9
  br label %cleanup81

sw.bb18:                                          ; preds = %entry.sw.bb18_crit_edge, %entry.sw.bb18_crit_edge295
  %call19 = tail call zeroext i1 @capable(i32 noundef 24) #9
  br i1 %call19, label %if.end59.i.i123, label %sw.bb18.cleanup81_crit_edge

sw.bb18.cleanup81_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end59.i.i123:                                  ; preds = %sw.bb18
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i124 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i124, label %if.end59.i.i123.if.then11.i.i140_crit_edge, label %land.lhs.true.i.i127

if.end59.i.i123.if.then11.i.i140_crit_edge:       ; preds = %if.end59.i.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i140

land.lhs.true.i.i127:                             ; preds = %if.end59.i.i123
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i125 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i125)
  %cmp.i6.i126 = icmp eq i32 %asmresult.i.i125, 0
  br i1 %cmp.i6.i126, label %if.end.i.i137, label %land.lhs.true.i.i127.if.then11.i.i140_crit_edge, !prof !74

land.lhs.true.i.i127.if.then11.i.i140_crit_edge:  ; preds = %land.lhs.true.i.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i140

if.end.i.i137:                                    ; preds = %land.lhs.true.i.i127
  %call.i.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %input, i32 noundef 24) #9
  %21 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i129 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i129 to ptr
  %cpu_domain.i.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i130) #3, !srcloc !75
  %and.i.i.i.i131 = and i32 %23, -13
  %or.i.i.i.i132 = or i32 %and.i.i.i.i131, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i132) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i133 = call i32 @arm_copy_from_user(ptr noundef nonnull %input, ptr noundef %8, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i133)
  %tobool4.not.i.i136 = icmp eq i32 %call1.i.i.i133, 0
  br i1 %tobool4.not.i.i136, label %if.end25, label %if.end.i.i137.if.then11.i.i140_crit_edge, !prof !74

if.end.i.i137.if.then11.i.i140_crit_edge:         ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i140

if.then11.i.i140:                                 ; preds = %if.end.i.i137.if.then11.i.i140_crit_edge, %land.lhs.true.i.i127.if.then11.i.i140_crit_edge, %if.end59.i.i123.if.then11.i.i140_crit_edge
  %res.0.i.i135236 = phi i32 [ %call1.i.i.i133, %if.end.i.i137.if.then11.i.i140_crit_edge ], [ 24, %if.end59.i.i123.if.then11.i.i140_crit_edge ], [ 24, %land.lhs.true.i.i127.if.then11.i.i140_crit_edge ]
  %sub.i.i138 = sub i32 24, %res.0.i.i135236
  %add.ptr.i.i139 = getelementptr i8, ptr %input, i32 %sub.i.i138
  %24 = call ptr @memset(ptr %add.ptr.i.i139, i32 0, i32 %res.0.i.i135236)
  br label %cleanup81

if.end25:                                         ; preds = %if.end.i.i137
  %call26 = call i32 @mnt_want_write_file(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup81_crit_edge

if.end25.cleanup81_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 @ocfs2_group_add(ptr noundef %1, ptr noundef nonnull %input) #9
  call void @mnt_drop_write_file(ptr noundef %filp) #9
  br label %cleanup81

if.end59.i.i146:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i147 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i147, label %if.end59.i.i146.if.then11.i.i163_crit_edge, label %land.lhs.true.i.i150

if.end59.i.i146.if.then11.i.i163_crit_edge:       ; preds = %if.end59.i.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i163

land.lhs.true.i.i150:                             ; preds = %if.end59.i.i146
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i148 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i148)
  %cmp.i6.i149 = icmp eq i32 %asmresult.i.i148, 0
  br i1 %cmp.i6.i149, label %if.end.i.i160, label %land.lhs.true.i.i150.if.then11.i.i163_crit_edge, !prof !74

land.lhs.true.i.i150.if.then11.i.i163_crit_edge:  ; preds = %land.lhs.true.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i163

if.end.i.i160:                                    ; preds = %land.lhs.true.i.i150
  %call.i.i.i151 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 24) #9
  %26 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i152 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i152 to ptr
  %cpu_domain.i.i.i.i.i153 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i153) #3, !srcloc !75
  %and.i.i.i.i154 = and i32 %28, -13
  %or.i.i.i.i155 = or i32 %and.i.i.i.i154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i155) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i156 = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %8, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i156)
  %tobool4.not.i.i159 = icmp eq i32 %call1.i.i.i156, 0
  br i1 %tobool4.not.i.i159, label %if.end35, label %if.end.i.i160.if.then11.i.i163_crit_edge, !prof !74

if.end.i.i160.if.then11.i.i163_crit_edge:         ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i163

if.then11.i.i163:                                 ; preds = %if.end.i.i160.if.then11.i.i163_crit_edge, %land.lhs.true.i.i150.if.then11.i.i163_crit_edge, %if.end59.i.i146.if.then11.i.i163_crit_edge
  %res.0.i.i158241 = phi i32 [ %call1.i.i.i156, %if.end.i.i160.if.then11.i.i163_crit_edge ], [ 24, %if.end59.i.i146.if.then11.i.i163_crit_edge ], [ 24, %land.lhs.true.i.i150.if.then11.i.i163_crit_edge ]
  %sub.i.i161 = sub i32 24, %res.0.i.i158241
  %add.ptr.i.i162 = getelementptr i8, ptr %args, i32 %sub.i.i161
  %29 = call ptr @memset(ptr %add.ptr.i.i162, i32 0, i32 %res.0.i.i158241)
  br label %cleanup81

if.end35:                                         ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %args, align 8
  %conv = trunc i64 %31 to i32
  %32 = inttoptr i32 %conv to ptr
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %4, align 8
  %conv38 = trunc i64 %34 to i32
  %35 = inttoptr i32 %conv38 to ptr
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp = icmp ne i64 %37, 0
  %call42 = call i32 @ocfs2_reflink_ioctl(ptr noundef %1, ptr noundef %32, ptr noundef %35, i1 noundef zeroext %cmp) #9
  br label %cleanup81

if.end59.i.i169:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i170 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i170, label %if.end59.i.i169.if.then11.i.i186_crit_edge, label %land.lhs.true.i.i173

if.end59.i.i169.if.then11.i.i186_crit_edge:       ; preds = %if.end59.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i186

land.lhs.true.i.i173:                             ; preds = %if.end59.i.i169
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 16, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i171 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i171)
  %cmp.i6.i172 = icmp eq i32 %asmresult.i.i171, 0
  br i1 %cmp.i6.i172, label %if.end.i.i183, label %land.lhs.true.i.i173.if.then11.i.i186_crit_edge, !prof !74

land.lhs.true.i.i173.if.then11.i.i186_crit_edge:  ; preds = %land.lhs.true.i.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i186

if.end.i.i183:                                    ; preds = %land.lhs.true.i.i173
  %call.i.i.i174 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 16) #9
  %39 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i175 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i175 to ptr
  %cpu_domain.i.i.i.i.i176 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i176) #3, !srcloc !75
  %and.i.i.i.i177 = and i32 %41, -13
  %or.i.i.i.i178 = or i32 %and.i.i.i.i177, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i178) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i179 = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %8, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i179)
  %tobool4.not.i.i182 = icmp eq i32 %call1.i.i.i179, 0
  br i1 %tobool4.not.i.i182, label %if.end47, label %if.end.i.i183.if.then11.i.i186_crit_edge, !prof !74

if.end.i.i183.if.then11.i.i186_crit_edge:         ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i186

if.then11.i.i186:                                 ; preds = %if.end.i.i183.if.then11.i.i186_crit_edge, %land.lhs.true.i.i173.if.then11.i.i186_crit_edge, %if.end59.i.i169.if.then11.i.i186_crit_edge
  %res.0.i.i181246 = phi i32 [ %call1.i.i.i179, %if.end.i.i183.if.then11.i.i186_crit_edge ], [ 16, %if.end59.i.i169.if.then11.i.i186_crit_edge ], [ 16, %land.lhs.true.i.i173.if.then11.i.i186_crit_edge ]
  %sub.i.i184 = sub i32 16, %res.0.i.i181246
  %add.ptr.i.i185 = getelementptr i8, ptr %info, i32 %sub.i.i184
  %42 = call ptr @memset(ptr %add.ptr.i.i185, i32 0, i32 %res.0.i.i181246)
  br label %cleanup81

if.end47:                                         ; preds = %if.end.i.i183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_addr.i) #9
  %43 = ptrtoint ptr %req_addr.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %req_addr.i, align 8, !annotation !79
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %45)
  %cmp.i = icmp ugt i32 %45, 50
  br i1 %cmp.i, label %if.end47.ocfs2_info_handle.exit_crit_edge, label %lor.lhs.false.i

if.end47.ocfs2_info_handle.exit_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle.exit

lor.lhs.false.i:                                  ; preds = %if.end47
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool.not.i = icmp eq i64 %47, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.ocfs2_info_handle.exit_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.ocfs2_info_handle.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp2300.not.i = icmp eq i32 %45, 0
  br i1 %cmp2300.not.i, label %for.cond.preheader.i.ocfs2_info_handle.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ocfs2_info_handle.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %48 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oir.i.i, i32 0, i32 1
  %49 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oir.i.i, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %50 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oij.i.i, i32 0, i32 3
  %51 = getelementptr inbounds %struct.ocfs2_info_journal_size, ptr %oij.i.i, i32 0, i32 1
  %52 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oif.i.i, i32 0, i32 3
  %53 = getelementptr inbounds %struct.ocfs2_info_fs_features, ptr %oif.i.i, i32 0, i32 1
  %54 = getelementptr inbounds %struct.ocfs2_info_fs_features, ptr %oif.i.i, i32 0, i32 2
  %55 = getelementptr inbounds %struct.ocfs2_info_fs_features, ptr %oif.i.i, i32 0, i32 3
  %iu_uuid_str.i.i = getelementptr inbounds %struct.ocfs2_info_uuid, ptr %oiu.i.i, i32 0, i32 1
  %ir_flags.i.i179.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %oiu.i.i, i32 0, i32 3
  %il_label.i.i = getelementptr inbounds %struct.ocfs2_info_label, ptr %oil.i.i, i32 0, i32 1
  %ir_flags.i.i204.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %oil.i.i, i32 0, i32 3
  %56 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oim.i.i, i32 0, i32 3
  %57 = getelementptr inbounds %struct.ocfs2_info_maxslots, ptr %oim.i.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oic.i.i, i32 0, i32 3
  %59 = getelementptr inbounds %struct.ocfs2_info_clustersize, ptr %oic.i.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oib.i.i, i32 0, i32 3
  %61 = getelementptr inbounds %struct.ocfs2_info_blocksize, ptr %oib.i.i, i32 0, i32 1
  %62 = getelementptr inbounds %struct.ocfs2_info_request, ptr %oir.i16.i, i32 0, i32 3
  br label %for.body.i

for.cond.i:                                       ; preds = %ocfs2_info_handle_request.exit.i
  %inc.i = add nuw i32 %i.0301.i, 1
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %7, align 8
  %cmp2.i = icmp ult i32 %inc.i, %64
  br i1 %cmp2.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.ocfs2_info_handle.exit_crit_edge

for.cond.i.ocfs2_info_handle.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0301.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %65 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %info, align 8
  %conv.i.i = trunc i64 %66 to i32
  %67 = inttoptr i32 %conv.i.i to ptr
  %add.ptr.i.i222 = getelementptr i64, ptr %67, i32 %i.0301.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %for.body.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.if.then11.i.i.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i
  %68 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i.i222, i32 8, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !74

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req_addr.i, i32 noundef 8) #9
  %69 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #3, !srcloc !75
  %and.i.i.i.i.i.i223 = and i32 %71, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i223, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req_addr.i, ptr noundef %add.ptr.i.i222, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end5.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !74

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %for.body.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %for.body.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %req_addr.i, i32 %sub.i.i.i.i
  %72 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %ocfs2_info_handle.exit

if.end5.i:                                        ; preds = %if.end.i.i.i.i
  %73 = ptrtoint ptr %req_addr.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %req_addr.i, align 8
  %conv.i = trunc i64 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.ocfs2_info_handle.exit_crit_edge, label %if.end8.i

if.end5.i.ocfs2_info_handle.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle.exit

if.end8.i:                                        ; preds = %if.end5.i
  %75 = inttoptr i32 %conv.i to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oir.i.i) #9
  %76 = call ptr @memset(ptr %oir.i.i, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i1.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i1.i, label %if.end8.i.if.then11.i.i.i15.i_crit_edge, label %land.lhs.true.i.i.i4.i

if.end8.i.if.then11.i.i.i15.i_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i15.i

land.lhs.true.i.i.i4.i:                           ; preds = %if.end8.i
  %77 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 16, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i.i2.i = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i2.i)
  %cmp.i6.i.i3.i = icmp eq i32 %asmresult.i.i.i2.i, 0
  br i1 %cmp.i6.i.i3.i, label %if.end.i.i.i12.i, label %land.lhs.true.i.i.i4.i.if.then11.i.i.i15.i_crit_edge, !prof !74

land.lhs.true.i.i.i4.i.if.then11.i.i.i15.i_crit_edge: ; preds = %land.lhs.true.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i15.i

if.end.i.i.i12.i:                                 ; preds = %land.lhs.true.i.i.i4.i
  %call.i.i.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oir.i.i, i32 noundef 16) #9
  %78 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i6.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i.i6.i to ptr
  %cpu_domain.i.i.i.i.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i7.i) #3, !srcloc !75
  %and.i.i.i.i.i8.i = and i32 %80, -13
  %or.i.i.i.i.i9.i = or i32 %and.i.i.i.i.i8.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i9.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i10.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oir.i.i, ptr noundef nonnull %75, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i10.i)
  %tobool4.not.i.i.i11.i = icmp eq i32 %call1.i.i.i.i10.i, 0
  br i1 %tobool4.not.i.i.i11.i, label %if.end.i.i224, label %if.end.i.i.i12.i.if.then11.i.i.i15.i_crit_edge, !prof !74

if.end.i.i.i12.i.if.then11.i.i.i15.i_crit_edge:   ; preds = %if.end.i.i.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i15.i

if.then11.i.i.i15.i:                              ; preds = %if.end.i.i.i12.i.if.then11.i.i.i15.i_crit_edge, %land.lhs.true.i.i.i4.i.if.then11.i.i.i15.i_crit_edge, %if.end8.i.if.then11.i.i.i15.i_crit_edge
  %res.0.i.i77.i.i = phi i32 [ %call1.i.i.i.i10.i, %if.end.i.i.i12.i.if.then11.i.i.i15.i_crit_edge ], [ 16, %if.end8.i.if.then11.i.i.i15.i_crit_edge ], [ 16, %land.lhs.true.i.i.i4.i.if.then11.i.i.i15.i_crit_edge ]
  %sub.i.i.i13.i = sub i32 16, %res.0.i.i77.i.i
  %add.ptr.i.i.i14.i = getelementptr i8, ptr %oir.i.i, i32 %sub.i.i.i13.i
  %81 = call ptr @memset(ptr %add.ptr.i.i.i14.i, i32 0, i32 %res.0.i.i77.i.i)
  br label %ocfs2_info_handle_request.exit.thread.i

if.end.i.i224:                                    ; preds = %if.end.i.i.i12.i
  %82 = ptrtoint ptr %oir.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %oir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1328695630, i32 %83)
  %cmp.not.i.i = icmp eq i32 %83, 1328695630
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i224.ocfs2_info_handle_request.exit.thread.i_crit_edge

if.end.i.i224.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.end2.i.i:                                      ; preds = %if.end.i.i224
  %84 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %48, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %85, label %sw.default.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb7.i.i
    i32 3, label %sw.bb13.i.i
    i32 4, label %sw.bb19.i.i
    i32 5, label %sw.bb25.i.i
    i32 6, label %sw.bb31.i.i
    i32 7, label %sw.bb37.i.i
    i32 8, label %sw.bb43.i.i
    i32 9, label %sw.bb49.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end2.i.i
  %87 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %88)
  %cmp3.i.i = icmp eq i32 %88, 24
  br i1 %cmp3.i.i, label %if.then4.i.i, label %sw.bb.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then4.i.i:                                     ; preds = %sw.bb.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oib.i.i) #9
  %89 = call ptr @memset(ptr %oib.i.i, i32 255, i32 24)
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i269.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i269.i, label %if.then4.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, label %land.lhs.true.i.i.i272.i

if.then4.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_blocksize.exit.i

land.lhs.true.i.i.i272.i:                         ; preds = %if.then4.i.i
  %90 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 24, i32 -1226833920) #12
  %asmresult.i.i.i270.i = extractvalue { i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i270.i)
  %cmp.i6.i.i271.i = icmp eq i32 %asmresult.i.i.i270.i, 0
  br i1 %cmp.i6.i.i271.i, label %if.end.i.i.i280.i, label %land.lhs.true.i.i.i272.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i272.i.ocfs2_info_handle_blocksize.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i272.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_blocksize.exit.i

if.end.i.i.i280.i:                                ; preds = %land.lhs.true.i.i.i272.i
  %call.i.i.i.i273.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oib.i.i, i32 noundef 24) #9
  %91 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i274.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i.i.i274.i to ptr
  %cpu_domain.i.i.i.i.i.i275.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 4
  %93 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i275.i) #3, !srcloc !75
  %and.i.i.i.i.i276.i = and i32 %93, -13
  %or.i.i.i.i.i277.i = or i32 %and.i.i.i.i.i276.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i277.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i278.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oib.i.i, ptr noundef nonnull %75, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i278.i)
  %tobool4.not.i.i.i279.i = icmp eq i32 %call1.i.i.i.i278.i, 0
  br i1 %tobool4.not.i.i.i279.i, label %if.end59.i.i9.i.i, label %if.end.i.i.i280.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, !prof !74

if.end.i.i.i280.i.ocfs2_info_handle_blocksize.exit.i_crit_edge: ; preds = %if.end.i.i.i280.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_blocksize.exit.i

if.end59.i.i9.i.i:                                ; preds = %if.end.i.i.i280.i
  %94 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_blocksize.i.i, align 16
  %98 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %61, align 4
  %99 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %60, align 4
  %or.i.i285.i = or i32 %100, 1073741824
  store i32 %or.i.i285.i, ptr %60, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i10.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i10.i.i, label %if.end59.i.i9.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, label %copy_to_user.exit.i289.i

if.end59.i.i9.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge: ; preds = %if.end59.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_blocksize.exit.i

copy_to_user.exit.i289.i:                         ; preds = %if.end59.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i14.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oib.i.i, i32 noundef 24) #9
  %call.i12.i.i.i286.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oib.i.i, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i286.i)
  %tobool2.not.i287.i = icmp eq i32 %call.i12.i.i.i286.i, 0
  %spec.select.i288.i = select i1 %tobool2.not.i287.i, i32 0, i32 -14
  br label %ocfs2_info_handle_blocksize.exit.i

ocfs2_info_handle_blocksize.exit.i:               ; preds = %copy_to_user.exit.i289.i, %if.end59.i.i9.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, %if.end.i.i.i280.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, %land.lhs.true.i.i.i272.i.ocfs2_info_handle_blocksize.exit.i_crit_edge, %if.then4.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge
  %retval.0.i290.i = phi i32 [ -14, %if.end59.i.i9.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge ], [ %spec.select.i288.i, %copy_to_user.exit.i289.i ], [ -14, %if.end.i.i.i280.i.ocfs2_info_handle_blocksize.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i272.i.ocfs2_info_handle_blocksize.exit.i_crit_edge ], [ -14, %if.then4.i.i.ocfs2_info_handle_blocksize.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oib.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb7.i.i:                                       ; preds = %if.end2.i.i
  %101 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %102)
  %cmp9.i.i = icmp eq i32 %102, 24
  br i1 %cmp9.i.i, label %if.then10.i.i, label %sw.bb7.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb7.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then10.i.i:                                    ; preds = %sw.bb7.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oic.i.i) #9
  %103 = call ptr @memset(ptr %oic.i.i, i32 255, i32 24)
  %104 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i243.i = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info.i243.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i243.i, align 16
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i244.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i244.i, label %if.then10.i.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, label %land.lhs.true.i.i.i247.i

if.then10.i.i.ocfs2_info_handle_clustersize.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_clustersize.exit.i

land.lhs.true.i.i.i247.i:                         ; preds = %if.then10.i.i
  %108 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 24, i32 -1226833920) #12
  %asmresult.i.i.i245.i = extractvalue { i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i245.i)
  %cmp.i6.i.i246.i = icmp eq i32 %asmresult.i.i.i245.i, 0
  br i1 %cmp.i6.i.i246.i, label %if.end.i.i.i255.i, label %land.lhs.true.i.i.i247.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i247.i.ocfs2_info_handle_clustersize.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i247.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_clustersize.exit.i

if.end.i.i.i255.i:                                ; preds = %land.lhs.true.i.i.i247.i
  %call.i.i.i.i248.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oic.i.i, i32 noundef 24) #9
  %109 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i249.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i.i.i249.i to ptr
  %cpu_domain.i.i.i.i.i.i250.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 4
  %111 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i250.i) #3, !srcloc !75
  %and.i.i.i.i.i251.i = and i32 %111, -13
  %or.i.i.i.i.i252.i = or i32 %and.i.i.i.i.i251.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i252.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i253.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oic.i.i, ptr noundef nonnull %75, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i253.i)
  %tobool4.not.i.i.i254.i = icmp eq i32 %call1.i.i.i.i253.i, 0
  br i1 %tobool4.not.i.i.i254.i, label %if.end59.i.i10.i262.i, label %if.end.i.i.i255.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, !prof !74

if.end.i.i.i255.i.ocfs2_info_handle_clustersize.exit.i_crit_edge: ; preds = %if.end.i.i.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_clustersize.exit.i

if.end59.i.i10.i262.i:                            ; preds = %if.end.i.i.i255.i
  %s_clustersize.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %107, i32 0, i32 35
  %112 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_clustersize.i.i, align 4
  %114 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %59, align 4
  %115 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %58, align 4
  %or.i.i260.i = or i32 %116, 1073741824
  store i32 %or.i.i260.i, ptr %58, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i11.i261.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i11.i261.i, label %if.end59.i.i10.i262.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, label %copy_to_user.exit.i267.i

if.end59.i.i10.i262.i.ocfs2_info_handle_clustersize.exit.i_crit_edge: ; preds = %if.end59.i.i10.i262.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_clustersize.exit.i

copy_to_user.exit.i267.i:                         ; preds = %if.end59.i.i10.i262.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i15.i263.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oic.i.i, i32 noundef 24) #9
  %call.i12.i.i.i264.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oic.i.i, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i264.i)
  %tobool2.not.i265.i = icmp eq i32 %call.i12.i.i.i264.i, 0
  %spec.select.i266.i = select i1 %tobool2.not.i265.i, i32 0, i32 -14
  br label %ocfs2_info_handle_clustersize.exit.i

ocfs2_info_handle_clustersize.exit.i:             ; preds = %copy_to_user.exit.i267.i, %if.end59.i.i10.i262.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, %if.end.i.i.i255.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, %land.lhs.true.i.i.i247.i.ocfs2_info_handle_clustersize.exit.i_crit_edge, %if.then10.i.i.ocfs2_info_handle_clustersize.exit.i_crit_edge
  %retval.0.i268.i = phi i32 [ -14, %if.end59.i.i10.i262.i.ocfs2_info_handle_clustersize.exit.i_crit_edge ], [ %spec.select.i266.i, %copy_to_user.exit.i267.i ], [ -14, %if.end.i.i.i255.i.ocfs2_info_handle_clustersize.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i247.i.ocfs2_info_handle_clustersize.exit.i_crit_edge ], [ -14, %if.then10.i.i.ocfs2_info_handle_clustersize.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oic.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb13.i.i:                                      ; preds = %if.end2.i.i
  %117 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %118)
  %cmp15.i.i = icmp eq i32 %118, 24
  br i1 %cmp15.i.i, label %if.then16.i.i, label %sw.bb13.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb13.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then16.i.i:                                    ; preds = %sw.bb13.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oim.i.i) #9
  %119 = call ptr @memset(ptr %oim.i.i, i32 255, i32 24)
  %120 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i215.i = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 33
  %122 = ptrtoint ptr %s_fs_info.i215.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i215.i, align 16
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i216.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i216.i, label %if.then16.i.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, label %land.lhs.true.i.i.i219.i

if.then16.i.i.ocfs2_info_handle_maxslots.exit.i_crit_edge: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_maxslots.exit.i

land.lhs.true.i.i.i219.i:                         ; preds = %if.then16.i.i
  %124 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 24, i32 -1226833920) #12
  %asmresult.i.i.i217.i = extractvalue { i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i217.i)
  %cmp.i6.i.i218.i = icmp eq i32 %asmresult.i.i.i217.i, 0
  br i1 %cmp.i6.i.i218.i, label %if.end.i.i.i227.i, label %land.lhs.true.i.i.i219.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i219.i.ocfs2_info_handle_maxslots.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_maxslots.exit.i

if.end.i.i.i227.i:                                ; preds = %land.lhs.true.i.i.i219.i
  %call.i.i.i.i220.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oim.i.i, i32 noundef 24) #9
  %125 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i221.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i.i221.i to ptr
  %cpu_domain.i.i.i.i.i.i222.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 4
  %127 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i222.i) #3, !srcloc !75
  %and.i.i.i.i.i223.i = and i32 %127, -13
  %or.i.i.i.i.i224.i = or i32 %and.i.i.i.i.i223.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i224.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i225.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oim.i.i, ptr noundef nonnull %75, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i225.i)
  %tobool4.not.i.i.i226.i = icmp eq i32 %call1.i.i.i.i225.i, 0
  br i1 %tobool4.not.i.i.i226.i, label %if.end59.i.i10.i235.i, label %if.end.i.i.i227.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, !prof !74

if.end.i.i.i227.i.ocfs2_info_handle_maxslots.exit.i_crit_edge: ; preds = %if.end.i.i.i227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_maxslots.exit.i

if.end59.i.i10.i235.i:                            ; preds = %if.end.i.i.i227.i
  %max_slots.i232.i = getelementptr inbounds %struct.ocfs2_super, ptr %123, i32 0, i32 30
  %128 = ptrtoint ptr %max_slots.i232.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %max_slots.i232.i, align 8
  %130 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %57, align 4
  %131 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %56, align 4
  %or.i.i233.i = or i32 %132, 1073741824
  store i32 %or.i.i233.i, ptr %56, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i11.i234.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i11.i234.i, label %if.end59.i.i10.i235.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, label %copy_to_user.exit.i240.i

if.end59.i.i10.i235.i.ocfs2_info_handle_maxslots.exit.i_crit_edge: ; preds = %if.end59.i.i10.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_maxslots.exit.i

copy_to_user.exit.i240.i:                         ; preds = %if.end59.i.i10.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i15.i236.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oim.i.i, i32 noundef 24) #9
  %call.i12.i.i.i237.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oim.i.i, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i237.i)
  %tobool2.not.i238.i = icmp eq i32 %call.i12.i.i.i237.i, 0
  %spec.select.i239.i = select i1 %tobool2.not.i238.i, i32 0, i32 -14
  br label %ocfs2_info_handle_maxslots.exit.i

ocfs2_info_handle_maxslots.exit.i:                ; preds = %copy_to_user.exit.i240.i, %if.end59.i.i10.i235.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, %if.end.i.i.i227.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, %land.lhs.true.i.i.i219.i.ocfs2_info_handle_maxslots.exit.i_crit_edge, %if.then16.i.i.ocfs2_info_handle_maxslots.exit.i_crit_edge
  %retval.0.i241.i = phi i32 [ -14, %if.end59.i.i10.i235.i.ocfs2_info_handle_maxslots.exit.i_crit_edge ], [ %spec.select.i239.i, %copy_to_user.exit.i240.i ], [ -14, %if.end.i.i.i227.i.ocfs2_info_handle_maxslots.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i219.i.ocfs2_info_handle_maxslots.exit.i_crit_edge ], [ -14, %if.then16.i.i.ocfs2_info_handle_maxslots.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oim.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb19.i.i:                                      ; preds = %if.end2.i.i
  %133 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %134)
  %cmp21.i.i = icmp eq i32 %134, 80
  br i1 %cmp21.i.i, label %if.then22.i.i, label %sw.bb19.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb19.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then22.i.i:                                    ; preds = %sw.bb19.i.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %oil.i.i) #9
  %135 = call ptr @memset(ptr %oil.i.i, i32 255, i32 80)
  %136 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i187.i = getelementptr inbounds %struct.super_block, ptr %137, i32 0, i32 33
  %138 = ptrtoint ptr %s_fs_info.i187.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %s_fs_info.i187.i, align 16
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i188.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i188.i, label %if.then22.i.i.ocfs2_info_handle_label.exit.i_crit_edge, label %land.lhs.true.i.i.i191.i

if.then22.i.i.ocfs2_info_handle_label.exit.i_crit_edge: ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_label.exit.i

land.lhs.true.i.i.i191.i:                         ; preds = %if.then22.i.i
  %140 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 80, i32 -1226833920) #12
  %asmresult.i.i.i189.i = extractvalue { i32, i32 } %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i189.i)
  %cmp.i6.i.i190.i = icmp eq i32 %asmresult.i.i.i189.i, 0
  br i1 %cmp.i6.i.i190.i, label %if.end.i.i.i199.i, label %land.lhs.true.i.i.i191.i.ocfs2_info_handle_label.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i191.i.ocfs2_info_handle_label.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i191.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_label.exit.i

if.end.i.i.i199.i:                                ; preds = %land.lhs.true.i.i.i191.i
  %call.i.i.i.i192.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oil.i.i, i32 noundef 80) #9
  %141 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i193.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i.i.i.i193.i to ptr
  %cpu_domain.i.i.i.i.i.i194.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 4
  %143 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i194.i) #3, !srcloc !75
  %and.i.i.i.i.i195.i = and i32 %143, -13
  %or.i.i.i.i.i196.i = or i32 %and.i.i.i.i.i195.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i196.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i197.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oil.i.i, ptr noundef nonnull %75, i32 noundef 80) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i197.i)
  %tobool4.not.i.i.i198.i = icmp eq i32 %call1.i.i.i.i197.i, 0
  br i1 %tobool4.not.i.i.i198.i, label %if.end59.i.i10.i207.i, label %if.end.i.i.i199.i.ocfs2_info_handle_label.exit.i_crit_edge, !prof !74

if.end.i.i.i199.i.ocfs2_info_handle_label.exit.i_crit_edge: ; preds = %if.end.i.i.i199.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_label.exit.i

if.end59.i.i10.i207.i:                            ; preds = %if.end.i.i.i199.i
  %vol_label.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %139, i32 0, i32 15
  %144 = ptrtoint ptr %vol_label.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vol_label.i.i, align 4
  %146 = call ptr @memcpy(ptr %il_label.i.i, ptr %145, i32 64)
  %147 = ptrtoint ptr %ir_flags.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ir_flags.i.i204.i, align 4
  %or.i.i205.i = or i32 %148, 1073741824
  store i32 %or.i.i205.i, ptr %ir_flags.i.i204.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i11.i206.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i11.i206.i, label %if.end59.i.i10.i207.i.ocfs2_info_handle_label.exit.i_crit_edge, label %copy_to_user.exit.i212.i

if.end59.i.i10.i207.i.ocfs2_info_handle_label.exit.i_crit_edge: ; preds = %if.end59.i.i10.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_label.exit.i

copy_to_user.exit.i212.i:                         ; preds = %if.end59.i.i10.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i15.i208.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oil.i.i, i32 noundef 80) #9
  %call.i12.i.i.i209.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oil.i.i, i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i209.i)
  %tobool2.not.i210.i = icmp eq i32 %call.i12.i.i.i209.i, 0
  %spec.select.i211.i = select i1 %tobool2.not.i210.i, i32 0, i32 -14
  br label %ocfs2_info_handle_label.exit.i

ocfs2_info_handle_label.exit.i:                   ; preds = %copy_to_user.exit.i212.i, %if.end59.i.i10.i207.i.ocfs2_info_handle_label.exit.i_crit_edge, %if.end.i.i.i199.i.ocfs2_info_handle_label.exit.i_crit_edge, %land.lhs.true.i.i.i191.i.ocfs2_info_handle_label.exit.i_crit_edge, %if.then22.i.i.ocfs2_info_handle_label.exit.i_crit_edge
  %retval.0.i213.i = phi i32 [ -14, %if.end59.i.i10.i207.i.ocfs2_info_handle_label.exit.i_crit_edge ], [ %spec.select.i211.i, %copy_to_user.exit.i212.i ], [ -14, %if.end.i.i.i199.i.ocfs2_info_handle_label.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i191.i.ocfs2_info_handle_label.exit.i_crit_edge ], [ -14, %if.then22.i.i.ocfs2_info_handle_label.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %oil.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb25.i.i:                                      ; preds = %if.end2.i.i
  %149 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %150)
  %cmp27.i.i = icmp eq i32 %150, 49
  br i1 %cmp27.i.i, label %if.then28.i.i, label %sw.bb25.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb25.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then28.i.i:                                    ; preds = %sw.bb25.i.i
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %oiu.i.i) #9
  %151 = call ptr @memset(ptr %oiu.i.i, i32 255, i32 49)
  %152 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i163.i = getelementptr inbounds %struct.super_block, ptr %153, i32 0, i32 33
  %154 = ptrtoint ptr %s_fs_info.i163.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %s_fs_info.i163.i, align 16
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i164.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i164.i, label %if.then28.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge, label %land.lhs.true.i.i.i167.i

if.then28.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_uuid.exit.i

land.lhs.true.i.i.i167.i:                         ; preds = %if.then28.i.i
  %156 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 49, i32 -1226833920) #12
  %asmresult.i.i.i165.i = extractvalue { i32, i32 } %156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i165.i)
  %cmp.i6.i.i166.i = icmp eq i32 %asmresult.i.i.i165.i, 0
  br i1 %cmp.i6.i.i166.i, label %if.end.i.i.i175.i, label %land.lhs.true.i.i.i167.i.ocfs2_info_handle_uuid.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i167.i.ocfs2_info_handle_uuid.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_uuid.exit.i

if.end.i.i.i175.i:                                ; preds = %land.lhs.true.i.i.i167.i
  %call.i.i.i.i168.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oiu.i.i, i32 noundef 49) #9
  %157 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i169.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i.i.i169.i to ptr
  %cpu_domain.i.i.i.i.i.i170.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 4
  %159 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i170.i) #3, !srcloc !75
  %and.i.i.i.i.i171.i = and i32 %159, -13
  %or.i.i.i.i.i172.i = or i32 %and.i.i.i.i.i171.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i172.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i173.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oiu.i.i, ptr noundef nonnull %75, i32 noundef 49) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i173.i)
  %tobool4.not.i.i.i174.i = icmp eq i32 %call1.i.i.i.i173.i, 0
  br i1 %tobool4.not.i.i.i174.i, label %if.end59.i.i10.i.i, label %if.end.i.i.i175.i.ocfs2_info_handle_uuid.exit.i_crit_edge, !prof !74

if.end.i.i.i175.i.ocfs2_info_handle_uuid.exit.i_crit_edge: ; preds = %if.end.i.i.i175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_uuid.exit.i

if.end59.i.i10.i.i:                               ; preds = %if.end.i.i.i175.i
  %uuid_str.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %155, i32 0, i32 13
  %160 = ptrtoint ptr %uuid_str.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %uuid_str.i.i, align 4
  %162 = call ptr @memcpy(ptr %iu_uuid_str.i.i, ptr %161, i32 33)
  %163 = ptrtoint ptr %ir_flags.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ir_flags.i.i179.i, align 4
  %or.i.i180.i = or i32 %164, 1073741824
  store i32 %or.i.i180.i, ptr %ir_flags.i.i179.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i11.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i11.i.i, label %if.end59.i.i10.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge, label %copy_to_user.exit.i184.i

if.end59.i.i10.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge: ; preds = %if.end59.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_uuid.exit.i

copy_to_user.exit.i184.i:                         ; preds = %if.end59.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i15.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oiu.i.i, i32 noundef 49) #9
  %call.i12.i.i.i181.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oiu.i.i, i32 noundef 49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i181.i)
  %tobool2.not.i182.i = icmp eq i32 %call.i12.i.i.i181.i, 0
  %spec.select.i183.i = select i1 %tobool2.not.i182.i, i32 0, i32 -14
  br label %ocfs2_info_handle_uuid.exit.i

ocfs2_info_handle_uuid.exit.i:                    ; preds = %copy_to_user.exit.i184.i, %if.end59.i.i10.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge, %if.end.i.i.i175.i.ocfs2_info_handle_uuid.exit.i_crit_edge, %land.lhs.true.i.i.i167.i.ocfs2_info_handle_uuid.exit.i_crit_edge, %if.then28.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge
  %retval.0.i185.i = phi i32 [ -14, %if.end59.i.i10.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge ], [ %spec.select.i183.i, %copy_to_user.exit.i184.i ], [ -14, %if.end.i.i.i175.i.ocfs2_info_handle_uuid.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i167.i.ocfs2_info_handle_uuid.exit.i_crit_edge ], [ -14, %if.then28.i.i.ocfs2_info_handle_uuid.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %oiu.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb31.i.i:                                      ; preds = %if.end2.i.i
  %165 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %166)
  %cmp33.i.i = icmp eq i32 %166, 32
  br i1 %cmp33.i.i, label %if.then34.i.i, label %sw.bb31.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb31.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then34.i.i:                                    ; preds = %sw.bb31.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oif.i.i) #9
  %167 = call ptr @memset(ptr %oif.i.i, i32 255, i32 32)
  %168 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i140.i = getelementptr inbounds %struct.super_block, ptr %169, i32 0, i32 33
  %170 = ptrtoint ptr %s_fs_info.i140.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i140.i, align 16
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i141.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i141.i, label %if.then34.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, label %land.lhs.true.i.i.i144.i

if.then34.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge: ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_fs_features.exit.i

land.lhs.true.i.i.i144.i:                         ; preds = %if.then34.i.i
  %172 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 32, i32 -1226833920) #12
  %asmresult.i.i.i142.i = extractvalue { i32, i32 } %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i142.i)
  %cmp.i6.i.i143.i = icmp eq i32 %asmresult.i.i.i142.i, 0
  br i1 %cmp.i6.i.i143.i, label %if.end.i.i.i152.i, label %land.lhs.true.i.i.i144.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i144.i.ocfs2_info_handle_fs_features.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_fs_features.exit.i

if.end.i.i.i152.i:                                ; preds = %land.lhs.true.i.i.i144.i
  %call.i.i.i.i145.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oif.i.i, i32 noundef 32) #9
  %173 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i146.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i.i.i.i.i146.i to ptr
  %cpu_domain.i.i.i.i.i.i147.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 4
  %175 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i147.i) #3, !srcloc !75
  %and.i.i.i.i.i148.i = and i32 %175, -13
  %or.i.i.i.i.i149.i = or i32 %and.i.i.i.i.i148.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i149.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i150.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oif.i.i, ptr noundef nonnull %75, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i150.i)
  %tobool4.not.i.i.i151.i = icmp eq i32 %call1.i.i.i.i150.i, 0
  br i1 %tobool4.not.i.i.i151.i, label %if.end59.i.i12.i.i, label %if.end.i.i.i152.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, !prof !74

if.end.i.i.i152.i.ocfs2_info_handle_fs_features.exit.i_crit_edge: ; preds = %if.end.i.i.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_fs_features.exit.i

if.end59.i.i12.i.i:                               ; preds = %if.end.i.i.i152.i
  %s_feature_compat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %171, i32 0, i32 18
  %176 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %s_feature_compat.i.i, align 4
  %178 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %53, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %171, i32 0, i32 19
  %179 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %s_feature_incompat.i.i, align 8
  %181 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %54, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %171, i32 0, i32 20
  %182 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %184 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %55, align 4
  %185 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %52, align 4
  %or.i.i156.i = or i32 %186, 1073741824
  store i32 %or.i.i156.i, ptr %52, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i13.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i13.i.i, label %if.end59.i.i12.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, label %copy_to_user.exit.i160.i

if.end59.i.i12.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge: ; preds = %if.end59.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_fs_features.exit.i

copy_to_user.exit.i160.i:                         ; preds = %if.end59.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i17.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oif.i.i, i32 noundef 32) #9
  %call.i12.i.i.i157.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oif.i.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i157.i)
  %tobool2.not.i158.i = icmp eq i32 %call.i12.i.i.i157.i, 0
  %spec.select.i159.i = select i1 %tobool2.not.i158.i, i32 0, i32 -14
  br label %ocfs2_info_handle_fs_features.exit.i

ocfs2_info_handle_fs_features.exit.i:             ; preds = %copy_to_user.exit.i160.i, %if.end59.i.i12.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, %if.end.i.i.i152.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, %land.lhs.true.i.i.i144.i.ocfs2_info_handle_fs_features.exit.i_crit_edge, %if.then34.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge
  %retval.0.i161.i = phi i32 [ -14, %if.end59.i.i12.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge ], [ %spec.select.i159.i, %copy_to_user.exit.i160.i ], [ -14, %if.end.i.i.i152.i.ocfs2_info_handle_fs_features.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i144.i.ocfs2_info_handle_fs_features.exit.i_crit_edge ], [ -14, %if.then34.i.i.ocfs2_info_handle_fs_features.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oif.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb37.i.i:                                      ; preds = %if.end2.i.i
  %187 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %188)
  %cmp39.i.i = icmp eq i32 %188, 24
  br i1 %cmp39.i.i, label %if.then40.i.i, label %sw.bb37.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb37.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then40.i.i:                                    ; preds = %sw.bb37.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oij.i.i) #9
  %189 = call ptr @memset(ptr %oij.i.i, i32 255, i32 24)
  %190 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i113.i = getelementptr inbounds %struct.super_block, ptr %191, i32 0, i32 33
  %192 = ptrtoint ptr %s_fs_info.i113.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %s_fs_info.i113.i, align 16
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i114.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i114.i, label %if.then40.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, label %land.lhs.true.i.i.i117.i

if.then40.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge: ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_journal_size.exit.i

land.lhs.true.i.i.i117.i:                         ; preds = %if.then40.i.i
  %194 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 24, i32 -1226833920) #12
  %asmresult.i.i.i115.i = extractvalue { i32, i32 } %194, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i115.i)
  %cmp.i6.i.i116.i = icmp eq i32 %asmresult.i.i.i115.i, 0
  br i1 %cmp.i6.i.i116.i, label %if.end.i.i.i125.i, label %land.lhs.true.i.i.i117.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, !prof !74

land.lhs.true.i.i.i117.i.ocfs2_info_handle_journal_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_journal_size.exit.i

if.end.i.i.i125.i:                                ; preds = %land.lhs.true.i.i.i117.i
  %call.i.i.i.i118.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oij.i.i, i32 noundef 24) #9
  %195 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i119.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i.i.i119.i to ptr
  %cpu_domain.i.i.i.i.i.i120.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 4
  %197 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i120.i) #3, !srcloc !75
  %and.i.i.i.i.i121.i = and i32 %197, -13
  %or.i.i.i.i.i122.i = or i32 %and.i.i.i.i.i121.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i122.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i123.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oij.i.i, ptr noundef nonnull %75, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %197) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i123.i)
  %tobool4.not.i.i.i124.i = icmp eq i32 %call1.i.i.i.i123.i, 0
  br i1 %tobool4.not.i.i.i124.i, label %if.end.i129.i, label %if.end.i.i.i125.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, !prof !74

if.end.i.i.i125.i.ocfs2_info_handle_journal_size.exit.i_crit_edge: ; preds = %if.end.i.i.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_journal_size.exit.i

if.end.i129.i:                                    ; preds = %if.end.i.i.i125.i
  %journal.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %193, i32 0, i32 45
  %198 = ptrtoint ptr %journal.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %journal.i.i, align 4
  %j_inode.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %j_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %j_inode.i.i, align 4
  %i_size_seqcount.i.i.i = getelementptr inbounds %struct.inode, ptr %201, i32 0, i32 23
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.inode, ptr %201, i32 0, i32 23, i32 1
  %i_size18.i.i.i = getelementptr inbounds %struct.inode, ptr %201, i32 0, i32 14
  br label %do.body.i.i132.i

do.body.i.i132.i:                                 ; preds = %while.end.i.i.i.do.body.i.i132.i_crit_edge, %if.end.i129.i
  %202 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !80
  %and.i.i.i.i130.i = and i32 %202, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i130.i)
  %tobool.not.i.i.i131.i = icmp eq i32 %and.i.i.i.i130.i, 0
  br i1 %tobool.not.i.i.i131.i, label %if.then.i.i18.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i18.i.i:                                ; preds = %do.body.i.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  %203 = call ptr @llvm.returnaddress(i32 0) #9
  %204 = ptrtoint ptr %203 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %204) #9
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %204) #9
  call void @trace_hardirqs_on() #9
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body.i.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  %205 = call ptr @llvm.returnaddress(i32 0) #9
  %206 = ptrtoint ptr %205 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %206) #9
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %206) #9
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i18.i.i
  %207 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !81
  %and.i.i.i.i19.i.i = and i32 %207, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i19.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i19.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !82

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %202) #9, !srcloc !83
  %208 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %and29.i.i.i = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool.not30.i.i.i = icmp eq i32 %and29.i.i.i, 0
  br i1 %tobool.not30.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !85
  %210 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %and.i.i133.i = and i32 %211, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i133.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.while.end.i.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

do.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end.i.i.i.while.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %209, %seqcount_lockdep_reader_access.exit.i.i.i.while.end.i.i.i_crit_edge ], [ %211, %do.end.i.i.i.while.end.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  %212 = ptrtoint ptr %i_size18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %i_size18.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  %214 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %i_size_seqcount.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq i32 %215, %.lcssa.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %i_size_read.exit.i.i, label %while.end.i.i.i.do.body.i.i132.i_crit_edge

while.end.i.i.i.do.body.i.i132.i_crit_edge:       ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i132.i

i_size_read.exit.i.i:                             ; preds = %while.end.i.i.i
  %216 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %213, ptr %51, align 8
  %217 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %50, align 4
  %or.i.i134.i = or i32 %218, 1073741824
  store i32 %or.i.i134.i, ptr %50, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i12.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i12.i.i, label %i_size_read.exit.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, label %copy_to_user.exit.i137.i

i_size_read.exit.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge: ; preds = %i_size_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_journal_size.exit.i

copy_to_user.exit.i137.i:                         ; preds = %i_size_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i16.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oij.i.i, i32 noundef 24) #9
  %call.i12.i.i.i135.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oij.i.i, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i135.i)
  %tobool3.not.i.i = icmp eq i32 %call.i12.i.i.i135.i, 0
  %spec.select.i136.i = select i1 %tobool3.not.i.i, i32 0, i32 -14
  br label %ocfs2_info_handle_journal_size.exit.i

ocfs2_info_handle_journal_size.exit.i:            ; preds = %copy_to_user.exit.i137.i, %i_size_read.exit.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, %if.end.i.i.i125.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, %land.lhs.true.i.i.i117.i.ocfs2_info_handle_journal_size.exit.i_crit_edge, %if.then40.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge
  %retval.0.i138.i = phi i32 [ -14, %i_size_read.exit.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge ], [ %spec.select.i136.i, %copy_to_user.exit.i137.i ], [ -14, %if.end.i.i.i125.i.ocfs2_info_handle_journal_size.exit.i_crit_edge ], [ -14, %land.lhs.true.i.i.i117.i.ocfs2_info_handle_journal_size.exit.i_crit_edge ], [ -14, %if.then40.i.i.ocfs2_info_handle_journal_size.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oij.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb43.i.i:                                      ; preds = %if.end2.i.i
  %219 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4104, i32 %220)
  %cmp45.i.i = icmp eq i32 %220, 4104
  br i1 %cmp45.i.i, label %if.then46.i.i, label %sw.bb43.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb43.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then46.i.i:                                    ; preds = %sw.bb43.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i54.i) #9
  %221 = ptrtoint ptr %blkno.i54.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 -1, ptr %blkno.i54.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %namebuf.i55.i) #9
  %222 = call ptr @memset(ptr %namebuf.i55.i, i32 255, i32 40)
  %223 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i58.i = getelementptr inbounds %struct.super_block, ptr %224, i32 0, i32 33
  %225 = ptrtoint ptr %s_fs_info.i58.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %s_fs_info.i58.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %227 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i59.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %227, i32 noundef 3520, i32 noundef 4104) #13
  %tobool.not.i60.i = icmp eq ptr %call7.i.i.i59.i, null
  br i1 %tobool.not.i60.i, label %do.body.i61.i, label %if.end59.i.i.i63.i

do.body.i61.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i56.i) #9
  %228 = ptrtoint ptr %_m.i56.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 1152921504606846976, ptr %_m.i56.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i56.i, ptr noundef nonnull @__func__.ocfs2_info_handle_freeinode, i32 noundef 339, ptr noundef nonnull @.str, i64 noundef -12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i56.i) #9
  br label %ocfs2_info_handle_freeinode.exit.i

if.end59.i.i.i63.i:                               ; preds = %if.then46.i.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i62.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i62.i, label %if.end59.i.i.i63.i.if.then11.i.i.i77.i_crit_edge, label %land.lhs.true.i.i.i66.i

if.end59.i.i.i63.i.if.then11.i.i.i77.i_crit_edge: ; preds = %if.end59.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i77.i

land.lhs.true.i.i.i66.i:                          ; preds = %if.end59.i.i.i63.i
  %229 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 4104, i32 -1226833920) #12
  %asmresult.i.i.i64.i = extractvalue { i32, i32 } %229, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i64.i)
  %cmp.i6.i.i65.i = icmp eq i32 %asmresult.i.i.i64.i, 0
  br i1 %cmp.i6.i.i65.i, label %if.end.i.i.i74.i, label %land.lhs.true.i.i.i66.i.if.then11.i.i.i77.i_crit_edge, !prof !74

land.lhs.true.i.i.i66.i.if.then11.i.i.i77.i_crit_edge: ; preds = %land.lhs.true.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i77.i

if.end.i.i.i74.i:                                 ; preds = %land.lhs.true.i.i.i66.i
  %call.i.i.i.i67.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i59.i, i32 noundef 4104) #9
  %230 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i68.i = and i32 %230, -16384
  %231 = inttoptr i32 %and.i.i.i.i.i.i.i68.i to ptr
  %cpu_domain.i.i.i.i.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 4
  %232 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i69.i) #3, !srcloc !75
  %and.i.i.i.i.i70.i = and i32 %232, -13
  %or.i.i.i.i.i71.i = or i32 %and.i.i.i.i.i70.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i71.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i72.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i.i59.i, ptr noundef nonnull %75, i32 noundef 4104) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i72.i)
  %tobool4.not.i.i.i73.i = icmp eq i32 %call1.i.i.i.i72.i, 0
  br i1 %tobool4.not.i.i.i73.i, label %if.end16.i78.i, label %if.end.i.i.i74.i.if.then11.i.i.i77.i_crit_edge, !prof !74

if.end.i.i.i74.i.if.then11.i.i.i77.i_crit_edge:   ; preds = %if.end.i.i.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i77.i

if.then11.i.i.i77.i:                              ; preds = %if.end.i.i.i74.i.if.then11.i.i.i77.i_crit_edge, %land.lhs.true.i.i.i66.i.if.then11.i.i.i77.i_crit_edge, %if.end59.i.i.i63.i.if.then11.i.i.i77.i_crit_edge
  %res.0.i.i110.i.i = phi i32 [ %call1.i.i.i.i72.i, %if.end.i.i.i74.i.if.then11.i.i.i77.i_crit_edge ], [ 4104, %if.end59.i.i.i63.i.if.then11.i.i.i77.i_crit_edge ], [ 4104, %land.lhs.true.i.i.i66.i.if.then11.i.i.i77.i_crit_edge ]
  %sub.i.i.i75.i = sub i32 4104, %res.0.i.i110.i.i
  %add.ptr.i.i.i76.i = getelementptr i8, ptr %call7.i.i.i59.i, i32 %sub.i.i.i75.i
  %233 = call ptr @memset(ptr %add.ptr.i.i.i76.i, i32 0, i32 %res.0.i.i110.i.i)
  br label %out_free.i110.i

if.end16.i78.i:                                   ; preds = %if.end.i.i.i74.i
  %max_slots.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %226, i32 0, i32 30
  %234 = ptrtoint ptr %max_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %max_slots.i.i, align 8
  %ifi_slotnum.i.i = getelementptr inbounds %struct.ocfs2_info_freeinode, ptr %call7.i.i.i59.i, i32 0, i32 2
  %236 = ptrtoint ptr %ifi_slotnum.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %ifi_slotnum.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp18131.not.i.i = icmp eq i32 %235, 0
  br i1 %cmp18131.not.i.i, label %if.end16.i78.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end16.i78.i.for.end.i.i_crit_edge:             ; preds = %if.end16.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end16.i78.i
  %ir_flags.i.i79.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %call7.i.i.i59.i, i32 0, i32 3
  %sys_root_inode.i80.i = getelementptr inbounds %struct.ocfs2_super, ptr %226, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0132.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %237 = ptrtoint ptr %ir_flags.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ir_flags.i.i79.i, align 4
  %and.i.i81.i = and i32 %238, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81.i)
  %tobool21.not.not.i.i = icmp eq i32 %and.i.i81.i, 0
  br i1 %tobool21.not.not.i.i, label %if.then22.i83.i, label %if.else.i85.i

if.then22.i83.i:                                  ; preds = %for.body.i.i
  %call23.i82.i = call ptr @ocfs2_get_system_file_inode(ptr noundef %226, i32 noundef 9, i32 noundef %i.0132.i.i) #9
  %tobool24.not.i.i = icmp eq ptr %call23.i82.i, null
  br i1 %tobool24.not.i.i, label %do.body26.i.i, label %if.then.i.i88.i

do.body26.i.i:                                    ; preds = %if.then22.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27.i.i) #9
  %239 = ptrtoint ptr %_m27.i.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 1152921504606846976, ptr %_m27.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27.i.i, ptr noundef nonnull @__func__.ocfs2_info_handle_freeinode, i32 noundef 355, ptr noundef nonnull @.str.5, i32 noundef %i.0132.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27.i.i) #9
  br label %if.then56.i.i

if.else.i85.i:                                    ; preds = %for.body.i.i
  %call3.i.i84.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %namebuf.i55.i, i32 noundef 40, ptr noundef nonnull @.str.16, i32 noundef %i.0132.i.i) #9
  %240 = ptrtoint ptr %sys_root_inode.i80.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %sys_root_inode.i80.i, align 4
  %call38.i.i = call i32 @strlen(ptr noundef nonnull %namebuf.i55.i) #14
  %call39.i.i = call i32 @ocfs2_lookup_ino_from_name(ptr noundef %241, ptr noundef nonnull %namebuf.i55.i, i32 noundef %call38.i.i, ptr noundef nonnull %blkno.i54.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp40.i.i = icmp slt i32 %call39.i.i, 0
  br i1 %cmp40.i.i, label %if.else.i85.i.if.then56.i.i_crit_edge, label %if.end44.thread.i.i

if.else.i85.i.if.then56.i.i_crit_edge:            ; preds = %if.else.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56.i.i

if.end44.thread.i.i:                              ; preds = %if.else.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %242 = ptrtoint ptr %blkno.i54.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %blkno.i54.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i52.i) #9
  %244 = ptrtoint ptr %bh.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr null, ptr %bh.i.i52.i, align 4
  br label %if.else.i.i92.i

if.then.i.i88.i:                                  ; preds = %if.then22.i83.i
  %245 = ptrtoint ptr %blkno.i54.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %blkno.i54.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i52.i) #9
  %247 = ptrtoint ptr %bh.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %bh.i.i52.i, align 4
  %i_rwsem.i.i.i86.i = getelementptr inbounds %struct.inode, ptr %call23.i82.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i86.i) #9
  %248 = ptrtoint ptr %ir_flags.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %ir_flags.i.i79.i, align 4
  %and.i.i.i87.i = and i32 %249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87.i)
  %tobool2.not.not.i.i.i = icmp eq i32 %and.i.i.i87.i, 0
  br i1 %tobool2.not.not.i.i.i, label %if.then3.i.i.i, label %if.then.i.i88.i.if.else.i.i92.i_crit_edge

if.then.i.i88.i.if.else.i.i92.i_crit_edge:        ; preds = %if.then.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i92.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i88.i
  %call4.i.i.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call23.i82.i, ptr noundef nonnull %bh.i.i52.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i.i89.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i.i89.i, label %if.then5.i.i.i, label %if.then3.i.i.i.bail.i.i99.i_crit_edge

if.then3.i.i.i.bail.i.i99.i_crit_edge:            ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i.i99.i

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  %250 = zext i32 %call4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call4.i.i.i, label %do.body.i.i91.i [
    i32 -512, label %if.then5.i.i.i.if.then65.i.i.i_crit_edge
    i32 -4, label %if.then5.i.i.i.if.then65.i.i.i_crit_edge296
    i32 -28, label %if.then5.i.i.i.if.then65.i.i.i_crit_edge297
    i32 -122, label %if.then5.i.i.i.if.then65.i.i.i_crit_edge298
  ]

if.then5.i.i.i.if.then65.i.i.i_crit_edge298:      ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

if.then5.i.i.i.if.then65.i.i.i_crit_edge297:      ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

if.then5.i.i.i.if.then65.i.i.i_crit_edge296:      ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

if.then5.i.i.i.if.then65.i.i.i_crit_edge:         ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

do.body.i.i91.i:                                  ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i53.i) #9
  %251 = ptrtoint ptr %_m.i.i53.i to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 1152921504606846976, ptr %_m.i.i53.i, align 8
  %conv.i.i90.i = sext i32 %call4.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i53.i, ptr noundef nonnull @__func__.ocfs2_info_scan_inode_alloc, i32 noundef 293, ptr noundef nonnull @.str, i64 noundef %conv.i.i90.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i53.i) #9
  br label %if.then65.i.i.i

if.else.i.i92.i:                                  ; preds = %if.then.i.i88.i.if.else.i.i92.i_crit_edge, %if.end44.thread.i.i
  %252 = phi i64 [ %243, %if.end44.thread.i.i ], [ %246, %if.then.i.i88.i.if.else.i.i92.i_crit_edge ]
  %inode_alloc.1119.i.i = phi ptr [ null, %if.end44.thread.i.i ], [ %call23.i82.i, %if.then.i.i88.i.if.else.i.i92.i_crit_edge ]
  %253 = xor i1 %tobool21.not.not.i.i, true
  %call21.i.i.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %226, i64 noundef %252, i32 noundef 1, ptr noundef nonnull %bh.i.i52.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i.i)
  %cmp22.i.i.i = icmp slt i32 %call21.i.i.i, 0
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %if.else.i.i92.i.bail.i.i99.i_crit_edge

if.else.i.i92.i.bail.i.i99.i_crit_edge:           ; preds = %if.else.i.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i.i99.i

if.then24.i.i.i:                                  ; preds = %if.else.i.i92.i
  %254 = zext i32 %call21.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call21.i.i.i, label %do.body41.i.i.i [
    i32 -512, label %if.then24.i.i.i.if.end63.i.i.i_crit_edge
    i32 -4, label %if.then24.i.i.i.if.end63.i.i.i_crit_edge299
    i32 -28, label %if.then24.i.i.i.if.end63.i.i.i_crit_edge300
    i32 -122, label %if.then24.i.i.i.if.end63.i.i.i_crit_edge301
  ]

if.then24.i.i.i.if.end63.i.i.i_crit_edge301:      ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.then24.i.i.i.if.end63.i.i.i_crit_edge300:      ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.then24.i.i.i.if.end63.i.i.i_crit_edge299:      ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.then24.i.i.i.if.end63.i.i.i_crit_edge:         ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

do.body41.i.i.i:                                  ; preds = %if.then24.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42.i.i.i) #9
  %255 = ptrtoint ptr %_m42.i.i.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 1152921504606846976, ptr %_m42.i.i.i, align 8
  %conv46.i.i.i = sext i32 %call21.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42.i.i.i, ptr noundef nonnull @__func__.ocfs2_info_scan_inode_alloc, i32 noundef 300, ptr noundef nonnull @.str, i64 noundef %conv46.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42.i.i.i) #9
  br i1 %tobool21.not.not.i.i, label %do.body41.i.i.i.if.then65.i.i.i_crit_edge, label %do.body41.i.i.i.if.end66.i.i.i_crit_edge

do.body41.i.i.i.if.end66.i.i.i_crit_edge:         ; preds = %do.body41.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

do.body41.i.i.i.if.then65.i.i.i_crit_edge:        ; preds = %do.body41.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

bail.i.i99.i:                                     ; preds = %if.else.i.i92.i.bail.i.i99.i_crit_edge, %if.then3.i.i.i.bail.i.i99.i_crit_edge
  %tobool.not.i122.i.i = phi i1 [ %253, %if.else.i.i92.i.bail.i.i99.i_crit_edge ], [ false, %if.then3.i.i.i.bail.i.i99.i_crit_edge ]
  %inode_alloc.1118.i.i = phi ptr [ %inode_alloc.1119.i.i, %if.else.i.i92.i.bail.i.i99.i_crit_edge ], [ %call23.i82.i, %if.then3.i.i.i.bail.i.i99.i_crit_edge ]
  %tobool61.not.i.i.i = phi i1 [ true, %if.else.i.i92.i.bail.i.i99.i_crit_edge ], [ false, %if.then3.i.i.i.bail.i.i99.i_crit_edge ]
  %status.0.i.i93.i = phi i32 [ %call21.i.i.i, %if.else.i.i92.i.bail.i.i99.i_crit_edge ], [ %call4.i.i.i, %if.then3.i.i.i.bail.i.i99.i_crit_edge ]
  %256 = ptrtoint ptr %bh.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %bh.i.i52.i, align 4
  %b_data.i.i94.i = getelementptr inbounds %struct.buffer_head, ptr %257, i32 0, i32 5
  %258 = ptrtoint ptr %b_data.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %b_data.i.i94.i, align 4
  %id1.i.i95.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %259, i32 0, i32 34
  %i_total.i.i96.i = getelementptr inbounds %struct.anon.83, ptr %id1.i.i95.i, i32 0, i32 1
  %260 = ptrtoint ptr %i_total.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %i_total.i.i96.i, align 4
  %262 = call i32 @llvm.bswap.i32(i32 %261) #9
  %conv54.i.i.i = zext i32 %262 to i64
  %arrayidx.i.i97.i = getelementptr %struct.ocfs2_info_freeinode, ptr %call7.i.i.i59.i, i32 0, i32 1, i32 %i.0132.i.i
  %263 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %conv54.i.i.i, ptr %arrayidx.i.i97.i, align 8
  %264 = ptrtoint ptr %i_total.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %i_total.i.i96.i, align 4
  %266 = call i32 @llvm.bswap.i32(i32 %265) #9
  %267 = ptrtoint ptr %id1.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %id1.i.i95.i, align 8
  %269 = call i32 @llvm.bswap.i32(i32 %268) #9
  %sub.i.i98.i = sub i32 %266, %269
  %conv58.i.i.i = zext i32 %sub.i.i98.i to i64
  %lfi_free.i.i.i = getelementptr %struct.ocfs2_info_freeinode, ptr %call7.i.i.i59.i, i32 0, i32 1, i32 %i.0132.i.i, i32 1
  %270 = ptrtoint ptr %lfi_free.i.i.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %conv58.i.i.i, ptr %lfi_free.i.i.i, align 8
  br i1 %tobool61.not.i.i.i, label %bail.i.i99.i.if.end63.i.i.i_crit_edge, label %if.then62.i.i.i

bail.i.i99.i.if.end63.i.i.i_crit_edge:            ; preds = %bail.i.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.then62.i.i.i:                                  ; preds = %bail.i.i99.i
  call void @ocfs2_inode_unlock(ptr noundef %inode_alloc.1118.i.i, i32 noundef 0) #9
  br i1 %tobool.not.i122.i.i, label %if.then62.i.i.i.if.end66.i.i.i_crit_edge, label %if.then62.i.i.i.if.then65.i.i.i_crit_edge

if.then62.i.i.i.if.then65.i.i.i_crit_edge:        ; preds = %if.then62.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

if.then62.i.i.i.if.end66.i.i.i_crit_edge:         ; preds = %if.then62.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

if.end63.i.i.i:                                   ; preds = %bail.i.i99.i.if.end63.i.i.i_crit_edge, %if.then24.i.i.i.if.end63.i.i.i_crit_edge, %if.then24.i.i.i.if.end63.i.i.i_crit_edge299, %if.then24.i.i.i.if.end63.i.i.i_crit_edge300, %if.then24.i.i.i.if.end63.i.i.i_crit_edge301
  %tobool.not.i121.i.i = phi i1 [ %tobool.not.i122.i.i, %bail.i.i99.i.if.end63.i.i.i_crit_edge ], [ %253, %if.then24.i.i.i.if.end63.i.i.i_crit_edge ], [ %253, %if.then24.i.i.i.if.end63.i.i.i_crit_edge299 ], [ %253, %if.then24.i.i.i.if.end63.i.i.i_crit_edge300 ], [ %253, %if.then24.i.i.i.if.end63.i.i.i_crit_edge301 ]
  %inode_alloc.1117.i.i = phi ptr [ %inode_alloc.1118.i.i, %bail.i.i99.i.if.end63.i.i.i_crit_edge ], [ %inode_alloc.1119.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge ], [ %inode_alloc.1119.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge299 ], [ %inode_alloc.1119.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge300 ], [ %inode_alloc.1119.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge301 ]
  %status.198.i.i.i = phi i32 [ %status.0.i.i93.i, %bail.i.i99.i.if.end63.i.i.i_crit_edge ], [ %call21.i.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge ], [ %call21.i.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge299 ], [ %call21.i.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge300 ], [ %call21.i.i.i, %if.then24.i.i.i.if.end63.i.i.i_crit_edge301 ]
  br i1 %tobool.not.i121.i.i, label %if.end63.i.i.i.if.end66.i.i.i_crit_edge, label %if.end63.i.i.i.if.then65.i.i.i_crit_edge

if.end63.i.i.i.if.then65.i.i.i_crit_edge:         ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i.i.i

if.end63.i.i.i.if.end66.i.i.i_crit_edge:          ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

if.then65.i.i.i:                                  ; preds = %if.end63.i.i.i.if.then65.i.i.i_crit_edge, %if.then62.i.i.i.if.then65.i.i.i_crit_edge, %do.body41.i.i.i.if.then65.i.i.i_crit_edge, %do.body.i.i91.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge, %if.then5.i.i.i.if.then65.i.i.i_crit_edge296, %if.then5.i.i.i.if.then65.i.i.i_crit_edge297, %if.then5.i.i.i.if.then65.i.i.i_crit_edge298
  %inode_alloc.1120.i.i = phi ptr [ %inode_alloc.1117.i.i, %if.end63.i.i.i.if.then65.i.i.i_crit_edge ], [ %call23.i82.i, %do.body.i.i91.i ], [ %call23.i82.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge ], [ %call23.i82.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge296 ], [ %call23.i82.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge297 ], [ %call23.i82.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge298 ], [ %inode_alloc.1118.i.i, %if.then62.i.i.i.if.then65.i.i.i_crit_edge ], [ %inode_alloc.1119.i.i, %do.body41.i.i.i.if.then65.i.i.i_crit_edge ]
  %status.198100.i.i.i = phi i32 [ %status.198.i.i.i, %if.end63.i.i.i.if.then65.i.i.i_crit_edge ], [ %call4.i.i.i, %do.body.i.i91.i ], [ %call4.i.i.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge ], [ %call4.i.i.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge296 ], [ %call4.i.i.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge297 ], [ %call4.i.i.i, %if.then5.i.i.i.if.then65.i.i.i_crit_edge298 ], [ %status.0.i.i93.i, %if.then62.i.i.i.if.then65.i.i.i_crit_edge ], [ %call21.i.i.i, %do.body41.i.i.i.if.then65.i.i.i_crit_edge ]
  %i_rwsem.i94.i.i.i = getelementptr inbounds %struct.inode, ptr %inode_alloc.1120.i.i, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i94.i.i.i) #9
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.then65.i.i.i, %if.end63.i.i.i.if.end66.i.i.i_crit_edge, %if.then62.i.i.i.if.end66.i.i.i_crit_edge, %do.body41.i.i.i.if.end66.i.i.i_crit_edge
  %inode_alloc.1116.i.i = phi ptr [ %inode_alloc.1120.i.i, %if.then65.i.i.i ], [ %inode_alloc.1117.i.i, %if.end63.i.i.i.if.end66.i.i.i_crit_edge ], [ %inode_alloc.1118.i.i, %if.then62.i.i.i.if.end66.i.i.i_crit_edge ], [ %inode_alloc.1119.i.i, %do.body41.i.i.i.if.end66.i.i.i_crit_edge ]
  %status.198101.i.i.i = phi i32 [ %status.198100.i.i.i, %if.then65.i.i.i ], [ %status.198.i.i.i, %if.end63.i.i.i.if.end66.i.i.i_crit_edge ], [ %status.0.i.i93.i, %if.then62.i.i.i.if.end66.i.i.i_crit_edge ], [ %call21.i.i.i, %do.body41.i.i.i.if.end66.i.i.i_crit_edge ]
  %271 = ptrtoint ptr %bh.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %bh.i.i52.i, align 4
  %tobool.not.i.i.i100.i = icmp eq ptr %272, null
  br i1 %tobool.not.i.i.i100.i, label %if.end66.i.i.i.ocfs2_info_scan_inode_alloc.exit.i.i_crit_edge, label %if.then.i.i102.i.i

if.end66.i.i.i.ocfs2_info_scan_inode_alloc.exit.i.i_crit_edge: ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_scan_inode_alloc.exit.i.i

if.then.i.i102.i.i:                               ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %272) #9
  br label %ocfs2_info_scan_inode_alloc.exit.i.i

ocfs2_info_scan_inode_alloc.exit.i.i:             ; preds = %if.then.i.i102.i.i, %if.end66.i.i.i.ocfs2_info_scan_inode_alloc.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i52.i) #9
  call void @iput(ptr noundef %inode_alloc.1116.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.198101.i.i.i)
  %cmp46.i.i = icmp slt i32 %status.198101.i.i.i, 0
  br i1 %cmp46.i.i, label %ocfs2_info_scan_inode_alloc.exit.i.i.if.then56.i.i_crit_edge, label %for.inc.i.i

ocfs2_info_scan_inode_alloc.exit.i.i.if.then56.i.i_crit_edge: ; preds = %ocfs2_info_scan_inode_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56.i.i

for.inc.i.i:                                      ; preds = %ocfs2_info_scan_inode_alloc.exit.i.i
  %inc.i.i = add nuw i32 %i.0132.i.i, 1
  %273 = ptrtoint ptr %ifi_slotnum.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %ifi_slotnum.i.i, align 8
  %cmp18.i.i = icmp ult i32 %inc.i.i, %274
  br i1 %cmp18.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end16.i78.i.for.end.i.i_crit_edge
  %ir_flags.i103.i.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %call7.i.i.i59.i, i32 0, i32 3
  %275 = ptrtoint ptr %ir_flags.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %ir_flags.i103.i.i, align 4
  %or.i.i101.i = or i32 %276, 1073741824
  store i32 %or.i.i101.i, ptr %ir_flags.i103.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i95.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i95.i.i, label %for.end.i.i.out_free.i110.i_crit_edge, label %copy_to_user.exit.i104.i

for.end.i.i.out_free.i110.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i110.i

copy_to_user.exit.i104.i:                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i99.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i59.i, i32 noundef 4104) #9
  %call.i12.i.i.i102.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %call7.i.i.i59.i, i32 noundef 4104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i102.i)
  %tobool52.not.i.i = icmp eq i32 %call.i12.i.i.i102.i, 0
  %spec.select.i103.i = select i1 %tobool52.not.i.i, i32 0, i32 -14
  br label %out_free.i110.i

if.then56.i.i:                                    ; preds = %ocfs2_info_scan_inode_alloc.exit.i.i.if.then56.i.i_crit_edge, %if.else.i85.i.if.then56.i.i_crit_edge, %do.body26.i.i
  %status.0.ph.i105.i = phi i32 [ -5, %do.body26.i.i ], [ %status.198101.i.i.i, %ocfs2_info_scan_inode_alloc.exit.i.i.if.then56.i.i_crit_edge ], [ -2, %if.else.i85.i.if.then56.i.i_crit_edge ]
  %277 = ptrtoint ptr %ir_flags.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %ir_flags.i.i79.i, align 4
  %or.i105.i.i = or i32 %278, -2147483648
  store i32 %or.i105.i.i, ptr %ir_flags.i.i79.i, align 4
  %ir_flags1.i.i106.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %75, i32 0, i32 3
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 47) #9
  %279 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i106.i.i = and i32 %279, -16384
  %280 = inttoptr i32 %and.i.i.i.i106.i.i to ptr
  %cpu_domain.i.i.i.i107.i = getelementptr inbounds %struct.thread_info, ptr %280, i32 0, i32 4
  %281 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i107.i) #3, !srcloc !75
  %and.i.i107.i.i = and i32 %281, -13
  %or.i.i.i108.i = or i32 %and.i.i107.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i108.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %282 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %ir_flags1.i.i106.i, i32 %or.i105.i.i, i32 -1226833921) #9, !srcloc !88
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %281) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %out_free.i110.i

out_free.i110.i:                                  ; preds = %if.then56.i.i, %copy_to_user.exit.i104.i, %for.end.i.i.out_free.i110.i_crit_edge, %if.then11.i.i.i77.i
  %status.1.i109.i = phi i32 [ %status.0.ph.i105.i, %if.then56.i.i ], [ -14, %if.then11.i.i.i77.i ], [ -14, %for.end.i.i.out_free.i110.i_crit_edge ], [ %spec.select.i103.i, %copy_to_user.exit.i104.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i59.i) #9
  br label %ocfs2_info_handle_freeinode.exit.i

ocfs2_info_handle_freeinode.exit.i:               ; preds = %out_free.i110.i, %do.body.i61.i
  %status.2.i111.i = phi i32 [ %status.1.i109.i, %out_free.i110.i ], [ -12, %do.body.i61.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %namebuf.i55.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i54.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.bb49.i.i:                                      ; preds = %if.end2.i.i
  %283 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %284)
  %cmp51.i.i = icmp eq i32 %284, 312
  br i1 %cmp51.i.i, label %if.then52.i.i, label %sw.bb49.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge

sw.bb49.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge: ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_request.exit.thread.i

if.then52.i.i:                                    ; preds = %sw.bb49.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i.i) #9
  %285 = ptrtoint ptr %blkno.i.i to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 -1, ptr %blkno.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %namebuf.i.i) #9
  %286 = call ptr @memset(ptr %namebuf.i.i, i32 255, i32 40)
  %287 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %288, i32 0, i32 33
  %289 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %291 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %291, i32 noundef 3520, i32 noundef 312) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end59.i.i.i33.i

do.body.i.i:                                      ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #9
  %292 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_info_handle_freefrag, i32 noundef 627, ptr noundef nonnull @.str, i64 noundef -12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #9
  br label %ocfs2_info_handle_freefrag.exit.i

if.end59.i.i.i33.i:                               ; preds = %if.then52.i.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i32.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i32.i, label %if.end59.i.i.i33.i.if.then11.i.i.i47.i_crit_edge, label %land.lhs.true.i.i.i36.i

if.end59.i.i.i33.i.if.then11.i.i.i47.i_crit_edge: ; preds = %if.end59.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i47.i

land.lhs.true.i.i.i36.i:                          ; preds = %if.end59.i.i.i33.i
  %293 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %75, i32 312, i32 -1226833920) #12
  %asmresult.i.i.i34.i = extractvalue { i32, i32 } %293, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i34.i)
  %cmp.i6.i.i35.i = icmp eq i32 %asmresult.i.i.i34.i, 0
  br i1 %cmp.i6.i.i35.i, label %if.end.i.i.i44.i, label %land.lhs.true.i.i.i36.i.if.then11.i.i.i47.i_crit_edge, !prof !74

land.lhs.true.i.i.i36.i.if.then11.i.i.i47.i_crit_edge: ; preds = %land.lhs.true.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i47.i

if.end.i.i.i44.i:                                 ; preds = %land.lhs.true.i.i.i36.i
  %call.i.i.i.i37.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 312) #9
  %294 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i38.i = and i32 %294, -16384
  %295 = inttoptr i32 %and.i.i.i.i.i.i.i38.i to ptr
  %cpu_domain.i.i.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 4
  %296 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i39.i) #3, !srcloc !75
  %and.i.i.i.i.i40.i = and i32 %296, -13
  %or.i.i.i.i.i41.i = or i32 %and.i.i.i.i.i40.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i41.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i42.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %75, i32 noundef 312) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %296) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i42.i)
  %tobool4.not.i.i.i43.i = icmp eq i32 %call1.i.i.i.i42.i, 0
  br i1 %tobool4.not.i.i.i43.i, label %if.end16.i.i, label %if.end.i.i.i44.i.if.then11.i.i.i47.i_crit_edge, !prof !74

if.end.i.i.i44.i.if.then11.i.i.i47.i_crit_edge:   ; preds = %if.end.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i47.i

if.then11.i.i.i47.i:                              ; preds = %if.end.i.i.i44.i.if.then11.i.i.i47.i_crit_edge, %land.lhs.true.i.i.i36.i.if.then11.i.i.i47.i_crit_edge, %if.end59.i.i.i33.i.if.then11.i.i.i47.i_crit_edge
  %res.0.i.i113.i.i = phi i32 [ %call1.i.i.i.i42.i, %if.end.i.i.i44.i.if.then11.i.i.i47.i_crit_edge ], [ 312, %if.end59.i.i.i33.i.if.then11.i.i.i47.i_crit_edge ], [ 312, %land.lhs.true.i.i.i36.i.if.then11.i.i.i47.i_crit_edge ]
  %sub.i.i.i45.i = sub i32 312, %res.0.i.i113.i.i
  %add.ptr.i.i.i46.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %sub.i.i.i45.i
  %297 = call ptr @memset(ptr %add.ptr.i.i.i46.i, i32 0, i32 %res.0.i.i113.i.i)
  br label %out_free.i.i

if.end16.i.i:                                     ; preds = %if.end.i.i.i44.i
  %iff_chunksize.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 2
  %298 = ptrtoint ptr %iff_chunksize.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %iff_chunksize.i.i, align 8
  %300 = call i32 @llvm.ctpop.i32(i32 %299) #9, !range !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %300)
  %.not.i.i = icmp eq i32 %300, 1
  br i1 %.not.i.i, label %if.end23.i.i, label %if.end16.i.i.if.then60.i.i_crit_edge

if.end16.i.i.if.then60.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  %ir_flags.i.i.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %call7.i.i.i.i, i32 0, i32 3
  %301 = ptrtoint ptr %ir_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ir_flags.i.i.i, align 4
  %and.i.i48.i = and i32 %302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48.i)
  %tobool25.not.not.i.i = icmp eq i32 %and.i.i48.i, 0
  br i1 %tobool25.not.not.i.i, label %if.then26.i.i, label %if.else.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  %call27.i.i = call ptr @ocfs2_get_system_file_inode(ptr noundef %290, i32 noundef 4, i32 noundef 65535) #9
  %tobool28.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool28.not.i.i, label %do.body30.i.i, label %if.then.i.i.i

do.body30.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m31.i.i) #9
  %303 = ptrtoint ptr %_m31.i.i to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 1152921504606846976, ptr %_m31.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m31.i.i, ptr noundef nonnull @__func__.ocfs2_info_handle_freefrag, i32 noundef 648, ptr noundef nonnull @.str.22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m31.i.i) #9
  br label %if.then60.i.i

if.else.i.i:                                      ; preds = %if.end23.i.i
  %304 = call ptr @memcpy(ptr %namebuf.i.i, ptr @.str.11, i32 14)
  %sys_root_inode.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %290, i32 0, i32 3
  %305 = ptrtoint ptr %sys_root_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %sys_root_inode.i.i, align 4
  %call42.i.i = call i32 @strlen(ptr noundef nonnull %namebuf.i.i) #14
  %call43.i.i = call i32 @ocfs2_lookup_ino_from_name(ptr noundef %306, ptr noundef nonnull %namebuf.i.i, i32 noundef %call42.i.i, ptr noundef nonnull %blkno.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp44.i.i = icmp slt i32 %call43.i.i, 0
  br i1 %cmp44.i.i, label %if.else.i.i.if.then60.i.i_crit_edge, label %if.end48.thread.i.i

if.else.i.i.if.then60.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i.i

if.end48.thread.i.i:                              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %307 = ptrtoint ptr %blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %blkno.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i.i) #9
  %309 = ptrtoint ptr %bh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr null, ptr %bh.i.i.i, align 4
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %310 = ptrtoint ptr %blkno.i.i to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %blkno.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i.i) #9
  %312 = ptrtoint ptr %bh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr null, ptr %bh.i.i.i, align 4
  %i_rwsem.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call27.i.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i.i) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end48.thread.i.i
  %313 = phi i64 [ %308, %if.end48.thread.i.i ], [ %311, %if.then.i.i.i ]
  %gb_inode.0118.i.i = phi ptr [ null, %if.end48.thread.i.i ], [ %call27.i.i, %if.then.i.i.i ]
  %314 = ptrtoint ptr %ir_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %ir_flags.i.i.i, align 4
  %and.i.i.i.i225 = and i32 %315, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i225)
  %tobool1.not.not.i.i.i = icmp eq i32 %and.i.i.i.i225, 0
  br i1 %tobool1.not.not.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %call3.i.i.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %gb_inode.0118.i.i, ptr noundef nonnull %bh.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.then2.i.i.i.if.end51.i.i.i_crit_edge

if.then2.i.i.i.if.end51.i.i.i_crit_edge:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then2.i.i.i
  %316 = zext i32 %call3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %316, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call3.i.i.i, label %do.body.i.i.i [
    i32 -512, label %if.then4.i.i.i.if.end85.i.i.i_crit_edge
    i32 -4, label %if.then4.i.i.i.if.end85.i.i.i_crit_edge302
    i32 -28, label %if.then4.i.i.i.if.end85.i.i.i_crit_edge303
    i32 -122, label %if.then4.i.i.i.if.end85.i.i.i_crit_edge304
  ]

if.then4.i.i.i.if.end85.i.i.i_crit_edge304:       ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then4.i.i.i.if.end85.i.i.i_crit_edge303:       ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then4.i.i.i.if.end85.i.i.i_crit_edge302:       ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then4.i.i.i.if.end85.i.i.i_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

do.body.i.i.i:                                    ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #9
  %317 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 1152921504606846976, ptr %_m.i.i.i, align 8
  %conv.i.i.i = sext i32 %call3.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.ocfs2_info_freefrag_scan_bitmap, i32 noundef 553, ptr noundef nonnull @.str, i64 noundef %conv.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #9
  br label %if.end85.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %call19.i.i.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %290, i64 noundef %313, i32 noundef 1, ptr noundef nonnull %bh.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %cmp20.i.i.i = icmp slt i32 %call19.i.i.i, 0
  br i1 %cmp20.i.i.i, label %if.then22.i.i.i, label %if.else.i.i.i.if.end51.i.i.i_crit_edge

if.else.i.i.i.if.end51.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i.i.i

if.then22.i.i.i:                                  ; preds = %if.else.i.i.i
  %318 = zext i32 %call19.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %318, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call19.i.i.i, label %do.body39.i.i.i [
    i32 -512, label %if.then22.i.i.i.if.end85.i.i.i_crit_edge
    i32 -4, label %if.then22.i.i.i.if.end85.i.i.i_crit_edge305
    i32 -28, label %if.then22.i.i.i.if.end85.i.i.i_crit_edge306
    i32 -122, label %if.then22.i.i.i.if.end85.i.i.i_crit_edge307
  ]

if.then22.i.i.i.if.end85.i.i.i_crit_edge307:      ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then22.i.i.i.if.end85.i.i.i_crit_edge306:      ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then22.i.i.i.if.end85.i.i.i_crit_edge305:      ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then22.i.i.i.if.end85.i.i.i_crit_edge:         ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

do.body39.i.i.i:                                  ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i.i.i) #9
  %319 = ptrtoint ptr %_m40.i.i.i to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 1152921504606846976, ptr %_m40.i.i.i, align 8
  %conv44.i.i.i = sext i32 %call19.i.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i.i.i, ptr noundef nonnull @__func__.ocfs2_info_freefrag_scan_bitmap, i32 noundef 560, ptr noundef nonnull @.str, i64 noundef %conv44.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i.i.i) #9
  br label %if.end85.i.i.i

if.end51.i.i.i:                                   ; preds = %if.else.i.i.i.if.end51.i.i.i_crit_edge, %if.then2.i.i.i.if.end51.i.i.i_crit_edge
  %status.0.i.i.i = phi i32 [ %call19.i.i.i, %if.else.i.i.i.if.end51.i.i.i_crit_edge ], [ %call3.i.i.i, %if.then2.i.i.i.if.end51.i.i.i_crit_edge ]
  %320 = ptrtoint ptr %bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %bh.i.i.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %321, i32 0, i32 5
  %322 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %b_data.i.i.i, align 4
  %id2.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %323, i32 0, i32 35
  %324 = ptrtoint ptr %iff_chunksize.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %iff_chunksize.i.i, align 8
  %326 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %id2.i.i.i, align 8
  %328 = call i16 @llvm.bswap.i16(i16 %327) #9
  %conv52.i.i.i = zext i16 %328 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %conv52.i.i.i)
  %cmp53.i.i.i = icmp ugt i32 %325, %conv52.i.i.i
  br i1 %cmp53.i.i.i, label %if.end51.i.i.i.bail.i.i.i_crit_edge, label %if.end56.i.i.i

if.end51.i.i.i.bail.i.i.i_crit_edge:              ; preds = %if.end51.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i.i.i

if.end56.i.i.i:                                   ; preds = %if.end51.i.i.i
  %iff_ffs.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1
  %329 = call ptr @memset(ptr %iff_ffs.i.i.i, i32 0, i32 288)
  %ffs_min.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 5
  %330 = ptrtoint ptr %ffs_min.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 -1, ptr %ffs_min.i.i.i, align 8
  %id1.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %323, i32 0, i32 34
  %i_total.i.i.i = getelementptr inbounds %struct.anon.83, ptr %id1.i.i.i, i32 0, i32 1
  %331 = ptrtoint ptr %i_total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %i_total.i.i.i, align 4
  %333 = call i32 @llvm.bswap.i32(i32 %332) #9
  %ffs_clusters.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %334 = ptrtoint ptr %ffs_clusters.i.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %ffs_clusters.i.i.i, align 8
  %335 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %id1.i.i.i, align 8
  %337 = call i32 @llvm.bswap.i32(i32 %336) #9
  %sub.i.i.i = sub i32 %333, %337
  %ffs_free_clusters.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 2
  %338 = ptrtoint ptr %ffs_free_clusters.i.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %sub.i.i.i, ptr %ffs_free_clusters.i.i.i, align 4
  %339 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %id2.i.i.i, align 8
  %341 = call i16 @llvm.bswap.i16(i16 %340) #9
  %conv64.i.i.i = zext i16 %341 to i32
  %div.i.i.i = udiv i32 %conv64.i.i.i, %325
  %cl_next_free_rec.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %323, i32 0, i32 35, i32 0, i32 3
  %342 = ptrtoint ptr %cl_next_free_rec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %cl_next_free_rec.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %343)
  %cmp67146.not.i.i.i = icmp eq i16 %343, 0
  br i1 %cmp67146.not.i.i.i, label %if.end56.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end56.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end56.i.i.i
  %cl_recs.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %323, i32 0, i32 35, i32 0, i32 7
  %ffs_max.i.i.i.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 6
  %ffs_avg.i.i.i.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 7
  %ffs_free_chunks_real.i.i.i.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %ffs_free_chunks.i.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0147.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i.i.i, i32 0, i32 %i.0147.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i.i.i) #9
  %344 = ptrtoint ptr %bh.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr null, ptr %bh.i.i.i.i, align 4
  %345 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool.not.i.i.i.i = icmp eq i32 %346, 0
  br i1 %tobool.not.i.i.i.i, label %ocfs2_info_freefrag_scan_chain.exit.thread.i.i.i, label %do.body.preheader.i.i.i.i

ocfs2_info_freefrag_scan_chain.exit.thread.i.i.i: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i.i.i) #9
  br label %for.inc.i.i.i

do.body.preheader.i.i.i.i:                        ; preds = %for.body.i.i.i
  %c_blkno.i.i.i.i = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs.i.i.i, i32 0, i32 %i.0147.i.i.i, i32 2
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond57.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.preheader.i.i.i.i
  %bg.0.i.i.i.i = phi ptr [ %359, %do.cond57.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ null, %do.body.preheader.i.i.i.i ]
  %last_chunksize.0.i.i.i.i = phi i32 [ %last_chunksize.5.i.i.i.i, %do.cond57.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 0, %do.body.preheader.i.i.i.i ]
  %tobool1.not.i.i.i.i = icmp eq ptr %bg.0.i.i.i.i, null
  %bg_next_group.i.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %bg.0.i.i.i.i, i32 0, i32 7
  %bg_next_group.sink.i.i.i.i = select i1 %tobool1.not.i.i.i.i, ptr %c_blkno.i.i.i.i, ptr %bg_next_group.i.i.i.i
  %347 = ptrtoint ptr %bg_next_group.sink.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %bg_next_group.sink.i.i.i.i, align 8
  %349 = call i64 @llvm.bswap.i64(i64 %348) #9
  %350 = ptrtoint ptr %bh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %bh.i.i.i.i, align 4
  %tobool4.not.i.i100.i.i = icmp eq ptr %351, null
  br i1 %tobool4.not.i.i100.i.i, label %do.body.i.i.i.i.if.end6.i.i.i.i_crit_edge, label %brelse.exit.i.i.i.i

do.body.i.i.i.i.if.end6.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i.i.i

brelse.exit.i.i.i.i:                              ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %351) #9
  %352 = ptrtoint ptr %bh.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr null, ptr %bh.i.i.i.i, align 4
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %brelse.exit.i.i.i.i, %do.body.i.i.i.i.if.end6.i.i.i.i_crit_edge
  %353 = ptrtoint ptr %ir_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %ir_flags.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %354, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool7.not.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool7.not.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.else10.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i.i.i.i = call i32 @ocfs2_read_group_descriptor(ptr noundef %gb_inode.0118.i.i, ptr noundef %323, i64 noundef %349, ptr noundef nonnull %bh.i.i.i.i) #9
  br label %if.end12.i.i.i.i

if.else10.i.i.i.i:                                ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i.i.i.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %290, i64 noundef %349, i32 noundef 1, ptr noundef nonnull %bh.i.i.i.i) #9
  br label %if.end12.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.else10.i.i.i.i, %if.then8.i.i.i.i
  %status.0.i.i.i.i = phi i32 [ %call9.i.i.i.i, %if.then8.i.i.i.i ], [ %call11.i.i.i.i, %if.else10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i.i.i)
  %cmp.i.i101.i.i = icmp slt i32 %status.0.i.i.i.i, 0
  br i1 %cmp.i.i101.i.i, label %do.body14.i.i.i.i, label %if.end18.i.i.i.i

do.body14.i.i.i.i:                                ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i.i) #9
  %355 = ptrtoint ptr %_m.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 1152921504606846976, ptr %_m.i.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i.i, ptr noundef nonnull @__func__.ocfs2_info_freefrag_scan_chain, i32 noundef 472, ptr noundef nonnull @.str.23, i64 noundef %349) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i.i) #9
  br label %bail.i.i.i.i

if.end18.i.i.i.i:                                 ; preds = %if.end12.i.i.i.i
  %356 = ptrtoint ptr %bh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %bh.i.i.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %357, i32 0, i32 5
  %358 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %b_data.i.i.i.i, align 4
  %bg_free_bits_count.i.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %359, i32 0, i32 3
  %360 = ptrtoint ptr %bg_free_bits_count.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %bg_free_bits_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %361)
  %tobool19.not.i.i.i.i = icmp eq i16 %361, 0
  br i1 %tobool19.not.i.i.i.i, label %if.end18.i.i.i.i.do.cond57.i.i.i.i_crit_edge, label %if.end21.i.i.i.i

if.end18.i.i.i.i.do.cond57.i.i.i.i_crit_edge:     ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond57.i.i.i.i

if.end21.i.i.i.i:                                 ; preds = %if.end18.i.i.i.i
  %bg_bits.i.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %359, i32 0, i32 2
  %362 = ptrtoint ptr %bg_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %bg_bits.i.i.i.i, align 2
  %364 = call i16 @llvm.bswap.i16(i16 %363) #9
  %conv.i.i.i.i = zext i16 %364 to i32
  %365 = ptrtoint ptr %iff_chunksize.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %iff_chunksize.i.i, align 8
  %367 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %359, i32 0, i32 12
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc51.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end21.i.i.i.i
  %last_chunksize.1125.i.i.i.i = phi i32 [ %last_chunksize.0.i.i.i.i, %if.end21.i.i.i.i ], [ %last_chunksize.2.lcssa.i.i.i.i, %for.inc51.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %chunk.0124.i.i.i.i = phi i32 [ 0, %if.end21.i.i.i.i ], [ %inc52.i.i.i.i, %for.inc51.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %offset.0123.i.i.i.i = phi i32 [ 0, %if.end21.i.i.i.i ], [ %offset.1.lcssa.i.i.i.i, %for.inc51.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %add.i.i.i.i = add i32 %offset.0123.i.i.i.i, %366
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %conv.i.i.i.i)
  %cmp24.i.i.i.i = icmp ugt i32 %add.i.i.i.i, %conv.i.i.i.i
  %sub.i.i102.i.i = sub i32 %conv.i.i.i.i, %offset.0123.i.i.i.i
  %num_clusters.0.i.i.i.i = select i1 %cmp24.i.i.i.i, i32 %sub.i.i102.i.i, i32 %366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clusters.0.i.i.i.i)
  %cmp31115.not.i.i.i.i = icmp eq i32 %num_clusters.0.i.i.i.i, 0
  br i1 %cmp31115.not.i.i.i.i, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  br label %for.body33.i.i.i.i

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.body33.i.i.i.i:                               ; preds = %if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge
  %last_chunksize.2119.i.i.i.i = phi i32 [ %last_chunksize.4.i.i.i.i, %if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge ], [ %last_chunksize.1125.i.i.i.i, %for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge ]
  %chunk_free.0118.i.i.i.i = phi i32 [ %chunk_free.1.i.i.i.i, %if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge ]
  %cluster.0117.i.i.i.i = phi i32 [ %inc44.i.i.i.i, %if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge ]
  %offset.1116.i.i.i.i = phi i32 [ %inc43.i.i.i.i, %if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge ], [ %offset.0123.i.i.i.i, %for.body.i.i.i.i.for.body33.i.i.i.i_crit_edge ]
  %div3.i.i.i.i.i.i = lshr i32 %offset.1116.i.i.i.i, 5
  %arrayidx.i.i.i.i.i.i = getelementptr i32, ptr %367, i32 %div3.i.i.i.i.i.i
  %368 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %xor.i.i.i.i.i = and i32 %offset.1116.i.i.i.i, 31
  %and.i.i.i.i103.i.i = xor i32 %xor.i.i.i.i.i, 24
  %370 = shl nuw i32 1, %and.i.i.i.i103.i.i
  %371 = and i32 %370, %369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool35.not.i.i.i.i = icmp eq i32 %371, 0
  %inc.i.i.i.i = add i32 %last_chunksize.2119.i.i.i.i, 1
  %inc37.i.i.i.i = zext i1 %tobool35.not.i.i.i.i to i32
  %chunk_free.1.i.i.i.i = add i32 %chunk_free.0118.i.i.i.i, %inc37.i.i.i.i
  %last_chunksize.3.i.i.i.i = select i1 %tobool35.not.i.i.i.i, i32 %inc.i.i.i.i, i32 %last_chunksize.2119.i.i.i.i
  br i1 %tobool35.not.i.i.i.i, label %for.body33.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %land.lhs.true.i.i104.i.i

for.body33.i.i.i.i.if.end42.i.i.i.i_crit_edge:    ; preds = %for.body33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i.i.i

land.lhs.true.i.i104.i.i:                         ; preds = %for.body33.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_chunksize.3.i.i.i.i)
  %tobool40.not.i.i.i.i = icmp eq i32 %last_chunksize.3.i.i.i.i, 0
  br i1 %tobool40.not.i.i.i.i, label %land.lhs.true.i.i104.i.i.if.end42.i.i.i.i_crit_edge, label %if.then41.i.i.i.i

land.lhs.true.i.i104.i.i.if.end42.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i.i.i

if.then41.i.i.i.i:                                ; preds = %land.lhs.true.i.i104.i.i
  %372 = call i32 @llvm.ctlz.i32(i32 %last_chunksize.3.i.i.i.i, i1 true) #9, !range !89
  %sub.i.i.i.i.i.i.i = xor i32 %372, 31
  %373 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i.i.i, i32 31) #9
  %arrayidx.i.i88.i.i.i.i = getelementptr [32 x i32], ptr %iff_ffs.i.i.i, i32 0, i32 %373
  %374 = ptrtoint ptr %arrayidx.i.i88.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx.i.i88.i.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %375, 1
  store i32 %inc.i.i.i.i.i.i, ptr %arrayidx.i.i88.i.i.i.i, align 4
  %arrayidx1.i.i.i.i.i.i = getelementptr %struct.ocfs2_info_free_chunk_list, ptr %iff_ffs.i.i.i, i32 0, i32 1, i32 %373
  %376 = ptrtoint ptr %arrayidx1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx1.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %377, %last_chunksize.3.i.i.i.i
  store i32 %add.i.i.i.i.i.i, ptr %arrayidx1.i.i.i.i.i.i, align 4
  %378 = ptrtoint ptr %ffs_max.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %ffs_max.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %last_chunksize.3.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ult i32 %379, %last_chunksize.3.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.then41.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge

if.then41.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge:   ; preds = %if.then41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %380 = ptrtoint ptr %ffs_max.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %last_chunksize.3.i.i.i.i, ptr %ffs_max.i.i.i.i.i.i, align 4
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i, %if.then41.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %381 = ptrtoint ptr %ffs_min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %ffs_min.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %382, i32 %last_chunksize.3.i.i.i.i)
  %cmp2.i.i.i.i.i.i = icmp ugt i32 %382, %last_chunksize.3.i.i.i.i
  br i1 %cmp2.i.i.i.i.i.i, label %if.then3.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.ocfs2_info_update_ffg.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.i.i.ocfs2_info_update_ffg.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_update_ffg.exit.i.i.i.i

if.then3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %383 = ptrtoint ptr %ffs_min.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %last_chunksize.3.i.i.i.i, ptr %ffs_min.i.i.i, align 8
  br label %ocfs2_info_update_ffg.exit.i.i.i.i

ocfs2_info_update_ffg.exit.i.i.i.i:               ; preds = %if.then3.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.ocfs2_info_update_ffg.exit.i.i.i.i_crit_edge
  %384 = ptrtoint ptr %ffs_avg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %ffs_avg.i.i.i.i.i.i, align 8
  %add.i4.i.i.i.i.i = add i32 %385, %last_chunksize.3.i.i.i.i
  store i32 %add.i4.i.i.i.i.i, ptr %ffs_avg.i.i.i.i.i.i, align 8
  %386 = ptrtoint ptr %ffs_free_chunks_real.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %ffs_free_chunks_real.i.i.i.i.i.i, align 4
  %inc.i5.i.i.i.i.i = add i32 %387, 1
  store i32 %inc.i5.i.i.i.i.i, ptr %ffs_free_chunks_real.i.i.i.i.i.i, align 4
  br label %if.end42.i.i.i.i

if.end42.i.i.i.i:                                 ; preds = %ocfs2_info_update_ffg.exit.i.i.i.i, %land.lhs.true.i.i104.i.i.if.end42.i.i.i.i_crit_edge, %for.body33.i.i.i.i.if.end42.i.i.i.i_crit_edge
  %last_chunksize.4.i.i.i.i = phi i32 [ 0, %ocfs2_info_update_ffg.exit.i.i.i.i ], [ 0, %land.lhs.true.i.i104.i.i.if.end42.i.i.i.i_crit_edge ], [ %inc.i.i.i.i, %for.body33.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %inc43.i.i.i.i = add i32 %offset.1116.i.i.i.i, 1
  %inc44.i.i.i.i = add nuw i32 %cluster.0117.i.i.i.i, 1
  %cmp31.i.i.i.i = icmp ult i32 %inc44.i.i.i.i, %num_clusters.0.i.i.i.i
  br i1 %cmp31.i.i.i.i, label %if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge, label %if.end42.i.i.i.i.for.end.i.i.i.i_crit_edge

if.end42.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

if.end42.i.i.i.i.for.body33.i.i.i.i_crit_edge:    ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %if.end42.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge
  %offset.1.lcssa.i.i.i.i = phi i32 [ %offset.0123.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %inc43.i.i.i.i, %if.end42.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %chunk_free.0.lcssa.i.i.i.i = phi i32 [ 0, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %chunk_free.1.i.i.i.i, %if.end42.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %last_chunksize.2.lcssa.i.i.i.i = phi i32 [ %last_chunksize.1125.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %last_chunksize.4.i.i.i.i, %if.end42.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %chunk_free.0.lcssa.i.i.i.i, i32 %366)
  %cmp46.i.i.i.i = icmp eq i32 %chunk_free.0.lcssa.i.i.i.i, %366
  br i1 %cmp46.i.i.i.i, label %if.then48.i.i.i.i, label %for.end.i.i.i.i.for.inc51.i.i.i.i_crit_edge

for.end.i.i.i.i.for.inc51.i.i.i.i_crit_edge:      ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51.i.i.i.i

if.then48.i.i.i.i:                                ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %388 = ptrtoint ptr %ffs_free_chunks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %ffs_free_chunks.i.i.i.i, align 8
  %inc49.i.i.i.i = add i32 %389, 1
  store i32 %inc49.i.i.i.i, ptr %ffs_free_chunks.i.i.i.i, align 8
  br label %for.inc51.i.i.i.i

for.inc51.i.i.i.i:                                ; preds = %if.then48.i.i.i.i, %for.end.i.i.i.i.for.inc51.i.i.i.i_crit_edge
  %inc52.i.i.i.i = add nuw nsw i32 %chunk.0124.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %chunk.0124.i.i.i.i, %div.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.end53.i.i.i.i, label %for.inc51.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc51.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %for.inc51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.end53.i.i.i.i:                                ; preds = %for.inc51.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_chunksize.2.lcssa.i.i.i.i)
  %tobool54.not.i.i.i.i = icmp eq i32 %last_chunksize.2.lcssa.i.i.i.i, 0
  br i1 %tobool54.not.i.i.i.i, label %for.end53.i.i.i.i.do.cond57.i.i.i.i_crit_edge, label %if.then55.i.i.i.i

for.end53.i.i.i.i.do.cond57.i.i.i.i_crit_edge:    ; preds = %for.end53.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond57.i.i.i.i

if.then55.i.i.i.i:                                ; preds = %for.end53.i.i.i.i
  %390 = call i32 @llvm.ctlz.i32(i32 %last_chunksize.2.lcssa.i.i.i.i, i1 true) #9, !range !89
  %sub.i.i.i90.i.i.i.i = xor i32 %390, 31
  %391 = call i32 @llvm.umin.i32(i32 %sub.i.i.i90.i.i.i.i, i32 31) #9
  %arrayidx.i.i91.i.i.i.i = getelementptr [32 x i32], ptr %iff_ffs.i.i.i, i32 0, i32 %391
  %392 = ptrtoint ptr %arrayidx.i.i91.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx.i.i91.i.i.i.i, align 4
  %inc.i.i92.i.i.i.i = add i32 %393, 1
  store i32 %inc.i.i92.i.i.i.i, ptr %arrayidx.i.i91.i.i.i.i, align 4
  %arrayidx1.i.i93.i.i.i.i = getelementptr %struct.ocfs2_info_free_chunk_list, ptr %iff_ffs.i.i.i, i32 0, i32 1, i32 %391
  %394 = ptrtoint ptr %arrayidx1.i.i93.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx1.i.i93.i.i.i.i, align 4
  %add.i.i94.i.i.i.i = add i32 %395, %last_chunksize.2.lcssa.i.i.i.i
  store i32 %add.i.i94.i.i.i.i, ptr %arrayidx1.i.i93.i.i.i.i, align 4
  %396 = ptrtoint ptr %ffs_max.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %ffs_max.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %397, i32 %last_chunksize.2.lcssa.i.i.i.i)
  %cmp.i.i96.i.i.i.i = icmp ult i32 %397, %last_chunksize.2.lcssa.i.i.i.i
  br i1 %cmp.i.i96.i.i.i.i, label %if.then.i.i97.i.i.i.i, label %if.then55.i.i.i.i.if.end.i.i100.i.i.i.i_crit_edge

if.then55.i.i.i.i.if.end.i.i100.i.i.i.i_crit_edge: ; preds = %if.then55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i100.i.i.i.i

if.then.i.i97.i.i.i.i:                            ; preds = %if.then55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %398 = ptrtoint ptr %ffs_max.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %last_chunksize.2.lcssa.i.i.i.i, ptr %ffs_max.i.i.i.i.i.i, align 4
  br label %if.end.i.i100.i.i.i.i

if.end.i.i100.i.i.i.i:                            ; preds = %if.then.i.i97.i.i.i.i, %if.then55.i.i.i.i.if.end.i.i100.i.i.i.i_crit_edge
  %399 = ptrtoint ptr %ffs_min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %ffs_min.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %400, i32 %last_chunksize.2.lcssa.i.i.i.i)
  %cmp2.i.i99.i.i.i.i = icmp ugt i32 %400, %last_chunksize.2.lcssa.i.i.i.i
  br i1 %cmp2.i.i99.i.i.i.i, label %if.then3.i.i101.i.i.i.i, label %if.end.i.i100.i.i.i.i.ocfs2_info_update_ffg.exit106.i.i.i.i_crit_edge

if.end.i.i100.i.i.i.i.ocfs2_info_update_ffg.exit106.i.i.i.i_crit_edge: ; preds = %if.end.i.i100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_update_ffg.exit106.i.i.i.i

if.then3.i.i101.i.i.i.i:                          ; preds = %if.end.i.i100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %401 = ptrtoint ptr %ffs_min.i.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %last_chunksize.2.lcssa.i.i.i.i, ptr %ffs_min.i.i.i, align 8
  br label %ocfs2_info_update_ffg.exit106.i.i.i.i

ocfs2_info_update_ffg.exit106.i.i.i.i:            ; preds = %if.then3.i.i101.i.i.i.i, %if.end.i.i100.i.i.i.i.ocfs2_info_update_ffg.exit106.i.i.i.i_crit_edge
  %402 = ptrtoint ptr %ffs_avg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %ffs_avg.i.i.i.i.i.i, align 8
  %add.i4.i103.i.i.i.i = add i32 %403, %last_chunksize.2.lcssa.i.i.i.i
  store i32 %add.i4.i103.i.i.i.i, ptr %ffs_avg.i.i.i.i.i.i, align 8
  %404 = ptrtoint ptr %ffs_free_chunks_real.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %ffs_free_chunks_real.i.i.i.i.i.i, align 4
  %inc.i5.i105.i.i.i.i = add i32 %405, 1
  store i32 %inc.i5.i105.i.i.i.i, ptr %ffs_free_chunks_real.i.i.i.i.i.i, align 4
  br label %do.cond57.i.i.i.i

do.cond57.i.i.i.i:                                ; preds = %ocfs2_info_update_ffg.exit106.i.i.i.i, %for.end53.i.i.i.i.do.cond57.i.i.i.i_crit_edge, %if.end18.i.i.i.i.do.cond57.i.i.i.i_crit_edge
  %last_chunksize.5.i.i.i.i = phi i32 [ %last_chunksize.2.lcssa.i.i.i.i, %ocfs2_info_update_ffg.exit106.i.i.i.i ], [ 0, %for.end53.i.i.i.i.do.cond57.i.i.i.i_crit_edge ], [ %last_chunksize.0.i.i.i.i, %if.end18.i.i.i.i.do.cond57.i.i.i.i_crit_edge ]
  %bg_next_group58.i.i.i.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %359, i32 0, i32 7
  %406 = ptrtoint ptr %bg_next_group58.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %bg_next_group58.i.i.i.i, align 8
  %tobool59.not.i.i.i.i = icmp eq i64 %407, 0
  br i1 %tobool59.not.i.i.i.i, label %do.cond57.i.i.i.i.bail.i.i.i.i_crit_edge, label %do.cond57.i.i.i.i.do.body.i.i.i.i_crit_edge

do.cond57.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %do.cond57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

do.cond57.i.i.i.i.bail.i.i.i.i_crit_edge:         ; preds = %do.cond57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i.i.i.i

bail.i.i.i.i:                                     ; preds = %do.cond57.i.i.i.i.bail.i.i.i.i_crit_edge, %do.body14.i.i.i.i
  %status.1.ph.i.i.i.i = phi i32 [ -5, %do.body14.i.i.i.i ], [ %status.0.i.i.i.i, %do.cond57.i.i.i.i.bail.i.i.i.i_crit_edge ]
  %408 = ptrtoint ptr %bh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %.pr.i.i.i.i = load ptr, ptr %bh.i.i.i.i, align 4
  %tobool.not.i107.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %tobool.not.i107.i.i.i.i, label %bail.i.i.i.i.ocfs2_info_freefrag_scan_chain.exit.i.i.i_crit_edge, label %if.then.i108.i.i.i.i

bail.i.i.i.i.ocfs2_info_freefrag_scan_chain.exit.i.i.i_crit_edge: ; preds = %bail.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_freefrag_scan_chain.exit.i.i.i

if.then.i108.i.i.i.i:                             ; preds = %bail.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %.pr.i.i.i.i) #9
  br label %ocfs2_info_freefrag_scan_chain.exit.i.i.i

ocfs2_info_freefrag_scan_chain.exit.i.i.i:        ; preds = %if.then.i108.i.i.i.i, %bail.i.i.i.i.ocfs2_info_freefrag_scan_chain.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.ph.i.i.i.i)
  %tobool70.not.i.i.i = icmp eq i32 %status.1.ph.i.i.i.i, 0
  br i1 %tobool70.not.i.i.i, label %ocfs2_info_freefrag_scan_chain.exit.i.i.i.for.inc.i.i.i_crit_edge, label %ocfs2_info_freefrag_scan_chain.exit.i.i.i.bail.i.i.i_crit_edge

ocfs2_info_freefrag_scan_chain.exit.i.i.i.bail.i.i.i_crit_edge: ; preds = %ocfs2_info_freefrag_scan_chain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i.i.i

ocfs2_info_freefrag_scan_chain.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %ocfs2_info_freefrag_scan_chain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %ocfs2_info_freefrag_scan_chain.exit.i.i.i.for.inc.i.i.i_crit_edge, %ocfs2_info_freefrag_scan_chain.exit.thread.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0147.i.i.i, 1
  %409 = ptrtoint ptr %cl_next_free_rec.i.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %cl_next_free_rec.i.i.i, align 2
  %411 = call i16 @llvm.bswap.i16(i16 %410) #9
  %conv66.i.i.i = zext i16 %411 to i32
  %cmp67.i.i.i = icmp ult i32 %inc.i.i.i, %conv66.i.i.i
  br i1 %cmp67.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.for.end.i.i.i_crit_edge

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end56.i.i.i.for.end.i.i.i_crit_edge
  %status.1.lcssa.i.i.i = phi i32 [ %status.0.i.i.i, %if.end56.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %for.inc.i.i.i.for.end.i.i.i_crit_edge ]
  %ffs_free_chunks_real.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %412 = ptrtoint ptr %ffs_free_chunks_real.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ffs_free_chunks_real.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool74.not.i.i.i = icmp eq i32 %413, 0
  br i1 %tobool74.not.i.i.i, label %for.end.i.i.i.bail.i.i.i_crit_edge, label %if.then75.i.i.i

for.end.i.i.i.bail.i.i.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i.i.i

if.then75.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ffs_avg.i.i.i = getelementptr inbounds %struct.ocfs2_info_freefrag, ptr %call7.i.i.i.i, i32 0, i32 1, i32 7
  %414 = ptrtoint ptr %ffs_avg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %ffs_avg.i.i.i, align 8
  %div79.i.i.i = udiv i32 %415, %413
  store i32 %div79.i.i.i, ptr %ffs_avg.i.i.i, align 8
  br label %bail.i.i.i

bail.i.i.i:                                       ; preds = %if.then75.i.i.i, %for.end.i.i.i.bail.i.i.i_crit_edge, %ocfs2_info_freefrag_scan_chain.exit.i.i.i.bail.i.i.i_crit_edge, %if.end51.i.i.i.bail.i.i.i_crit_edge
  %status.2.i.i.i = phi i32 [ %status.1.lcssa.i.i.i, %if.then75.i.i.i ], [ %status.1.lcssa.i.i.i, %for.end.i.i.i.bail.i.i.i_crit_edge ], [ -22, %if.end51.i.i.i.bail.i.i.i_crit_edge ], [ %status.1.ph.i.i.i.i, %ocfs2_info_freefrag_scan_chain.exit.i.i.i.bail.i.i.i_crit_edge ]
  br i1 %tobool1.not.not.i.i.i, label %if.then84.i.i.i, label %bail.i.i.i.if.end85.i.i.i_crit_edge

bail.i.i.i.if.end85.i.i.i_crit_edge:              ; preds = %bail.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i.i

if.then84.i.i.i:                                  ; preds = %bail.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocfs2_inode_unlock(ptr noundef %gb_inode.0118.i.i, i32 noundef 0) #9
  br label %if.end85.i.i.i

if.end85.i.i.i:                                   ; preds = %if.then84.i.i.i, %bail.i.i.i.if.end85.i.i.i_crit_edge, %do.body39.i.i.i, %if.then22.i.i.i.if.end85.i.i.i_crit_edge, %if.then22.i.i.i.if.end85.i.i.i_crit_edge305, %if.then22.i.i.i.if.end85.i.i.i_crit_edge306, %if.then22.i.i.i.if.end85.i.i.i_crit_edge307, %do.body.i.i.i, %if.then4.i.i.i.if.end85.i.i.i_crit_edge, %if.then4.i.i.i.if.end85.i.i.i_crit_edge302, %if.then4.i.i.i.if.end85.i.i.i_crit_edge303, %if.then4.i.i.i.if.end85.i.i.i_crit_edge304
  %status.2141.i.i.i = phi i32 [ %status.2.i.i.i, %if.then84.i.i.i ], [ %status.2.i.i.i, %bail.i.i.i.if.end85.i.i.i_crit_edge ], [ %call19.i.i.i, %do.body39.i.i.i ], [ %call19.i.i.i, %if.then22.i.i.i.if.end85.i.i.i_crit_edge ], [ %call19.i.i.i, %if.then22.i.i.i.if.end85.i.i.i_crit_edge305 ], [ %call19.i.i.i, %if.then22.i.i.i.if.end85.i.i.i_crit_edge306 ], [ %call19.i.i.i, %if.then22.i.i.i.if.end85.i.i.i_crit_edge307 ], [ %call3.i.i.i, %do.body.i.i.i ], [ %call3.i.i.i, %if.then4.i.i.i.if.end85.i.i.i_crit_edge ], [ %call3.i.i.i, %if.then4.i.i.i.if.end85.i.i.i_crit_edge302 ], [ %call3.i.i.i, %if.then4.i.i.i.if.end85.i.i.i_crit_edge303 ], [ %call3.i.i.i, %if.then4.i.i.i.if.end85.i.i.i_crit_edge304 ]
  br i1 %tobool25.not.not.i.i, label %if.then87.i.i.i, label %if.end85.i.i.i.if.end88.i.i.i_crit_edge

if.end85.i.i.i.if.end88.i.i.i_crit_edge:          ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i.i.i

if.then87.i.i.i:                                  ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_rwsem.i134.i.i.i = getelementptr inbounds %struct.inode, ptr %gb_inode.0118.i.i, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i134.i.i.i) #9
  br label %if.end88.i.i.i

if.end88.i.i.i:                                   ; preds = %if.then87.i.i.i, %if.end85.i.i.i.if.end88.i.i.i_crit_edge
  call void @iput(ptr noundef %gb_inode.0118.i.i) #9
  %416 = ptrtoint ptr %bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %bh.i.i.i, align 4
  %tobool.not.i135.i.i.i = icmp eq ptr %417, null
  br i1 %tobool.not.i135.i.i.i, label %if.end88.i.i.i.ocfs2_info_freefrag_scan_bitmap.exit.i.i_crit_edge, label %if.then.i.i105.i.i

if.end88.i.i.i.ocfs2_info_freefrag_scan_bitmap.exit.i.i_crit_edge: ; preds = %if.end88.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_freefrag_scan_bitmap.exit.i.i

if.then.i.i105.i.i:                               ; preds = %if.end88.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %417) #9
  br label %ocfs2_info_freefrag_scan_bitmap.exit.i.i

ocfs2_info_freefrag_scan_bitmap.exit.i.i:         ; preds = %if.then.i.i105.i.i, %if.end88.i.i.i.ocfs2_info_freefrag_scan_bitmap.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2141.i.i.i)
  %cmp50.i.i = icmp slt i32 %status.2141.i.i.i, 0
  br i1 %cmp50.i.i, label %ocfs2_info_freefrag_scan_bitmap.exit.i.i.if.then60.i.i_crit_edge, label %if.end53.i.i

ocfs2_info_freefrag_scan_bitmap.exit.i.i.if.then60.i.i_crit_edge: ; preds = %ocfs2_info_freefrag_scan_bitmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.i.i

if.end53.i.i:                                     ; preds = %ocfs2_info_freefrag_scan_bitmap.exit.i.i
  %418 = ptrtoint ptr %ir_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %ir_flags.i.i.i, align 4
  %or.i.i.i = or i32 %419, 1073741824
  store i32 %or.i.i.i, ptr %ir_flags.i.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i93.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i93.i.i, label %if.end53.i.i.out_free.i.i_crit_edge, label %copy_to_user.exit.i51.i

if.end53.i.i.out_free.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i.i

copy_to_user.exit.i51.i:                          ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i97.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 312) #9
  %call.i12.i.i.i49.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 312) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i49.i)
  %tobool56.not.i.i = icmp eq i32 %call.i12.i.i.i49.i, 0
  %spec.select.i50.i = select i1 %tobool56.not.i.i, i32 0, i32 -14
  br label %out_free.i.i

if.then60.i.i:                                    ; preds = %ocfs2_info_freefrag_scan_bitmap.exit.i.i.if.then60.i.i_crit_edge, %if.else.i.i.if.then60.i.i_crit_edge, %do.body30.i.i, %if.end16.i.i.if.then60.i.i_crit_edge
  %status.0.ph.i.i = phi i32 [ -2, %if.else.i.i.if.then60.i.i_crit_edge ], [ -22, %if.end16.i.i.if.then60.i.i_crit_edge ], [ -5, %do.body30.i.i ], [ %status.2141.i.i.i, %ocfs2_info_freefrag_scan_bitmap.exit.i.i.if.then60.i.i_crit_edge ]
  %ir_flags.i107.i.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %call7.i.i.i.i, i32 0, i32 3
  %420 = ptrtoint ptr %ir_flags.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %ir_flags.i107.i.i, align 4
  %or.i108.i.i = or i32 %421, -2147483648
  store i32 %or.i108.i.i, ptr %ir_flags.i107.i.i, align 4
  %ir_flags1.i.i.i = getelementptr inbounds %struct.ocfs2_info_request, ptr %75, i32 0, i32 3
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 47) #9
  %422 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i109.i.i = and i32 %422, -16384
  %423 = inttoptr i32 %and.i.i.i.i109.i.i to ptr
  %cpu_domain.i.i.i.i.i226 = getelementptr inbounds %struct.thread_info, ptr %423, i32 0, i32 4
  %424 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i226) #3, !srcloc !75
  %and.i.i110.i.i = and i32 %424, -13
  %or.i.i.i.i227 = or i32 %and.i.i110.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i227) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %425 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %ir_flags1.i.i.i, i32 %or.i108.i.i, i32 -1226833921) #9, !srcloc !88
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %424) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %out_free.i.i

out_free.i.i:                                     ; preds = %if.then60.i.i, %copy_to_user.exit.i51.i, %if.end53.i.i.out_free.i.i_crit_edge, %if.then11.i.i.i47.i
  %status.1.i.i = phi i32 [ %status.0.ph.i.i, %if.then60.i.i ], [ -14, %if.then11.i.i.i47.i ], [ -14, %if.end53.i.i.out_free.i.i_crit_edge ], [ %spec.select.i50.i, %copy_to_user.exit.i51.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %ocfs2_info_handle_freefrag.exit.i

ocfs2_info_handle_freefrag.exit.i:                ; preds = %out_free.i.i, %do.body.i.i
  %status.2.i.i = phi i32 [ %status.1.i.i, %out_free.i.i ], [ -12, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %namebuf.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i.i) #9
  br label %ocfs2_info_handle_request.exit.i

sw.default.i.i:                                   ; preds = %if.end2.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oir.i16.i) #9
  %426 = call ptr @memset(ptr %oir.i16.i, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i.i17.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i17.i, label %sw.default.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge, label %if.end.i.i.i28.i

sw.default.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_unknown.exit.i

if.end.i.i.i28.i:                                 ; preds = %sw.default.i.i
  %call.i.i.i.i21.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %oir.i16.i, i32 noundef 16) #9
  %427 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i.i22.i = and i32 %427, -16384
  %428 = inttoptr i32 %and.i.i.i.i.i.i.i22.i to ptr
  %cpu_domain.i.i.i.i.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %428, i32 0, i32 4
  %429 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i23.i) #3, !srcloc !75
  %and.i.i.i.i.i24.i = and i32 %429, -13
  %or.i.i.i.i.i25.i = or i32 %and.i.i.i.i.i24.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i25.i) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i.i26.i = call i32 @arm_copy_from_user(ptr noundef nonnull %oir.i16.i, ptr noundef nonnull %75, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %429) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i26.i)
  %tobool4.not.i.i.i27.i = icmp eq i32 %call1.i.i.i.i26.i, 0
  br i1 %tobool4.not.i.i.i27.i, label %if.end59.i.i4.i.i, label %if.end.i.i.i28.i.ocfs2_info_handle_unknown.exit.i_crit_edge, !prof !74

if.end.i.i.i28.i.ocfs2_info_handle_unknown.exit.i_crit_edge: ; preds = %if.end.i.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_unknown.exit.i

if.end59.i.i4.i.i:                                ; preds = %if.end.i.i.i28.i
  %430 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %62, align 4
  %and.i.i.i228 = and i32 %431, -1073741825
  store i32 %and.i.i.i228, ptr %62, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i5.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i5.i.i, label %if.end59.i.i4.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge, label %copy_to_user.exit.i.i

if.end59.i.i4.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge: ; preds = %if.end59.i.i4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle_unknown.exit.i

copy_to_user.exit.i.i:                            ; preds = %if.end59.i.i4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i9.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %oir.i16.i, i32 noundef 16) #9
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %75, ptr noundef nonnull %oir.i16.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 0, i32 -14
  br label %ocfs2_info_handle_unknown.exit.i

ocfs2_info_handle_unknown.exit.i:                 ; preds = %copy_to_user.exit.i.i, %if.end59.i.i4.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge, %if.end.i.i.i28.i.ocfs2_info_handle_unknown.exit.i_crit_edge, %sw.default.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -14, %if.end59.i.i4.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge ], [ %spec.select.i.i, %copy_to_user.exit.i.i ], [ -14, %if.end.i.i.i28.i.ocfs2_info_handle_unknown.exit.i_crit_edge ], [ -14, %sw.default.i.i.ocfs2_info_handle_unknown.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oir.i16.i) #9
  br label %ocfs2_info_handle_request.exit.i

ocfs2_info_handle_request.exit.thread.i:          ; preds = %sw.bb49.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb43.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb37.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb31.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb25.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb19.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb13.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb7.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %sw.bb.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge, %if.end.i.i224.ocfs2_info_handle_request.exit.thread.i_crit_edge, %if.then11.i.i.i15.i
  %status.0.i.ph.i = phi i32 [ -14, %if.then11.i.i.i15.i ], [ -22, %if.end.i.i224.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb7.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb13.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb19.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb25.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb31.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb37.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb43.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ], [ -22, %sw.bb49.i.i.ocfs2_info_handle_request.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oir.i.i) #9
  br label %ocfs2_info_handle.exit

ocfs2_info_handle_request.exit.i:                 ; preds = %ocfs2_info_handle_unknown.exit.i, %ocfs2_info_handle_freefrag.exit.i, %ocfs2_info_handle_freeinode.exit.i, %ocfs2_info_handle_journal_size.exit.i, %ocfs2_info_handle_fs_features.exit.i, %ocfs2_info_handle_uuid.exit.i, %ocfs2_info_handle_label.exit.i, %ocfs2_info_handle_maxslots.exit.i, %ocfs2_info_handle_clustersize.exit.i, %ocfs2_info_handle_blocksize.exit.i
  %status.0.i.i = phi i32 [ %retval.0.i.i, %ocfs2_info_handle_unknown.exit.i ], [ %status.2.i.i, %ocfs2_info_handle_freefrag.exit.i ], [ %status.2.i111.i, %ocfs2_info_handle_freeinode.exit.i ], [ %retval.0.i138.i, %ocfs2_info_handle_journal_size.exit.i ], [ %retval.0.i161.i, %ocfs2_info_handle_fs_features.exit.i ], [ %retval.0.i185.i, %ocfs2_info_handle_uuid.exit.i ], [ %retval.0.i213.i, %ocfs2_info_handle_label.exit.i ], [ %retval.0.i241.i, %ocfs2_info_handle_maxslots.exit.i ], [ %retval.0.i268.i, %ocfs2_info_handle_clustersize.exit.i ], [ %retval.0.i290.i, %ocfs2_info_handle_blocksize.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oir.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool10.not.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool10.not.i, label %for.cond.i, label %ocfs2_info_handle_request.exit.i.ocfs2_info_handle.exit_crit_edge

ocfs2_info_handle_request.exit.i.ocfs2_info_handle.exit_crit_edge: ; preds = %ocfs2_info_handle_request.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_info_handle.exit

ocfs2_info_handle.exit:                           ; preds = %ocfs2_info_handle_request.exit.i.ocfs2_info_handle.exit_crit_edge, %ocfs2_info_handle_request.exit.thread.i, %if.end5.i.ocfs2_info_handle.exit_crit_edge, %if.then11.i.i.i.i, %for.cond.i.ocfs2_info_handle.exit_crit_edge, %for.cond.preheader.i.ocfs2_info_handle.exit_crit_edge, %lor.lhs.false.i.ocfs2_info_handle.exit_crit_edge, %if.end47.ocfs2_info_handle.exit_crit_edge
  %status.1.i = phi i32 [ -22, %lor.lhs.false.i.ocfs2_info_handle.exit_crit_edge ], [ -22, %if.end47.ocfs2_info_handle.exit_crit_edge ], [ %status.0.i.ph.i, %ocfs2_info_handle_request.exit.thread.i ], [ -14, %if.then11.i.i.i.i ], [ 0, %for.cond.preheader.i.ocfs2_info_handle.exit_crit_edge ], [ -22, %if.end5.i.ocfs2_info_handle.exit_crit_edge ], [ 0, %for.cond.i.ocfs2_info_handle.exit_crit_edge ], [ %status.0.i.i, %ocfs2_info_handle_request.exit.i.ocfs2_info_handle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_addr.i) #9
  br label %cleanup81

sw.bb49:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %432 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %433, i32 0, i32 26
  %434 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %435, i32 0, i32 18
  %436 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %bd_queue.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range) #9
  %438 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 2
  %439 = call ptr @memset(ptr %range, i32 255, i32 24)
  %call51 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call51, label %if.end53, label %sw.bb49.cleanup_crit_edge

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %sw.bb49
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %437, i32 0, i32 11
  %440 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load volatile i32, ptr %queue_flags, align 4
  %442 = and i32 %441, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool55.not = icmp eq i32 %442, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.end59.i.i192

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59.i.i192:                                  ; preds = %if.end53
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i193 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i193, label %if.end59.i.i192.if.then11.i.i209_crit_edge, label %land.lhs.true.i.i196

if.end59.i.i192.if.then11.i.i209_crit_edge:       ; preds = %if.end59.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i209

land.lhs.true.i.i196:                             ; preds = %if.end59.i.i192
  %443 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1226833920) #12
  %asmresult.i.i194 = extractvalue { i32, i32 } %443, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i194)
  %cmp.i6.i195 = icmp eq i32 %asmresult.i.i194, 0
  br i1 %cmp.i6.i195, label %if.end.i.i206, label %land.lhs.true.i.i196.if.then11.i.i209_crit_edge, !prof !74

land.lhs.true.i.i196.if.then11.i.i209_crit_edge:  ; preds = %land.lhs.true.i.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i209

if.end.i.i206:                                    ; preds = %land.lhs.true.i.i196
  %call.i.i.i197 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range, i32 noundef 24) #9
  %444 = call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i.i.i.i.i198 = and i32 %444, -16384
  %445 = inttoptr i32 %and.i.i.i.i.i.i198 to ptr
  %cpu_domain.i.i.i.i.i199 = getelementptr inbounds %struct.thread_info, ptr %445, i32 0, i32 4
  %446 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i199) #3, !srcloc !75
  %and.i.i.i.i200 = and i32 %446, -13
  %or.i.i.i.i201 = or i32 %and.i.i.i.i200, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i201) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i202 = call i32 @arm_copy_from_user(ptr noundef nonnull %range, ptr noundef %8, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %446) #9, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i202)
  %tobool4.not.i.i205 = icmp eq i32 %call1.i.i.i202, 0
  br i1 %tobool4.not.i.i205, label %if.end61, label %if.end.i.i206.if.then11.i.i209_crit_edge, !prof !74

if.end.i.i206.if.then11.i.i209_crit_edge:         ; preds = %if.end.i.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i209

if.then11.i.i209:                                 ; preds = %if.end.i.i206.if.then11.i.i209_crit_edge, %land.lhs.true.i.i196.if.then11.i.i209_crit_edge, %if.end59.i.i192.if.then11.i.i209_crit_edge
  %res.0.i.i204251 = phi i32 [ %call1.i.i.i202, %if.end.i.i206.if.then11.i.i209_crit_edge ], [ 24, %if.end59.i.i192.if.then11.i.i209_crit_edge ], [ 24, %land.lhs.true.i.i196.if.then11.i.i209_crit_edge ]
  %sub.i.i207 = sub i32 24, %res.0.i.i204251
  %add.ptr.i.i208 = getelementptr i8, ptr %range, i32 %sub.i.i207
  %447 = call ptr @memset(ptr %add.ptr.i.i208, i32 0, i32 %res.0.i.i204251)
  br label %cleanup

if.end61:                                         ; preds = %if.end.i.i206
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %437, i32 0, i32 37, i32 18
  %448 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %discard_granularity, align 4
  %conv62 = zext i32 %449 to i64
  %450 = ptrtoint ptr %438 to i32
  call void @__asan_load8_noabort(i32 %450)
  %451 = load i64, ptr %438, align 8
  %452 = call i64 @llvm.umax.i64(i64 %451, i64 %conv62)
  %453 = ptrtoint ptr %438 to i32
  call void @__asan_store8_noabort(i32 %453)
  store i64 %452, ptr %438, align 8
  %call67 = call i32 @ocfs2_trim_fs(ptr noundef %433, ptr noundef nonnull %range) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end61.cleanup_crit_edge, label %if.end59.i.i215

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59.i.i215:                                  ; preds = %if.end61
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i216 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i216, label %if.end59.i.i215.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i215.cleanup_crit_edge:                ; preds = %if.end59.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i220 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range, i32 noundef 24) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %range, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool73.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool73.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i215.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then11.i.i209, %if.end53.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb49.cleanup_crit_edge ], [ -95, %if.end53.cleanup_crit_edge ], [ %call67, %if.end61.cleanup_crit_edge ], [ -14, %if.then11.i.i209 ], [ -14, %if.end59.i.i215.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range) #9
  br label %cleanup81

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = tail call i32 @ocfs2_ioctl_move_extents(ptr noundef %filp, ptr noundef %8) #9
  br label %cleanup81

cleanup81:                                        ; preds = %sw.bb79, %cleanup, %ocfs2_info_handle.exit, %if.then11.i.i186, %if.end35, %if.then11.i.i163, %if.end29, %if.end25.cleanup81_crit_edge, %if.then11.i.i140, %sw.bb18.cleanup81_crit_edge, %if.end16, %if.end12.cleanup81_crit_edge, %if.end6.cleanup81_crit_edge, %sw.bb3.cleanup81_crit_edge, %if.end, %if.then11.i.i, %entry.cleanup81_crit_edge
  %retval.1 = phi i32 [ %call80, %sw.bb79 ], [ %retval.0, %cleanup ], [ %status.1.i, %ocfs2_info_handle.exit ], [ %call42, %if.end35 ], [ %call30, %if.end29 ], [ %call17, %if.end16 ], [ %call2, %if.end ], [ -1, %sw.bb3.cleanup81_crit_edge ], [ -14, %if.end6.cleanup81_crit_edge ], [ %call13, %if.end12.cleanup81_crit_edge ], [ -1, %sw.bb18.cleanup81_crit_edge ], [ %call26, %if.end25.cleanup81_crit_edge ], [ -25, %entry.cleanup81_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i140 ], [ -14, %if.then11.i.i163 ], [ -14, %if.then11.i.i186 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %input) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sr) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_change_file_space(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_group_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_group_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reflink_ioctl(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_ioctl_move_extents(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lookup_ino_from_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_group_descriptor(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__func__.ocfs2_fileattr_get, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/ioctl.c", i32 73, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_fileattr_set, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/ioctl.c", i32 102, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/ioctl.c", i32 867, i32 7}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!9 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!14 = !{ptr @__func__.ocfs2_info_handle_freeinode, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/ioctl.c", i32 339, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/ioctl.c", i32 354, i32 5}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 1578, i32 30}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 353, i32 32}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 354, i32 41}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 357, i32 32}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 358, i32 32}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 359, i32 36}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 360, i32 33}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 361, i32 34}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 364, i32 33}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 365, i32 35}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 366, i32 34}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 367, i32 31}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 368, i32 34}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 369, i32 35}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 370, i32 39}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 371, i32 39}
!50 = distinct !{null, !51, !"ocfs2_system_inodes", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 350, i32 39}
!52 = !{ptr @__func__.ocfs2_info_scan_inode_alloc, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/ioctl.c", i32 293, i32 4}
!54 = !{ptr @__func__.ocfs2_info_handle_freefrag, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ocfs2/ioctl.c", i32 627, i32 3}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/ioctl.c", i32 648, i32 4}
!58 = !{ptr @__func__.ocfs2_info_freefrag_scan_bitmap, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/ioctl.c", i32 553, i32 4}
!60 = !{ptr @__func__.ocfs2_info_freefrag_scan_chain, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/ioctl.c", i32 471, i32 4}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2152185408, i64 2152185433}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 4680963}
!76 = !{i64 4681160}
!77 = !{i64 2152166393}
!78 = !{i64 2154943760, i64 2154944040, i64 2154944374, i64 2154944708}
!79 = !{!"auto-init"}
!80 = !{i64 1077609, i64 1077670}
!81 = !{i64 1080341}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 1080626}
!84 = !{i64 2152515760}
!85 = !{i64 2152515602}
!86 = !{i64 2152515930}
!87 = !{i64 2150101744}
!88 = !{i64 2154910378, i64 2154910658, i64 2154910992, i64 2154911326}
!89 = !{i32 0, i32 33}
