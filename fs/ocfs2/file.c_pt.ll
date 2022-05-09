; ModuleID = '/llk/IR_all_yes/fs/ocfs2/file.c_pt.bc'
source_filename = "../fs/ocfs2/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%union.anon.73 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.80 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.94, ptr }
%union.anon.94 = type { %struct.fsdlm_lksb_plus_lvb }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.85, %union.anon.89 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.85 = type { i64 }
%union.anon.89 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.90, [16 x i8] }
%union.anon.90 = type { i32 }
%struct.jbd2_journal_handle = type { %union.anon.96, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.96 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ocfs2_extent_tree = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.ocfs2_lock_holder = type { %struct.list_head, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.ocfs2_journal = type { i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.work_struct }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { ptr, ptr }
%struct.ocfs2_path = type { i32, ptr, [5 x %struct.ocfs2_path_item] }
%struct.ocfs2_path_item = type { ptr, ptr }
%struct.ocfs2_extent_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_extent_rec] }
%struct.ocfs2_extent_rec = type { i32, %union.anon.92, i64 }
%union.anon.92 = type { i32 }
%struct.anon.93 = type { i16, i8, i8 }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ocfs2_space_resv = type { i16, i16, i64, i64, i32, i32, [4 x i32] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.ocfs2_file_private = type { ptr, %struct.mutex, %struct.ocfs2_lock_res }
%struct.page = type { i32, %union.anon.7, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }

@__func__.ocfs2_update_inode_atime = private unnamed_addr constant [25 x i8] c"ocfs2_update_inode_atime\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_set_inode_size = private unnamed_addr constant [21 x i8] c"ocfs2_set_inode_size\00", align 1
@__func__.ocfs2_simple_size_update = private unnamed_addr constant [25 x i8] c"ocfs2_simple_size_update\00", align 1
@__func__.ocfs2_truncate_file = private unnamed_addr constant [20 x i8] c"ocfs2_truncate_file\00", align 1
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"bug expression: le64_to_cpu(fe->i_size) != i_size_read(inode)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Inode %llu, inode i_size = %lld != di i_size = %llu, i_flags = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ocfs2_zero_extend = private unnamed_addr constant [18 x i8] c"ocfs2_zero_extend\00", align 1
@__func__.ocfs2_extend_no_holes = private unnamed_addr constant [22 x i8] c"ocfs2_extend_no_holes\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__func__.ocfs2_setattr = private unnamed_addr constant [14 x i8] c"ocfs2_setattr\00", align 1
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Another case of recursive locking:\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ocfs2_getattr = private unnamed_addr constant [14 x i8] c"ocfs2_getattr\00", align 1
@__func__.ocfs2_permission = private unnamed_addr constant [17 x i8] c"ocfs2_permission\00", align 1
@__func__.ocfs2_remove_inode_range = private unnamed_addr constant [25 x i8] c"ocfs2_remove_inode_range\00", align 1
@__func__.ocfs2_check_range_for_refcount = private unnamed_addr constant [31 x i8] c"ocfs2_check_range_for_refcount\00", align 1
@ocfs2_file_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @ocfs2_permission, ptr @ocfs2_iop_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_setattr, ptr @ocfs2_getattr, ptr @ocfs2_listxattr, ptr @ocfs2_fiemap, ptr null, ptr null, ptr null, ptr @ocfs2_iop_set_acl, ptr @ocfs2_fileattr_set, ptr @ocfs2_fileattr_get, [36 x i8] undef }, align 128
@ocfs2_special_file_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @ocfs2_permission, ptr @ocfs2_iop_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_setattr, ptr @ocfs2_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_iop_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@ocfs2_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ocfs2_file_llseek, ptr null, ptr null, ptr @ocfs2_file_read_iter, ptr @ocfs2_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_ioctl, ptr null, ptr @ocfs2_mmap, i32 0, ptr @ocfs2_file_open, ptr null, ptr @ocfs2_file_release, ptr @ocfs2_sync_file, ptr null, ptr @ocfs2_lock, ptr null, ptr null, ptr null, ptr @ocfs2_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @ocfs2_fallocate, ptr null, ptr null, ptr @ocfs2_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@ocfs2_dops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_readdir, ptr null, ptr null, ptr @ocfs2_ioctl, ptr null, ptr null, i32 0, ptr @ocfs2_dir_open, ptr null, ptr @ocfs2_dir_release, ptr @ocfs2_sync_file, ptr null, ptr @ocfs2_lock, ptr null, ptr null, ptr null, ptr @ocfs2_flock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ocfs2_fops_no_plocks = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ocfs2_file_llseek, ptr null, ptr null, ptr @ocfs2_file_read_iter, ptr @ocfs2_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_ioctl, ptr null, ptr @ocfs2_mmap, i32 0, ptr @ocfs2_file_open, ptr null, ptr @ocfs2_file_release, ptr @ocfs2_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @ocfs2_fallocate, ptr null, ptr null, ptr @ocfs2_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@ocfs2_dops_no_plocks = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_readdir, ptr null, ptr null, ptr @ocfs2_ioctl, ptr null, ptr null, i32 0, ptr @ocfs2_dir_open, ptr null, ptr @ocfs2_dir_release, ptr @ocfs2_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_flock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_truncate_file = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_truncate_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_truncate_file_error = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_truncate_file_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_orphan_for_truncate = private unnamed_addr constant [26 x i8] c"ocfs2_orphan_for_truncate\00", align 1
@__tracepoint_ocfs2_zero_extend = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_zero_extend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_zero_extend_get_range = private unnamed_addr constant [28 x i8] c"ocfs2_zero_extend_get_range\00", align 1
@__func__.ocfs2_zero_extend_range = private unnamed_addr constant [24 x i8] c"ocfs2_zero_extend_range\00", align 1
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ocfs2/file.c\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_zero_extend_range = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_zero_extend_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_write_zero_page = private unnamed_addr constant [22 x i8] c"ocfs2_write_zero_page\00", align 1
@__func__.ocfs2_zero_start_ordered_transaction = private unnamed_addr constant [37 x i8] c"ocfs2_zero_start_ordered_transaction\00", align 1
@__tracepoint_ocfs2_write_zero_page = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_write_zero_page.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ocfs2_extend_allocation = private unnamed_addr constant [24 x i8] c"ocfs2_extend_allocation\00", align 1
@__tracepoint_ocfs2_extend_allocation = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_extend_allocation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_extend_allocation_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_extend_allocation_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_setattr = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_setattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_extend_file = private unnamed_addr constant [18 x i8] c"ocfs2_extend_file\00", align 1
@__tracepoint_ocfs2_remove_inode_range = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_remove_inode_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_cow_file_pos = private unnamed_addr constant [19 x i8] c"ocfs2_cow_file_pos\00", align 1
@__func__.ocfs2_zero_partial_clusters = private unnamed_addr constant [28 x i8] c"ocfs2_zero_partial_clusters\00", align 1
@__tracepoint_ocfs2_zero_partial_clusters = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_zero_partial_clusters.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_zero_partial_clusters_range1 = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_zero_partial_clusters_range1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_zero_partial_clusters_range2 = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_zero_partial_clusters_range2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__ocfs2_change_file_space = private unnamed_addr constant [26 x i8] c"__ocfs2_change_file_space\00", align 1
@__func__.__ocfs2_write_remove_suid = private unnamed_addr constant [26 x i8] c"__ocfs2_write_remove_suid\00", align 1
@__tracepoint_ocfs2_write_remove_suid = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_write_remove_suid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_allocate_unwritten_extents = private unnamed_addr constant [33 x i8] c"ocfs2_allocate_unwritten_extents\00", align 1
@__func__.ocfs2_file_llseek = private unnamed_addr constant [18 x i8] c"ocfs2_file_llseek\00", align 1
@__func__.ocfs2_file_read_iter = private unnamed_addr constant [21 x i8] c"ocfs2_file_read_iter\00", align 1
@__tracepoint_ocfs2_file_read_iter = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_file_read_iter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_generic_file_read_iter_ret = external dso_local global %struct.tracepoint, align 4
@trace_generic_file_read_iter_ret.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_file_write_iter = private unnamed_addr constant [22 x i8] c"ocfs2_file_write_iter\00", align 1
@__tracepoint_ocfs2_file_write_iter = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_file_write_iter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_prepare_inode_for_write = private unnamed_addr constant [30 x i8] c"ocfs2_prepare_inode_for_write\00", align 1
@__func__.ocfs2_write_remove_suid = private unnamed_addr constant [24 x i8] c"ocfs2_write_remove_suid\00", align 1
@__tracepoint_ocfs2_prepare_inode_for_write = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_prepare_inode_for_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_file_open = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_file_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ocfs2_init_file_private.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fp->fp_mutex\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_ocfs2_file_release = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_file_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_sync_file = private unnamed_addr constant [16 x i8] c"ocfs2_sync_file\00", align 1
@__tracepoint_ocfs2_sync_file = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_sync_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_remap_file_range = private unnamed_addr constant [23 x i8] c"ocfs2_remap_file_range\00", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.45 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.57 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 1076910120, i64 1076910121, i64 1076910122, i64 1076910123]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 1076910120, i64 1076910121, i64 1076910122, i64 1076910123]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.65 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.73 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.81 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.83 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.86 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 260, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 450, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1195, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"ocfs2_fops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 2736, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"ocfs2_dops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 2756, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"ocfs2_fops_no_plocks\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 2783, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"ocfs2_dops_no_plocks\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 2802, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 271, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1322, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 963, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 717, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [19 x i8] c"../fs/ocfs2/file.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 61, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ocfs2_fops, ptr @ocfs2_dops, ptr @ocfs2_fops_no_plocks, ptr @ocfs2_dops_no_plocks, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ocfs2_init_file_private.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_fops_no_plocks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dops_no_plocks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_init_file_private.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_should_update_atime(ptr noundef %inode, ptr noundef readonly %vfsmnt) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %5, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %6 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osb_flags.i, align 8
  %and.i70 = and i32 %7, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool2.not = icmp eq i32 %and.i70, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %and6 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %16)
  %cmp = icmp eq i16 %16, 16384
  %cmp12 = icmp eq ptr %vfsmnt, null
  %or.cond = or i1 %cmp12, %cmp
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false4
  %cmp12.old = icmp eq ptr %vfsmnt, null
  br i1 %cmp12.old, label %if.end11.cleanup_crit_edge, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %vfsmnt, i32 0, i32 2
  %17 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mnt_flags, align 4
  %and16 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end15
  %and20 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false18.if.end29_crit_edge, label %land.lhs.true22

lor.lhs.false18.if.end29_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true22:                                  ; preds = %lor.lhs.false18
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %21 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp26 = icmp eq i16 %21, 16384
  br i1 %cmp26, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.end29_crit_edge

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true22.if.end29_crit_edge, %lor.lhs.false18.if.end29_crit_edge
  %and31 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end44, label %if.then33

if.then33:                                        ; preds = %if.end29
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %22 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_atime, align 8
  %24 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_mtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp.i = icmp slt i64 %23, %25
  br i1 %cmp.i, label %if.then33.cleanup_crit_edge, label %if.end.i

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp4.i = icmp sgt i64 %23, %25
  br i1 %cmp4.i, label %if.end.i.lor.lhs.false37_crit_edge, label %timespec64_compare.exit

if.end.i.lor.lhs.false37_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false37

timespec64_compare.exit:                          ; preds = %if.end.i
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %28 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec7.i, align 8
  %sub.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp35 = icmp slt i32 %sub.i, 1
  br i1 %cmp35, label %timespec64_compare.exit.cleanup_crit_edge, label %timespec64_compare.exit.lor.lhs.false37_crit_edge

timespec64_compare.exit.lor.lhs.false37_crit_edge: ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false37

timespec64_compare.exit.cleanup_crit_edge:        ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false37:                                  ; preds = %timespec64_compare.exit.lor.lhs.false37_crit_edge, %if.end.i.lor.lhs.false37_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %30 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %31)
  %cmp.i71 = icmp slt i64 %23, %31
  br i1 %cmp.i71, label %lor.lhs.false37.timespec64_compare.exit79.thread_crit_edge, label %if.end.i73

lor.lhs.false37.timespec64_compare.exit79.thread_crit_edge: ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_compare.exit79.thread

if.end.i73:                                       ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %31)
  %cmp4.i72 = icmp sgt i64 %23, %31
  br i1 %cmp4.i72, label %if.end.i73.cleanup_crit_edge, label %timespec64_compare.exit79

if.end.i73.cleanup_crit_edge:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

timespec64_compare.exit79:                        ; preds = %if.end.i73
  %tv_nsec.i74 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %32 = ptrtoint ptr %tv_nsec.i74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec.i74, align 8
  %tv_nsec7.i75 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %tv_nsec7.i75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_nsec7.i75, align 8
  %sub.i76 = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i76)
  %cmp40 = icmp slt i32 %sub.i76, 1
  br i1 %cmp40, label %timespec64_compare.exit79.timespec64_compare.exit79.thread_crit_edge, label %timespec64_compare.exit79.cleanup_crit_edge

timespec64_compare.exit79.cleanup_crit_edge:      ; preds = %timespec64_compare.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

timespec64_compare.exit79.timespec64_compare.exit79.thread_crit_edge: ; preds = %timespec64_compare.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_compare.exit79.thread

timespec64_compare.exit79.thread:                 ; preds = %timespec64_compare.exit79.timespec64_compare.exit79.thread_crit_edge, %lor.lhs.false37.timespec64_compare.exit79.thread_crit_edge
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #10
  %36 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %36)
  %now.sroa.0.0.copyload54 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %i_atime45 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %37 = ptrtoint ptr %i_atime45 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_atime45, align 8
  %sub = sub i64 %now.sroa.0.0.copyload54, %38
  %s_atime_quantum = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 29
  %39 = ptrtoint ptr %s_atime_quantum to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_atime_quantum, align 4
  %conv47 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv47)
  %cmp48.not = icmp sgt i64 %sub, %conv47
  %. = zext i1 %cmp48.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %timespec64_compare.exit79.thread, %timespec64_compare.exit79.cleanup_crit_edge, %if.end.i73.cleanup_crit_edge, %timespec64_compare.exit.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %land.lhs.true22.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 1, %timespec64_compare.exit.cleanup_crit_edge ], [ %., %if.end44 ], [ 1, %timespec64_compare.exit79.thread ], [ 0, %timespec64_compare.exit79.cleanup_crit_edge ], [ 1, %if.then33.cleanup_crit_edge ], [ 0, %if.end.i73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_update_inode_atime(ptr noundef %inode, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m35 = alloca i64, align 8
  %tmp46 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %call = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %call to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge81
    i32 524289, label %if.then.out_crit_edge82
    i32 -28, label %if.then.out_crit_edge83
    i32 -122, label %if.then.out_crit_edge84
  ]

if.then.out_crit_edge84:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge83:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge82:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge81:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %6 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_update_inode_atime, i32 noundef 260, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end13:                                         ; preds = %entry
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call15 = tail call i32 @ocfs2_journal_access_di(ptr noundef %call, ptr noundef %ip_metadata_cache.i, ptr noundef %bh, i32 noundef 1) #10
  %9 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call15, label %do.body34 [
    i32 0, label %if.end45
    i32 -512, label %if.end13.out_commit_crit_edge
    i32 -4, label %if.end13.out_commit_crit_edge85
    i32 524289, label %if.end13.out_commit_crit_edge86
    i32 -28, label %if.end13.out_commit_crit_edge87
    i32 -122, label %if.end13.out_commit_crit_edge88
  ]

if.end13.out_commit_crit_edge88:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end13.out_commit_crit_edge87:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end13.out_commit_crit_edge86:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end13.out_commit_crit_edge85:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end13.out_commit_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

do.body34:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #10
  %10 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m35, align 8
  %conv39 = sext i32 %call15 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.ocfs2_update_inode_atime, i32 noundef 267, ptr noundef nonnull @.str, i64 noundef %conv39) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #10
  br label %out_commit

if.end45:                                         ; preds = %if.end13
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp46) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp46, ptr noundef %inode) #10
  %11 = call ptr @memcpy(ptr %i_atime, ptr %tmp46, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp46) #10
  %12 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_atime, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %i_atime48 = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 13
  %15 = ptrtoint ptr %i_atime48 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %i_atime48, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %i_atime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 20
  %19 = ptrtoint ptr %i_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i_atime_nsec, align 4
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call, i32 0, i32 7
  %20 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %21 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end45.ocfs2_update_inode_fsync_trans.exit_crit_edge

if.end45.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

lor.lhs.false.i.i:                                ; preds = %if.end45
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %tobool1.not.i.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %and.i.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge

is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %30 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_sync_tid.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit

ocfs2_update_inode_fsync_trans.exit:              ; preds = %if.then.i, %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %if.end45.ocfs2_update_inode_fsync_trans.exit_crit_edge
  call void @ocfs2_journal_dirty(ptr noundef %call, ptr noundef %bh) #10
  br label %out_commit

out_commit:                                       ; preds = %ocfs2_update_inode_fsync_trans.exit, %do.body34, %if.end13.out_commit_crit_edge, %if.end13.out_commit_crit_edge85, %if.end13.out_commit_crit_edge86, %if.end13.out_commit_crit_edge87, %if.end13.out_commit_crit_edge88
  %call50 = call i32 @ocfs2_commit_trans(ptr noundef %3, ptr noundef %call) #10
  br label %out

out:                                              ; preds = %out_commit, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge81, %if.then.out_crit_edge82, %if.then.out_crit_edge83, %if.then.out_crit_edge84
  %ret.0 = phi i32 [ %call15, %out_commit ], [ %6, %if.then.out_crit_edge ], [ %6, %if.then.out_crit_edge81 ], [ %6, %if.then.out_crit_edge82 ], [ %6, %if.then.out_crit_edge83 ], [ %6, %if.then.out_crit_edge84 ], [ %6, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_set_inode_size(ptr noundef %handle, ptr noundef %inode, ptr noundef %fe_bh, i64 noundef %new_i_size) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %new_i_size)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i = add i32 %5, -9
  %ip_clusters.i = getelementptr i8, ptr %inode, i32 -176
  %6 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_clusters.i, align 8
  %conv.i = zext i32 %7 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %8 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl.i, ptr %i_blocks, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #10
  %9 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %call1 = call i32 @ocfs2_mark_inode_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef %fe_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.bail_crit_edge

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then:                                          ; preds = %entry
  %11 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call1, label %do.body [
    i32 -512, label %if.then.bail_crit_edge
    i32 -4, label %if.then.bail_crit_edge29
    i32 -28, label %if.then.bail_crit_edge30
    i32 -122, label %if.then.bail_crit_edge31
  ]

if.then.bail_crit_edge31:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then.bail_crit_edge30:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then.bail_crit_edge29:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then.bail_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_set_inode_size, i32 noundef 301, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

bail:                                             ; preds = %do.body, %if.then.bail_crit_edge, %if.then.bail_crit_edge29, %if.then.bail_crit_edge30, %if.then.bail_crit_edge31, %entry.bail_crit_edge
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !163
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !164
  %18 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !165
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !166
  %37 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !167

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #10
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #10
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  %48 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_simple_size_update(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %new_i_size) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m35 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %4, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge69
    i32 524289, label %if.then.out_crit_edge70
    i32 -28, label %if.then.out_crit_edge71
    i32 -122, label %if.then.out_crit_edge72
  ]

if.then.out_crit_edge72:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge71:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge70:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge69:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_simple_size_update, i32 noundef 320, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end13:                                         ; preds = %entry
  %call14 = tail call i32 @ocfs2_set_inode_size(ptr noundef %call, ptr noundef %inode, ptr noundef %di_bh, i64 noundef %new_i_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end13.if.end45_crit_edge

if.end13.if.end45_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then17:                                        ; preds = %if.end13
  %7 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call14, label %do.body34 [
    i32 -512, label %if.then17.if.end45_crit_edge
    i32 -4, label %if.then17.if.end45_crit_edge73
    i32 -28, label %if.then17.if.end45_crit_edge74
    i32 -122, label %if.then17.if.end45_crit_edge75
  ]

if.then17.if.end45_crit_edge75:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then17.if.end45_crit_edge74:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then17.if.end45_crit_edge73:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then17.if.end45_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.body34:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #10
  %8 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m35, align 8
  %conv39 = sext i32 %call14 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.ocfs2_simple_size_update, i32 noundef 327, ptr noundef nonnull @.str, i64 noundef %conv39) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #10
  br label %if.end45

if.end45:                                         ; preds = %do.body34, %if.then17.if.end45_crit_edge, %if.then17.if.end45_crit_edge73, %if.then17.if.end45_crit_edge74, %if.then17.if.end45_crit_edge75, %if.end13.if.end45_crit_edge
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %10 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end45.ocfs2_update_inode_fsync_trans.exit_crit_edge

if.end45.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

lor.lhs.false.i.i:                                ; preds = %if.end45
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and.i.i.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge

is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %19 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i_sync_tid.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit

ocfs2_update_inode_fsync_trans.exit:              ; preds = %if.then.i, %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %if.end45.ocfs2_update_inode_fsync_trans.exit_crit_edge
  %call46 = call i32 @ocfs2_commit_trans(ptr noundef %3, ptr noundef %call) #10
  br label %out

out:                                              ; preds = %ocfs2_update_inode_fsync_trans.exit, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge69, %if.then.out_crit_edge70, %if.then.out_crit_edge71, %if.then.out_crit_edge72
  %ret.0 = phi i32 [ %call14, %ocfs2_update_inode_fsync_trans.exit ], [ %4, %if.then.out_crit_edge ], [ %4, %if.then.out_crit_edge69 ], [ %4, %if.then.out_crit_edge70 ], [ %4, %if.then.out_crit_edge71 ], [ %4, %if.then.out_crit_edge72 ], [ %4, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_truncate_file(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %new_i_size) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m34.i = alloca i64, align 8
  %_m67.i = alloca i64, align 8
  %_m99.i = alloca i64, align 8
  %tmp110.i = alloca %struct.timespec64, align 8
  %_m = alloca i64, align 8
  %_m6 = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m80 = alloca i64, align 8
  %_m113 = alloca i64, align 8
  %_m149 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  tail call fastcc void @trace_ocfs2_truncate_file(i64 noundef %7, i64 noundef %10, i64 noundef %new_i_size)
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %call2)
  %cmp.not = icmp eq i64 %13, %call2
  br i1 %cmp.not, label %do.end25, label %do.body3

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_truncate_file, i32 noundef 456, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m6) #10
  %15 = ptrtoint ptr %_m6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m6, align 8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  %call12 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19)
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 12
  %21 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_flags, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m6, ptr noundef nonnull @__func__.ocfs2_truncate_file, i32 noundef 456, ptr noundef nonnull @.str.2, i64 noundef %17, i64 noundef %call12, i64 noundef %20, i32 noundef %23) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m6) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 456, 0\0A.popsection", ""() #10, !srcloc !171
  unreachable

do.end25:                                         ; preds = %entry
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %new_i_size)
  %cmp27 = icmp ult i64 %26, %new_i_size
  br i1 %cmp27, label %bail.thread, label %if.end48

bail.thread:                                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_ocfs2_truncate_file_error(i64 noundef %26, i64 noundef %new_i_size)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #10
  %27 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m40, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_truncate_file, i32 noundef 463, ptr noundef nonnull @.str, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #10
  br label %if.end169

if.end48:                                         ; preds = %do.end25
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  tail call void @down_write(ptr noundef %ip_alloc_sem) #10
  %osb_la_resmap = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 54
  %ip_la_data_resv = getelementptr i8, ptr %inode, i32 844
  tail call void @ocfs2_resv_discard(ptr noundef %osb_la_resmap, ptr noundef %ip_la_data_resv) #10
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %28 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ip_dyn_features, align 4
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool54.not = icmp eq i16 %30, 0
  br i1 %tobool54.not, label %if.end91, label %if.then55

if.then55:                                        ; preds = %if.end48
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %31 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping, align 8
  %sub = add i64 %new_i_size, 4095
  tail call void @unmap_mapping_range(ptr noundef %32, i64 noundef %sub, i64 noundef 0, i32 noundef 1) #10
  %33 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %34, i64 noundef %new_i_size) #10
  %conv57 = trunc i64 %new_i_size to i32
  %call58 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %conv59 = trunc i64 %call58 to i32
  %call60 = tail call i32 @ocfs2_truncate_inline(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %conv57, i32 noundef %conv59, i32 noundef 1) #10
  %35 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call60, label %do.body79 [
    i32 0, label %bail.thread250
    i32 -512, label %if.then55.bail_crit_edge
    i32 -4, label %if.then55.bail_crit_edge253
    i32 524289, label %if.then55.bail_crit_edge254
    i32 -28, label %if.then55.bail_crit_edge255
    i32 -122, label %if.then55.bail_crit_edge256
  ]

if.then55.bail_crit_edge256:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then55.bail_crit_edge255:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then55.bail_crit_edge254:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then55.bail_crit_edge253:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then55.bail_crit_edge:                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

bail.thread250:                                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %ip_alloc_sem) #10
  br label %land.lhs.true163

do.body79:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80) #10
  %36 = ptrtoint ptr %_m80 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m80, align 8
  %conv84 = sext i32 %call60 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80, ptr noundef nonnull @__func__.ocfs2_truncate_file, i32 noundef 487, ptr noundef nonnull @.str, i64 noundef %conv84) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80) #10
  br label %bail

if.end91:                                         ; preds = %if.end48
  %call.i = tail call fastcc i32 @ocfs2_cow_file_pos(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %new_i_size) #10
  %37 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call.i, label %do.body.i [
    i32 0, label %if.end12.i
    i32 -512, label %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge
    i32 -4, label %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge257
    i32 524289, label %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge258
    i32 -28, label %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge259
    i32 -122, label %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge260
  ]

if.end91.ocfs2_orphan_for_truncate.exit_crit_edge260: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.end91.ocfs2_orphan_for_truncate.exit_crit_edge259: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.end91.ocfs2_orphan_for_truncate.exit_crit_edge258: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.end91.ocfs2_orphan_for_truncate.exit_crit_edge257: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.end91.ocfs2_orphan_for_truncate.exit_crit_edge: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

do.body.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %38 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_orphan_for_truncate, i32 noundef 385, ptr noundef nonnull @.str, i64 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %ocfs2_orphan_for_truncate.exit

if.end12.i:                                       ; preds = %if.end91
  %call13.i = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 1) #10
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.i, label %if.end44.i

if.then15.i:                                      ; preds = %if.end12.i
  %39 = ptrtoint ptr %call13.i to i32
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %39, label %do.body33.i [
    i32 -512, label %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge
    i32 -4, label %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge261
    i32 524289, label %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge262
    i32 -28, label %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge263
    i32 -122, label %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge264
  ]

if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge264: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge263: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge262: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge261: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_orphan_for_truncate.exit

do.body33.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34.i) #10
  %41 = ptrtoint ptr %_m34.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606846976, ptr %_m34.i, align 8
  %conv38.i = sext i32 %39 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34.i, ptr noundef nonnull @__func__.ocfs2_orphan_for_truncate, i32 noundef 395, ptr noundef nonnull @.str, i64 noundef %conv38.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34.i) #10
  br label %ocfs2_orphan_for_truncate.exit

if.end44.i:                                       ; preds = %if.end12.i
  %ip_metadata_cache.i.i = getelementptr i8, ptr %inode, i32 -56
  %call46.i = tail call i32 @ocfs2_journal_access_di(ptr noundef %call13.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %di_bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.end77.i

if.then49.i:                                      ; preds = %if.end44.i
  %42 = zext i32 %call46.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call46.i, label %do.body66.i [
    i32 -512, label %if.then49.i.out_commit.i_crit_edge
    i32 -4, label %if.then49.i.out_commit.i_crit_edge265
    i32 -28, label %if.then49.i.out_commit.i_crit_edge266
    i32 -122, label %if.then49.i.out_commit.i_crit_edge267
  ]

if.then49.i.out_commit.i_crit_edge267:            ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.then49.i.out_commit.i_crit_edge266:            ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.then49.i.out_commit.i_crit_edge265:            ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.then49.i.out_commit.i_crit_edge:               ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

do.body66.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67.i) #10
  %43 = ptrtoint ptr %_m67.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606846976, ptr %_m67.i, align 8
  %conv71.i = sext i32 %call46.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67.i, ptr noundef nonnull @__func__.ocfs2_orphan_for_truncate, i32 noundef 402, ptr noundef nonnull @.str, i64 noundef %conv71.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67.i) #10
  br label %out_commit.i

if.end77.i:                                       ; preds = %if.end44.i
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %47, i32 0, i32 36
  %48 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_clustersize.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %47, i32 0, i32 35
  %50 = ptrtoint ptr %s_clustersize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_clustersize.i.i.i, align 4
  %sub.i.i.i = add i32 %51, -1
  %conv.i.i.i = sext i32 %sub.i.i.i to i64
  %add.i.i.i = add i64 %conv.i.i.i, %new_i_size
  %sh_prom.i.i.i = zext i32 %49 to i64
  %shr.i.i.i = lshr i64 %add.i.i.i, %sh_prom.i.i.i
  %conv.i.i = and i64 %shr.i.i.i, 4294967295
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i.i
  %call79.i = tail call i32 @ocfs2_zero_range_for_truncate(ptr noundef %inode, ptr noundef %call13.i, i64 noundef %new_i_size, i64 noundef %shl.i.i) #10
  %52 = zext i32 %call79.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call79.i, label %do.body98.i [
    i32 0, label %if.end109.i
    i32 -512, label %if.end77.i.out_commit.i_crit_edge
    i32 -4, label %if.end77.i.out_commit.i_crit_edge268
    i32 524289, label %if.end77.i.out_commit.i_crit_edge269
    i32 -28, label %if.end77.i.out_commit.i_crit_edge270
    i32 -122, label %if.end77.i.out_commit.i_crit_edge271
  ]

if.end77.i.out_commit.i_crit_edge271:             ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end77.i.out_commit.i_crit_edge270:             ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end77.i.out_commit.i_crit_edge269:             ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end77.i.out_commit.i_crit_edge268:             ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

if.end77.i.out_commit.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit.i

do.body98.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99.i) #10
  %53 = ptrtoint ptr %_m99.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1152921504606846976, ptr %_m99.i, align 8
  %conv103.i = sext i32 %call79.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m99.i, ptr noundef nonnull @__func__.ocfs2_orphan_for_truncate, i32 noundef 413, ptr noundef nonnull @.str, i64 noundef %conv103.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m99.i) #10
  br label %out_commit.i

if.end109.i:                                      ; preds = %if.end77.i
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %new_i_size) #10
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp110.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp110.i, ptr noundef %inode) #10
  %54 = call ptr @memcpy(ptr %i_mtime.i, ptr %tmp110.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp110.i) #10
  %55 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_mtime.i, i32 16)
  %56 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data, align 4
  %58 = call i64 @llvm.bswap.i64(i64 %new_i_size) #10
  %i_size.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %57, i32 0, i32 9
  %59 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %i_size.i, align 8
  %60 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_ctime.i, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %61) #10
  %i_mtime112.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %57, i32 0, i32 15
  %63 = ptrtoint ptr %i_mtime112.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %i_mtime112.i, align 8
  %i_ctime113.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %57, i32 0, i32 14
  %64 = ptrtoint ptr %i_ctime113.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %62, ptr %i_ctime113.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tv_nsec.i, align 8
  %67 = call i32 @llvm.bswap.i32(i32 %66) #10
  %i_mtime_nsec.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %57, i32 0, i32 22
  %68 = ptrtoint ptr %i_mtime_nsec.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %i_mtime_nsec.i, align 4
  %i_ctime_nsec.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %57, i32 0, i32 21
  %69 = ptrtoint ptr %i_ctime_nsec.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %i_ctime_nsec.i, align 8
  %h_aborted.i.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call13.i, i32 0, i32 7
  %70 = ptrtoint ptr %h_aborted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load.i.i.i = load i32, ptr %h_aborted.i.i.i, align 4
  %71 = and i32 %bf.load.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end109.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge

if.end109.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit.i

lor.lhs.false.i.i.i:                              ; preds = %if.end109.i
  %72 = ptrtoint ptr %call13.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call13.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %73, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, label %is_handle_aborted.exit.i.i

lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit.i

is_handle_aborted.exit.i.i:                       ; preds = %lor.lhs.false.i.i.i
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %and.i.i.i.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge

is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit.i

if.then.i.i:                                      ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i.i = getelementptr inbounds %struct.transaction_s, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %t_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %t_tid.i.i, align 4
  %i_sync_tid.i.i = getelementptr i8, ptr %inode, i32 884
  %80 = ptrtoint ptr %i_sync_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %i_sync_tid.i.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit.i

ocfs2_update_inode_fsync_trans.exit.i:            ; preds = %if.then.i.i, %is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, %lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, %if.end109.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge
  call void @ocfs2_journal_dirty(ptr noundef %call13.i, ptr noundef %di_bh) #10
  br label %out_commit.i

out_commit.i:                                     ; preds = %ocfs2_update_inode_fsync_trans.exit.i, %do.body98.i, %if.end77.i.out_commit.i_crit_edge, %if.end77.i.out_commit.i_crit_edge268, %if.end77.i.out_commit.i_crit_edge269, %if.end77.i.out_commit.i_crit_edge270, %if.end77.i.out_commit.i_crit_edge271, %do.body66.i, %if.then49.i.out_commit.i_crit_edge, %if.then49.i.out_commit.i_crit_edge265, %if.then49.i.out_commit.i_crit_edge266, %if.then49.i.out_commit.i_crit_edge267
  %status.0.i = phi i32 [ 0, %ocfs2_update_inode_fsync_trans.exit.i ], [ %call46.i, %if.then49.i.out_commit.i_crit_edge ], [ %call46.i, %if.then49.i.out_commit.i_crit_edge265 ], [ %call46.i, %if.then49.i.out_commit.i_crit_edge266 ], [ %call46.i, %if.then49.i.out_commit.i_crit_edge267 ], [ %call46.i, %do.body66.i ], [ %call79.i, %if.end77.i.out_commit.i_crit_edge ], [ %call79.i, %if.end77.i.out_commit.i_crit_edge268 ], [ %call79.i, %if.end77.i.out_commit.i_crit_edge269 ], [ %call79.i, %if.end77.i.out_commit.i_crit_edge270 ], [ %call79.i, %if.end77.i.out_commit.i_crit_edge271 ], [ %call79.i, %do.body98.i ]
  %call115.i = call i32 @ocfs2_commit_trans(ptr noundef %3, ptr noundef %call13.i) #10
  br label %ocfs2_orphan_for_truncate.exit

ocfs2_orphan_for_truncate.exit:                   ; preds = %out_commit.i, %do.body33.i, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge261, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge262, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge263, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge264, %do.body.i, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge257, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge258, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge259, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge260
  %retval.0.i = phi i32 [ %call.i, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge ], [ %call.i, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge257 ], [ %call.i, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge258 ], [ %call.i, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge259 ], [ %call.i, %if.end91.ocfs2_orphan_for_truncate.exit_crit_edge260 ], [ %call.i, %do.body.i ], [ %status.0.i, %out_commit.i ], [ %39, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge ], [ %39, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge261 ], [ %39, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge262 ], [ %39, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge263 ], [ %39, %if.then15.i.ocfs2_orphan_for_truncate.exit_crit_edge264 ], [ %39, %do.body33.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp93 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp93, label %if.then95, label %if.end123

if.then95:                                        ; preds = %ocfs2_orphan_for_truncate.exit
  %81 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %retval.0.i, label %do.body112 [
    i32 -512, label %if.then95.bail.thread247_crit_edge
    i32 -4, label %if.then95.bail.thread247_crit_edge272
    i32 -28, label %if.then95.bail.thread247_crit_edge273
    i32 -122, label %if.then95.bail.thread247_crit_edge274
  ]

if.then95.bail.thread247_crit_edge274:            ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

if.then95.bail.thread247_crit_edge273:            ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

if.then95.bail.thread247_crit_edge272:            ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

if.then95.bail.thread247_crit_edge:               ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

do.body112:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113) #10
  %82 = ptrtoint ptr %_m113 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 1152921504606846976, ptr %_m113, align 8
  %conv117 = sext i32 %retval.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113, ptr noundef nonnull @__func__.ocfs2_truncate_file, i32 noundef 498, ptr noundef nonnull @.str, i64 noundef %conv117) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113) #10
  br label %bail.thread247

if.end123:                                        ; preds = %ocfs2_orphan_for_truncate.exit
  %i_mapping124 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %83 = ptrtoint ptr %i_mapping124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_mapping124, align 8
  %sub126 = add i64 %new_i_size, 4095
  call void @unmap_mapping_range(ptr noundef %84, i64 noundef %sub126, i64 noundef 0, i32 noundef 1) #10
  %85 = ptrtoint ptr %i_mapping124 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_mapping124, align 8
  call void @truncate_inode_pages(ptr noundef %86, i64 noundef %new_i_size) #10
  %call128 = call i32 @ocfs2_commit_truncate(ptr noundef %3, ptr noundef %inode, ptr noundef %di_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then131, label %if.end123.bail_crit_edge

if.end123.bail_crit_edge:                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then131:                                       ; preds = %if.end123
  %87 = zext i32 %call128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call128, label %do.body148 [
    i32 -512, label %if.then131.bail.thread247_crit_edge
    i32 -4, label %if.then131.bail.thread247_crit_edge275
    i32 -28, label %if.then131.bail.thread247_crit_edge276
    i32 -122, label %if.then131.bail.thread247_crit_edge277
  ]

if.then131.bail.thread247_crit_edge277:           ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

if.then131.bail.thread247_crit_edge276:           ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

if.then131.bail.thread247_crit_edge275:           ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

if.then131.bail.thread247_crit_edge:              ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.thread247

do.body148:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149) #10
  %88 = ptrtoint ptr %_m149 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 1152921504606846976, ptr %_m149, align 8
  %conv153 = sext i32 %call128 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149, ptr noundef nonnull @__func__.ocfs2_truncate_file, i32 noundef 507, ptr noundef nonnull @.str, i64 noundef %conv153) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149) #10
  br label %bail.thread247

bail.thread247:                                   ; preds = %do.body148, %if.then131.bail.thread247_crit_edge, %if.then131.bail.thread247_crit_edge275, %if.then131.bail.thread247_crit_edge276, %if.then131.bail.thread247_crit_edge277, %do.body112, %if.then95.bail.thread247_crit_edge, %if.then95.bail.thread247_crit_edge272, %if.then95.bail.thread247_crit_edge273, %if.then95.bail.thread247_crit_edge274
  %status.0.ph = phi i32 [ %call128, %do.body148 ], [ %call128, %if.then131.bail.thread247_crit_edge ], [ %call128, %if.then131.bail.thread247_crit_edge275 ], [ %call128, %if.then131.bail.thread247_crit_edge276 ], [ %call128, %if.then131.bail.thread247_crit_edge277 ], [ %retval.0.i, %do.body112 ], [ %retval.0.i, %if.then95.bail.thread247_crit_edge ], [ %retval.0.i, %if.then95.bail.thread247_crit_edge272 ], [ %retval.0.i, %if.then95.bail.thread247_crit_edge273 ], [ %retval.0.i, %if.then95.bail.thread247_crit_edge274 ]
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  br label %if.end169

bail:                                             ; preds = %if.end123.bail_crit_edge, %do.body79, %if.then55.bail_crit_edge, %if.then55.bail_crit_edge253, %if.then55.bail_crit_edge254, %if.then55.bail_crit_edge255, %if.then55.bail_crit_edge256
  %status.0 = phi i32 [ %call128, %if.end123.bail_crit_edge ], [ %call60, %if.then55.bail_crit_edge ], [ %call60, %if.then55.bail_crit_edge253 ], [ %call60, %if.then55.bail_crit_edge254 ], [ %call60, %if.then55.bail_crit_edge255 ], [ %call60, %if.then55.bail_crit_edge256 ], [ %call60, %do.body79 ]
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool162.not = icmp eq i32 %status.0, 0
  br i1 %tobool162.not, label %bail.land.lhs.true163_crit_edge, label %bail.if.end169_crit_edge

bail.if.end169_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

bail.land.lhs.true163_crit_edge:                  ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true163

land.lhs.true163:                                 ; preds = %bail.land.lhs.true163_crit_edge, %bail.thread250
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %89 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ip_clusters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp165 = icmp eq i32 %90, 0
  br i1 %cmp165, label %if.then167, label %land.lhs.true163.if.end169_crit_edge

land.lhs.true163.if.end169_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then167:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #12
  %call168 = call i32 @ocfs2_try_remove_refcount_tree(ptr noundef %inode, ptr noundef %di_bh) #10
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %land.lhs.true163.if.end169_crit_edge, %bail.if.end169_crit_edge, %bail.thread247, %bail.thread
  %status.2 = phi i32 [ %status.0, %bail.if.end169_crit_edge ], [ %call168, %if.then167 ], [ 0, %land.lhs.true163.if.end169_crit_edge ], [ -22, %bail.thread ], [ %status.0.ph, %bail.thread247 ]
  ret i32 %status.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_truncate_file(i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_truncate_file, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_truncate_file, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !173
  %call42 = tail call i32 @__traceiter_ocfs2_truncate_file(ptr noundef null, i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !174
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_truncate_file, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_truncate_file, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_truncate_file.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_truncate_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1322, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !177
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !178
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !179

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !180
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !182
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !183
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !184
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_truncate_file_error(i64 noundef %val1, i64 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_truncate_file_error, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_truncate_file_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !185
  %call42 = tail call i32 @__traceiter_ocfs2_truncate_file_error(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !186
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_truncate_file_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_truncate_file_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_truncate_file_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_truncate_file_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1324, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resv_discard(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_truncate_inline(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_truncate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_try_remove_refcount_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_add_inode_data(ptr nocapture readnone %osb, ptr noundef %inode, ptr noundef %logical_offset, i32 noundef %clusters_to_add, i32 noundef %mark_unwritten, ptr noundef %fe_bh, ptr noundef %handle, ptr noundef %data_ac, ptr noundef %meta_ac, ptr noundef %reason_ret) local_unnamed_addr #0 align 64 {
entry:
  %et = alloca %struct.ocfs2_extent_tree, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et) #10
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %0 = call ptr @memset(ptr %et, i32 255, i32 32)
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et, ptr noundef %ip_metadata_cache.i, ptr noundef %fe_bh) #10
  %call1 = call i32 @ocfs2_add_clusters_in_btree(ptr noundef %handle, ptr noundef nonnull %et, ptr noundef %logical_offset, i32 noundef %clusters_to_add, i32 noundef %mark_unwritten, ptr noundef %data_ac, ptr noundef %meta_ac, ptr noundef %reason_ret) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_init_dinode_extent_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_add_clusters_in_btree(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_zero_extend(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %zero_to_size) local_unnamed_addr #0 align 64 {
entry:
  %_m.i92 = alloca i64, align 8
  %p_cpos.i = alloca i32, align 4
  %num_clusters.i = alloca i32, align 4
  %ext_flags.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m62.i = alloca i64, align 8
  %_m111.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m49 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %3, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add i64 %call, %conv.i.i
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %5 to i64
  %6 = shl nsw i64 -1, %sh_prom.i.i
  %shl.i = and i64 %6, %add.i.i
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  tail call fastcc void @trace_ocfs2_zero_extend(i64 noundef %8, i64 noundef %shl.i, i64 noundef %call3)
  br label %while.cond

while.cond:                                       ; preds = %ocfs2_zero_extend_range.exit.while.cond_crit_edge, %entry
  %range_start.0 = phi i64 [ 0, %entry ], [ %48, %ocfs2_zero_extend_range.exit.while.cond_crit_edge ]
  %range_end.0 = phi i64 [ 0, %entry ], [ %49, %ocfs2_zero_extend_range.exit.while.cond_crit_edge ]
  %zero_start.0 = phi i64 [ %shl.i, %entry ], [ %49, %ocfs2_zero_extend_range.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %zero_start.0, i64 %zero_to_size)
  %cmp = icmp ult i64 %zero_start.0, %zero_to_size
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_cpos.i) #10
  %9 = ptrtoint ptr %p_cpos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %p_cpos.i, align 4, !annotation !187
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_clustersize_bits.i, align 8
  %sh_prom.i = zext i32 %15 to i64
  %shr.i = lshr i64 %zero_start.0, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %s_clustersize.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 35
  %16 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_clustersize.i.i, align 4
  %sub.i.i89 = add i32 %17, -1
  %conv.i.i90 = sext i32 %sub.i.i89 to i64
  %add.i.i91 = add i64 %conv.i.i90, %zero_to_size
  %shr.i.i = lshr i64 %add.i.i91, %sh_prom.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_clusters.i) #10
  %18 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %num_clusters.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_flags.i) #10
  %19 = ptrtoint ptr %ext_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ext_flags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i.i)
  %cmp204.i = icmp ult i32 %conv.i, %conv2.i.i
  br i1 %cmp204.i, label %while.body.while.body.i_crit_edge, label %while.body.ocfs2_zero_extend_get_range.exit.thread_crit_edge

while.body.ocfs2_zero_extend_get_range.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit.thread

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %zero_cpos.0205.i = phi i32 [ %add.i, %if.end32.i.while.body.i_crit_edge ], [ %conv.i, %while.body.while.body.i_crit_edge ]
  %call3.i = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %zero_cpos.0205.i, ptr noundef nonnull %p_cpos.i, ptr noundef nonnull %num_clusters.i, ptr noundef nonnull %ext_flags.i) #10
  %20 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call3.i, label %do.body.i [
    i32 0, label %if.end22.i
    i32 -512, label %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge
    i32 -4, label %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge177
    i32 524289, label %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge178
    i32 -28, label %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge179
    i32 -122, label %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge180
  ]

while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge180: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge179: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge178: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge177: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

do.body.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %21 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv20.i = sext i32 %call3.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_zero_extend_get_range, i32 noundef 878, ptr noundef nonnull @.str, i64 noundef %conv20.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %ocfs2_zero_extend_get_range.exit

if.end22.i:                                       ; preds = %while.body.i
  %22 = ptrtoint ptr %p_cpos.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_cpos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not.i = icmp eq i32 %23, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end32.i_crit_edge, label %land.lhs.true24.i

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.lhs.true24.i:                                ; preds = %if.end22.i
  %24 = ptrtoint ptr %ext_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ext_flags.i, align 4
  %and25.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %while.end.i, label %land.lhs.true24.i.if.end32.i_crit_edge

land.lhs.true24.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %land.lhs.true24.i.if.end32.i_crit_edge, %if.end22.i.if.end32.i_crit_edge
  %26 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_clusters.i, align 4
  %add.i = add i32 %27, %zero_cpos.0205.i
  %cmp.i = icmp ult i32 %add.i, %conv2.i.i
  br i1 %cmp.i, label %if.end32.i.while.body.i_crit_edge, label %if.end32.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge

if.end32.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit.thread

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %land.lhs.true24.i
  %28 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_clusters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool33.not.i = icmp eq i32 %29, 0
  br i1 %tobool33.not.i, label %while.end.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge, label %while.cond36.preheader.i

while.end.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit.thread

while.cond36.preheader.i:                         ; preds = %while.end.i
  %and28.i = lshr i32 %25, 1
  %and28.lobit.i = and i32 %and28.i, 1
  %add37207.i = add i32 %29, %zero_cpos.0205.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add37207.i, i32 %conv2.i.i)
  %cmp38208.i = icmp ult i32 %add37207.i, %conv2.i.i
  br i1 %cmp38208.i, label %while.cond36.preheader.i.while.body40.i_crit_edge, label %while.cond36.preheader.i.while.end83.i_crit_edge

while.cond36.preheader.i.while.end83.i_crit_edge: ; preds = %while.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end83.i

while.cond36.preheader.i.while.body40.i_crit_edge: ; preds = %while.cond36.preheader.i
  br label %while.body40.i

while.body40.i:                                   ; preds = %if.end77.i.while.body40.i_crit_edge, %while.cond36.preheader.i.while.body40.i_crit_edge
  %add37211.i = phi i32 [ %add37.i, %if.end77.i.while.body40.i_crit_edge ], [ %add37207.i, %while.cond36.preheader.i.while.body40.i_crit_edge ]
  %needs_cow.1210.i = phi i32 [ %spec.select177.i, %if.end77.i.while.body40.i_crit_edge ], [ %and28.lobit.i, %while.cond36.preheader.i.while.body40.i_crit_edge ]
  %zero_clusters.1209.i = phi i32 [ %add82.i, %if.end77.i.while.body40.i_crit_edge ], [ %29, %while.cond36.preheader.i.while.body40.i_crit_edge ]
  %call42.i = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %add37211.i, ptr noundef nonnull %p_cpos.i, ptr noundef nonnull %num_clusters.i, ptr noundef nonnull %ext_flags.i) #10
  %30 = zext i32 %call42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call42.i, label %do.body61.i [
    i32 0, label %if.end72.i
    i32 -512, label %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge
    i32 -4, label %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge181
    i32 524289, label %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge182
    i32 -28, label %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge183
    i32 -122, label %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge184
  ]

while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge184: ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge183: ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge182: ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge181: ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge: ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

do.body61.i:                                      ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62.i) #10
  %31 = ptrtoint ptr %_m62.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m62.i, align 8
  %conv66.i = sext i32 %call42.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62.i, ptr noundef nonnull @__func__.ocfs2_zero_extend_get_range, i32 noundef 901, ptr noundef nonnull @.str, i64 noundef %conv66.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62.i) #10
  br label %ocfs2_zero_extend_get_range.exit

if.end72.i:                                       ; preds = %while.body40.i
  %32 = ptrtoint ptr %p_cpos.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p_cpos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool73.not.i = icmp eq i32 %33, 0
  br i1 %tobool73.not.i, label %if.end72.i.while.end83.i_crit_edge, label %lor.lhs.false.i

if.end72.i.while.end83.i_crit_edge:               ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end83.i

lor.lhs.false.i:                                  ; preds = %if.end72.i
  %34 = ptrtoint ptr %ext_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ext_flags.i, align 4
  %and74.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %lor.lhs.false.i.while.end83.i_crit_edge

lor.lhs.false.i.while.end83.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end83.i

if.end77.i:                                       ; preds = %lor.lhs.false.i
  %and78.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  %spec.select177.i = select i1 %tobool79.not.i, i32 %needs_cow.1210.i, i32 1
  %36 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clusters.i, align 4
  %add82.i = add i32 %37, %zero_clusters.1209.i
  %add37.i = add i32 %add82.i, %zero_cpos.0205.i
  %cmp38.i = icmp ult i32 %add37.i, %conv2.i.i
  br i1 %cmp38.i, label %if.end77.i.while.body40.i_crit_edge, label %if.end77.i.while.end83.i_crit_edge

if.end77.i.while.end83.i_crit_edge:               ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end83.i

if.end77.i.while.body40.i_crit_edge:              ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body40.i

while.end83.i:                                    ; preds = %if.end77.i.while.end83.i_crit_edge, %lor.lhs.false.i.while.end83.i_crit_edge, %if.end72.i.while.end83.i_crit_edge, %while.cond36.preheader.i.while.end83.i_crit_edge
  %zero_clusters.1.lcssa.i = phi i32 [ %29, %while.cond36.preheader.i.while.end83.i_crit_edge ], [ %add82.i, %if.end77.i.while.end83.i_crit_edge ], [ %zero_clusters.1209.i, %lor.lhs.false.i.while.end83.i_crit_edge ], [ %zero_clusters.1209.i, %if.end72.i.while.end83.i_crit_edge ]
  %needs_cow.1.lcssa.i = phi i32 [ %and28.lobit.i, %while.cond36.preheader.i.while.end83.i_crit_edge ], [ %spec.select177.i, %if.end77.i.while.end83.i_crit_edge ], [ %needs_cow.1210.i, %lor.lhs.false.i.while.end83.i_crit_edge ], [ %needs_cow.1210.i, %if.end72.i.while.end83.i_crit_edge ]
  %add37.lcssa.i = phi i32 [ %add37207.i, %while.cond36.preheader.i.while.end83.i_crit_edge ], [ %add37.i, %if.end77.i.while.end83.i_crit_edge ], [ %add37211.i, %lor.lhs.false.i.while.end83.i_crit_edge ], [ %add37211.i, %if.end72.i.while.end83.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.lcssa.i, i32 %conv2.i.i)
  %cmp85.i = icmp ugt i32 %add37.lcssa.i, %conv2.i.i
  %sub.i = sub i32 %conv2.i.i, %zero_cpos.0205.i
  %spec.select178.i = select i1 %cmp85.i, i32 %sub.i, i32 %zero_clusters.1.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needs_cow.1.lcssa.i)
  %tobool89.not.i = icmp eq i32 %needs_cow.1.lcssa.i, 0
  br i1 %tobool89.not.i, label %while.end83.i.if.end122.i_crit_edge, label %if.then90.i

while.end83.i.if.end122.i_crit_edge:              ; preds = %while.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

if.then90.i:                                      ; preds = %while.end83.i
  %call91.i = call i32 @ocfs2_refcount_cow(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %zero_cpos.0205.i, i32 noundef %spec.select178.i, i32 noundef -1) #10
  %38 = zext i32 %call91.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call91.i, label %do.body110.i [
    i32 0, label %if.then90.i.if.end122.i_crit_edge
    i32 -512, label %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge
    i32 -4, label %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge185
    i32 524289, label %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge186
    i32 -28, label %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge187
    i32 -122, label %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge188
  ]

if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge188: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge187: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge186: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge185: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_get_range.exit

if.then90.i.if.end122.i_crit_edge:                ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

do.body110.i:                                     ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m111.i) #10
  %39 = ptrtoint ptr %_m111.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m111.i, align 8
  %conv115.i = sext i32 %call91.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m111.i, ptr noundef nonnull @__func__.ocfs2_zero_extend_get_range, i32 noundef 918, ptr noundef nonnull @.str, i64 noundef %conv115.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m111.i) #10
  br label %ocfs2_zero_extend_get_range.exit

if.end122.i:                                      ; preds = %if.then90.i.if.end122.i_crit_edge, %while.end83.i.if.end122.i_crit_edge
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %conv.i179.i = zext i32 %zero_cpos.0205.i to i64
  %s_fs_info.i180.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i180.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i180.i, align 16
  %s_clustersize_bits.i181.i = getelementptr inbounds %struct.ocfs2_super, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %s_clustersize_bits.i181.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_clustersize_bits.i181.i, align 8
  %sh_prom.i182.i = zext i32 %45 to i64
  %shl.i.i = shl i64 %conv.i179.i, %sh_prom.i182.i
  %add126.i = add i32 %spec.select178.i, %zero_cpos.0205.i
  %conv.i183.i = zext i32 %add126.i to i64
  %shl.i187.i = shl i64 %conv.i183.i, %sh_prom.i182.i
  br label %ocfs2_zero_extend_get_range.exit.thread

ocfs2_zero_extend_get_range.exit.thread:          ; preds = %if.end122.i, %while.end.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge, %if.end32.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge, %while.body.ocfs2_zero_extend_get_range.exit.thread_crit_edge
  %range_start.1.ph = phi i64 [ %range_start.0, %while.body.ocfs2_zero_extend_get_range.exit.thread_crit_edge ], [ %range_start.0, %while.end.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge ], [ %shl.i.i, %if.end122.i ], [ %range_start.0, %if.end32.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge ]
  %range_end.1.ph = phi i64 [ 0, %while.body.ocfs2_zero_extend_get_range.exit.thread_crit_edge ], [ 0, %while.end.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge ], [ %shl.i187.i, %if.end122.i ], [ 0, %if.end32.i.ocfs2_zero_extend_get_range.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_cpos.i) #10
  br label %if.end17

ocfs2_zero_extend_get_range.exit:                 ; preds = %do.body110.i, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge185, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge186, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge187, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge188, %do.body61.i, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge181, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge182, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge183, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge184, %do.body.i, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge177, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge178, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge179, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge180
  %rc.5.i = phi i32 [ %call3.i, %do.body.i ], [ %call42.i, %do.body61.i ], [ %call91.i, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge ], [ %call91.i, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge185 ], [ %call91.i, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge186 ], [ %call91.i, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge187 ], [ %call91.i, %if.then90.i.ocfs2_zero_extend_get_range.exit_crit_edge188 ], [ %call91.i, %do.body110.i ], [ %call42.i, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge ], [ %call42.i, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge181 ], [ %call42.i, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge182 ], [ %call42.i, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge183 ], [ %call42.i, %while.body40.i.ocfs2_zero_extend_get_range.exit_crit_edge184 ], [ %call3.i, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge ], [ %call3.i, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge177 ], [ %call3.i, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge178 ], [ %call3.i, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge179 ], [ %call3.i, %while.body.i.ocfs2_zero_extend_get_range.exit_crit_edge180 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_cpos.i) #10
  %46 = zext i32 %rc.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %rc.5.i, label %do.body [
    i32 0, label %ocfs2_zero_extend_get_range.exit.if.end17_crit_edge
    i32 -512, label %ocfs2_zero_extend_get_range.exit.while.end_crit_edge
    i32 -4, label %ocfs2_zero_extend_get_range.exit.while.end_crit_edge189
    i32 524289, label %ocfs2_zero_extend_get_range.exit.while.end_crit_edge190
    i32 -28, label %ocfs2_zero_extend_get_range.exit.while.end_crit_edge191
    i32 -122, label %ocfs2_zero_extend_get_range.exit.while.end_crit_edge192
  ]

ocfs2_zero_extend_get_range.exit.while.end_crit_edge192: ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_get_range.exit.while.end_crit_edge191: ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_get_range.exit.while.end_crit_edge190: ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_get_range.exit.while.end_crit_edge189: ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_get_range.exit.while.end_crit_edge: ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_get_range.exit.if.end17_crit_edge: ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body:                                          ; preds = %ocfs2_zero_extend_get_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %47 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %rc.5.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_zero_extend, i32 noundef 986, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %while.end

if.end17:                                         ; preds = %ocfs2_zero_extend_get_range.exit.if.end17_crit_edge, %ocfs2_zero_extend_get_range.exit.thread
  %range_end.1106 = phi i64 [ %range_end.1.ph, %ocfs2_zero_extend_get_range.exit.thread ], [ %range_end.0, %ocfs2_zero_extend_get_range.exit.if.end17_crit_edge ]
  %range_start.1105 = phi i64 [ %range_start.1.ph, %ocfs2_zero_extend_get_range.exit.thread ], [ %range_start.0, %ocfs2_zero_extend_get_range.exit.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %range_end.1106)
  %tobool18.not = icmp eq i64 %range_end.1106, 0
  br i1 %tobool18.not, label %if.end17.while.end_crit_edge, label %if.end20

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end20:                                         ; preds = %if.end17
  %48 = call i64 @llvm.umax.i64(i64 %range_start.1105, i64 %zero_start.0)
  %49 = call i64 @llvm.umin.i64(i64 %range_end.1106, i64 %zero_to_size)
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_zero_extend_range(i64 noundef %51, i64 noundef %48, i64 noundef %49) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %49)
  %cmp.not.i = icmp ult i64 %48, %49
  br i1 %cmp.not.i, label %if.end20.while.body.i94_crit_edge, label %do.body2.i, !prof !167

if.end20.while.body.i94_crit_edge:                ; preds = %if.end20
  br label %while.body.i94

do.body2.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

while.body.i94:                                   ; preds = %if.end32.i96.while.body.i94_crit_edge, %if.end20.while.body.i94_crit_edge
  %zero_pos.056.i = phi i64 [ %53, %if.end32.i96.while.body.i94_crit_edge ], [ %48, %if.end20.while.body.i94_crit_edge ]
  %52 = add i64 %zero_pos.056.i, 4096
  %add.i93 = and i64 %52, -4096
  %53 = call i64 @llvm.umin.i64(i64 %add.i93, i64 %49) #10
  %call12.i = call fastcc i32 @ocfs2_write_zero_page(ptr noundef %inode, i64 noundef %zero_pos.056.i, i64 noundef %53, ptr noundef %di_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end32.i96

if.then14.i:                                      ; preds = %while.body.i94
  %54 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call12.i, label %do.body24.i [
    i32 -512, label %if.then14.i.while.end_crit_edge
    i32 -4, label %if.then14.i.while.end_crit_edge193
    i32 -28, label %if.then14.i.while.end_crit_edge194
    i32 -122, label %if.then14.i.while.end_crit_edge195
  ]

if.then14.i.while.end_crit_edge195:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then14.i.while.end_crit_edge194:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then14.i.while.end_crit_edge193:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then14.i.while.end_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body24.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i92) #10
  %55 = ptrtoint ptr %_m.i92 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m.i92, align 8
  %conv.i95 = sext i32 %call12.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i92, ptr noundef nonnull @__func__.ocfs2_zero_extend_range, i32 noundef 954, ptr noundef nonnull @.str, i64 noundef %conv.i95) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i92) #10
  br label %ocfs2_zero_extend_range.exit

if.end32.i96:                                     ; preds = %while.body.i94
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 963, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  %cmp8.i = icmp ult i64 %add.i93, %49
  br i1 %cmp8.i, label %if.end32.i96.while.body.i94_crit_edge, label %if.end32.i96.ocfs2_zero_extend_range.exit_crit_edge

if.end32.i96.ocfs2_zero_extend_range.exit_crit_edge: ; preds = %if.end32.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_extend_range.exit

if.end32.i96.while.body.i94_crit_edge:            ; preds = %if.end32.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i94

ocfs2_zero_extend_range.exit:                     ; preds = %if.end32.i96.ocfs2_zero_extend_range.exit_crit_edge, %do.body24.i
  %56 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call12.i, label %do.body48 [
    i32 0, label %ocfs2_zero_extend_range.exit.while.cond_crit_edge
    i32 -512, label %ocfs2_zero_extend_range.exit.while.end_crit_edge
    i32 -4, label %ocfs2_zero_extend_range.exit.while.end_crit_edge196
    i32 524289, label %ocfs2_zero_extend_range.exit.while.end_crit_edge197
    i32 -28, label %ocfs2_zero_extend_range.exit.while.end_crit_edge198
    i32 -122, label %ocfs2_zero_extend_range.exit.while.end_crit_edge199
  ]

ocfs2_zero_extend_range.exit.while.end_crit_edge199: ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_range.exit.while.end_crit_edge198: ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_range.exit.while.end_crit_edge197: ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_range.exit.while.end_crit_edge196: ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_range.exit.while.end_crit_edge: ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

ocfs2_zero_extend_range.exit.while.cond_crit_edge: ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body48:                                        ; preds = %ocfs2_zero_extend_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #10
  %57 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m49, align 8
  %conv53 = sext i32 %call12.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.ocfs2_zero_extend, i32 noundef 1000, ptr noundef nonnull @.str, i64 noundef %conv53) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #10
  br label %while.end

while.end:                                        ; preds = %do.body48, %ocfs2_zero_extend_range.exit.while.end_crit_edge, %ocfs2_zero_extend_range.exit.while.end_crit_edge196, %ocfs2_zero_extend_range.exit.while.end_crit_edge197, %ocfs2_zero_extend_range.exit.while.end_crit_edge198, %ocfs2_zero_extend_range.exit.while.end_crit_edge199, %if.then14.i.while.end_crit_edge, %if.then14.i.while.end_crit_edge193, %if.then14.i.while.end_crit_edge194, %if.then14.i.while.end_crit_edge195, %if.end17.while.end_crit_edge, %do.body, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge189, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge190, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge191, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge192, %while.cond.while.end_crit_edge
  %ret.1 = phi i32 [ %rc.5.i, %do.body ], [ %call12.i, %do.body48 ], [ %call12.i, %if.then14.i.while.end_crit_edge ], [ %call12.i, %if.then14.i.while.end_crit_edge193 ], [ %call12.i, %if.then14.i.while.end_crit_edge194 ], [ %call12.i, %if.then14.i.while.end_crit_edge195 ], [ %call12.i, %ocfs2_zero_extend_range.exit.while.end_crit_edge ], [ %call12.i, %ocfs2_zero_extend_range.exit.while.end_crit_edge196 ], [ %call12.i, %ocfs2_zero_extend_range.exit.while.end_crit_edge197 ], [ %call12.i, %ocfs2_zero_extend_range.exit.while.end_crit_edge198 ], [ %call12.i, %ocfs2_zero_extend_range.exit.while.end_crit_edge199 ], [ %rc.5.i, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge ], [ %rc.5.i, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge189 ], [ %rc.5.i, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge190 ], [ %rc.5.i, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge191 ], [ %rc.5.i, %ocfs2_zero_extend_get_range.exit.while.end_crit_edge192 ], [ 0, %while.cond.while.end_crit_edge ], [ 0, %if.end17.while.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_zero_extend(i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_extend, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_zero_extend, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !189
  %call42 = tail call i32 @__traceiter_ocfs2_zero_extend(ptr noundef null, i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_extend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_extend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_zero_extend.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_zero_extend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1404, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
define dso_local i32 @ocfs2_extend_no_holes(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %new_i_size, i64 noundef %zero_to) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m83 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %di_bh, null
  br i1 %tobool.not, label %land.rhs, label %entry.do.end32_crit_edge

entry.do.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.rhs:                                         ; preds = %entry
  %ip_dyn_features.i = getelementptr i8, ptr %inode, i32 -172
  %0 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ip_dyn_features.i, align 4
  %2 = and i16 %1, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %land.rhs12.critedge, label %do.body4, !prof !167

do.body4:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1020, 0\0A.popsection", ""() #10, !srcloc !191
  unreachable

land.rhs12.critedge:                              ; preds = %land.rhs
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %3 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ip_flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body24, label %land.rhs12.critedge.do.end32_crit_edge, !prof !179

land.rhs12.critedge.do.end32_crit_edge:           ; preds = %land.rhs12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.body24:                                        ; preds = %land.rhs12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1021, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end32:                                         ; preds = %land.rhs12.critedge.do.end32_crit_edge, %entry.do.end32_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 36
  %9 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 35
  %11 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %12, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %conv.i, %new_i_size
  %sh_prom.i = zext i32 %10 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %13 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip_clusters, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv2.i)
  %tobool37.not.not = icmp ult i32 %14, %conv2.i
  br i1 %tobool37.not.not, label %if.then38, label %do.end32.if.end61_crit_edge

do.end32.if.end61_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then38:                                        ; preds = %do.end32
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %conv2.i, i32 %14)
  %call40 = tail call fastcc i32 @ocfs2_extend_allocation(ptr noundef %inode, i32 noundef %14, i32 noundef %15, i32 noundef 0)
  %16 = zext i32 %call40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call40, label %do.body52 [
    i32 0, label %if.then38.if.end61_crit_edge
    i32 -512, label %if.then38.out_crit_edge
    i32 -4, label %if.then38.out_crit_edge122
    i32 524289, label %if.then38.out_crit_edge123
    i32 -28, label %if.then38.out_crit_edge124
    i32 -122, label %if.then38.out_crit_edge125
  ]

if.then38.out_crit_edge125:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then38.out_crit_edge124:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then38.out_crit_edge123:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then38.out_crit_edge122:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then38.if.end61_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.body52:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %17 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call40 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_extend_no_holes, i32 noundef 1033, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end61:                                         ; preds = %if.then38.if.end61_crit_edge, %do.end32.if.end61_crit_edge
  %call62 = tail call i32 @ocfs2_zero_extend(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %zero_to)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then65:                                        ; preds = %if.end61
  %18 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call62, label %do.body82 [
    i32 -512, label %if.then65.out_crit_edge
    i32 -4, label %if.then65.out_crit_edge126
    i32 -28, label %if.then65.out_crit_edge127
    i32 -122, label %if.then65.out_crit_edge128
  ]

if.then65.out_crit_edge128:                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then65.out_crit_edge127:                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then65.out_crit_edge126:                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then65.out_crit_edge:                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body82:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83) #10
  %19 = ptrtoint ptr %_m83 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m83, align 8
  %conv87 = sext i32 %call62 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83, ptr noundef nonnull @__func__.ocfs2_extend_no_holes, i32 noundef 1045, ptr noundef nonnull @.str, i64 noundef %conv87) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83) #10
  br label %out

out:                                              ; preds = %do.body82, %if.then65.out_crit_edge, %if.then65.out_crit_edge126, %if.then65.out_crit_edge127, %if.then65.out_crit_edge128, %if.end61.out_crit_edge, %do.body52, %if.then38.out_crit_edge, %if.then38.out_crit_edge122, %if.then38.out_crit_edge123, %if.then38.out_crit_edge124, %if.then38.out_crit_edge125
  %ret.0 = phi i32 [ %call62, %if.end61.out_crit_edge ], [ %call40, %if.then38.out_crit_edge ], [ %call40, %if.then38.out_crit_edge122 ], [ %call40, %if.then38.out_crit_edge123 ], [ %call40, %if.then38.out_crit_edge124 ], [ %call40, %if.then38.out_crit_edge125 ], [ %call40, %do.body52 ], [ %call62, %if.then65.out_crit_edge ], [ %call62, %if.then65.out_crit_edge126 ], [ %call62, %if.then65.out_crit_edge127 ], [ %call62, %if.then65.out_crit_edge128 ], [ %call62, %do.body82 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_extend_allocation(ptr noundef %inode, i32 noundef %logical_start, i32 noundef %clusters_to_add, i32 noundef %mark_unwritten) unnamed_addr #0 align 64 {
entry:
  %et.i = alloca %struct.ocfs2_extent_tree, align 4
  %logical_start.addr = alloca i32, align 4
  %bh = alloca ptr, align 4
  %data_ac = alloca ptr, align 4
  %meta_ac = alloca ptr, align 4
  %why = alloca i32, align 4
  %et = alloca %struct.ocfs2_extent_tree, align 4
  %_m = alloca i64, align 8
  %_m71 = alloca i64, align 8
  %_m104 = alloca i64, align 8
  %_m146 = alloca i64, align 8
  %_m186 = alloca i64, align 8
  %_m254 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logical_start.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %logical_start, ptr %logical_start.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_ac) #10
  %2 = ptrtoint ptr %data_ac to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data_ac, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta_ac) #10
  %3 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %meta_ac, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %why) #10
  %4 = ptrtoint ptr %why to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %why, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mark_unwritten)
  %tobool.not = icmp eq i32 %mark_unwritten, 0
  %9 = call ptr @memset(ptr %et, i32 255, i32 32)
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %land.rhs

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 19
  %10 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_incompat.i, align 8
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not = icmp eq i32 %12, 0
  br i1 %tobool1.not, label %do.body5, label %land.rhs.do.end10_crit_edge, !prof !179

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body5:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 575, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.end10:                                         ; preds = %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %call11 = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end29

if.then12:                                        ; preds = %do.end10
  %13 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call11, label %do.body22 [
    i32 -512, label %if.then12.leave_crit_edge
    i32 -4, label %if.then12.leave_crit_edge565
    i32 -28, label %if.then12.leave_crit_edge566
    i32 -122, label %if.then12.leave_crit_edge567
  ]

if.then12.leave_crit_edge567:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then12.leave_crit_edge566:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then12.leave_crit_edge565:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then12.leave_crit_edge:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body22:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call11 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_extend_allocation, i32 noundef 579, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %leave

if.end29:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  br label %do.body30

do.body30:                                        ; preds = %if.end290.do.body30_crit_edge, %if.end29
  %did_quota.0 = phi i32 [ 0, %if.end29 ], [ %did_quota.2, %if.end290.do.body30_crit_edge ]
  %fe.0 = phi ptr [ %18, %if.end29 ], [ %fe.1, %if.end290.do.body30_crit_edge ]
  %clusters_to_add.addr.0 = phi i32 [ %clusters_to_add, %if.end29 ], [ %clusters_to_add.addr.2, %if.end290.do.body30_crit_edge ]
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe.0, i32 0, i32 6
  %19 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_clusters, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %22 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_clusters, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp32.not = icmp eq i32 %21, %23
  br i1 %cmp32.not, label %do.end49, label %do.body41, !prof !167

do.body41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 585, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

do.end49:                                         ; preds = %do.body30
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %24 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bh, align 4
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et, ptr noundef %ip_metadata_cache.i, ptr noundef %25) #10
  %call51 = call i32 @ocfs2_lock_allocators(ptr noundef %inode, ptr noundef nonnull %et, i32 noundef %clusters_to_add.addr.0, i32 noundef 0, ptr noundef nonnull %data_ac, ptr noundef nonnull %meta_ac) #10
  %26 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call51, label %do.body70 [
    i32 0, label %if.end81
    i32 -512, label %do.end49.leave_crit_edge
    i32 -4, label %do.end49.leave_crit_edge568
    i32 524289, label %do.end49.leave_crit_edge569
    i32 -28, label %do.end49.leave_crit_edge570
    i32 -122, label %do.end49.leave_crit_edge571
  ]

do.end49.leave_crit_edge571:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.end49.leave_crit_edge570:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.end49.leave_crit_edge569:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.end49.leave_crit_edge568:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.end49.leave_crit_edge:                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body70:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71) #10
  %27 = ptrtoint ptr %_m71 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m71, align 8
  %conv75 = sext i32 %call51 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71, ptr noundef nonnull @__func__.ocfs2_extend_allocation, i32 noundef 591, ptr noundef nonnull @.str, i64 noundef %conv75) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71) #10
  br label %leave

if.end81:                                         ; preds = %do.end49
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 1
  %28 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sb, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe.0, i32 0, i32 35
  %30 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %id2, align 8
  %32 = call i16 @llvm.bswap.i16(i16 %31) #10
  %conv.i.i = zext i16 %32 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i, 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 3
  %and3.i.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %add6.i.i = add nuw nsw i32 %spec.select.i.i, 3
  %credits.1.i.i = select i1 %tobool4.not.i.i, i32 %spec.select.i.i, i32 %add6.i.i
  %add1.i = add nuw nsw i32 %conv.i.i, 10
  %add3.i = add nuw nsw i32 %add1.i, %add.i.i
  %add5.i = add nuw nsw i32 %add3.i, %credits.1.i.i
  %call83 = call ptr @ocfs2_start_trans(ptr noundef %8, i32 noundef %add5.i) #10
  %cmp.i = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then85, label %restarted_transaction.preheader

restarted_transaction.preheader:                  ; preds = %if.end81
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call83, i32 0, i32 7
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %i_datasync_tid.i = getelementptr i8, ptr %inode, i32 888
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  br label %restarted_transaction

if.then85:                                        ; preds = %if.end81
  %37 = ptrtoint ptr %call83 to i32
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %37, label %do.body103 [
    i32 -512, label %if.then85.leave_crit_edge
    i32 -4, label %if.then85.leave_crit_edge572
    i32 524289, label %if.then85.leave_crit_edge573
    i32 -28, label %if.then85.leave_crit_edge574
    i32 -122, label %if.then85.leave_crit_edge575
  ]

if.then85.leave_crit_edge575:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then85.leave_crit_edge574:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then85.leave_crit_edge573:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then85.leave_crit_edge572:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then85.leave_crit_edge:                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body103:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m104) #10
  %39 = ptrtoint ptr %_m104 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m104, align 8
  %conv108 = sext i32 %37 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m104, ptr noundef nonnull @__func__.ocfs2_extend_allocation, i32 noundef 600, ptr noundef nonnull @.str, i64 noundef %conv108) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m104) #10
  br label %leave

restarted_transaction:                            ; preds = %do.end232.restarted_transaction_crit_edge, %restarted_transaction.preheader
  %did_quota.1 = phi i32 [ 0, %do.end232.restarted_transaction_crit_edge ], [ %did_quota.0, %restarted_transaction.preheader ]
  %clusters_to_add.addr.1 = phi i32 [ %sub201, %do.end232.restarted_transaction_crit_edge ], [ %clusters_to_add.addr.0, %restarted_transaction.preheader ]
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.i, align 8
  %call116 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %42 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_clusters, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %why, align 4
  call fastcc void @trace_ocfs2_extend_allocation(i64 noundef %41, i64 noundef %call116, i32 noundef %44, i32 noundef %clusters_to_add.addr.1, i32 noundef %46)
  %47 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sb, align 4
  %conv.i = zext i32 %clusters_to_add.addr.1 to i64
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %50, i32 0, i32 36
  %51 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_clustersize_bits.i, align 8
  %sh_prom.i = zext i32 %52 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool121.not = icmp eq i32 %call.i, 0
  br i1 %tobool121.not, label %if.end123, label %restarted_transaction.leave_crit_edge

restarted_transaction.leave_crit_edge:            ; preds = %restarted_transaction
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end123:                                        ; preds = %restarted_transaction
  %53 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bh, align 4
  %call125 = call i32 @ocfs2_journal_access_di(ptr noundef %call83, ptr noundef %ip_metadata_cache.i, ptr noundef %54, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end156

if.then128:                                       ; preds = %if.end123
  %55 = zext i32 %call125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call125, label %do.body145 [
    i32 -512, label %if.then128.leave_crit_edge
    i32 -4, label %if.then128.leave_crit_edge576
    i32 -28, label %if.then128.leave_crit_edge577
    i32 -122, label %if.then128.leave_crit_edge578
  ]

if.then128.leave_crit_edge578:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then128.leave_crit_edge577:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then128.leave_crit_edge576:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then128.leave_crit_edge:                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body145:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m146) #10
  %56 = ptrtoint ptr %_m146 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1152921504606846976, ptr %_m146, align 8
  %conv150 = sext i32 %call125 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m146, ptr noundef nonnull @__func__.ocfs2_extend_allocation, i32 noundef 623, ptr noundef nonnull @.str, i64 noundef %conv150) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m146) #10
  br label %leave

if.end156:                                        ; preds = %if.end123
  %57 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ip_clusters, align 8
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bh, align 4
  %61 = ptrtoint ptr %data_ac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data_ac, align 4
  %63 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %meta_ac, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et.i) #10
  %65 = call ptr @memset(ptr %et.i, i32 255, i32 32)
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et.i, ptr noundef %ip_metadata_cache.i, ptr noundef %60) #10
  %call1.i = call i32 @ocfs2_add_clusters_in_btree(ptr noundef %call83, ptr noundef nonnull %et.i, ptr noundef nonnull %logical_start.addr, i32 noundef %clusters_to_add.addr.1, i32 noundef %mark_unwritten, ptr noundef %62, ptr noundef %64, ptr noundef nonnull %why) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp160 = icmp sgt i32 %call1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1.i)
  %cmp163.not = icmp eq i32 %call1.i, -11
  %or.cond = or i1 %cmp160, %cmp163.not
  br i1 %or.cond, label %if.end197, label %if.then165

if.then165:                                       ; preds = %if.end156
  %66 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call1.i, label %do.body185 [
    i32 -28, label %if.then165.leave_crit_edge
    i32 -512, label %if.then165.leave_crit_edge579
    i32 -4, label %if.then165.leave_crit_edge580
    i32 -122, label %if.then165.leave_crit_edge581
  ]

if.then165.leave_crit_edge581:                    ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then165.leave_crit_edge580:                    ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then165.leave_crit_edge579:                    ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then165.leave_crit_edge:                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body185:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m186) #10
  %67 = ptrtoint ptr %_m186 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 1152921504606846976, ptr %_m186, align 8
  %conv190 = sext i32 %call1.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m186, ptr noundef nonnull @__func__.ocfs2_extend_allocation, i32 noundef 641, ptr noundef nonnull @.str, i64 noundef %conv190) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m186) #10
  br label %leave

if.end197:                                        ; preds = %if.end156
  %68 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %69 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i403 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i403, label %lor.lhs.false.i.i, label %if.end197.ocfs2_update_inode_fsync_trans.exit_crit_edge

if.end197.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

lor.lhs.false.i.i:                                ; preds = %if.end197
  %70 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call83, align 4
  %tobool1.not.i.i = icmp eq ptr %71, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %and.i.i.i = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge

is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %t_tid.i, align 4
  %78 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %i_sync_tid.i, align 4
  %79 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call83, align 4
  %t_tid4.i = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %t_tid4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %t_tid4.i, align 4
  %83 = ptrtoint ptr %i_datasync_tid.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %i_datasync_tid.i, align 8
  br label %ocfs2_update_inode_fsync_trans.exit

ocfs2_update_inode_fsync_trans.exit:              ; preds = %if.then.i, %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %if.end197.ocfs2_update_inode_fsync_trans.exit_crit_edge
  %84 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bh, align 4
  call void @ocfs2_journal_dirty(ptr noundef %call83, ptr noundef %85) #10
  call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %86 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ip_clusters, align 8
  %sub.neg = sub i32 %58, %87
  %sub201 = add i32 %sub.neg, %clusters_to_add.addr.1
  call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  %88 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sb, align 4
  %conv.i407 = zext i32 %sub201 to i64
  %s_fs_info.i408 = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 33
  %90 = ptrtoint ptr %s_fs_info.i408 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i408, align 16
  %s_clustersize_bits.i409 = getelementptr inbounds %struct.ocfs2_super, ptr %91, i32 0, i32 36
  %92 = ptrtoint ptr %s_clustersize_bits.i409 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_clustersize_bits.i409, align 8
  %sh_prom.i410 = zext i32 %93 to i64
  %shl.i411 = shl i64 %conv.i407, %sh_prom.i410
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i411, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #10
  %94 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %why, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp206.not = icmp eq i32 %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub201)
  %tobool209.not = icmp eq i32 %sub201, 0
  %or.cond397 = select i1 %cmp206.not, i1 true, i1 %tobool209.not
  br i1 %or.cond397, label %ocfs2_update_inode_fsync_trans.exit.if.end266_crit_edge, label %if.then210

ocfs2_update_inode_fsync_trans.exit.if.end266_crit_edge: ; preds = %ocfs2_update_inode_fsync_trans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end266

if.then210:                                       ; preds = %ocfs2_update_inode_fsync_trans.exit
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %95, label %do.body224 [
    i32 2, label %if.then210.if.end266_crit_edge
    i32 1, label %do.end232
  ], !prof !195

if.then210.if.end266_crit_edge:                   ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end266

do.body224:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 660, 0\0A.popsection", ""() #10, !srcloc !196
  unreachable

do.end232:                                        ; preds = %if.then210
  %call233 = call i32 @ocfs2_allocate_extend_trans(ptr noundef %call83, i32 noundef 1) #10
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %do.body253, label %do.end232.restarted_transaction_crit_edge

do.end232.restarted_transaction_crit_edge:        ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %restarted_transaction

do.body253:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m254) #10
  %97 = ptrtoint ptr %_m254 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 1152921504606846976, ptr %_m254, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m254, ptr noundef nonnull @__func__.ocfs2_extend_allocation, i32 noundef 667, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m254) #10
  br label %leave

if.end266:                                        ; preds = %if.then210.if.end266_crit_edge, %ocfs2_update_inode_fsync_trans.exit.if.end266_crit_edge
  %restart_func.1 = phi i32 [ 0, %ocfs2_update_inode_fsync_trans.exit.if.end266_crit_edge ], [ 1, %if.then210.if.end266_crit_edge ]
  %status.0 = phi i32 [ %call1.i, %ocfs2_update_inode_fsync_trans.exit.if.end266_crit_edge ], [ 0, %if.then210.if.end266_crit_edge ]
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %add.ptr.i, align 8
  %100 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %i_clusters, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %fe.0, i32 0, i32 9
  %103 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_size, align 8
  %105 = call i64 @llvm.bswap.i64(i64 %104)
  %106 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ip_clusters, align 8
  %call272 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call fastcc void @trace_ocfs2_extend_allocation_end(i64 noundef %99, i32 noundef %102, i64 noundef %105, i32 noundef %107, i64 noundef %call272)
  br label %leave

leave:                                            ; preds = %if.end266, %do.body253, %do.body185, %if.then165.leave_crit_edge, %if.then165.leave_crit_edge579, %if.then165.leave_crit_edge580, %if.then165.leave_crit_edge581, %do.body145, %if.then128.leave_crit_edge, %if.then128.leave_crit_edge576, %if.then128.leave_crit_edge577, %if.then128.leave_crit_edge578, %restarted_transaction.leave_crit_edge, %do.body103, %if.then85.leave_crit_edge, %if.then85.leave_crit_edge572, %if.then85.leave_crit_edge573, %if.then85.leave_crit_edge574, %if.then85.leave_crit_edge575, %do.body70, %do.end49.leave_crit_edge, %do.end49.leave_crit_edge568, %do.end49.leave_crit_edge569, %do.end49.leave_crit_edge570, %do.end49.leave_crit_edge571, %do.body22, %if.then12.leave_crit_edge, %if.then12.leave_crit_edge565, %if.then12.leave_crit_edge566, %if.then12.leave_crit_edge567
  %handle.1 = phi ptr [ %call83, %if.end266 ], [ %call83, %do.body253 ], [ null, %if.then12.leave_crit_edge ], [ null, %if.then12.leave_crit_edge565 ], [ null, %if.then12.leave_crit_edge566 ], [ null, %if.then12.leave_crit_edge567 ], [ null, %do.body22 ], [ null, %do.end49.leave_crit_edge ], [ null, %do.end49.leave_crit_edge568 ], [ null, %do.end49.leave_crit_edge569 ], [ null, %do.end49.leave_crit_edge570 ], [ null, %do.end49.leave_crit_edge571 ], [ null, %do.body70 ], [ null, %if.then85.leave_crit_edge ], [ null, %if.then85.leave_crit_edge572 ], [ null, %if.then85.leave_crit_edge573 ], [ null, %if.then85.leave_crit_edge574 ], [ null, %if.then85.leave_crit_edge575 ], [ null, %do.body103 ], [ %call83, %if.then128.leave_crit_edge ], [ %call83, %if.then128.leave_crit_edge576 ], [ %call83, %if.then128.leave_crit_edge577 ], [ %call83, %if.then128.leave_crit_edge578 ], [ %call83, %do.body145 ], [ %call83, %do.body185 ], [ %call83, %if.then165.leave_crit_edge ], [ %call83, %if.then165.leave_crit_edge579 ], [ %call83, %if.then165.leave_crit_edge580 ], [ %call83, %if.then165.leave_crit_edge581 ], [ %call83, %restarted_transaction.leave_crit_edge ]
  %did_quota.2 = phi i32 [ 0, %if.end266 ], [ 0, %do.body253 ], [ 0, %if.then12.leave_crit_edge ], [ 0, %if.then12.leave_crit_edge565 ], [ 0, %if.then12.leave_crit_edge566 ], [ 0, %if.then12.leave_crit_edge567 ], [ 0, %do.body22 ], [ %did_quota.0, %do.end49.leave_crit_edge ], [ %did_quota.0, %do.end49.leave_crit_edge568 ], [ %did_quota.0, %do.end49.leave_crit_edge569 ], [ %did_quota.0, %do.end49.leave_crit_edge570 ], [ %did_quota.0, %do.end49.leave_crit_edge571 ], [ %did_quota.0, %do.body70 ], [ %did_quota.0, %if.then85.leave_crit_edge ], [ %did_quota.0, %if.then85.leave_crit_edge572 ], [ %did_quota.0, %if.then85.leave_crit_edge573 ], [ %did_quota.0, %if.then85.leave_crit_edge574 ], [ %did_quota.0, %if.then85.leave_crit_edge575 ], [ %did_quota.0, %do.body103 ], [ 1, %if.then128.leave_crit_edge ], [ 1, %if.then128.leave_crit_edge576 ], [ 1, %if.then128.leave_crit_edge577 ], [ 1, %if.then128.leave_crit_edge578 ], [ 1, %do.body145 ], [ 1, %do.body185 ], [ 1, %if.then165.leave_crit_edge ], [ 1, %if.then165.leave_crit_edge579 ], [ 1, %if.then165.leave_crit_edge580 ], [ 1, %if.then165.leave_crit_edge581 ], [ %did_quota.1, %restarted_transaction.leave_crit_edge ]
  %fe.1 = phi ptr [ %fe.0, %if.end266 ], [ %fe.0, %do.body253 ], [ null, %if.then12.leave_crit_edge ], [ null, %if.then12.leave_crit_edge565 ], [ null, %if.then12.leave_crit_edge566 ], [ null, %if.then12.leave_crit_edge567 ], [ null, %do.body22 ], [ %fe.0, %do.end49.leave_crit_edge ], [ %fe.0, %do.end49.leave_crit_edge568 ], [ %fe.0, %do.end49.leave_crit_edge569 ], [ %fe.0, %do.end49.leave_crit_edge570 ], [ %fe.0, %do.end49.leave_crit_edge571 ], [ %fe.0, %do.body70 ], [ %fe.0, %if.then85.leave_crit_edge ], [ %fe.0, %if.then85.leave_crit_edge572 ], [ %fe.0, %if.then85.leave_crit_edge573 ], [ %fe.0, %if.then85.leave_crit_edge574 ], [ %fe.0, %if.then85.leave_crit_edge575 ], [ %fe.0, %do.body103 ], [ %fe.0, %if.then128.leave_crit_edge ], [ %fe.0, %if.then128.leave_crit_edge576 ], [ %fe.0, %if.then128.leave_crit_edge577 ], [ %fe.0, %if.then128.leave_crit_edge578 ], [ %fe.0, %do.body145 ], [ %fe.0, %do.body185 ], [ %fe.0, %if.then165.leave_crit_edge ], [ %fe.0, %if.then165.leave_crit_edge579 ], [ %fe.0, %if.then165.leave_crit_edge580 ], [ %fe.0, %if.then165.leave_crit_edge581 ], [ %fe.0, %restarted_transaction.leave_crit_edge ]
  %restart_func.2 = phi i32 [ %restart_func.1, %if.end266 ], [ 0, %do.body253 ], [ 0, %if.then12.leave_crit_edge ], [ 0, %if.then12.leave_crit_edge565 ], [ 0, %if.then12.leave_crit_edge566 ], [ 0, %if.then12.leave_crit_edge567 ], [ 0, %do.body22 ], [ 0, %do.end49.leave_crit_edge ], [ 0, %do.end49.leave_crit_edge568 ], [ 0, %do.end49.leave_crit_edge569 ], [ 0, %do.end49.leave_crit_edge570 ], [ 0, %do.end49.leave_crit_edge571 ], [ 0, %do.body70 ], [ 0, %if.then85.leave_crit_edge ], [ 0, %if.then85.leave_crit_edge572 ], [ 0, %if.then85.leave_crit_edge573 ], [ 0, %if.then85.leave_crit_edge574 ], [ 0, %if.then85.leave_crit_edge575 ], [ 0, %do.body103 ], [ 0, %if.then128.leave_crit_edge ], [ 0, %if.then128.leave_crit_edge576 ], [ 0, %if.then128.leave_crit_edge577 ], [ 0, %if.then128.leave_crit_edge578 ], [ 0, %do.body145 ], [ 0, %do.body185 ], [ 0, %if.then165.leave_crit_edge ], [ 0, %if.then165.leave_crit_edge579 ], [ 0, %if.then165.leave_crit_edge580 ], [ 0, %if.then165.leave_crit_edge581 ], [ 0, %restarted_transaction.leave_crit_edge ]
  %status.1 = phi i32 [ %status.0, %if.end266 ], [ -12, %do.body253 ], [ %call11, %if.then12.leave_crit_edge ], [ %call11, %if.then12.leave_crit_edge565 ], [ %call11, %if.then12.leave_crit_edge566 ], [ %call11, %if.then12.leave_crit_edge567 ], [ %call11, %do.body22 ], [ %call51, %do.end49.leave_crit_edge ], [ %call51, %do.end49.leave_crit_edge568 ], [ %call51, %do.end49.leave_crit_edge569 ], [ %call51, %do.end49.leave_crit_edge570 ], [ %call51, %do.end49.leave_crit_edge571 ], [ %call51, %do.body70 ], [ %37, %if.then85.leave_crit_edge ], [ %37, %if.then85.leave_crit_edge572 ], [ %37, %if.then85.leave_crit_edge573 ], [ %37, %if.then85.leave_crit_edge574 ], [ %37, %if.then85.leave_crit_edge575 ], [ %37, %do.body103 ], [ %call125, %if.then128.leave_crit_edge ], [ %call125, %if.then128.leave_crit_edge576 ], [ %call125, %if.then128.leave_crit_edge577 ], [ %call125, %if.then128.leave_crit_edge578 ], [ %call125, %do.body145 ], [ %call1.i, %do.body185 ], [ %call1.i, %if.then165.leave_crit_edge ], [ %call1.i, %if.then165.leave_crit_edge579 ], [ %call1.i, %if.then165.leave_crit_edge580 ], [ %call1.i, %if.then165.leave_crit_edge581 ], [ %call.i, %restarted_transaction.leave_crit_edge ]
  %clusters_to_add.addr.2 = phi i32 [ %sub201, %if.end266 ], [ %sub201, %do.body253 ], [ %clusters_to_add, %if.then12.leave_crit_edge ], [ %clusters_to_add, %if.then12.leave_crit_edge565 ], [ %clusters_to_add, %if.then12.leave_crit_edge566 ], [ %clusters_to_add, %if.then12.leave_crit_edge567 ], [ %clusters_to_add, %do.body22 ], [ %clusters_to_add.addr.0, %do.end49.leave_crit_edge ], [ %clusters_to_add.addr.0, %do.end49.leave_crit_edge568 ], [ %clusters_to_add.addr.0, %do.end49.leave_crit_edge569 ], [ %clusters_to_add.addr.0, %do.end49.leave_crit_edge570 ], [ %clusters_to_add.addr.0, %do.end49.leave_crit_edge571 ], [ %clusters_to_add.addr.0, %do.body70 ], [ %clusters_to_add.addr.0, %if.then85.leave_crit_edge ], [ %clusters_to_add.addr.0, %if.then85.leave_crit_edge572 ], [ %clusters_to_add.addr.0, %if.then85.leave_crit_edge573 ], [ %clusters_to_add.addr.0, %if.then85.leave_crit_edge574 ], [ %clusters_to_add.addr.0, %if.then85.leave_crit_edge575 ], [ %clusters_to_add.addr.0, %do.body103 ], [ %clusters_to_add.addr.1, %if.then128.leave_crit_edge ], [ %clusters_to_add.addr.1, %if.then128.leave_crit_edge576 ], [ %clusters_to_add.addr.1, %if.then128.leave_crit_edge577 ], [ %clusters_to_add.addr.1, %if.then128.leave_crit_edge578 ], [ %clusters_to_add.addr.1, %do.body145 ], [ %clusters_to_add.addr.1, %do.body185 ], [ %clusters_to_add.addr.1, %if.then165.leave_crit_edge ], [ %clusters_to_add.addr.1, %if.then165.leave_crit_edge579 ], [ %clusters_to_add.addr.1, %if.then165.leave_crit_edge580 ], [ %clusters_to_add.addr.1, %if.then165.leave_crit_edge581 ], [ %clusters_to_add.addr.1, %restarted_transaction.leave_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.1)
  %cmp273 = icmp sgt i32 %status.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %did_quota.2)
  %tobool276.not = icmp eq i32 %did_quota.2, 0
  %or.cond398 = select i1 %cmp273, i1 true, i1 %tobool276.not
  br i1 %or.cond398, label %leave.if.end280_crit_edge, label %if.then277

leave.if.end280_crit_edge:                        ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

if.then277:                                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  %sb278 = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 1
  %108 = ptrtoint ptr %sb278 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sb278, align 4
  %conv.i414 = zext i32 %clusters_to_add.addr.2 to i64
  %s_fs_info.i415 = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 33
  %110 = ptrtoint ptr %s_fs_info.i415 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i415, align 16
  %s_clustersize_bits.i416 = getelementptr inbounds %struct.ocfs2_super, ptr %111, i32 0, i32 36
  %112 = ptrtoint ptr %s_clustersize_bits.i416 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_clustersize_bits.i416, align 8
  %sh_prom.i417 = zext i32 %113 to i64
  %shl.i418 = shl i64 %conv.i414, %sh_prom.i417
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i418, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #10
  br label %if.end280

if.end280:                                        ; preds = %if.then277, %leave.if.end280_crit_edge
  %tobool281.not = icmp eq ptr %handle.1, null
  br i1 %tobool281.not, label %if.end280.if.end284_crit_edge, label %if.then282

if.end280.if.end284_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end284

if.then282:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  %call283 = call i32 @ocfs2_commit_trans(ptr noundef %8, ptr noundef nonnull %handle.1) #10
  br label %if.end284

if.end284:                                        ; preds = %if.then282, %if.end280.if.end284_crit_edge
  %114 = ptrtoint ptr %data_ac to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data_ac, align 4
  %tobool285.not = icmp eq ptr %115, null
  br i1 %tobool285.not, label %if.end284.if.end287_crit_edge, label %if.then286

if.end284.if.end287_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end287

if.then286:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %115) #10
  %116 = ptrtoint ptr %data_ac to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %data_ac, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.end284.if.end287_crit_edge
  %117 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %meta_ac, align 4
  %tobool288.not = icmp eq ptr %118, null
  br i1 %tobool288.not, label %if.end287.if.end290_crit_edge, label %if.then289

if.end287.if.end290_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end290

if.then289:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %118) #10
  %119 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %meta_ac, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %if.end287.if.end290_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool291.not = icmp ne i32 %status.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart_func.2)
  %tobool293.not = icmp eq i32 %restart_func.2, 0
  %or.cond399 = or i1 %tobool293.not, %tobool291.not
  br i1 %or.cond399, label %if.end295, label %if.end290.do.body30_crit_edge

if.end290.do.body30_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

if.end295:                                        ; preds = %if.end290
  %120 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bh, align 4
  %tobool.not.i419 = icmp eq ptr %121, null
  br i1 %tobool.not.i419, label %if.end295.brelse.exit_crit_edge, label %if.then.i420

if.end295.brelse.exit_crit_edge:                  ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i420:                                     ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %121) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i420, %if.end295.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %why) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_ac) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_ac) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %transfer_to = alloca [3 x ptr], align 4
  %oh = alloca %struct.ocfs2_lock_holder, align 4
  %_m = alloca i64, align 8
  %_m68 = alloca i64, align 8
  %_m126 = alloca i64, align 8
  %_m232 = alloca i64, align 8
  %_m272 = alloca i64, align 8
  %_m305 = alloca i64, align 8
  %_m357 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bh, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %transfer_to) #10
  %7 = call ptr @memset(ptr %transfer_to, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oh) #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1608
  %8 = call ptr @memset(ptr %oh, i32 255, i32 16)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %15 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attr, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %17 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ia_mode, align 4
  %conv = zext i16 %18 to i32
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %19 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %ia_uid, align 8
  %20 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call3 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %20) #10
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %21 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack525 = load i32, ptr %ia_gid, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack525, 0
  %call5 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %22) #10
  tail call fastcc void @trace_ocfs2_setattr(ptr noundef %1, ptr noundef %dentry, i64 noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %conv, i32 noundef %call3, i32 noundef %call5)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %25)
  %cmp = icmp eq i16 %25, -24576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %attr, align 8
  %and9 = and i32 %27, -9
  store i32 %and9, ptr %attr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %attr, align 8
  %and11 = and i32 %29, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %30 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %attr, align 8
  %and.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end17.if.then19_crit_edge

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false.i:                                  ; preds = %if.end17
  %and2.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack17.i = load i32, ptr %ia_uid, align 8
  %33 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack18.i = load i32, ptr %i_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack17.i, i32 %.unpack18.i)
  %cmp.i.i = icmp eq i32 %.unpack17.i, %.unpack18.i
  br i1 %cmp.i.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.then19_crit_edge

land.lhs.true.i.if.then19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %and6.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.rhs.i.if.end24_crit_edge, label %is_quota_modification.exit

lor.rhs.i.if.end24_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

is_quota_modification.exit:                       ; preds = %lor.rhs.i
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack.i = load i32, ptr %ia_gid, align 4
  %35 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack16.i = load i32, ptr %i_gid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack16.i)
  %cmp.i19.i.not = icmp eq i32 %.unpack.i, %.unpack16.i
  br i1 %cmp.i19.i.not, label %is_quota_modification.exit.if.end24_crit_edge, label %is_quota_modification.exit.if.then19_crit_edge

is_quota_modification.exit.if.then19_crit_edge:   ; preds = %is_quota_modification.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

is_quota_modification.exit.if.end24_crit_edge:    ; preds = %is_quota_modification.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %is_quota_modification.exit.if.then19_crit_edge, %land.lhs.true.i.if.then19_crit_edge, %if.end17.if.then19_crit_edge
  %call20 = tail call i32 @dquot_initialize(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %is_quota_modification.exit.if.end24_crit_edge, %lor.rhs.i.if.end24_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 8
  %38 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %38)
  %cmp28 = icmp eq i16 %38, -32768
  br i1 %cmp28, label %land.end, label %if.end24.if.end60_crit_edge

if.end24.if.end60_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.end:                                         ; preds = %if.end24
  %39 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %attr, align 8
  %and31 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.end.if.end60_crit_edge, label %if.then34

land.end.if.end60_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then34:                                        ; preds = %land.end
  tail call void @inode_dio_wait(ptr noundef %1) #10
  %call35 = tail call i32 @ocfs2_rw_lock(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.then34.if.end60_crit_edge

if.then34.if.end60_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then38:                                        ; preds = %if.then34
  %41 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call35, label %do.body [
    i32 -512, label %if.then38.bail_crit_edge
    i32 -4, label %if.then38.bail_crit_edge562
    i32 -28, label %if.then38.bail_crit_edge563
    i32 -122, label %if.then38.bail_crit_edge564
  ]

if.then38.bail_crit_edge564:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then38.bail_crit_edge563:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then38.bail_crit_edge562:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then38.bail_crit_edge:                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %42 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv56 = sext i32 %call35 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1168, ptr noundef nonnull @.str, i64 noundef %conv56) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

if.end60:                                         ; preds = %if.then34.if.end60_crit_edge, %land.end.if.end60_crit_edge, %if.end24.if.end60_crit_edge
  %43 = phi i1 [ true, %if.then34.if.end60_crit_edge ], [ false, %land.end.if.end60_crit_edge ], [ false, %if.end24.if.end60_crit_edge ]
  %call61 = call i32 @ocfs2_inode_lock_tracker(ptr noundef %1, ptr noundef nonnull %bh, i32 noundef 1, ptr noundef nonnull %oh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.bail_unlock_rw_crit_edge, label %if.else

if.end60.bail_unlock_rw_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_rw

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool65.not = icmp eq i32 %call61, 0
  br i1 %tobool65.not, label %if.else.if.end76_crit_edge, label %do.body67

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.body67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68) #10
  %44 = ptrtoint ptr %_m68 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 1152921504606846976, ptr %_m68, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1195, ptr noundef nonnull @.str.3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68) #10
  call void @dump_stack() #13
  br label %if.end76

if.end76:                                         ; preds = %do.body67, %if.else.if.end76_crit_edge
  br i1 %43, label %if.then78, label %if.end76.if.end138_crit_edge

if.end76.if.end138_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then78:                                        ; preds = %if.end76
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %45 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ia_size, align 8
  %call79 = call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then78.if.then322_crit_edge

if.then78.if.then322_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

if.end82:                                         ; preds = %if.then78
  %call83 = call fastcc i64 @i_size_read(ptr noundef %1)
  %47 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call83, i64 %48)
  %cmp85.not = icmp slt i64 %call83, %48
  br i1 %cmp85.not, label %if.else99, label %if.then87

if.then87:                                        ; preds = %if.end82
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %1, align 8
  %51 = and i16 %50, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %51)
  %cmp.i = icmp eq i16 %51, -32768
  br i1 %cmp.i, label %ocfs2_should_order_data.exit, label %if.then87.if.end96_crit_edge

if.then87.if.end96_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

ocfs2_should_order_data.exit:                     ; preds = %if.then87
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %55, i32 0, i32 28
  %56 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_mount_opt.i, align 8
  %58 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool89.not.not = icmp eq i32 %58, 0
  br i1 %tobool89.not.not, label %if.then90, label %ocfs2_should_order_data.exit.if.end96_crit_edge

ocfs2_should_order_data.exit.if.end96_crit_edge:  ; preds = %ocfs2_should_order_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then90:                                        ; preds = %ocfs2_should_order_data.exit
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i538 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i538 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i538, align 16
  %journal.i = getelementptr inbounds %struct.ocfs2_super, ptr %62, i32 0, i32 45
  %63 = ptrtoint ptr %journal.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %journal.i, align 4
  %j_journal.i = getelementptr inbounds %struct.ocfs2_journal, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %j_journal.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %j_journal.i, align 4
  %ip_jinode.i = getelementptr i8, ptr %1, i32 784
  %call1.i = call i32 @jbd2_journal_begin_ordered_truncate(ptr noundef %66, ptr noundef %ip_jinode.i, i64 noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool93.not = icmp eq i32 %call1.i, 0
  br i1 %tobool93.not, label %if.then90.if.end96_crit_edge, label %if.then90.if.then322_crit_edge

if.then90.if.then322_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.end96:                                         ; preds = %if.then90.if.end96_crit_edge, %ocfs2_should_order_data.exit.if.end96_crit_edge, %if.then87.if.end96_crit_edge
  %67 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh, align 4
  %69 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %ia_size, align 8
  %call98 = call i32 @ocfs2_truncate_file(ptr noundef %1, ptr noundef %68, i64 noundef %70)
  br label %if.end102

if.else99:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh, align 4
  %call101 = call fastcc i32 @ocfs2_extend_file(ptr noundef %1, ptr noundef %72, i64 noundef %48)
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %if.end96
  %status.0 = phi i32 [ %call98, %if.end96 ], [ %call101, %if.else99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp103 = icmp slt i32 %status.0, 0
  br i1 %cmp103, label %if.then105, label %if.end102.if.end138_crit_edge

if.end102.if.end138_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then105:                                       ; preds = %if.end102
  %73 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %status.0, label %do.body125 [
    i32 -28, label %if.then105.if.then322_crit_edge
    i32 -512, label %if.then105.if.then322_crit_edge565
    i32 -4, label %if.then105.if.then322_crit_edge566
    i32 -122, label %if.then105.if.then322_crit_edge567
  ]

if.then105.if.then322_crit_edge567:               ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

if.then105.if.then322_crit_edge566:               ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

if.then105.if.then322_crit_edge565:               ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

if.then105.if.then322_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

do.body125:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m126) #10
  %74 = ptrtoint ptr %_m126 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 1152921504606846976, ptr %_m126, align 8
  %conv130 = sext i32 %status.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m126, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1217, ptr noundef nonnull @.str, i64 noundef %conv130) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m126) #10
  br label %if.then322

if.end138:                                        ; preds = %if.end102.if.end138_crit_edge, %if.end76.if.end138_crit_edge
  %75 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %attr, align 8
  %and140 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.lor.lhs.false_crit_edge, label %land.lhs.true142

if.end138.lor.lhs.false_crit_edge:                ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true142:                                 ; preds = %if.end138
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack534 = load i32, ptr %ia_uid, align 8
  %78 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack535 = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack534, i32 %.unpack535)
  %cmp.i539 = icmp eq i32 %.unpack534, %.unpack535
  br i1 %cmp.i539, label %land.lhs.true142.lor.lhs.false_crit_edge, label %land.lhs.true142.land.lhs.true159_crit_edge

land.lhs.true142.land.lhs.true159_crit_edge:      ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true159

land.lhs.true142.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true142.lor.lhs.false_crit_edge, %if.end138.lor.lhs.false_crit_edge
  %and148 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %lor.lhs.false.if.else248_crit_edge, label %land.lhs.true150

lor.lhs.false.if.else248_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else248

land.lhs.true150:                                 ; preds = %lor.lhs.false
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack526 = load i32, ptr %ia_gid, align 4
  %80 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack527 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack526, i32 %.unpack527)
  %cmp.i540 = icmp eq i32 %.unpack526, %.unpack527
  br i1 %cmp.i540, label %land.lhs.true150.if.else248_crit_edge, label %if.then155

land.lhs.true150.if.else248_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else248

if.then155:                                       ; preds = %land.lhs.true150
  br i1 %tobool141.not, label %if.then155.if.end180_crit_edge, label %if.then155.land.lhs.true159_crit_edge

if.then155.land.lhs.true159_crit_edge:            ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true159

if.then155.if.end180_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

land.lhs.true159:                                 ; preds = %if.then155.land.lhs.true159_crit_edge, %land.lhs.true142.land.lhs.true159_crit_edge
  %i_uid161 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack531 = load i32, ptr %ia_uid, align 8
  %82 = ptrtoint ptr %i_uid161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack532 = load i32, ptr %i_uid161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack531, i32 %.unpack532)
  %cmp.i541 = icmp eq i32 %.unpack531, %.unpack532
  br i1 %cmp.i541, label %land.lhs.true159.if.end180_crit_edge, label %land.lhs.true165

land.lhs.true159.if.end180_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

land.lhs.true165:                                 ; preds = %land.lhs.true159
  %83 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info, align 16
  %s_feature_ro_compat = getelementptr inbounds %struct.ocfs2_super, ptr %84, i32 0, i32 20
  %85 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_feature_ro_compat, align 4
  %and167 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %land.lhs.true165.if.end180_crit_edge, label %if.then169

land.lhs.true165.if.end180_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then169:                                       ; preds = %land.lhs.true165
  %.fca.0.insert409 = insertvalue [2 x i32] poison, i32 %.unpack531, 0
  %.fca.1.insert412 = insertvalue [2 x i32] %.fca.0.insert409, i32 0, 1
  %call172 = call ptr @dqget(ptr noundef %3, [2 x i32] %.fca.1.insert412) #10
  %87 = ptrtoint ptr %transfer_to to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call172, ptr %transfer_to, align 4
  %cmp.i542 = icmp ugt ptr %call172, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i542, label %if.then175, label %if.then169.if.end180_crit_edge

if.then169.if.end180_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then175:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %call172 to i32
  %89 = ptrtoint ptr %transfer_to to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %transfer_to, align 4
  br label %bail_unlock

if.end180:                                        ; preds = %if.then169.if.end180_crit_edge, %land.lhs.true165.if.end180_crit_edge, %land.lhs.true159.if.end180_crit_edge, %if.then155.if.end180_crit_edge
  %90 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %attr, align 8
  %and182 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end180.if.end208_crit_edge, label %land.lhs.true184

if.end180.if.end208_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

land.lhs.true184:                                 ; preds = %if.end180
  %i_gid186 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %92)
  %.unpack528 = load i32, ptr %ia_gid, align 4
  %93 = ptrtoint ptr %i_gid186 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.unpack529 = load i32, ptr %i_gid186, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack528, i32 %.unpack529)
  %cmp.i543 = icmp eq i32 %.unpack528, %.unpack529
  br i1 %cmp.i543, label %land.lhs.true184.if.end208_crit_edge, label %land.lhs.true190

land.lhs.true184.if.end208_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

land.lhs.true190:                                 ; preds = %land.lhs.true184
  %94 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info, align 16
  %s_feature_ro_compat192 = getelementptr inbounds %struct.ocfs2_super, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %s_feature_ro_compat192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_feature_ro_compat192, align 4
  %and193 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %land.lhs.true190.if.end208_crit_edge, label %if.then195

land.lhs.true190.if.end208_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

if.then195:                                       ; preds = %land.lhs.true190
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %.unpack528, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  %call199 = call ptr @dqget(ptr noundef %3, [2 x i32] %.fca.1.insert) #10
  %arrayidx200 = getelementptr inbounds [3 x ptr], ptr %transfer_to, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call199, ptr %arrayidx200, align 4
  %cmp.i544 = icmp ugt ptr %call199, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i544, label %if.then203, label %if.then195.if.end208_crit_edge

if.then195.if.end208_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

if.then203:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %call199 to i32
  %100 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %arrayidx200, align 4
  br label %bail_unlock

if.end208:                                        ; preds = %if.then195.if.end208_crit_edge, %land.lhs.true190.if.end208_crit_edge, %land.lhs.true184.if.end208_crit_edge, %if.end180.if.end208_crit_edge
  %ip_alloc_sem = getelementptr i8, ptr %1, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #10
  %101 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info, align 16
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ocfs2_super, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i547 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i547)
  %tobool.not.i548 = icmp eq i32 %and.i547, 0
  %spec.select.i = select i1 %tobool.not.i548, i32 0, i32 6
  %and3.i = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %105 = add nuw nsw i32 %spec.select.i, 6
  %mul = select i1 %tobool4.not.i, i32 %spec.select.i, i32 %105
  %add = or i32 %mul, 1
  %call211 = call ptr @ocfs2_start_trans(ptr noundef %5, i32 noundef %add) #10
  %cmp.i549 = icmp ugt ptr %call211, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i549, label %if.then213, label %if.end242

if.then213:                                       ; preds = %if.end208
  %106 = ptrtoint ptr %call211 to i32
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %106, label %do.body231 [
    i32 -512, label %if.then213.bail_unlock_alloc_crit_edge
    i32 -4, label %if.then213.bail_unlock_alloc_crit_edge568
    i32 524289, label %if.then213.bail_unlock_alloc_crit_edge569
    i32 -28, label %if.then213.bail_unlock_alloc_crit_edge570
    i32 -122, label %if.then213.bail_unlock_alloc_crit_edge571
  ]

if.then213.bail_unlock_alloc_crit_edge571:        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then213.bail_unlock_alloc_crit_edge570:        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then213.bail_unlock_alloc_crit_edge569:        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then213.bail_unlock_alloc_crit_edge568:        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then213.bail_unlock_alloc_crit_edge:           ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

do.body231:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m232) #10
  %108 = ptrtoint ptr %_m232 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 1152921504606846976, ptr %_m232, align 8
  %conv236 = sext i32 %106 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m232, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1255, ptr noundef nonnull @.str, i64 noundef %conv236) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m232) #10
  br label %bail_unlock_alloc

if.end242:                                        ; preds = %if.end208
  %call243 = call i32 @__dquot_transfer(ptr noundef %1, ptr noundef nonnull %transfer_to) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %if.end242.bail_commit_crit_edge, label %if.end242.if.end283_crit_edge

if.end242.if.end283_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.end242.bail_commit_crit_edge:                  ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit

if.else248:                                       ; preds = %land.lhs.true150.if.else248_crit_edge, %lor.lhs.false.if.else248_crit_edge
  %ip_alloc_sem250 = getelementptr i8, ptr %1, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem250) #10
  %call251 = call ptr @ocfs2_start_trans(ptr noundef %5, i32 noundef 1) #10
  %cmp.i551 = icmp ugt ptr %call251, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i551, label %if.then253, label %if.else248.if.end283_crit_edge

if.else248.if.end283_crit_edge:                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.then253:                                       ; preds = %if.else248
  %109 = ptrtoint ptr %call251 to i32
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %109, label %do.body271 [
    i32 -512, label %if.then253.bail_unlock_alloc_crit_edge
    i32 -4, label %if.then253.bail_unlock_alloc_crit_edge572
    i32 524289, label %if.then253.bail_unlock_alloc_crit_edge573
    i32 -28, label %if.then253.bail_unlock_alloc_crit_edge574
    i32 -122, label %if.then253.bail_unlock_alloc_crit_edge575
  ]

if.then253.bail_unlock_alloc_crit_edge575:        ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then253.bail_unlock_alloc_crit_edge574:        ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then253.bail_unlock_alloc_crit_edge573:        ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then253.bail_unlock_alloc_crit_edge572:        ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

if.then253.bail_unlock_alloc_crit_edge:           ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_alloc

do.body271:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m272) #10
  %111 = ptrtoint ptr %_m272 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 1152921504606846976, ptr %_m272, align 8
  %conv276 = sext i32 %109 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m272, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1266, ptr noundef nonnull @.str, i64 noundef %conv276) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m272) #10
  br label %bail_unlock_alloc

if.end283:                                        ; preds = %if.else248.if.end283_crit_edge, %if.end242.if.end283_crit_edge
  %handle.0 = phi ptr [ %call251, %if.else248.if.end283_crit_edge ], [ %call211, %if.end242.if.end283_crit_edge ]
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #10
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #10
  %112 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bh, align 4
  %call284 = call i32 @ocfs2_mark_inode_dirty(ptr noundef %handle.0, ptr noundef %1, ptr noundef %113) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %cmp285 = icmp slt i32 %call284, 0
  br i1 %cmp285, label %if.then287, label %if.end283.bail_commit_crit_edge

if.end283.bail_commit_crit_edge:                  ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit

if.then287:                                       ; preds = %if.end283
  %114 = zext i32 %call284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call284, label %do.body304 [
    i32 -512, label %if.then287.bail_commit_crit_edge
    i32 -4, label %if.then287.bail_commit_crit_edge576
    i32 -28, label %if.then287.bail_commit_crit_edge577
    i32 -122, label %if.then287.bail_commit_crit_edge578
  ]

if.then287.bail_commit_crit_edge578:              ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit

if.then287.bail_commit_crit_edge577:              ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit

if.then287.bail_commit_crit_edge576:              ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit

if.then287.bail_commit_crit_edge:                 ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_commit

do.body304:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m305) #10
  %115 = ptrtoint ptr %_m305 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 1152921504606846976, ptr %_m305, align 8
  %conv309 = sext i32 %call284 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m305, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1276, ptr noundef nonnull @.str, i64 noundef %conv309) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m305) #10
  br label %bail_commit

bail_commit:                                      ; preds = %do.body304, %if.then287.bail_commit_crit_edge, %if.then287.bail_commit_crit_edge576, %if.then287.bail_commit_crit_edge577, %if.then287.bail_commit_crit_edge578, %if.end283.bail_commit_crit_edge, %if.end242.bail_commit_crit_edge
  %handle.1 = phi ptr [ %handle.0, %if.end283.bail_commit_crit_edge ], [ %call211, %if.end242.bail_commit_crit_edge ], [ %handle.0, %if.then287.bail_commit_crit_edge ], [ %handle.0, %if.then287.bail_commit_crit_edge576 ], [ %handle.0, %if.then287.bail_commit_crit_edge577 ], [ %handle.0, %if.then287.bail_commit_crit_edge578 ], [ %handle.0, %do.body304 ]
  %status.1 = phi i32 [ %call284, %if.end283.bail_commit_crit_edge ], [ %call243, %if.end242.bail_commit_crit_edge ], [ %call284, %if.then287.bail_commit_crit_edge ], [ %call284, %if.then287.bail_commit_crit_edge576 ], [ %call284, %if.then287.bail_commit_crit_edge577 ], [ %call284, %if.then287.bail_commit_crit_edge578 ], [ %call284, %do.body304 ]
  %call316 = call i32 @ocfs2_commit_trans(ptr noundef %5, ptr noundef %handle.1) #10
  br label %bail_unlock_alloc

bail_unlock_alloc:                                ; preds = %bail_commit, %do.body271, %if.then253.bail_unlock_alloc_crit_edge, %if.then253.bail_unlock_alloc_crit_edge572, %if.then253.bail_unlock_alloc_crit_edge573, %if.then253.bail_unlock_alloc_crit_edge574, %if.then253.bail_unlock_alloc_crit_edge575, %do.body231, %if.then213.bail_unlock_alloc_crit_edge, %if.then213.bail_unlock_alloc_crit_edge568, %if.then213.bail_unlock_alloc_crit_edge569, %if.then213.bail_unlock_alloc_crit_edge570, %if.then213.bail_unlock_alloc_crit_edge571
  %status.2 = phi i32 [ %status.1, %bail_commit ], [ %106, %if.then213.bail_unlock_alloc_crit_edge ], [ %106, %if.then213.bail_unlock_alloc_crit_edge568 ], [ %106, %if.then213.bail_unlock_alloc_crit_edge569 ], [ %106, %if.then213.bail_unlock_alloc_crit_edge570 ], [ %106, %if.then213.bail_unlock_alloc_crit_edge571 ], [ %106, %do.body231 ], [ %109, %if.then253.bail_unlock_alloc_crit_edge ], [ %109, %if.then253.bail_unlock_alloc_crit_edge572 ], [ %109, %if.then253.bail_unlock_alloc_crit_edge573 ], [ %109, %if.then253.bail_unlock_alloc_crit_edge574 ], [ %109, %if.then253.bail_unlock_alloc_crit_edge575 ], [ %109, %do.body271 ]
  %ip_alloc_sem318 = getelementptr i8, ptr %1, i32 -424
  call void @up_write(ptr noundef %ip_alloc_sem318) #10
  br label %bail_unlock

bail_unlock:                                      ; preds = %bail_unlock_alloc, %if.then203, %if.then175
  %status.3 = phi i32 [ %status.2, %bail_unlock_alloc ], [ %99, %if.then203 ], [ %88, %if.then175 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %tobool319.not = icmp eq i32 %status.3, 0
  br i1 %tobool319.not, label %bail_unlock.bail_unlock_rw_crit_edge, label %bail_unlock.if.then322_crit_edge

bail_unlock.if.then322_crit_edge:                 ; preds = %bail_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then322

bail_unlock.bail_unlock_rw_crit_edge:             ; preds = %bail_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_unlock_rw

if.then322:                                       ; preds = %bail_unlock.if.then322_crit_edge, %do.body125, %if.then105.if.then322_crit_edge, %if.then105.if.then322_crit_edge565, %if.then105.if.then322_crit_edge566, %if.then105.if.then322_crit_edge567, %if.then90.if.then322_crit_edge, %if.then78.if.then322_crit_edge
  %status.3560 = phi i32 [ %status.3, %bail_unlock.if.then322_crit_edge ], [ -28, %if.then105.if.then322_crit_edge ], [ -28, %if.then105.if.then322_crit_edge565 ], [ -28, %if.then105.if.then322_crit_edge566 ], [ -28, %if.then105.if.then322_crit_edge567 ], [ -28, %do.body125 ], [ %call1.i, %if.then90.if.then322_crit_edge ], [ %call79, %if.then78.if.then322_crit_edge ]
  call void @ocfs2_inode_unlock_tracker(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %oh, i32 noundef %call61) #10
  br label %bail_unlock_rw

bail_unlock_rw:                                   ; preds = %if.then322, %bail_unlock.bail_unlock_rw_crit_edge, %if.end60.bail_unlock_rw_crit_edge
  %inode_locked.0 = phi i32 [ 0, %if.then322 ], [ 1, %bail_unlock.bail_unlock_rw_crit_edge ], [ 0, %if.end60.bail_unlock_rw_crit_edge ]
  %status.4 = phi i32 [ %status.3560, %if.then322 ], [ 0, %bail_unlock.bail_unlock_rw_crit_edge ], [ %call61, %if.end60.bail_unlock_rw_crit_edge ]
  br i1 %43, label %if.then325, label %bail_unlock_rw.bail_crit_edge

bail_unlock_rw.bail_crit_edge:                    ; preds = %bail_unlock_rw
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then325:                                       ; preds = %bail_unlock_rw
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_rw_unlock(ptr noundef %1, i32 noundef 1) #10
  br label %bail

bail:                                             ; preds = %if.then325, %bail_unlock_rw.bail_crit_edge, %do.body, %if.then38.bail_crit_edge, %if.then38.bail_crit_edge562, %if.then38.bail_crit_edge563, %if.then38.bail_crit_edge564
  %had_lock.0 = phi i32 [ %call61, %if.then325 ], [ %call61, %bail_unlock_rw.bail_crit_edge ], [ -1, %if.then38.bail_crit_edge ], [ -1, %if.then38.bail_crit_edge562 ], [ -1, %if.then38.bail_crit_edge563 ], [ -1, %if.then38.bail_crit_edge564 ], [ -1, %do.body ]
  %inode_locked.1 = phi i32 [ %inode_locked.0, %if.then325 ], [ %inode_locked.0, %bail_unlock_rw.bail_crit_edge ], [ 0, %if.then38.bail_crit_edge ], [ 0, %if.then38.bail_crit_edge562 ], [ 0, %if.then38.bail_crit_edge563 ], [ 0, %if.then38.bail_crit_edge564 ], [ 0, %do.body ]
  %status.5 = phi i32 [ %status.4, %if.then325 ], [ %status.4, %bail_unlock_rw.bail_crit_edge ], [ %call35, %if.then38.bail_crit_edge ], [ %call35, %if.then38.bail_crit_edge562 ], [ %call35, %if.then38.bail_crit_edge563 ], [ %call35, %if.then38.bail_crit_edge564 ], [ %call35, %do.body ]
  %116 = ptrtoint ptr %transfer_to to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %transfer_to, align 4
  call void @dqput(ptr noundef %117) #10
  %arrayidx329.1 = getelementptr inbounds [3 x ptr], ptr %transfer_to, i32 0, i32 1
  %118 = ptrtoint ptr %arrayidx329.1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx329.1, align 4
  call void @dqput(ptr noundef %119) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.5)
  %tobool330.not = icmp eq i32 %status.5, 0
  br i1 %tobool330.not, label %land.lhs.true331, label %bail.if.end368_crit_edge

bail.if.end368_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

land.lhs.true331:                                 ; preds = %bail
  %120 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %attr, align 8
  %and333 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  br i1 %tobool334.not, label %land.lhs.true331.if.end368_crit_edge, label %if.then335

land.lhs.true331.if.end368_crit_edge:             ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then335:                                       ; preds = %land.lhs.true331
  %122 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bh, align 4
  %call336 = call i32 @ocfs2_acl_chmod(ptr noundef %1, ptr noundef %123) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %if.then339, label %if.then335.if.end368_crit_edge

if.then335.if.end368_crit_edge:                   ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then339:                                       ; preds = %if.then335
  %124 = zext i32 %call336 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call336, label %do.body356 [
    i32 -512, label %if.then339.if.end368_crit_edge
    i32 -4, label %if.then339.if.end368_crit_edge579
    i32 -28, label %if.then339.if.end368_crit_edge580
    i32 -122, label %if.then339.if.end368_crit_edge581
  ]

if.then339.if.end368_crit_edge581:                ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then339.if.end368_crit_edge580:                ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then339.if.end368_crit_edge579:                ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then339.if.end368_crit_edge:                   ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

do.body356:                                       ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m357) #10
  %125 = ptrtoint ptr %_m357 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 1152921504606846976, ptr %_m357, align 8
  %conv361 = sext i32 %call336 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m357, ptr noundef nonnull @__func__.ocfs2_setattr, i32 noundef 1299, ptr noundef nonnull @.str, i64 noundef %conv361) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m357) #10
  br label %if.end368

if.end368:                                        ; preds = %do.body356, %if.then339.if.end368_crit_edge, %if.then339.if.end368_crit_edge579, %if.then339.if.end368_crit_edge580, %if.then339.if.end368_crit_edge581, %if.then335.if.end368_crit_edge, %land.lhs.true331.if.end368_crit_edge, %bail.if.end368_crit_edge
  %status.6 = phi i32 [ %status.5, %bail.if.end368_crit_edge ], [ %call336, %if.then335.if.end368_crit_edge ], [ 0, %land.lhs.true331.if.end368_crit_edge ], [ %call336, %if.then339.if.end368_crit_edge ], [ %call336, %if.then339.if.end368_crit_edge579 ], [ %call336, %if.then339.if.end368_crit_edge580 ], [ %call336, %if.then339.if.end368_crit_edge581 ], [ %call336, %do.body356 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inode_locked.1)
  %tobool369.not = icmp eq i32 %inode_locked.1, 0
  br i1 %tobool369.not, label %if.end368.if.end371_crit_edge, label %if.then370

if.end368.if.end371_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end371

if.then370:                                       ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_inode_unlock_tracker(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %oh, i32 noundef %had_lock.0) #10
  br label %if.end371

if.end371:                                        ; preds = %if.then370, %if.end368.if.end371_crit_edge
  %126 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bh, align 4
  %tobool.not.i553 = icmp eq ptr %127, null
  br i1 %tobool.not.i553, label %if.end371.cleanup_crit_edge, label %if.then.i

if.end371.cleanup_crit_edge:                      ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %127) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end371.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call20, %if.then19.cleanup_crit_edge ], [ %status.6, %if.end371.cleanup_crit_edge ], [ %status.6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oh) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %transfer_to) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_setattr(ptr noundef %inode, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i32 noundef %ia_valid, i32 noundef %ia_mode, i32 noundef %ia_uid, i32 noundef %ia_gid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_setattr, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_setattr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !197
  %call42 = tail call i32 @__traceiter_ocfs2_setattr(ptr noundef null, ptr noundef %inode, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i32 noundef %ia_valid, i32 noundef %ia_mode, i32 noundef %ia_uid, i32 noundef %ia_gid) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_setattr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_setattr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_setattr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_setattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1440, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_rw_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_tracker(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_extend_file(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %new_i_size) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m98 = alloca i64, align 8
  %_m130 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %di_bh, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !179

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1058, 0\0A.popsection", ""() #10, !srcloc !199
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_i_size)
  %cmp = icmp eq i64 %new_i_size, 0
  br i1 %cmp, label %do.end9.out_crit_edge, label %if.end11

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %do.end9
  %call12 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %new_i_size)
  %cmp13 = icmp eq i64 %call12, %new_i_size
  br i1 %cmp13, label %if.end11.out_crit_edge, label %do.body16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body16:                                        ; preds = %if.end11
  %call17 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %new_i_size)
  %cmp18 = icmp ugt i64 %call17, %new_i_size
  br i1 %cmp18, label %do.body26, label %do.end34, !prof !179

do.body26:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1066, 0\0A.popsection", ""() #10, !srcloc !200
  unreachable

do.end34:                                         ; preds = %do.body16
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  tail call void @down_write(ptr noundef %ip_alloc_sem) #10
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %0 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ip_dyn_features, align 4
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool35.not = icmp eq i16 %2, 0
  br i1 %tobool35.not, label %do.end34.if.end70_crit_edge, label %if.then36

do.end34.if.end70_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then36:                                        ; preds = %do.end34
  %call37 = tail call i32 @ocfs2_size_fits_inline_data(ptr noundef nonnull %di_bh, i64 noundef %new_i_size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %ip_alloc_sem) #10
  br label %out_update_size

if.end41:                                         ; preds = %if.then36
  %call42 = tail call i32 @ocfs2_convert_inline_data_to_extents(ptr noundef %inode, ptr noundef nonnull %di_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.if.end70_crit_edge, label %if.then44

if.end41.if.end70_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then44:                                        ; preds = %if.end41
  tail call void @up_write(ptr noundef %ip_alloc_sem) #10
  %3 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call42, label %do.body60 [
    i32 -512, label %if.then44.out_crit_edge
    i32 -4, label %if.then44.out_crit_edge188
    i32 524289, label %if.then44.out_crit_edge189
    i32 -28, label %if.then44.out_crit_edge190
    i32 -122, label %if.then44.out_crit_edge191
  ]

if.then44.out_crit_edge191:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then44.out_crit_edge190:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then44.out_crit_edge189:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then44.out_crit_edge188:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body60:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv64 = sext i32 %call42 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_extend_file, i32 noundef 1090, ptr noundef nonnull @.str, i64 noundef %conv64) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end70:                                         ; preds = %if.end41.if.end70_crit_edge, %do.end34.if.end70_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_incompat.i, align 8
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool72.not = icmp eq i32 %11, 0
  br i1 %tobool72.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 @ocfs2_zero_extend(ptr noundef %inode, ptr noundef nonnull %di_bh, i64 noundef %new_i_size)
  br label %if.end76

if.else:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 @ocfs2_extend_no_holes(ptr noundef %inode, ptr noundef nonnull %di_bh, i64 noundef %new_i_size, i64 noundef %new_i_size)
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then73
  %ret.0 = phi i32 [ %call74, %if.then73 ], [ %call75, %if.else ]
  tail call void @up_write(ptr noundef %ip_alloc_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp78 = icmp slt i32 %ret.0, 0
  br i1 %cmp78, label %if.then80, label %if.end76.out_update_size_crit_edge

if.end76.out_update_size_crit_edge:               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_update_size

if.then80:                                        ; preds = %if.end76
  %12 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %ret.0, label %do.body97 [
    i32 -512, label %if.then80.out_crit_edge
    i32 -4, label %if.then80.out_crit_edge192
    i32 -28, label %if.then80.out_crit_edge193
    i32 -122, label %if.then80.out_crit_edge194
  ]

if.then80.out_crit_edge194:                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then80.out_crit_edge193:                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then80.out_crit_edge192:                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then80.out_crit_edge:                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body97:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m98) #10
  %13 = ptrtoint ptr %_m98 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m98, align 8
  %conv102 = sext i32 %ret.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m98, ptr noundef nonnull @__func__.ocfs2_extend_file, i32 noundef 1104, ptr noundef nonnull @.str, i64 noundef %conv102) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m98) #10
  br label %out

out_update_size:                                  ; preds = %if.end76.out_update_size_crit_edge, %if.then39
  %call109 = tail call i32 @ocfs2_simple_size_update(ptr noundef %inode, ptr noundef nonnull %di_bh, i64 noundef %new_i_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %out_update_size.out_crit_edge

out_update_size.out_crit_edge:                    ; preds = %out_update_size
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then112:                                       ; preds = %out_update_size
  %14 = zext i32 %call109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call109, label %do.body129 [
    i32 -512, label %if.then112.out_crit_edge
    i32 -4, label %if.then112.out_crit_edge195
    i32 -28, label %if.then112.out_crit_edge196
    i32 -122, label %if.then112.out_crit_edge197
  ]

if.then112.out_crit_edge197:                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then112.out_crit_edge196:                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then112.out_crit_edge195:                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then112.out_crit_edge:                         ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body129:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130) #10
  %15 = ptrtoint ptr %_m130 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m130, align 8
  %conv134 = sext i32 %call109 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130, ptr noundef nonnull @__func__.ocfs2_extend_file, i32 noundef 1111, ptr noundef nonnull @.str, i64 noundef %conv134) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130) #10
  br label %out

out:                                              ; preds = %do.body129, %if.then112.out_crit_edge, %if.then112.out_crit_edge195, %if.then112.out_crit_edge196, %if.then112.out_crit_edge197, %out_update_size.out_crit_edge, %do.body97, %if.then80.out_crit_edge, %if.then80.out_crit_edge192, %if.then80.out_crit_edge193, %if.then80.out_crit_edge194, %do.body60, %if.then44.out_crit_edge, %if.then44.out_crit_edge188, %if.then44.out_crit_edge189, %if.then44.out_crit_edge190, %if.then44.out_crit_edge191, %if.end11.out_crit_edge, %do.end9.out_crit_edge
  %ret.1 = phi i32 [ 0, %do.end9.out_crit_edge ], [ 0, %if.end11.out_crit_edge ], [ %call109, %out_update_size.out_crit_edge ], [ %call42, %if.then44.out_crit_edge ], [ %call42, %if.then44.out_crit_edge188 ], [ %call42, %if.then44.out_crit_edge189 ], [ %call42, %if.then44.out_crit_edge190 ], [ %call42, %if.then44.out_crit_edge191 ], [ %call42, %do.body60 ], [ %ret.0, %if.then80.out_crit_edge ], [ %ret.0, %if.then80.out_crit_edge192 ], [ %ret.0, %if.then80.out_crit_edge193 ], [ %ret.0, %if.then80.out_crit_edge194 ], [ %ret.0, %do.body97 ], [ %call109, %if.then112.out_crit_edge ], [ %call109, %if.then112.out_crit_edge195 ], [ %call109, %if.then112.out_crit_edge196 ], [ %call109, %if.then112.out_crit_edge197 ], [ %call109, %do.body129 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dqget(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock_tracker(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_rw_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dqput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_acl_chmod(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %flags) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %call3 = tail call i32 @ocfs2_inode_revalidate(ptr noundef %1) #10
  %8 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call3, label %do.body [
    i32 0, label %if.end18
    i32 -2, label %entry.bail_crit_edge
    i32 -512, label %entry.bail_crit_edge43
    i32 -4, label %entry.bail_crit_edge44
    i32 524289, label %entry.bail_crit_edge45
    i32 -28, label %entry.bail_crit_edge46
    i32 -122, label %entry.bail_crit_edge47
  ]

entry.bail_crit_edge47:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

entry.bail_crit_edge46:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

entry.bail_crit_edge45:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

entry.bail_crit_edge44:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

entry.bail_crit_edge43:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_getattr, i32 noundef 1319, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

if.end18:                                         ; preds = %entry
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #10
  %ip_dyn_features = getelementptr i8, ptr %3, i32 -172
  %10 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ip_dyn_features, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool22.not = icmp eq i16 %12, 0
  br i1 %tobool22.not, label %if.end18.if.end27_crit_edge, label %if.then25, !prof !167

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  %add = add i64 %14, 511
  %shr = ashr i64 %add, 9
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %15 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %blocks, align 8
  %add26 = add i64 %shr, %16
  store i64 %add26, ptr %blocks, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end18.if.end27_crit_edge
  %s_clustersize = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 35
  %17 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_clustersize, align 4
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %19 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %blksize, align 4
  br label %bail

bail:                                             ; preds = %if.end27, %do.body, %entry.bail_crit_edge, %entry.bail_crit_edge43, %entry.bail_crit_edge44, %entry.bail_crit_edge45, %entry.bail_crit_edge46, %entry.bail_crit_edge47
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_revalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  %oh = alloca %struct.ocfs2_lock_holder, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oh) #10
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = call ptr @memset(ptr %oh, i32 255, i32 16)
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ocfs2_inode_lock_tracker(ptr noundef %inode, ptr noundef null, i32 noundef 0, ptr noundef nonnull %oh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.else.if.end9_crit_edge, label %do.body

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_permission, i32 noundef 1362, ptr noundef nonnull @.str.3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @dump_stack() #13
  br label %if.end9

if.end9:                                          ; preds = %do.body, %if.else.if.end9_crit_edge
  %call10 = call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #10
  call void @ocfs2_inode_unlock_tracker(ptr noundef %inode, i32 noundef 0, ptr noundef nonnull %oh, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %entry.cleanup_crit_edge ], [ %call10, %if.end9 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_remove_inode_range(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %byte_start, i64 noundef %byte_len) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m62.i = alloca i64, align 8
  %_m110.i = alloca i64, align 8
  %_m150.i = alloca i64, align 8
  %cluster_in_el = alloca i32, align 4
  %dealloc = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %et = alloca %struct.ocfs2_extent_tree, align 4
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m85 = alloca i64, align 8
  %_m120 = alloca i64, align 8
  %_m151 = alloca i64, align 8
  %_m185 = alloca i64, align 8
  %_m227 = alloca i64, align 8
  %_m272 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster_in_el) #10
  %0 = ptrtoint ptr %cluster_in_el to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cluster_in_el, align 4, !annotation !187
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dealloc) #10
  %5 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, ptr %dealloc, i32 0, i32 1
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et) #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %8 = call ptr @memset(ptr %et, i32 255, i32 32)
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %i_refcount_loc = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 29
  %11 = ptrtoint ptr %i_refcount_loc to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_refcount_loc, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et, ptr noundef %ip_metadata_cache.i, ptr noundef %di_bh) #10
  %14 = ptrtoint ptr %dealloc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dealloc, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_remove_inode_range(i64 noundef %17, i64 noundef %byte_start, i64 noundef %byte_len)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %byte_len)
  %cmp = icmp eq i64 %byte_len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %18 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ip_dyn_features, align 4
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %if.end30, label %if.then3

if.then3:                                         ; preds = %if.end
  %conv4 = trunc i64 %byte_start to i32
  %add = add i64 %byte_len, %byte_start
  %conv5 = trunc i64 %add to i32
  %call6 = call i32 @ocfs2_truncate_inline(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %conv4, i32 noundef %conv5, i32 noundef 0) #10
  %21 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call6, label %do.body [
    i32 0, label %if.end29
    i32 -512, label %if.then3.out_crit_edge
    i32 -4, label %if.then3.out_crit_edge486
    i32 524289, label %if.then3.out_crit_edge487
    i32 -28, label %if.then3.out_crit_edge488
    i32 -122, label %if.then3.out_crit_edge489
  ]

if.then3.out_crit_edge489:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then3.out_crit_edge488:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then3.out_crit_edge487:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then3.out_crit_edge486:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %22 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv26 = sext i32 %call6 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1793, ptr noundef nonnull @.str, i64 noundef %conv26) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end29:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  call void @unmap_mapping_range(ptr noundef %7, i64 noundef 0, i64 noundef 0, i32 noundef 0) #10
  call void @truncate_inode_pages(ptr noundef %7, i64 noundef 0) #10
  br label %out

if.end30:                                         ; preds = %if.end
  %23 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ip_dyn_features, align 4
  %25 = and i16 %24, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not = icmp eq i16 %25, 0
  br i1 %tobool.i.not, label %if.end30.if.end96_crit_edge, label %if.then32

if.end30.if.end96_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i64 %byte_len, %byte_start
  br label %if.end96

if.then32:                                        ; preds = %if.end30
  %call33 = call fastcc i32 @ocfs2_cow_file_pos(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %byte_start)
  %26 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call33, label %do.body52 [
    i32 0, label %if.end63
    i32 -512, label %if.then32.out_crit_edge
    i32 -4, label %if.then32.out_crit_edge490
    i32 524289, label %if.then32.out_crit_edge491
    i32 -28, label %if.then32.out_crit_edge492
    i32 -122, label %if.then32.out_crit_edge493
  ]

if.then32.out_crit_edge493:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then32.out_crit_edge492:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then32.out_crit_edge491:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then32.out_crit_edge490:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body52:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #10
  %27 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m53, align 8
  %conv57 = sext i32 %call33 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1816, ptr noundef nonnull @.str, i64 noundef %conv57) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #10
  br label %out

if.end63:                                         ; preds = %if.then32
  %add64 = add i64 %byte_len, %byte_start
  %call65 = call fastcc i32 @ocfs2_cow_file_pos(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %add64)
  %28 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call65, label %do.body84 [
    i32 0, label %if.end63.if.end96_crit_edge
    i32 -512, label %if.end63.out_crit_edge
    i32 -4, label %if.end63.out_crit_edge494
    i32 524289, label %if.end63.out_crit_edge495
    i32 -28, label %if.end63.out_crit_edge496
    i32 -122, label %if.end63.out_crit_edge497
  ]

if.end63.out_crit_edge497:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end63.out_crit_edge496:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end63.out_crit_edge495:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end63.out_crit_edge494:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end63.if.end96_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.body84:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85) #10
  %29 = ptrtoint ptr %_m85 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921504606846976, ptr %_m85, align 8
  %conv89 = sext i32 %call65 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1822, ptr noundef nonnull @.str, i64 noundef %conv89) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85) #10
  br label %out

if.end96:                                         ; preds = %if.end63.if.end96_crit_edge, %if.end30.if.end96_crit_edge
  %add98.pre-phi = phi i64 [ %.pre, %if.end30.if.end96_crit_edge ], [ %add64, %if.end63.if.end96_crit_edge ]
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 1
  %30 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %33, i32 0, i32 36
  %34 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %33, i32 0, i32 35
  %36 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %37, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %conv.i, %byte_start
  %sh_prom.i = zext i32 %35 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 36
  %38 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %39 to i64
  %shr = lshr i64 %add98.pre-phi, %sh_prom
  %conv99 = trunc i64 %shr to i32
  %40 = ptrtoint ptr %cluster_in_el to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv99, ptr %cluster_in_el, align 4
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i418 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i418 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i418, align 16
  %s_clustersize.i419 = getelementptr inbounds %struct.ocfs2_super, ptr %44, i32 0, i32 35
  %45 = ptrtoint ptr %s_clustersize.i419 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_clustersize.i419, align 4
  %call.i = call fastcc i64 @i_size_read(ptr noundef %inode) #10
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_zero_partial_clusters(i64 noundef %48, i64 noundef %byte_start, i64 noundef %add98.pre-phi) #10
  %sub.i420 = add i32 %46, -1
  %conv.i421 = zext i32 %sub.i420 to i64
  %and.i = and i64 %conv.i421, %byte_start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp.i = icmp eq i64 %and.i, 0
  %49 = or i64 %add98.pre-phi, %byte_start
  %50 = and i64 %49, %conv.i421
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %if.end96.if.end130_crit_edge, label %if.end.i

if.end96.if.end130_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_cmp8(i64 %add98.pre-phi, i64 %call.i)
  %cmp8.i = icmp ugt i64 %add98.pre-phi, %call.i
  br i1 %cmp8.i, label %if.then10.i, label %if.end.i.if.end40.i_crit_edge

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then10.i:                                      ; preds = %if.end.i
  %sub11.i = sub i64 %add98.pre-phi, %call.i
  %call12.i = call fastcc i32 @ocfs2_zeroout_partial_cluster(ptr noundef %inode, i64 noundef %call.i, i64 noundef %sub11.i) #10
  %52 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call12.i, label %do.body.i [
    i32 0, label %if.end35.i
    i32 -512, label %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge
    i32 -4, label %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge498
    i32 524289, label %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge499
    i32 -28, label %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge500
    i32 -122, label %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge501
  ]

if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge501: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge500: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge499: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge498: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

do.body.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %53 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv32.i = sext i32 %call12.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_zero_partial_clusters, i32 noundef 1618, ptr noundef nonnull @.str, i64 noundef %conv32.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %ocfs2_zero_partial_clusters.exit

if.end35.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %byte_start)
  %cmp36.not.i = icmp ugt i64 %call.i, %byte_start
  br i1 %cmp36.not.i, label %if.end35.i.if.end40.i_crit_edge, label %if.end35.i.if.end130_crit_edge

if.end35.i.if.end130_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end35.i.if.end40.i_crit_edge, %if.end.i.if.end40.i_crit_edge
  %end.0.i = phi i64 [ %add98.pre-phi, %if.end.i.if.end40.i_crit_edge ], [ %call.i, %if.end35.i.if.end40.i_crit_edge ]
  %call41.i = call ptr @ocfs2_start_trans(ptr noundef %44, i32 noundef 1) #10
  %cmp.i.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then43.i, label %if.end72.i

if.then43.i:                                      ; preds = %if.end40.i
  %54 = ptrtoint ptr %call41.i to i32
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %54, label %do.body61.i [
    i32 -512, label %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge
    i32 -4, label %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge502
    i32 524289, label %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge503
    i32 -28, label %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge504
    i32 -122, label %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge505
  ]

if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge505: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge504: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge503: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge502: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_partial_clusters.exit

do.body61.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62.i) #10
  %56 = ptrtoint ptr %_m62.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1152921504606846976, ptr %_m62.i, align 8
  %conv66.i = sext i32 %54 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62.i, ptr noundef nonnull @__func__.ocfs2_zero_partial_clusters, i32 noundef 1628, ptr noundef nonnull @.str, i64 noundef %conv66.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62.i) #10
  br label %ocfs2_zero_partial_clusters.exit

if.end72.i:                                       ; preds = %if.end40.i
  br i1 %cmp.i, label %if.end72.i.if.end121.i_crit_edge, label %if.then78.i

if.end72.i.if.end121.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then78.i:                                      ; preds = %if.end72.i
  %57 = ptrtoint ptr %s_clustersize.i419 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_clustersize.i419, align 4
  %conv80.i = sext i32 %58 to i64
  %neg.i = sub i32 0, %58
  %conv83.i = sext i32 %neg.i to i64
  %and84.i = and i64 %conv83.i, %byte_start
  %add85.i = add i64 %and84.i, %conv80.i
  %59 = call i64 @llvm.umin.i64(i64 %add85.i, i64 %end.0.i) #10
  call fastcc void @trace_ocfs2_zero_partial_clusters_range1(i64 noundef %byte_start, i64 noundef %59) #10
  %call90.i = call i32 @ocfs2_zero_range_for_truncate(ptr noundef %inode, ptr noundef %call41.i, i64 noundef %byte_start, i64 noundef %59) #10
  %60 = zext i32 %call90.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call90.i, label %do.body109.i [
    i32 0, label %if.then78.i.if.end121.i_crit_edge
    i32 -512, label %if.then78.i.if.end121.i_crit_edge506
    i32 -4, label %if.then78.i.if.end121.i_crit_edge507
    i32 524289, label %if.then78.i.if.end121.i_crit_edge508
    i32 -28, label %if.then78.i.if.end121.i_crit_edge509
    i32 -122, label %if.then78.i.if.end121.i_crit_edge510
  ]

if.then78.i.if.end121.i_crit_edge510:             ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then78.i.if.end121.i_crit_edge509:             ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then78.i.if.end121.i_crit_edge508:             ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then78.i.if.end121.i_crit_edge507:             ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then78.i.if.end121.i_crit_edge506:             ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then78.i.if.end121.i_crit_edge:                ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

do.body109.i:                                     ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110.i) #10
  %61 = ptrtoint ptr %_m110.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1152921504606846976, ptr %_m110.i, align 8
  %conv114.i = sext i32 %call90.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110.i, ptr noundef nonnull @__func__.ocfs2_zero_partial_clusters, i32 noundef 1656, ptr noundef nonnull @.str, i64 noundef %conv114.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110.i) #10
  br label %if.end121.i

if.end121.i:                                      ; preds = %do.body109.i, %if.then78.i.if.end121.i_crit_edge, %if.then78.i.if.end121.i_crit_edge506, %if.then78.i.if.end121.i_crit_edge507, %if.then78.i.if.end121.i_crit_edge508, %if.then78.i.if.end121.i_crit_edge509, %if.then78.i.if.end121.i_crit_edge510, %if.end72.i.if.end121.i_crit_edge
  %tmpend.1.i = phi i64 [ %59, %if.then78.i.if.end121.i_crit_edge ], [ 0, %if.end72.i.if.end121.i_crit_edge ], [ %59, %do.body109.i ], [ %59, %if.then78.i.if.end121.i_crit_edge506 ], [ %59, %if.then78.i.if.end121.i_crit_edge507 ], [ %59, %if.then78.i.if.end121.i_crit_edge508 ], [ %59, %if.then78.i.if.end121.i_crit_edge509 ], [ %59, %if.then78.i.if.end121.i_crit_edge510 ]
  %ret.1.i = phi i32 [ %call90.i, %if.then78.i.if.end121.i_crit_edge ], [ 0, %if.end72.i.if.end121.i_crit_edge ], [ %call90.i, %do.body109.i ], [ %call90.i, %if.then78.i.if.end121.i_crit_edge506 ], [ %call90.i, %if.then78.i.if.end121.i_crit_edge507 ], [ %call90.i, %if.then78.i.if.end121.i_crit_edge508 ], [ %call90.i, %if.then78.i.if.end121.i_crit_edge509 ], [ %call90.i, %if.then78.i.if.end121.i_crit_edge510 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %tmpend.1.i, i64 %end.0.i)
  %cmp122.i = icmp ult i64 %tmpend.1.i, %end.0.i
  br i1 %cmp122.i, label %if.then124.i, label %if.end121.i.if.end161.i_crit_edge

if.end121.i.if.end161.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then124.i:                                     ; preds = %if.end121.i
  %62 = ptrtoint ptr %s_clustersize.i419 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_clustersize.i419, align 4
  %neg127.i = sub i32 0, %63
  %conv128.i = sext i32 %neg127.i to i64
  %and129.i = and i64 %end.0.i, %conv128.i
  call fastcc void @trace_ocfs2_zero_partial_clusters_range2(i64 noundef %and129.i, i64 noundef %end.0.i) #10
  %call130.i = call i32 @ocfs2_zero_range_for_truncate(ptr noundef %inode, ptr noundef %call41.i, i64 noundef %and129.i, i64 noundef %end.0.i) #10
  %64 = zext i32 %call130.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call130.i, label %do.body149.i [
    i32 0, label %if.then124.i.if.end161.i_crit_edge
    i32 -512, label %if.then124.i.if.end161.i_crit_edge511
    i32 -4, label %if.then124.i.if.end161.i_crit_edge512
    i32 524289, label %if.then124.i.if.end161.i_crit_edge513
    i32 -28, label %if.then124.i.if.end161.i_crit_edge514
    i32 -122, label %if.then124.i.if.end161.i_crit_edge515
  ]

if.then124.i.if.end161.i_crit_edge515:            ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then124.i.if.end161.i_crit_edge514:            ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then124.i.if.end161.i_crit_edge513:            ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then124.i.if.end161.i_crit_edge512:            ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then124.i.if.end161.i_crit_edge511:            ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then124.i.if.end161.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

do.body149.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m150.i) #10
  %65 = ptrtoint ptr %_m150.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 1152921504606846976, ptr %_m150.i, align 8
  %conv154.i = sext i32 %call130.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m150.i, ptr noundef nonnull @__func__.ocfs2_zero_partial_clusters, i32 noundef 1672, ptr noundef nonnull @.str, i64 noundef %conv154.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m150.i) #10
  br label %if.end161.i

if.end161.i:                                      ; preds = %do.body149.i, %if.then124.i.if.end161.i_crit_edge, %if.then124.i.if.end161.i_crit_edge511, %if.then124.i.if.end161.i_crit_edge512, %if.then124.i.if.end161.i_crit_edge513, %if.then124.i.if.end161.i_crit_edge514, %if.then124.i.if.end161.i_crit_edge515, %if.end121.i.if.end161.i_crit_edge
  %ret.2.i = phi i32 [ %call130.i, %if.then124.i.if.end161.i_crit_edge ], [ %ret.1.i, %if.end121.i.if.end161.i_crit_edge ], [ %call130.i, %do.body149.i ], [ %call130.i, %if.then124.i.if.end161.i_crit_edge511 ], [ %call130.i, %if.then124.i.if.end161.i_crit_edge512 ], [ %call130.i, %if.then124.i.if.end161.i_crit_edge513 ], [ %call130.i, %if.then124.i.if.end161.i_crit_edge514 ], [ %call130.i, %if.then124.i.if.end161.i_crit_edge515 ]
  %h_aborted.i.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call41.i, i32 0, i32 7
  %66 = ptrtoint ptr %h_aborted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load.i.i.i = load i32, ptr %h_aborted.i.i.i, align 4
  %67 = and i32 %bf.load.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end161.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge

if.end161.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit.i

lor.lhs.false.i.i.i:                              ; preds = %if.end161.i
  %68 = ptrtoint ptr %call41.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call41.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, label %is_handle_aborted.exit.i.i

lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit.i

is_handle_aborted.exit.i.i:                       ; preds = %lor.lhs.false.i.i.i
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %and.i.i.i.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge

is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge: ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit.i

if.then.i.i:                                      ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i.i = getelementptr inbounds %struct.transaction_s, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %t_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %t_tid.i.i, align 4
  %i_sync_tid.i.i = getelementptr i8, ptr %inode, i32 884
  %76 = ptrtoint ptr %i_sync_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %i_sync_tid.i.i, align 4
  %77 = ptrtoint ptr %call41.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call41.i, align 4
  %t_tid4.i.i = getelementptr inbounds %struct.transaction_s, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %t_tid4.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %t_tid4.i.i, align 4
  %i_datasync_tid.i.i = getelementptr i8, ptr %inode, i32 888
  %81 = ptrtoint ptr %i_datasync_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %i_datasync_tid.i.i, align 8
  br label %ocfs2_update_inode_fsync_trans.exit.i

ocfs2_update_inode_fsync_trans.exit.i:            ; preds = %if.then.i.i, %is_handle_aborted.exit.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, %lor.lhs.false.i.i.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge, %if.end161.i.ocfs2_update_inode_fsync_trans.exit.i_crit_edge
  %call162.i = call i32 @ocfs2_commit_trans(ptr noundef %44, ptr noundef %call41.i) #10
  br label %ocfs2_zero_partial_clusters.exit

ocfs2_zero_partial_clusters.exit:                 ; preds = %ocfs2_update_inode_fsync_trans.exit.i, %do.body61.i, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge502, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge503, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge504, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge505, %do.body.i, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge498, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge499, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge500, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge501
  %ret.3.i = phi i32 [ %ret.2.i, %ocfs2_update_inode_fsync_trans.exit.i ], [ %call12.i, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge ], [ %call12.i, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge498 ], [ %call12.i, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge499 ], [ %call12.i, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge500 ], [ %call12.i, %if.then10.i.ocfs2_zero_partial_clusters.exit_crit_edge501 ], [ %call12.i, %do.body.i ], [ %54, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge ], [ %54, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge502 ], [ %54, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge503 ], [ %54, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge504 ], [ %54, %if.then43.i.ocfs2_zero_partial_clusters.exit_crit_edge505 ], [ %54, %do.body61.i ]
  %82 = zext i32 %ret.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %ret.3.i, label %do.body119 [
    i32 0, label %ocfs2_zero_partial_clusters.exit.if.end130_crit_edge
    i32 -512, label %ocfs2_zero_partial_clusters.exit.out_crit_edge
    i32 -4, label %ocfs2_zero_partial_clusters.exit.out_crit_edge516
    i32 524289, label %ocfs2_zero_partial_clusters.exit.out_crit_edge517
    i32 -28, label %ocfs2_zero_partial_clusters.exit.out_crit_edge518
    i32 -122, label %ocfs2_zero_partial_clusters.exit.out_crit_edge519
  ]

ocfs2_zero_partial_clusters.exit.out_crit_edge519: ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ocfs2_zero_partial_clusters.exit.out_crit_edge518: ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ocfs2_zero_partial_clusters.exit.out_crit_edge517: ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ocfs2_zero_partial_clusters.exit.out_crit_edge516: ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ocfs2_zero_partial_clusters.exit.out_crit_edge:   ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ocfs2_zero_partial_clusters.exit.if.end130_crit_edge: ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

do.body119:                                       ; preds = %ocfs2_zero_partial_clusters.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120) #10
  %83 = ptrtoint ptr %_m120 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 1152921504606846976, ptr %_m120, align 8
  %conv124 = sext i32 %ret.3.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1833, ptr noundef nonnull @.str, i64 noundef %conv124) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120) #10
  br label %out

if.end130:                                        ; preds = %ocfs2_zero_partial_clusters.exit.if.end130_crit_edge, %if.end35.i.if.end130_crit_edge, %if.end96.if.end130_crit_edge
  %call131 = call ptr @ocfs2_new_path_from_et(ptr noundef nonnull %et) #10
  %tobool132.not = icmp eq ptr %call131, null
  br i1 %tobool132.not, label %do.body150, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end130
  call void @__sanitizer_cov_trace_cmp4(i32 %conv99, i32 %conv2.i)
  %cmp162461 = icmp ugt i32 %conv99, %conv2.i
  br i1 %cmp162461, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.body150:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m151) #10
  %84 = ptrtoint ptr %_m151 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1152921504606846976, ptr %_m151, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m151, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1840, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m151) #10
  br label %out

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %trunc_end.0462 = phi i32 [ %trunc_end.0.be, %while.cond.backedge.while.body_crit_edge ], [ %conv99, %while.cond.preheader.while.body_crit_edge ]
  %85 = ptrtoint ptr %cluster_in_el to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cluster_in_el, align 4
  %call165 = call i32 @ocfs2_find_path(ptr noundef %ip_metadata_cache.i, ptr noundef nonnull %call131, i32 noundef %86) #10
  %87 = zext i32 %call165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call165, label %do.body184 [
    i32 0, label %if.end195
    i32 -512, label %while.body.out_crit_edge
    i32 -4, label %while.body.out_crit_edge520
    i32 524289, label %while.body.out_crit_edge521
    i32 -28, label %while.body.out_crit_edge522
    i32 -122, label %while.body.out_crit_edge523
  ]

while.body.out_crit_edge523:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge522:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge521:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge520:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body184:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m185) #10
  %88 = ptrtoint ptr %_m185 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 1152921504606846976, ptr %_m185, align 8
  %conv189 = sext i32 %call165 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m185, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1849, ptr noundef nonnull @.str, i64 noundef %conv189) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m185) #10
  br label %out

if.end195:                                        ; preds = %while.body
  %89 = ptrtoint ptr %call131 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %call131, align 4
  %el196 = getelementptr %struct.ocfs2_path, ptr %call131, i32 0, i32 2, i32 %90, i32 1
  %91 = ptrtoint ptr %el196 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %el196, align 4
  %l_next_free_rec.i = getelementptr inbounds %struct.ocfs2_extent_list, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %l_next_free_rec.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %l_next_free_rec.i, align 4
  %95 = call i16 @llvm.bswap.i16(i16 %94) #10
  %conv.i423 = zext i16 %95 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end195
  %i.0.in.i = phi i32 [ %conv.i423, %if.end195 ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i)
  %cmp.i424 = icmp sgt i32 %i.0.in.i, 0
  br i1 %cmp.i424, label %for.body.i, label %if.then200

for.body.i:                                       ; preds = %for.cond.i
  %i.0.i = add nsw i32 %i.0.in.i, -1
  %arrayidx.i = getelementptr %struct.ocfs2_extent_list, ptr %92, i32 0, i32 5, i32 %i.0.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 8
  %98 = call i32 @llvm.bswap.i32(i32 %97) #10
  %cmp2.i = icmp ult i32 %98, %trunc_end.0462
  br i1 %cmp2.i, label %if.else, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then200:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp202 = icmp eq i32 %90, 0
  br i1 %cmp202, label %if.then200.while.end_crit_edge, label %if.end205

if.then200.while.end_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end205:                                        ; preds = %if.then200
  %99 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb, align 4
  %call207 = call i32 @ocfs2_find_cpos_for_left_leaf(ptr noundef %100, ptr noundef nonnull %call131, ptr noundef nonnull %cluster_in_el) #10
  %101 = zext i32 %call207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call207, label %do.body226 [
    i32 0, label %if.end237
    i32 -512, label %if.end205.out_crit_edge
    i32 -4, label %if.end205.out_crit_edge524
    i32 524289, label %if.end205.out_crit_edge525
    i32 -28, label %if.end205.out_crit_edge526
    i32 -122, label %if.end205.out_crit_edge527
  ]

if.end205.out_crit_edge527:                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end205.out_crit_edge526:                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end205.out_crit_edge525:                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end205.out_crit_edge524:                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end205.out_crit_edge:                          ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body226:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m227) #10
  %102 = ptrtoint ptr %_m227 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 1152921504606846976, ptr %_m227, align 8
  %conv231 = sext i32 %call207 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m227, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1867, ptr noundef nonnull @.str, i64 noundef %conv231) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m227) #10
  br label %out

if.end237:                                        ; preds = %if.end205
  %103 = ptrtoint ptr %cluster_in_el to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cluster_in_el, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp238 = icmp eq i32 %104, 0
  br i1 %cmp238, label %if.end237.while.end_crit_edge, label %if.end241

if.end237.while.end_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end241:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  %add242 = add i32 %104, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end282, %if.end241
  %trunc_end.0.be = phi i32 [ %add242, %if.end241 ], [ %trunc_end.3.ph, %if.end282 ]
  %ret.0.be = phi i32 [ 0, %if.end241 ], [ %call251, %if.end282 ]
  call void @ocfs2_reinit_path(ptr noundef nonnull %call131, i32 noundef 1) #10
  %cmp162 = icmp ugt i32 %trunc_end.0.be, %conv2.i
  br i1 %cmp162, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.else:                                          ; preds = %for.body.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 8
  %107 = call i32 @llvm.bswap.i32(i32 %106) #10
  %108 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %92, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.not.i.i425 = icmp eq i16 %109, 0
  %110 = getelementptr %struct.ocfs2_extent_list, ptr %92, i32 0, i32 5, i32 %i.0.i, i32 1
  br i1 %tobool.not.i.i425, label %if.else.i.i, label %if.then.i.i426

if.then.i.i426:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #10
  br label %ocfs2_rec_clusters.exit.i

if.else.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %110, align 4
  %116 = call i16 @llvm.bswap.i16(i16 %115) #10
  %conv.i.i = zext i16 %116 to i32
  br label %ocfs2_rec_clusters.exit.i

ocfs2_rec_clusters.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i426
  %retval.0.i.i = phi i32 [ %113, %if.then.i.i426 ], [ %conv.i.i, %if.else.i.i ]
  %add.i427 = add i32 %retval.0.i.i, %107
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %conv2.i)
  %cmp.not.i = icmp ult i32 %107, %conv2.i
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %ocfs2_rec_clusters.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = call i32 @llvm.umin.i32(i32 %add.i427, i32 %trunc_end.0462)
  %sub.i428 = sub i32 %117, %107
  %e_blkno.i = getelementptr %struct.ocfs2_extent_list, ptr %92, i32 0, i32 5, i32 %i.0.i, i32 2
  %118 = ptrtoint ptr %e_blkno.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %e_blkno.i, align 8
  %120 = call i64 @llvm.bswap.i64(i64 %119) #10
  br label %if.end247

if.else.i:                                        ; preds = %ocfs2_rec_clusters.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i427, i32 %conv2.i)
  %cmp7.i = icmp ugt i32 %add.i427, %conv2.i
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i.while.end_crit_edge

if.else.i.while.end_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = call i32 @llvm.umin.i32(i32 %add.i427, i32 %trunc_end.0462)
  %sub12.i = sub i32 %121, %conv2.i
  %sub14.i = sub i32 %conv2.i, %107
  %e_blkno15.i = getelementptr %struct.ocfs2_extent_list, ptr %92, i32 0, i32 5, i32 %i.0.i, i32 2
  %122 = ptrtoint ptr %e_blkno15.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %e_blkno15.i, align 8
  %124 = call i64 @llvm.bswap.i64(i64 %123) #10
  %125 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 33
  %127 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %128, i32 0, i32 36
  %129 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 2
  %131 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i48.i = zext i8 %132 to i32
  %sub.i.i = sub i32 %130, %conv.i48.i
  %conv1.i.i = zext i32 %sub14.i to i64
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %conv1.i.i, %sh_prom.i.i
  %add17.i = add i64 %shl.i.i, %124
  br label %if.end247

if.end247:                                        ; preds = %if.then8.i, %if.then.i
  %trunc_len.2.ph = phi i32 [ %sub.i428, %if.then.i ], [ %sub12.i, %if.then8.i ]
  %trunc_end.3.ph = phi i32 [ %107, %if.then.i ], [ %conv2.i, %if.then8.i ]
  %blkno.2.ph = phi i64 [ %120, %if.then.i ], [ %add17.i, %if.then8.i ]
  %e_flags = getelementptr inbounds %struct.anon.93, ptr %110, i32 0, i32 2
  %133 = ptrtoint ptr %e_flags to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %e_flags, align 1
  %conv248 = zext i8 %134 to i32
  %135 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i432 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 33
  %137 = ptrtoint ptr %s_fs_info.i432 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i432, align 16
  %s_clustersize_bits.i433 = getelementptr inbounds %struct.ocfs2_super, ptr %138, i32 0, i32 36
  %139 = ptrtoint ptr %s_clustersize_bits.i433 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %s_clustersize_bits.i433, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 2
  %141 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i434 = zext i8 %142 to i32
  %sub.i435 = sub i32 %140, %conv.i434
  %sh_prom.i436 = zext i32 %sub.i435 to i64
  %shr.i437 = lshr i64 %blkno.2.ph, %sh_prom.i436
  %conv1.i = trunc i64 %shr.i437 to i32
  %call251 = call i32 @ocfs2_remove_btree_range(ptr noundef %inode, ptr noundef nonnull %et, i32 noundef %trunc_end.3.ph, i32 noundef %conv1.i, i32 noundef %trunc_len.2.ph, i32 noundef %conv248, ptr noundef nonnull %dealloc, i64 noundef %13, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp slt i32 %call251, 0
  br i1 %cmp252, label %if.then254, label %if.end282

if.then254:                                       ; preds = %if.end247
  %143 = zext i32 %call251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call251, label %do.body271 [
    i32 -512, label %if.then254.out_crit_edge
    i32 -4, label %if.then254.out_crit_edge528
    i32 -28, label %if.then254.out_crit_edge529
    i32 -122, label %if.then254.out_crit_edge530
  ]

if.then254.out_crit_edge530:                      ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then254.out_crit_edge529:                      ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then254.out_crit_edge528:                      ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then254.out_crit_edge:                         ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body271:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m272) #10
  %144 = ptrtoint ptr %_m272 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 1152921504606846976, ptr %_m272, align 8
  %conv276 = sext i32 %call251 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m272, ptr noundef nonnull @__func__.ocfs2_remove_inode_range, i32 noundef 1903, ptr noundef nonnull @.str, i64 noundef %conv276) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m272) #10
  br label %out

if.end282:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %cluster_in_el to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %trunc_end.3.ph, ptr %cluster_in_el, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %if.else.i.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %if.end237.while.end_crit_edge, %if.then200.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %ret.1 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %if.else.i.while.end_crit_edge ], [ 0, %if.end237.while.end_crit_edge ], [ 0, %if.then200.while.end_crit_edge ], [ %ret.0.be, %while.cond.backedge.while.end_crit_edge ]
  call fastcc void @ocfs2_truncate_cluster_pages(ptr noundef %inode, i64 noundef %byte_start, i64 noundef %byte_len)
  br label %out

out:                                              ; preds = %while.end, %do.body271, %if.then254.out_crit_edge, %if.then254.out_crit_edge528, %if.then254.out_crit_edge529, %if.then254.out_crit_edge530, %do.body226, %if.end205.out_crit_edge, %if.end205.out_crit_edge524, %if.end205.out_crit_edge525, %if.end205.out_crit_edge526, %if.end205.out_crit_edge527, %do.body184, %while.body.out_crit_edge, %while.body.out_crit_edge520, %while.body.out_crit_edge521, %while.body.out_crit_edge522, %while.body.out_crit_edge523, %do.body150, %do.body119, %ocfs2_zero_partial_clusters.exit.out_crit_edge, %ocfs2_zero_partial_clusters.exit.out_crit_edge516, %ocfs2_zero_partial_clusters.exit.out_crit_edge517, %ocfs2_zero_partial_clusters.exit.out_crit_edge518, %ocfs2_zero_partial_clusters.exit.out_crit_edge519, %do.body84, %if.end63.out_crit_edge, %if.end63.out_crit_edge494, %if.end63.out_crit_edge495, %if.end63.out_crit_edge496, %if.end63.out_crit_edge497, %do.body52, %if.then32.out_crit_edge, %if.then32.out_crit_edge490, %if.then32.out_crit_edge491, %if.then32.out_crit_edge492, %if.then32.out_crit_edge493, %if.end29, %do.body, %if.then3.out_crit_edge, %if.then3.out_crit_edge486, %if.then3.out_crit_edge487, %if.then3.out_crit_edge488, %if.then3.out_crit_edge489
  %path.0 = phi ptr [ null, %if.end29 ], [ %call131, %while.end ], [ null, %do.body150 ], [ null, %if.then3.out_crit_edge ], [ null, %if.then3.out_crit_edge486 ], [ null, %if.then3.out_crit_edge487 ], [ null, %if.then3.out_crit_edge488 ], [ null, %if.then3.out_crit_edge489 ], [ null, %do.body ], [ null, %if.then32.out_crit_edge ], [ null, %if.then32.out_crit_edge490 ], [ null, %if.then32.out_crit_edge491 ], [ null, %if.then32.out_crit_edge492 ], [ null, %if.then32.out_crit_edge493 ], [ null, %do.body52 ], [ null, %if.end63.out_crit_edge ], [ null, %if.end63.out_crit_edge494 ], [ null, %if.end63.out_crit_edge495 ], [ null, %if.end63.out_crit_edge496 ], [ null, %if.end63.out_crit_edge497 ], [ null, %do.body84 ], [ null, %ocfs2_zero_partial_clusters.exit.out_crit_edge ], [ null, %ocfs2_zero_partial_clusters.exit.out_crit_edge516 ], [ null, %ocfs2_zero_partial_clusters.exit.out_crit_edge517 ], [ null, %ocfs2_zero_partial_clusters.exit.out_crit_edge518 ], [ null, %ocfs2_zero_partial_clusters.exit.out_crit_edge519 ], [ null, %do.body119 ], [ %call131, %do.body184 ], [ %call131, %do.body226 ], [ %call131, %if.then254.out_crit_edge ], [ %call131, %if.then254.out_crit_edge528 ], [ %call131, %if.then254.out_crit_edge529 ], [ %call131, %if.then254.out_crit_edge530 ], [ %call131, %do.body271 ], [ %call131, %while.body.out_crit_edge ], [ %call131, %while.body.out_crit_edge520 ], [ %call131, %while.body.out_crit_edge521 ], [ %call131, %while.body.out_crit_edge522 ], [ %call131, %while.body.out_crit_edge523 ], [ %call131, %if.end205.out_crit_edge ], [ %call131, %if.end205.out_crit_edge524 ], [ %call131, %if.end205.out_crit_edge525 ], [ %call131, %if.end205.out_crit_edge526 ], [ %call131, %if.end205.out_crit_edge527 ]
  %ret.2 = phi i32 [ 0, %if.end29 ], [ %ret.1, %while.end ], [ -12, %do.body150 ], [ %call6, %if.then3.out_crit_edge ], [ %call6, %if.then3.out_crit_edge486 ], [ %call6, %if.then3.out_crit_edge487 ], [ %call6, %if.then3.out_crit_edge488 ], [ %call6, %if.then3.out_crit_edge489 ], [ %call6, %do.body ], [ %call33, %if.then32.out_crit_edge ], [ %call33, %if.then32.out_crit_edge490 ], [ %call33, %if.then32.out_crit_edge491 ], [ %call33, %if.then32.out_crit_edge492 ], [ %call33, %if.then32.out_crit_edge493 ], [ %call33, %do.body52 ], [ %call65, %if.end63.out_crit_edge ], [ %call65, %if.end63.out_crit_edge494 ], [ %call65, %if.end63.out_crit_edge495 ], [ %call65, %if.end63.out_crit_edge496 ], [ %call65, %if.end63.out_crit_edge497 ], [ %call65, %do.body84 ], [ %ret.3.i, %ocfs2_zero_partial_clusters.exit.out_crit_edge ], [ %ret.3.i, %ocfs2_zero_partial_clusters.exit.out_crit_edge516 ], [ %ret.3.i, %ocfs2_zero_partial_clusters.exit.out_crit_edge517 ], [ %ret.3.i, %ocfs2_zero_partial_clusters.exit.out_crit_edge518 ], [ %ret.3.i, %ocfs2_zero_partial_clusters.exit.out_crit_edge519 ], [ %ret.3.i, %do.body119 ], [ %call165, %do.body184 ], [ %call207, %do.body226 ], [ %call251, %if.then254.out_crit_edge ], [ %call251, %if.then254.out_crit_edge528 ], [ %call251, %if.then254.out_crit_edge529 ], [ %call251, %if.then254.out_crit_edge530 ], [ %call251, %do.body271 ], [ %call207, %if.end205.out_crit_edge ], [ %call207, %if.end205.out_crit_edge524 ], [ %call207, %if.end205.out_crit_edge525 ], [ %call207, %if.end205.out_crit_edge526 ], [ %call207, %if.end205.out_crit_edge527 ], [ %call165, %while.body.out_crit_edge ], [ %call165, %while.body.out_crit_edge520 ], [ %call165, %while.body.out_crit_edge521 ], [ %call165, %while.body.out_crit_edge522 ], [ %call165, %while.body.out_crit_edge523 ]
  call void @ocfs2_free_path(ptr noundef %path.0) #10
  call void @ocfs2_schedule_truncate_log_flush(ptr noundef %4, i32 noundef 1) #10
  %call283 = call i32 @ocfs2_run_deallocs(ptr noundef %4, ptr noundef nonnull %dealloc) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dealloc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster_in_el) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_remove_inode_range(i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_inode_range, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_remove_inode_range, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  %call42 = tail call i32 @__traceiter_ocfs2_remove_inode_range(ptr noundef null, i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_inode_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_inode_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_remove_inode_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_remove_inode_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1450, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
define internal fastcc i32 @ocfs2_cow_file_pos(ptr noundef %inode, ptr noundef %fe_bh, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %phys = alloca i32, align 4
  %num_clusters = alloca i32, align 4
  %ext_flags = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys) #10
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys, align 4, !annotation !187
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %6 to i64
  %shr = lshr i64 %offset, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_clusters) #10
  %7 = ptrtoint ptr %num_clusters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_clusters, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_flags) #10
  %8 = ptrtoint ptr %ext_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ext_flags, align 4
  %s_clustersize = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 35
  %9 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_clustersize, align 4
  %sub = add i32 %10, -1
  %conv3 = sext i32 %sub to i64
  %and = and i64 %conv3, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %conv, ptr noundef nonnull %phys, ptr noundef nonnull %num_clusters, ptr noundef nonnull %ext_flags) #10
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call, label %do.body [
    i32 0, label %if.end26
    i32 -512, label %if.end.cleanup_crit_edge
    i32 -4, label %if.end.cleanup_crit_edge50
    i32 524289, label %if.end.cleanup_crit_edge51
    i32 -28, label %if.end.cleanup_crit_edge52
    i32 -122, label %if.end.cleanup_crit_edge53
  ]

if.end.cleanup_crit_edge53:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge52:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge50:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv23 = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_cow_file_pos, i32 noundef 355, ptr noundef nonnull @.str, i64 noundef %conv23) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %13 = ptrtoint ptr %ext_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ext_flags, align 4
  %and27 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %conv, 1
  %call31 = call i32 @ocfs2_refcount_cow(ptr noundef %inode, ptr noundef %fe_bh, i32 noundef %conv, i32 noundef 1, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %do.body, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge50, %if.end.cleanup_crit_edge51, %if.end.cleanup_crit_edge52, %if.end.cleanup_crit_edge53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %do.body ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge50 ], [ %call, %if.end.cleanup_crit_edge51 ], [ %call, %if.end.cleanup_crit_edge52 ], [ %call, %if.end.cleanup_crit_edge53 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_new_path_from_et(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_find_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_reinit_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_remove_btree_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_truncate_cluster_pages(ptr nocapture noundef readonly %inode, i64 noundef %byte_start, i64 noundef %byte_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_clustersize.i.i, align 4
  %sub.i.i = add i32 %7, -1
  %conv.i.i = sext i32 %sub.i.i to i64
  %add.i.i = add i64 %conv.i.i, %byte_start
  %sh_prom.i.i = zext i32 %5 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %conv.i = and i64 %shr.i.i, 4294967295
  %shl.i = shl i64 %conv.i, %sh_prom.i.i
  %add = add i64 %byte_len, %byte_start
  %neg = sub i32 0, %7
  %conv = sext i32 %neg to i64
  %and = and i64 %add, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %shl.i)
  %cmp = icmp sgt i64 %and, %shl.i
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %sub3 = sub i64 %and, %shl.i
  tail call void @unmap_mapping_range(ptr noundef %9, i64 noundef %shl.i, i64 noundef %sub3, i32 noundef 0) #10
  %sub4 = add nsw i64 %and, -1
  tail call void @truncate_inode_pages_range(ptr noundef %9, i64 noundef %shl.i, i64 noundef %sub4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_schedule_truncate_log_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_run_deallocs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_change_file_space(ptr noundef %file, i32 noundef %cmd, ptr nocapture noundef %sr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %cmd, label %entry.if.end10_crit_edge [
    i32 1076910120, label %entry.land.lhs.true_crit_edge
    i32 1076910122, label %entry.land.lhs.true_crit_edge43
    i32 1076910121, label %entry.land.lhs.true6_crit_edge
    i32 1076910123, label %entry.land.lhs.true6_crit_edge44
  ]

entry.land.lhs.true6_crit_edge44:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true6

entry.land.lhs.true6_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true6

entry.land.lhs.true_crit_edge43:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge43
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i.i, align 8
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %ocfs2_writes_unwritten_extents.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ocfs2_writes_unwritten_extents.exit:              ; preds = %land.lhs.true
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge, label %if.else

ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge: ; preds = %ocfs2_writes_unwritten_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %ocfs2_writes_unwritten_extents.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1076910121, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1076910121
  br i1 %cond, label %if.else.land.lhs.true6_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else.land.lhs.true6_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.else.land.lhs.true6_crit_edge, %entry.land.lhs.true6_crit_edge, %entry.land.lhs.true6_crit_edge44
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 19
  %12 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_incompat.i, align 8
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp11 = icmp eq i16 %17, -32768
  br i1 %cmp11, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %18 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_mode, align 8
  %and15 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @mnt_want_write_file(ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %20 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %f_pos, align 8
  %call23 = tail call fastcc i32 @__ocfs2_change_file_space(ptr noundef %file, ptr noundef %1, i64 noundef %21, i32 noundef %cmd, ptr noundef %sr, i32 noundef 0)
  tail call void @mnt_drop_write_file(ptr noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -25, %ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge ], [ -25, %land.lhs.true6.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -9, %if.end14.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ -25, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_change_file_space(ptr noundef readonly %file, ptr noundef %inode, i64 noundef %f_pos, i32 noundef %cmd, ptr nocapture noundef %sr, i32 noundef %change_size) unnamed_addr #0 align 64 {
entry:
  %di_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m130 = alloca i64, align 8
  %_m188 = alloca i64, align 8
  %_m220 = alloca i64, align 8
  %tmp231 = alloca %struct.timespec64, align 8
  %_m253 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #10
  %4 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %di_bh, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %s_maxbytes, align 8
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %8, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %9 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %osb_flags.i, align 8
  %and.i391 = and i32 %10, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i391)
  %tobool3.not = icmp eq i32 %and.i391, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call4 = tail call i32 @ocfs2_rw_lock(ptr noundef %inode, i32 noundef 1) #10
  %11 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call4, label %do.body [
    i32 0, label %if.end19
    i32 -512, label %if.end.out_crit_edge
    i32 -4, label %if.end.out_crit_edge403
    i32 524289, label %if.end.out_crit_edge404
    i32 -28, label %if.end.out_crit_edge405
    i32 -122, label %if.end.out_crit_edge406
  ]

if.end.out_crit_edge406:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge405:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge404:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge403:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_change_file_space, i32 noundef 1948, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end19:                                         ; preds = %if.end
  %call20 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef nonnull %di_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  %13 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call20, label %do.body39 [
    i32 0, label %if.end50
    i32 -512, label %if.end19.out_rw_unlock_crit_edge
    i32 -4, label %if.end19.out_rw_unlock_crit_edge407
    i32 524289, label %if.end19.out_rw_unlock_crit_edge408
    i32 -28, label %if.end19.out_rw_unlock_crit_edge409
    i32 -122, label %if.end19.out_rw_unlock_crit_edge410
  ]

if.end19.out_rw_unlock_crit_edge410:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge409:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge408:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge407:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

if.end19.out_rw_unlock_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rw_unlock

do.body39:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #10
  %14 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m40, align 8
  %conv44 = sext i32 %call20 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.__ocfs2_change_file_space, i32 noundef 1954, ptr noundef nonnull @.str, i64 noundef %conv44) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #10
  br label %out_rw_unlock

if.end50:                                         ; preds = %if.end19
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags, align 4
  %and51 = and i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.out_inode_unlock_crit_edge

if.end50.out_inode_unlock_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end54:                                         ; preds = %if.end50
  %l_whence = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 1
  %17 = ptrtoint ptr %l_whence to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %l_whence, align 2
  %conv55 = sext i16 %18 to i32
  %19 = zext i32 %conv55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %conv55, label %if.end54.out_inode_unlock_crit_edge [
    i32 0, label %if.end54.sw.epilog_crit_edge
    i32 1, label %if.end54.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb56
  ]

if.end54.sw.epilog.sink.split_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end54.out_inode_unlock_crit_edge:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

sw.bb56:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call fastcc i64 @i_size_read(ptr noundef %inode)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb56, %if.end54.sw.epilog.sink.split_crit_edge
  %call57.sink = phi i64 [ %call57, %sw.bb56 ], [ %f_pos, %if.end54.sw.epilog.sink.split_crit_edge ]
  %l_start = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 2
  %20 = ptrtoint ptr %l_start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %l_start, align 8
  %add59 = add i64 %21, %call57.sink
  store i64 %add59, ptr %l_start, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end54.sw.epilog_crit_edge
  %22 = ptrtoint ptr %l_whence to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %l_whence, align 2
  %l_len = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 3
  %23 = ptrtoint ptr %l_len to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %l_len, align 8
  %l_start65 = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 2
  %25 = ptrtoint ptr %l_start65 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %l_start65, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp66 = icmp slt i64 %26, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %6)
  %cmp70 = icmp ugt i64 %26, %6
  %or.cond = select i1 %cmp66, i1 true, i1 %cmp70
  br i1 %or.cond, label %sw.epilog.out_inode_unlock_crit_edge, label %lor.lhs.false72

sw.epilog.out_inode_unlock_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

lor.lhs.false72:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp61 = icmp sgt i64 %24, 0
  %sub = sext i1 %cmp61 to i64
  %cond = add i64 %26, %24
  %add74 = add i64 %cond, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add74)
  %cmp75 = icmp slt i64 %add74, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add74, i64 %6)
  %cmp80 = icmp ugt i64 %add74, %6
  %or.cond387 = select i1 %cmp75, i1 true, i1 %cmp80
  br i1 %or.cond387, label %lor.lhs.false72.out_inode_unlock_crit_edge, label %if.end83

lor.lhs.false72.out_inode_unlock_crit_edge:       ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end83:                                         ; preds = %lor.lhs.false72
  %27 = and i32 %cmd, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1076910120, i32 %27)
  %switch = icmp eq i32 %27, 1076910120
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %24)
  %cmp100 = icmp slt i64 %24, 1
  %or.cond401 = select i1 %switch, i1 %cmp100, i1 false
  br i1 %or.cond401, label %if.end83.out_inode_unlock_crit_edge, label %if.end104

if.end83.out_inode_unlock_crit_edge:              ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end104:                                        ; preds = %if.end83
  %tobool105.not = icmp eq ptr %file, null
  br i1 %tobool105.not, label %if.end104.if.end141_crit_edge, label %land.lhs.true106

if.end104.if.end141_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

land.lhs.true106:                                 ; preds = %if.end104
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dentry, align 4
  %call107 = call i32 @should_remove_suid(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true106.if.end141_crit_edge, label %if.then109

land.lhs.true106.if.end141_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then109:                                       ; preds = %land.lhs.true106
  %30 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %di_bh, align 4
  %call110 = call fastcc i32 @__ocfs2_write_remove_suid(ptr noundef %inode, ptr noundef %31)
  %32 = zext i32 %call110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call110, label %do.body129 [
    i32 0, label %if.then109.if.end141_crit_edge
    i32 -512, label %if.then109.out_inode_unlock_crit_edge
    i32 -4, label %if.then109.out_inode_unlock_crit_edge411
    i32 524289, label %if.then109.out_inode_unlock_crit_edge412
    i32 -28, label %if.then109.out_inode_unlock_crit_edge413
    i32 -122, label %if.then109.out_inode_unlock_crit_edge414
  ]

if.then109.out_inode_unlock_crit_edge414:         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then109.out_inode_unlock_crit_edge413:         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then109.out_inode_unlock_crit_edge412:         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then109.out_inode_unlock_crit_edge411:         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then109.out_inode_unlock_crit_edge:            ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then109.if.end141_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

do.body129:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130) #10
  %33 = ptrtoint ptr %_m130 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m130, align 8
  %conv134 = sext i32 %call110 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130, ptr noundef nonnull @__func__.__ocfs2_change_file_space, i32 noundef 2000, ptr noundef nonnull @.str, i64 noundef %conv134) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130) #10
  br label %out_inode_unlock

if.end141:                                        ; preds = %if.then109.if.end141_crit_edge, %land.lhs.true106.if.end141_crit_edge, %if.end104.if.end141_crit_edge
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #10
  %34 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %cmd, label %if.end166.thread398 [
    i32 1076910120, label %if.end141.sw.bb143_crit_edge
    i32 1076910122, label %if.end141.sw.bb143_crit_edge415
    i32 1076910121, label %if.end141.sw.bb147_crit_edge
    i32 1076910123, label %if.end141.sw.bb147_crit_edge416
  ]

if.end141.sw.bb147_crit_edge416:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb147

if.end141.sw.bb147_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb147

if.end141.sw.bb143_crit_edge415:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb143

if.end141.sw.bb143_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb143

if.end166.thread398:                              ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %call153395 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  br label %do.body187

sw.bb143:                                         ; preds = %if.end141.sw.bb143_crit_edge, %if.end141.sw.bb143_crit_edge415
  %35 = ptrtoint ptr %l_start65 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %l_start65, align 8
  %37 = ptrtoint ptr %l_len to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %l_len, align 8
  %call146 = call fastcc i32 @ocfs2_allocate_unwritten_extents(ptr noundef %inode, i64 noundef %36, i64 noundef %38)
  br label %sw.epilog152

sw.bb147:                                         ; preds = %if.end141.sw.bb147_crit_edge, %if.end141.sw.bb147_crit_edge416
  %39 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %di_bh, align 4
  %41 = ptrtoint ptr %l_start65 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %l_start65, align 8
  %43 = ptrtoint ptr %l_len to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %l_len, align 8
  %call150 = call i32 @ocfs2_remove_inode_range(ptr noundef %inode, ptr noundef %40, i64 noundef %42, i64 noundef %44)
  br label %sw.epilog152

sw.epilog152:                                     ; preds = %sw.bb147, %sw.bb143
  %ret.0 = phi i32 [ %call150, %sw.bb147 ], [ %call146, %sw.bb143 ]
  %call153 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool154.not = icmp eq i32 %ret.0, 0
  br i1 %tobool154.not, label %land.lhs.true155, label %sw.epilog152.if.end166_crit_edge

sw.epilog152.if.end166_crit_edge:                 ; preds = %sw.epilog152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

land.lhs.true155:                                 ; preds = %sw.epilog152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %change_size)
  %tobool156.not = icmp ne i32 %change_size, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %cond, i64 %call153)
  %cmp158 = icmp sgt i64 %cond, %call153
  %or.cond388 = select i1 %tobool156.not, i1 %cmp158, i1 false
  br i1 %or.cond388, label %if.then160, label %land.lhs.true155.if.end166.thread_crit_edge

land.lhs.true155.if.end166.thread_crit_edge:      ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166.thread

if.then160:                                       ; preds = %land.lhs.true155
  %sub161 = sub i64 %cond, %call153
  %call162 = call fastcc i32 @ocfs2_zeroout_partial_cluster(ptr noundef %inode, i64 noundef %call153, i64 noundef %sub161)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.then164, label %if.then160.if.end166_crit_edge

if.then160.if.end166_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then164:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %cond)
  br label %if.end166.thread

if.end166.thread:                                 ; preds = %if.then164, %land.lhs.true155.if.end166.thread_crit_edge
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  %call199 = call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call199, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then201, label %if.end230

if.end166:                                        ; preds = %if.then160.if.end166_crit_edge, %sw.epilog152.if.end166_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sw.epilog152.if.end166_crit_edge ], [ %call162, %if.then160.if.end166_crit_edge ]
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  %45 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %ret.1, label %if.end166.do.body187_crit_edge [
    i32 -122, label %if.end166.out_inode_unlock_crit_edge
    i32 -512, label %if.end166.out_inode_unlock_crit_edge417
    i32 -4, label %if.end166.out_inode_unlock_crit_edge418
    i32 524289, label %if.end166.out_inode_unlock_crit_edge419
    i32 -28, label %if.end166.out_inode_unlock_crit_edge420
  ]

if.end166.out_inode_unlock_crit_edge420:          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end166.out_inode_unlock_crit_edge419:          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end166.out_inode_unlock_crit_edge418:          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end166.out_inode_unlock_crit_edge417:          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end166.out_inode_unlock_crit_edge:             ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.end166.do.body187_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body187

do.body187:                                       ; preds = %if.end166.do.body187_crit_edge, %if.end166.thread398
  %ret.1400 = phi i32 [ -22, %if.end166.thread398 ], [ %ret.1, %if.end166.do.body187_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m188) #10
  %46 = ptrtoint ptr %_m188 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606846976, ptr %_m188, align 8
  %conv192 = sext i32 %ret.1400 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m188, ptr noundef nonnull @__func__.__ocfs2_change_file_space, i32 noundef 2035, ptr noundef nonnull @.str, i64 noundef %conv192) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m188) #10
  br label %out_inode_unlock

if.then201:                                       ; preds = %if.end166.thread
  %47 = ptrtoint ptr %call199 to i32
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %47, label %do.body219 [
    i32 -512, label %if.then201.out_inode_unlock_crit_edge
    i32 -4, label %if.then201.out_inode_unlock_crit_edge421
    i32 524289, label %if.then201.out_inode_unlock_crit_edge422
    i32 -28, label %if.then201.out_inode_unlock_crit_edge423
    i32 -122, label %if.then201.out_inode_unlock_crit_edge424
  ]

if.then201.out_inode_unlock_crit_edge424:         ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then201.out_inode_unlock_crit_edge423:         ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then201.out_inode_unlock_crit_edge422:         ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then201.out_inode_unlock_crit_edge421:         ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

if.then201.out_inode_unlock_crit_edge:            ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_inode_unlock

do.body219:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m220) #10
  %49 = ptrtoint ptr %_m220 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m220, align 8
  %conv224 = sext i32 %47 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m220, ptr noundef nonnull @__func__.__ocfs2_change_file_space, i32 noundef 2045, ptr noundef nonnull @.str, i64 noundef %conv224) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m220) #10
  br label %out_inode_unlock

if.end230:                                        ; preds = %if.end166.thread
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp231) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp231, ptr noundef %inode) #10
  %50 = call ptr @memcpy(ptr %i_mtime, ptr %tmp231, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp231) #10
  %51 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %52 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %di_bh, align 4
  %call232 = call i32 @ocfs2_mark_inode_dirty(ptr noundef %call199, ptr noundef %inode, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %cmp233 = icmp slt i32 %call232, 0
  br i1 %cmp233, label %if.then235, label %if.end230.if.end263_crit_edge

if.end230.if.end263_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then235:                                       ; preds = %if.end230
  %54 = zext i32 %call232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call232, label %do.body252 [
    i32 -512, label %if.then235.if.end263_crit_edge
    i32 -4, label %if.then235.if.end263_crit_edge425
    i32 -28, label %if.then235.if.end263_crit_edge426
    i32 -122, label %if.then235.if.end263_crit_edge427
  ]

if.then235.if.end263_crit_edge427:                ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then235.if.end263_crit_edge426:                ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then235.if.end263_crit_edge425:                ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then235.if.end263_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

do.body252:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m253) #10
  %55 = ptrtoint ptr %_m253 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m253, align 8
  %conv257 = sext i32 %call232 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m253, ptr noundef nonnull @__func__.__ocfs2_change_file_space, i32 noundef 2052, ptr noundef nonnull @.str, i64 noundef %conv257) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m253) #10
  br label %if.end263

if.end263:                                        ; preds = %do.body252, %if.then235.if.end263_crit_edge, %if.then235.if.end263_crit_edge425, %if.then235.if.end263_crit_edge426, %if.then235.if.end263_crit_edge427, %if.end230.if.end263_crit_edge
  br i1 %tobool105.not, label %if.end263.if.end269_crit_edge, label %land.lhs.true265

if.end263.if.end269_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

land.lhs.true265:                                 ; preds = %if.end263
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %56 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_flags, align 4
  %and266 = and i32 %57, 1052672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %land.lhs.true265.if.end269_crit_edge, label %if.then268

land.lhs.true265.if.end269_crit_edge:             ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.then268:                                       ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #12
  %h_sync = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call199, i32 0, i32 7
  %58 = ptrtoint ptr %h_sync to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load = load i32, ptr %h_sync, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %h_sync, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %land.lhs.true265.if.end269_crit_edge, %if.end263.if.end269_crit_edge
  %call270 = call i32 @ocfs2_commit_trans(ptr noundef %3, ptr noundef %call199) #10
  br label %out_inode_unlock

out_inode_unlock:                                 ; preds = %if.end269, %do.body219, %if.then201.out_inode_unlock_crit_edge, %if.then201.out_inode_unlock_crit_edge421, %if.then201.out_inode_unlock_crit_edge422, %if.then201.out_inode_unlock_crit_edge423, %if.then201.out_inode_unlock_crit_edge424, %do.body187, %if.end166.out_inode_unlock_crit_edge, %if.end166.out_inode_unlock_crit_edge417, %if.end166.out_inode_unlock_crit_edge418, %if.end166.out_inode_unlock_crit_edge419, %if.end166.out_inode_unlock_crit_edge420, %do.body129, %if.then109.out_inode_unlock_crit_edge, %if.then109.out_inode_unlock_crit_edge411, %if.then109.out_inode_unlock_crit_edge412, %if.then109.out_inode_unlock_crit_edge413, %if.then109.out_inode_unlock_crit_edge414, %if.end83.out_inode_unlock_crit_edge, %lor.lhs.false72.out_inode_unlock_crit_edge, %sw.epilog.out_inode_unlock_crit_edge, %if.end54.out_inode_unlock_crit_edge, %if.end50.out_inode_unlock_crit_edge
  %ret.2 = phi i32 [ %call232, %if.end269 ], [ -1, %if.end50.out_inode_unlock_crit_edge ], [ -22, %if.end54.out_inode_unlock_crit_edge ], [ -22, %lor.lhs.false72.out_inode_unlock_crit_edge ], [ -22, %sw.epilog.out_inode_unlock_crit_edge ], [ %call110, %if.then109.out_inode_unlock_crit_edge ], [ %call110, %if.then109.out_inode_unlock_crit_edge411 ], [ %call110, %if.then109.out_inode_unlock_crit_edge412 ], [ %call110, %if.then109.out_inode_unlock_crit_edge413 ], [ %call110, %if.then109.out_inode_unlock_crit_edge414 ], [ %call110, %do.body129 ], [ %ret.1, %if.end166.out_inode_unlock_crit_edge ], [ %ret.1, %if.end166.out_inode_unlock_crit_edge417 ], [ %ret.1, %if.end166.out_inode_unlock_crit_edge418 ], [ %ret.1, %if.end166.out_inode_unlock_crit_edge419 ], [ %ret.1, %if.end166.out_inode_unlock_crit_edge420 ], [ %ret.1400, %do.body187 ], [ %47, %if.then201.out_inode_unlock_crit_edge ], [ %47, %if.then201.out_inode_unlock_crit_edge421 ], [ %47, %if.then201.out_inode_unlock_crit_edge422 ], [ %47, %if.then201.out_inode_unlock_crit_edge423 ], [ %47, %if.then201.out_inode_unlock_crit_edge424 ], [ %47, %do.body219 ], [ -22, %if.end83.out_inode_unlock_crit_edge ]
  %59 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %out_inode_unlock.brelse.exit_crit_edge, label %if.then.i

out_inode_unlock.brelse.exit_crit_edge:           ; preds = %out_inode_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %out_inode_unlock
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %60) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out_inode_unlock.brelse.exit_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef 1) #10
  br label %out_rw_unlock

out_rw_unlock:                                    ; preds = %brelse.exit, %do.body39, %if.end19.out_rw_unlock_crit_edge, %if.end19.out_rw_unlock_crit_edge407, %if.end19.out_rw_unlock_crit_edge408, %if.end19.out_rw_unlock_crit_edge409, %if.end19.out_rw_unlock_crit_edge410
  %ret.3 = phi i32 [ %ret.2, %brelse.exit ], [ %call20, %if.end19.out_rw_unlock_crit_edge ], [ %call20, %if.end19.out_rw_unlock_crit_edge407 ], [ %call20, %if.end19.out_rw_unlock_crit_edge408 ], [ %call20, %if.end19.out_rw_unlock_crit_edge409 ], [ %call20, %if.end19.out_rw_unlock_crit_edge410 ], [ %call20, %do.body39 ]
  call void @ocfs2_rw_unlock(ptr noundef %inode, i32 noundef 1) #10
  br label %out

out:                                              ; preds = %out_rw_unlock, %do.body, %if.end.out_crit_edge, %if.end.out_crit_edge403, %if.end.out_crit_edge404, %if.end.out_crit_edge405, %if.end.out_crit_edge406
  %ret.4 = phi i32 [ %ret.3, %out_rw_unlock ], [ %call4, %if.end.out_crit_edge ], [ %call4, %if.end.out_crit_edge403 ], [ %call4, %if.end.out_crit_edge404 ], [ %call4, %if.end.out_crit_edge405 ], [ %call4, %if.end.out_crit_edge406 ], [ %call4, %do.body ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out ], [ -30, %lor.lhs.false.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_check_range_for_refcount(ptr noundef %inode, i64 noundef %pos, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %extent_flags = alloca i32, align 4
  %extent_len = alloca i32, align 4
  %phys_cpos = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extent_flags) #10
  %0 = ptrtoint ptr %extent_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %extent_flags, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extent_len) #10
  %1 = ptrtoint ptr %extent_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %extent_len, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_cpos) #10
  %2 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %phys_cpos, align 4, !annotation !187
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i, align 8
  %9 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ip_dyn_features.i = getelementptr i8, ptr %inode, i32 -172
  %10 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ip_dyn_features.i, align 4
  %12 = and i16 %11, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not = icmp eq i16 %12, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ip_dyn_features.i, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool5.not = icmp eq i16 %15, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 36
  %16 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %17 to i64
  %shr = ashr i64 %pos, %sh_prom
  %conv7 = trunc i64 %shr to i32
  %conv8 = zext i32 %count to i64
  %add = add i64 %conv8, %pos
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 35
  %18 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %19, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %add, %conv.i
  %shr.i = lshr i64 %add.i, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  %sub = sub i32 %conv2.i, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not72 = icmp eq i32 %sub, 0
  br i1 %tobool10.not72, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %if.end.while.body_crit_edge
  %clusters.074 = phi i32 [ %sub45, %if.end44.while.body_crit_edge ], [ %sub, %if.end.while.body_crit_edge ]
  %cpos.073 = phi i32 [ %add46, %if.end44.while.body_crit_edge ], [ %conv7, %if.end.while.body_crit_edge ]
  %call11 = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %cpos.073, ptr noundef nonnull %phys_cpos, ptr noundef nonnull %extent_len, ptr noundef nonnull %extent_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then13, label %if.end34

if.then13:                                        ; preds = %while.body
  %20 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call11, label %do.body [
    i32 -512, label %if.then13.cleanup_crit_edge
    i32 -4, label %if.then13.cleanup_crit_edge82
    i32 -28, label %if.then13.cleanup_crit_edge83
    i32 -122, label %if.then13.cleanup_crit_edge84
  ]

if.then13.cleanup_crit_edge84:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.cleanup_crit_edge83:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.cleanup_crit_edge82:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %21 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv31 = sext i32 %call11 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_check_range_for_refcount, i32 noundef 2146, ptr noundef nonnull @.str, i64 noundef %conv31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %cleanup

if.end34:                                         ; preds = %while.body
  %22 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys_cpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool35.not = icmp eq i32 %23, 0
  br i1 %tobool35.not, label %if.end34.if.end40_crit_edge, label %land.lhs.true36

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true36:                                  ; preds = %if.end34
  %24 = ptrtoint ptr %extent_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %extent_flags, align 4
  %and37 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end40_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true36.if.end40_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true36.if.end40_crit_edge, %if.end34.if.end40_crit_edge
  %26 = ptrtoint ptr %extent_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %extent_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %clusters.074)
  %cmp41 = icmp ugt i32 %27, %clusters.074
  br i1 %cmp41, label %if.then43, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %extent_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %clusters.074, ptr %extent_len, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %29 = ptrtoint ptr %extent_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extent_len, align 4
  %sub45 = sub i32 %clusters.074, %30
  %add46 = add i32 %30, %cpos.073
  %tobool10.not = icmp eq i32 %sub45, 0
  br i1 %tobool10.not, label %if.end44.cleanup_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %do.body, %if.then13.cleanup_crit_edge, %if.then13.cleanup_crit_edge82, %if.then13.cleanup_crit_edge83, %if.then13.cleanup_crit_edge84, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.then13.cleanup_crit_edge ], [ %call11, %if.then13.cleanup_crit_edge82 ], [ %call11, %if.then13.cleanup_crit_edge83 ], [ %call11, %if.then13.cleanup_crit_edge84 ], [ %call11, %do.body ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true36.cleanup_crit_edge ], [ %call11, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_cpos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extent_len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extent_flags) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_get_clusters(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_iop_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_iop_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ocfs2_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %1 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %5 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %whence, label %entry.out.thread_crit_edge [
    i32 0, label %entry.out_crit_edge
    i32 2, label %sw.bb
    i32 1, label %sw.bb14
    i32 3, label %entry.sw.bb21_crit_edge
    i32 4, label %entry.sw.bb21_crit_edge59
  ]

entry.sw.bb21_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %4, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %sw.bb
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call, label %do.body [
    i32 -512, label %if.then.out.thread_crit_edge
    i32 -4, label %if.then.out.thread_crit_edge60
    i32 -28, label %if.then.out.thread_crit_edge61
    i32 -122, label %if.then.out.thread_crit_edge62
  ]

if.then.out.thread_crit_edge62:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then.out.thread_crit_edge61:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then.out.thread_crit_edge60:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then.out.thread_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_file_llseek, i32 noundef 2604, ptr noundef nonnull @.str, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out.thread

if.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %4)
  %8 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.addr, align 8
  %add = add i64 %9, %call13
  store i64 %add, ptr %offset.addr, align 8
  tail call void @ocfs2_inode_unlock(ptr noundef %4, i32 noundef 0) #10
  br label %out

sw.bb14:                                          ; preds = %entry
  %10 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp15 = icmp eq i64 %11, 0
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %12 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %f_pos, align 8
  br i1 %cmp15, label %out.thread56, label %if.end18

out.thread56:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %offset.addr, align 8
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %if.end30

if.end18:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %add20 = add i64 %13, %11
  %15 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add20, ptr %offset.addr, align 8
  br label %out

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge59
  %call22 = call i32 @ocfs2_seek_data_hole_offset(ptr noundef %file, ptr noundef nonnull %offset.addr, i32 noundef %whence) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %sw.bb21.out_crit_edge, label %sw.bb21.out.thread_crit_edge

sw.bb21.out.thread_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

sw.bb21.out_crit_edge:                            ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.thread:                                       ; preds = %sw.bb21.out.thread_crit_edge, %do.body, %if.then.out.thread_crit_edge, %if.then.out.thread_crit_edge60, %if.then.out.thread_crit_edge61, %if.then.out.thread_crit_edge62, %entry.out.thread_crit_edge
  %ret.1.ph = phi i32 [ -22, %entry.out.thread_crit_edge ], [ %call, %do.body ], [ %call, %if.then.out.thread_crit_edge ], [ %call, %if.then.out.thread_crit_edge60 ], [ %call, %if.then.out.thread_crit_edge61 ], [ %call, %if.then.out.thread_crit_edge62 ], [ %call22, %sw.bb21.out.thread_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %if.then28

out:                                              ; preds = %sw.bb21.out_crit_edge, %if.end18, %if.end12, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb21.out_crit_edge ], [ 0, %if.end18 ], [ %call, %if.end12 ], [ %whence, %entry.out_crit_edge ]
  %16 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset.addr, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_maxbytes, align 8
  %call26 = call i64 @vfs_setpos(ptr noundef %file, i64 noundef %17, i64 noundef %21) #10
  %22 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call26, ptr %offset.addr, align 8
  call void @up_write(ptr noundef %i_rwsem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool27.not = icmp eq i32 %ret.0, 0
  br i1 %tobool27.not, label %out.if.end30_crit_edge, label %out.if.then28_crit_edge

out.if.then28_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

out.if.end30_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then28:                                        ; preds = %out.if.then28_crit_edge, %out.thread
  %ret.155 = phi i32 [ %ret.1.ph, %out.thread ], [ %ret.0, %out.if.then28_crit_edge ]
  %conv29 = sext i32 %ret.155 to i64
  br label %cleanup

if.end30:                                         ; preds = %out.if.end30_crit_edge, %out.thread56
  %23 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %offset.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28
  %retval.0 = phi i64 [ %conv29, %if.then28 ], [ %24, %if.end30 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %lock_level = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m66 = alloca i64, align 8
  %_m105 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock_level) #10
  %0 = ptrtoint ptr %lock_level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lock_level, align 4
  %1 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %5 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ki_flags, align 8
  %and = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %f_path = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %dentry = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 -1608
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %15 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %conv = zext i32 %17 to i64
  tail call fastcc void @trace_ocfs2_file_read_iter(ptr noundef %4, ptr noundef %2, ptr noundef %8, i64 noundef %10, i32 noundef %12, ptr noundef %14, i64 noundef %conv)
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %do.body, label %if.end30

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %18 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_file_read_iter, i32 noundef 2524, ptr noundef nonnull @.str, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %cleanup

if.end30:                                         ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool.not.not, i1 true, i1 %tobool3.not
  br i1 %brmerge, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  br i1 %tobool.not, label %if.end35.if.end78_crit_edge, label %if.then37

if.end35.if.end78_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then37:                                        ; preds = %if.end35
  br i1 %tobool3.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 @ocfs2_try_rw_lock(ptr noundef nonnull %4, i32 noundef 0) #10
  br label %if.end42

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 @ocfs2_rw_lock(ptr noundef nonnull %4, i32 noundef 0) #10
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then39
  %ret.0 = phi i32 [ %call40, %if.then39 ], [ %call41, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp43 = icmp slt i32 %ret.0, 0
  br i1 %cmp43, label %if.then45, label %if.end77

if.then45:                                        ; preds = %if.end42
  %19 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %ret.0, label %do.body65 [
    i32 -11, label %if.then45.cleanup_crit_edge
    i32 -512, label %if.then45.cleanup_crit_edge210
    i32 -4, label %if.then45.cleanup_crit_edge211
    i32 -28, label %if.then45.cleanup_crit_edge212
    i32 -122, label %if.then45.cleanup_crit_edge213
  ]

if.then45.cleanup_crit_edge213:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45.cleanup_crit_edge212:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45.cleanup_crit_edge211:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45.cleanup_crit_edge210:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body65:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m66) #10
  %20 = ptrtoint ptr %_m66 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m66, align 8
  %conv70 = sext i32 %ret.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m66, ptr noundef nonnull @__func__.ocfs2_file_read_iter, i32 noundef 2543, ptr noundef nonnull @.str, i64 noundef %conv70) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m66) #10
  br label %cleanup

if.end77:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %private.i) #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %private.i) #10
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end35.if.end78_crit_edge
  %21 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_path, align 8
  %and2.lobit = lshr exact i32 %and2, 3
  %23 = xor i32 %and2.lobit, 1
  %call81 = call i32 @ocfs2_inode_lock_atime(ptr noundef nonnull %4, ptr noundef %22, ptr noundef nonnull %lock_level, i32 noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end116

if.then84:                                        ; preds = %if.end78
  %24 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call81, label %do.body104 [
    i32 -11, label %if.then84.bail_crit_edge
    i32 -512, label %if.then84.bail_crit_edge214
    i32 -4, label %if.then84.bail_crit_edge215
    i32 -28, label %if.then84.bail_crit_edge216
    i32 -122, label %if.then84.bail_crit_edge217
  ]

if.then84.bail_crit_edge217:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then84.bail_crit_edge216:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then84.bail_crit_edge215:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then84.bail_crit_edge214:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then84.bail_crit_edge:                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body104:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m105) #10
  %25 = ptrtoint ptr %_m105 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m105, align 8
  %conv109 = sext i32 %call81 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m105, ptr noundef nonnull @__func__.ocfs2_file_read_iter, i32 noundef 2564, ptr noundef nonnull @.str, i64 noundef %conv109) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m105) #10
  br label %bail

if.end116:                                        ; preds = %if.end78
  %26 = ptrtoint ptr %lock_level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lock_level, align 4
  call void @ocfs2_inode_unlock(ptr noundef nonnull %4, i32 noundef %27) #10
  %call117 = call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #10
  call fastcc void @trace_generic_file_read_iter_ret(i32 noundef %call117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call117)
  %cmp119 = icmp eq i32 %call117, -529
  %spec.select = select i1 %cmp119, i1 %tobool.not, i1 false
  br i1 %spec.select, label %do.body130, label %do.end138, !prof !179

do.body130:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2573, 0\0A.popsection", ""() #10, !srcloc !203
  unreachable

do.end138:                                        ; preds = %if.end116
  br i1 %cmp119, label %do.end138.cleanup_crit_edge, label %lor.lhs.false

do.end138.cleanup_crit_edge:                      ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end138
  %private = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %private, align 4
  %and1.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool142.not = icmp eq i32 %and1.i, 0
  br i1 %tobool142.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.bail_crit_edge

lor.lhs.false.bail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bail:                                             ; preds = %lor.lhs.false.bail_crit_edge, %do.body104, %if.then84.bail_crit_edge, %if.then84.bail_crit_edge214, %if.then84.bail_crit_edge215, %if.then84.bail_crit_edge216, %if.then84.bail_crit_edge217
  %ret.1 = phi i32 [ %call81, %if.then84.bail_crit_edge ], [ %call117, %lor.lhs.false.bail_crit_edge ], [ %call81, %if.then84.bail_crit_edge214 ], [ %call81, %if.then84.bail_crit_edge215 ], [ %call81, %if.then84.bail_crit_edge216 ], [ %call81, %if.then84.bail_crit_edge217 ], [ %call81, %do.body104 ]
  br i1 %tobool.not, label %bail.cleanup_crit_edge, label %if.then147

bail.cleanup_crit_edge:                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then147:                                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_rw_unlock(ptr noundef nonnull %4, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then147, %bail.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end138.cleanup_crit_edge, %do.body65, %if.then45.cleanup_crit_edge, %if.then45.cleanup_crit_edge210, %if.then45.cleanup_crit_edge211, %if.then45.cleanup_crit_edge212, %if.then45.cleanup_crit_edge213, %if.end30.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -95, %if.end30.cleanup_crit_edge ], [ %ret.1, %if.then147 ], [ %ret.1, %bail.cleanup_crit_edge ], [ -22, %do.body ], [ %ret.0, %if.then45.cleanup_crit_edge ], [ %call117, %lor.lhs.false.cleanup_crit_edge ], [ -529, %do.end138.cleanup_crit_edge ], [ %ret.0, %if.then45.cleanup_crit_edge210 ], [ %ret.0, %if.then45.cleanup_crit_edge211 ], [ %ret.0, %if.then45.cleanup_crit_edge212 ], [ %ret.0, %if.then45.cleanup_crit_edge213 ], [ %ret.0, %do.body65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock_level) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %bh.i.i = alloca ptr, align 4
  %_m.i.i = alloca i64, align 8
  %di_bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m47.i = alloca i64, align 8
  %_m88.i = alloca i64, align 8
  %_m128.i = alloca i64, align 8
  %_m169.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m102 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  %_m178 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 8
  %and = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %12 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ki_pos, align 8
  %conv = zext i32 %1 to i64
  %add = add i64 %13, %conv
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call2)
  %cmp = icmp sge i64 %add, %call2
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %14 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags, align 8
  %and4 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %and8 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %dentry = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -1608
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 8
  %24 = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %conv17 = zext i32 %26 to i64
  tail call fastcc void @trace_ocfs2_file_write_iter(ptr noundef %5, ptr noundef %3, ptr noundef %17, i64 noundef %19, i32 noundef %21, ptr noundef %23, i64 noundef %conv17)
  %tobool5.not.not = xor i1 %tobool5.not, true
  %brmerge = select i1 %tobool5.not.not, i1 true, i1 %tobool9.not
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20 = icmp eq i32 %1, 0
  br i1 %cmp20, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %i_rwsem.i462 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  br i1 %tobool9.not, label %if.else37, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call.i461 = tail call i32 @down_write_trylock(ptr noundef %i_rwsem.i462) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i461)
  %tobool27.not = icmp eq i32 %call.i461, 0
  br i1 %tobool27.not, label %if.then25.cleanup_crit_edge, label %if.then35

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %27 = select i1 %tobool5.not, i1 true, i1 %tobool.not
  %spec.select459 = select i1 %27, i1 true, i1 %cmp
  %lor.ext = zext i1 %spec.select459 to i32
  %call36 = tail call i32 @ocfs2_try_rw_lock(ptr noundef %5, i32 noundef %lor.ext) #10
  br label %if.end39

if.else37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_write(ptr noundef %i_rwsem.i462) #10
  %28 = select i1 %tobool5.not, i1 true, i1 %tobool.not
  %spec.select459473 = select i1 %28, i1 true, i1 %cmp
  %lor.ext474 = zext i1 %spec.select459473 to i32
  %call38 = tail call i32 @ocfs2_rw_lock(ptr noundef %5, i32 noundef %lor.ext474) #10
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  %lor.ext475 = phi i32 [ %lor.ext, %if.then35 ], [ %lor.ext474, %if.else37 ]
  %ret.0 = phi i32 [ %call36, %if.then35 ], [ %call38, %if.else37 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp40 = icmp slt i32 %ret.0, 0
  br i1 %cmp40, label %if.then42, label %if.end68

if.then42:                                        ; preds = %if.end39
  %29 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %ret.0, label %do.body [
    i32 -11, label %if.then42.out_mutex.thread_crit_edge
    i32 -512, label %if.then42.out_mutex.thread_crit_edge508
    i32 -4, label %if.then42.out_mutex.thread_crit_edge509
    i32 -28, label %if.then42.out_mutex.thread_crit_edge510
    i32 -122, label %if.then42.out_mutex.thread_crit_edge511
  ]

if.then42.out_mutex.thread_crit_edge511:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex.thread

if.then42.out_mutex.thread_crit_edge510:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex.thread

if.then42.out_mutex.thread_crit_edge509:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex.thread

if.then42.out_mutex.thread_crit_edge508:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex.thread

if.then42.out_mutex.thread_crit_edge:             ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex.thread

do.body:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %30 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv64 = sext i32 %ret.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_file_write_iter, i32 noundef 2398, ptr noundef nonnull @.str, i64 noundef %conv64) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out_mutex.thread

if.end68:                                         ; preds = %if.end39
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge452 = select i1 %tobool5.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge452, label %if.end68.if.end114_crit_edge, label %if.then72

if.end68.if.end114_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then72:                                        ; preds = %if.end68
  %31 = lshr exact i32 %and8, 2
  %call77 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %5, ptr noundef null, i32 noundef 1, i32 noundef %31, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp79 = icmp slt i32 %call77, 0
  br i1 %cmp79, label %if.then81, label %if.end113

if.then81:                                        ; preds = %if.then72
  %32 = zext i32 %call77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call77, label %do.body101 [
    i32 -11, label %if.then81.if.then324_crit_edge
    i32 -512, label %if.then81.if.then324_crit_edge512
    i32 -4, label %if.then81.if.then324_crit_edge513
    i32 -28, label %if.then81.if.then324_crit_edge514
    i32 -122, label %if.then81.if.then324_crit_edge515
  ]

if.then81.if.then324_crit_edge515:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then81.if.then324_crit_edge514:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then81.if.then324_crit_edge513:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then81.if.then324_crit_edge512:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then81.if.then324_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

do.body101:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m102) #10
  %33 = ptrtoint ptr %_m102 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m102, align 8
  %conv106 = sext i32 %call77 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m102, ptr noundef nonnull @__func__.ocfs2_file_write_iter, i32 noundef 2418, ptr noundef nonnull @.str, i64 noundef %conv106) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m102) #10
  br label %if.then324

if.end113:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ocfs2_inode_unlock(ptr noundef %5, i32 noundef 1) #10
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end68.if.end114_crit_edge
  %call115 = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 1
  br i1 %cmp116, label %if.then118, label %if.end149

if.then118:                                       ; preds = %if.end114
  %34 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call115, label %do.body137 [
    i32 0, label %if.then118.if.then324_crit_edge
    i32 -512, label %if.then118.if.end146_crit_edge
    i32 -4, label %if.then118.if.end146_crit_edge516
    i32 -28, label %if.then118.if.end146_crit_edge517
    i32 -122, label %if.then118.if.end146_crit_edge518
  ]

if.then118.if.end146_crit_edge518:                ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then118.if.end146_crit_edge517:                ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then118.if.end146_crit_edge516:                ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then118.if.end146_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then118.if.then324_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

do.body137:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #10
  %35 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m138, align 8
  %conv142 = sext i32 %call115 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.ocfs2_file_write_iter, i32 noundef 2428, ptr noundef nonnull @.str, i64 noundef %conv142) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #10
  br label %if.end146

if.end146:                                        ; preds = %do.body137, %if.then118.if.end146_crit_edge, %if.then118.if.end146_crit_edge516, %if.then118.if.end146_crit_edge517, %if.then118.if.end146_crit_edge518
  br label %if.then324

if.end149:                                        ; preds = %if.end114
  %36 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ki_pos, align 8
  %and8.lobit = lshr exact i32 %and8, 3
  %38 = xor i32 %and8.lobit, 1
  %39 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_inode.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh.i) #10
  %43 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %di_bh.i, align 4
  %call2290.i = call fastcc i32 @ocfs2_inode_lock_for_extent_tree(ptr noundef %42, ptr noundef nonnull %di_bh.i, i32 noundef 0, i32 noundef 0, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2290.i)
  %cmp291.i = icmp slt i32 %call2290.i, 0
  br i1 %cmp291.i, label %if.end149.if.then.i_crit_edge, label %if.end17.lr.ph.i

if.end149.if.then.i_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end17.lr.ph.i:                                 ; preds = %if.end149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool18.not.i = icmp eq i32 %38, 0
  %conv22.i = zext i32 %call115 to i64
  %ip_alloc_sem2.i.i = getelementptr i8, ptr %42, i32 -424
  br i1 %tobool18.not.i, label %if.then21.i, label %if.end17.lr.ph.i.if.end59.i_crit_edge

if.end17.lr.ph.i.if.end59.i_crit_edge:            ; preds = %if.end17.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.then.i:                                        ; preds = %ocfs2_inode_unlock_for_extent_tree.exit.i.if.then.i_crit_edge, %if.end149.if.then.i_crit_edge
  %call2.lcssa.i = phi i32 [ %call2290.i, %if.end149.if.then.i_crit_edge ], [ %call2.i, %ocfs2_inode_unlock_for_extent_tree.exit.i.if.then.i_crit_edge ]
  %44 = zext i32 %call2.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call2.lcssa.i, label %do.body.i [
    i32 -11, label %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge
    i32 -512, label %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge519
    i32 -4, label %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge520
    i32 -28, label %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge521
    i32 -122, label %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge522
  ]

if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge522: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge521: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge520: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge519: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %45 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call2.lcssa.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_prepare_inode_for_write, i32 noundef 2257, ptr noundef nonnull @.str, i64 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then21.i:                                      ; preds = %if.end17.lr.ph.i
  %46 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %di_bh.i, align 4
  %call23.i = call i32 @ocfs2_overwrite_io(ptr noundef %42, ptr noundef %47, i64 noundef %37, i64 noundef %conv22.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.then21.i.if.end59.i_crit_edge

if.then21.i.if.end59.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.then26.i:                                      ; preds = %if.then21.i
  %48 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call23.i, label %do.body46.i [
    i32 -11, label %if.then26.i.out_unlock.thread.i_crit_edge
    i32 -512, label %if.then26.i.out_unlock.thread.i_crit_edge523
    i32 -4, label %if.then26.i.out_unlock.thread.i_crit_edge524
    i32 -28, label %if.then26.i.out_unlock.thread.i_crit_edge525
    i32 -122, label %if.then26.i.out_unlock.thread.i_crit_edge526
  ]

if.then26.i.out_unlock.thread.i_crit_edge526:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then26.i.out_unlock.thread.i_crit_edge525:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then26.i.out_unlock.thread.i_crit_edge524:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then26.i.out_unlock.thread.i_crit_edge523:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then26.i.out_unlock.thread.i_crit_edge:        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

do.body46.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m47.i) #10
  %49 = ptrtoint ptr %_m47.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m47.i, align 8
  %conv51.i = sext i32 %call23.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m47.i, ptr noundef nonnull @__func__.ocfs2_prepare_inode_for_write, i32 noundef 2271, ptr noundef nonnull @.str, i64 noundef %conv51.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m47.i) #10
  br label %out_unlock.thread.i

if.end59.i:                                       ; preds = %if.then21.i.if.end59.i_crit_edge, %if.end17.lr.ph.i.if.end59.i_crit_edge
  %call60.i = call i32 @should_remove_suid(ptr noundef %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end59.i.if.end99.i_crit_edge, label %if.then62.i

if.end59.i.if.end99.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @up_read(ptr noundef %ip_alloc_sem2.i.i) #10
  %50 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %if.then62.i.ocfs2_inode_unlock_for_extent_tree.exit.i_crit_edge, label %if.then.i.i.i

if.then62.i.ocfs2_inode_unlock_for_extent_tree.exit.i_crit_edge: ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_inode_unlock_for_extent_tree.exit.i

if.then.i.i.i:                                    ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %51) #10
  br label %ocfs2_inode_unlock_for_extent_tree.exit.i

ocfs2_inode_unlock_for_extent_tree.exit.i:        ; preds = %if.then.i.i.i, %if.then62.i.ocfs2_inode_unlock_for_extent_tree.exit.i_crit_edge
  %52 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %di_bh.i, align 4
  call void @ocfs2_inode_unlock(ptr noundef %42, i32 noundef 0) #10
  %call2.i = call fastcc i32 @ocfs2_inode_lock_for_extent_tree(ptr noundef %42, ptr noundef nonnull %di_bh.i, i32 noundef 1, i32 noundef 0, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ocfs2_inode_unlock_for_extent_tree.exit.i.if.then.i_crit_edge, label %if.end17.1.i

ocfs2_inode_unlock_for_extent_tree.exit.i.if.then.i_crit_edge: ; preds = %ocfs2_inode_unlock_for_extent_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end17.1.i:                                     ; preds = %ocfs2_inode_unlock_for_extent_tree.exit.i
  %call60.1.i = call i32 @should_remove_suid(ptr noundef %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.1.i)
  %tobool61.not.1.i = icmp eq i32 %call60.1.i, 0
  br i1 %tobool61.not.1.i, label %if.end17.1.i.if.end99.i_crit_edge, label %if.end66.i

if.end17.1.i.if.end99.i_crit_edge:                ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.end66.i:                                       ; preds = %if.end17.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i) #10
  %53 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %bh.i.i, align 4
  %call.i.i = call i32 @ocfs2_read_inode_block(ptr noundef %42, ptr noundef nonnull %bh.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.end66.i
  %54 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call.i.i, label %do.body.i.i [
    i32 -512, label %if.then.i.i.out.i.i_crit_edge
    i32 -4, label %if.then.i.i.out.i.i_crit_edge527
    i32 -28, label %if.then.i.i.out.i.i_crit_edge528
    i32 -122, label %if.then.i.i.out.i.i_crit_edge529
  ]

if.then.i.i.out.i.i_crit_edge529:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then.i.i.out.i.i_crit_edge528:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then.i.i.out.i.i_crit_edge527:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then.i.i.out.i.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %55 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %conv.i.i = sext i32 %call.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_write_remove_suid, i32 noundef 1422, ptr noundef nonnull @.str, i64 noundef %conv.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  br label %out.i.i

if.end12.i.i:                                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bh.i.i, align 4
  %call13.i.i = call fastcc i32 @__ocfs2_write_remove_suid(ptr noundef %42, ptr noundef %57) #10
  br label %out.i.i

out.i.i:                                          ; preds = %if.end12.i.i, %do.body.i.i, %if.then.i.i.out.i.i_crit_edge, %if.then.i.i.out.i.i_crit_edge527, %if.then.i.i.out.i.i_crit_edge528, %if.then.i.i.out.i.i_crit_edge529
  %ret.0.i.i = phi i32 [ %call13.i.i, %if.end12.i.i ], [ %call.i.i, %if.then.i.i.out.i.i_crit_edge ], [ %call.i.i, %if.then.i.i.out.i.i_crit_edge527 ], [ %call.i.i, %if.then.i.i.out.i.i_crit_edge528 ], [ %call.i.i, %if.then.i.i.out.i.i_crit_edge529 ], [ %call.i.i, %do.body.i.i ]
  %58 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i.i259.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i259.i, label %out.i.i.ocfs2_write_remove_suid.exit.i_crit_edge, label %if.then.i.i260.i

out.i.i.ocfs2_write_remove_suid.exit.i_crit_edge: ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_write_remove_suid.exit.i

if.then.i.i260.i:                                 ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %59) #10
  br label %ocfs2_write_remove_suid.exit.i

ocfs2_write_remove_suid.exit.i:                   ; preds = %if.then.i.i260.i, %out.i.i.ocfs2_write_remove_suid.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp68.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp68.i, label %if.then70.i, label %ocfs2_write_remove_suid.exit.i.if.end99.i_crit_edge

ocfs2_write_remove_suid.exit.i.if.end99.i_crit_edge: ; preds = %ocfs2_write_remove_suid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.then70.i:                                      ; preds = %ocfs2_write_remove_suid.exit.i
  %60 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %ret.0.i.i, label %do.body87.i [
    i32 -512, label %if.then70.i.out_unlock.thread.i_crit_edge
    i32 -4, label %if.then70.i.out_unlock.thread.i_crit_edge530
    i32 -28, label %if.then70.i.out_unlock.thread.i_crit_edge531
    i32 -122, label %if.then70.i.out_unlock.thread.i_crit_edge532
  ]

if.then70.i.out_unlock.thread.i_crit_edge532:     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then70.i.out_unlock.thread.i_crit_edge531:     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then70.i.out_unlock.thread.i_crit_edge530:     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

if.then70.i.out_unlock.thread.i_crit_edge:        ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread.i

do.body87.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m88.i) #10
  %61 = ptrtoint ptr %_m88.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1152921504606846976, ptr %_m88.i, align 8
  %conv92.i = sext i32 %ret.0.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m88.i, ptr noundef nonnull @__func__.ocfs2_prepare_inode_for_write, i32 noundef 2297, ptr noundef nonnull @.str, i64 noundef %conv92.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m88.i) #10
  br label %out_unlock.thread.i

if.end99.i:                                       ; preds = %ocfs2_write_remove_suid.exit.i.if.end99.i_crit_edge, %if.end17.1.i.if.end99.i_crit_edge, %if.end59.i.if.end99.i_crit_edge
  %meta_level.0294298.i = phi i32 [ 1, %ocfs2_write_remove_suid.exit.i.if.end99.i_crit_edge ], [ 0, %if.end59.i.if.end99.i_crit_edge ], [ 1, %if.end17.1.i.if.end99.i_crit_edge ]
  %call100.i = call i32 @ocfs2_check_range_for_refcount(ptr noundef %42, i64 noundef %37, i32 noundef %call115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call100.i)
  %cmp101.i = icmp eq i32 %call100.i, 1
  br i1 %cmp101.i, label %if.then103.i, label %if.end99.i.if.end145.i_crit_edge

if.end99.i.if.end145.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145.i

if.then103.i:                                     ; preds = %if.end99.i
  call void @up_read(ptr noundef %ip_alloc_sem2.i.i) #10
  %62 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i.i262.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i262.i, label %if.then103.i.ocfs2_inode_unlock_for_extent_tree.exit264.i_crit_edge, label %if.then.i.i263.i

if.then103.i.ocfs2_inode_unlock_for_extent_tree.exit264.i_crit_edge: ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_inode_unlock_for_extent_tree.exit264.i

if.then.i.i263.i:                                 ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %63) #10
  br label %ocfs2_inode_unlock_for_extent_tree.exit264.i

ocfs2_inode_unlock_for_extent_tree.exit264.i:     ; preds = %if.then.i.i263.i, %if.then103.i.ocfs2_inode_unlock_for_extent_tree.exit264.i_crit_edge
  %64 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %di_bh.i, align 4
  call void @ocfs2_inode_unlock(ptr noundef %42, i32 noundef %meta_level.0294298.i) #10
  %call104.i = call fastcc i32 @ocfs2_inode_lock_for_extent_tree(ptr noundef %42, ptr noundef nonnull %di_bh.i, i32 noundef 1, i32 noundef 1, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.i = icmp slt i32 %call104.i, 0
  br i1 %cmp105.i, label %if.then107.i, label %if.end139.i

if.then107.i:                                     ; preds = %ocfs2_inode_unlock_for_extent_tree.exit264.i
  %65 = zext i32 %call104.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call104.i, label %do.body127.i [
    i32 -11, label %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge
    i32 -512, label %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge533
    i32 -4, label %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge534
    i32 -28, label %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge535
    i32 -122, label %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge536
  ]

if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge536: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge535: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge534: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge533: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit.thread

do.body127.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m128.i) #10
  %66 = ptrtoint ptr %_m128.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 1152921504606846976, ptr %_m128.i, align 8
  %conv132.i = sext i32 %call104.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m128.i, ptr noundef nonnull @__func__.ocfs2_prepare_inode_for_write, i32 noundef 2317, ptr noundef nonnull @.str, i64 noundef %conv132.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m128.i) #10
  br label %ocfs2_prepare_inode_for_write.exit.thread

if.end139.i:                                      ; preds = %ocfs2_inode_unlock_for_extent_tree.exit264.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 8
  %67 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %69 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %70, i32 0, i32 36
  %71 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_clustersize_bits.i, align 8
  %sh_prom.i = zext i32 %72 to i64
  %shr.i = ashr i64 %37, %sh_prom.i
  %conv140.i = trunc i64 %shr.i to i32
  %add.i = add i64 %37, %conv22.i
  %s_clustersize.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %70, i32 0, i32 35
  %73 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_clustersize.i.i, align 4
  %sub.i.i = add i32 %74, -1
  %conv.i265.i = sext i32 %sub.i.i to i64
  %add.i.i = add i64 %add.i, %conv.i265.i
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %sub.i = sub i32 %conv2.i.i, %conv140.i
  %75 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %di_bh.i, align 4
  %call144.i = call i32 @ocfs2_refcount_cow(ptr noundef %42, ptr noundef %76, i32 noundef %conv140.i, i32 noundef %sub.i, i32 noundef -1) #10
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.end139.i, %if.end99.i.if.end145.i_crit_edge
  %meta_level.1.i = phi i32 [ 1, %if.end139.i ], [ %meta_level.0294298.i, %if.end99.i.if.end145.i_crit_edge ]
  %ret.0.i = phi i32 [ %call144.i, %if.end139.i ], [ %call100.i, %if.end99.i.if.end145.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp146.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp146.i, label %if.then148.i, label %if.end145.i.out_unlock.i_crit_edge

if.end145.i.out_unlock.i_crit_edge:               ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.then148.i:                                     ; preds = %if.end145.i
  %77 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %ret.0.i, label %do.body168.i [
    i32 -11, label %if.then148.i.out_unlock.i_crit_edge
    i32 -512, label %if.then148.i.out_unlock.i_crit_edge537
    i32 -4, label %if.then148.i.out_unlock.i_crit_edge538
    i32 -28, label %if.then148.i.out_unlock.i_crit_edge539
    i32 -122, label %if.then148.i.out_unlock.i_crit_edge540
  ]

if.then148.i.out_unlock.i_crit_edge540:           ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.then148.i.out_unlock.i_crit_edge539:           ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.then148.i.out_unlock.i_crit_edge538:           ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.then148.i.out_unlock.i_crit_edge537:           ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.then148.i.out_unlock.i_crit_edge:              ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

do.body168.i:                                     ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m169.i) #10
  %78 = ptrtoint ptr %_m169.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1152921504606846976, ptr %_m169.i, align 8
  %conv173.i = sext i32 %ret.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m169.i, ptr noundef nonnull @__func__.ocfs2_prepare_inode_for_write, i32 noundef 2329, ptr noundef nonnull @.str, i64 noundef %conv173.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m169.i) #10
  br label %out_unlock.i

out_unlock.thread.i:                              ; preds = %do.body87.i, %if.then70.i.out_unlock.thread.i_crit_edge, %if.then70.i.out_unlock.thread.i_crit_edge530, %if.then70.i.out_unlock.thread.i_crit_edge531, %if.then70.i.out_unlock.thread.i_crit_edge532, %do.body46.i, %if.then26.i.out_unlock.thread.i_crit_edge, %if.then26.i.out_unlock.thread.i_crit_edge523, %if.then26.i.out_unlock.thread.i_crit_edge524, %if.then26.i.out_unlock.thread.i_crit_edge525, %if.then26.i.out_unlock.thread.i_crit_edge526
  %meta_level.2.ph.i = phi i32 [ 1, %do.body87.i ], [ 1, %if.then70.i.out_unlock.thread.i_crit_edge ], [ 1, %if.then70.i.out_unlock.thread.i_crit_edge530 ], [ 1, %if.then70.i.out_unlock.thread.i_crit_edge531 ], [ 1, %if.then70.i.out_unlock.thread.i_crit_edge532 ], [ 0, %if.then26.i.out_unlock.thread.i_crit_edge ], [ 0, %do.body46.i ], [ 0, %if.then26.i.out_unlock.thread.i_crit_edge523 ], [ 0, %if.then26.i.out_unlock.thread.i_crit_edge524 ], [ 0, %if.then26.i.out_unlock.thread.i_crit_edge525 ], [ 0, %if.then26.i.out_unlock.thread.i_crit_edge526 ]
  %ret.1.ph.i = phi i32 [ %ret.0.i.i, %do.body87.i ], [ %ret.0.i.i, %if.then70.i.out_unlock.thread.i_crit_edge ], [ %ret.0.i.i, %if.then70.i.out_unlock.thread.i_crit_edge530 ], [ %ret.0.i.i, %if.then70.i.out_unlock.thread.i_crit_edge531 ], [ %ret.0.i.i, %if.then70.i.out_unlock.thread.i_crit_edge532 ], [ %call23.i, %if.then26.i.out_unlock.thread.i_crit_edge ], [ %call23.i, %do.body46.i ], [ %call23.i, %if.then26.i.out_unlock.thread.i_crit_edge523 ], [ %call23.i, %if.then26.i.out_unlock.thread.i_crit_edge524 ], [ %call23.i, %if.then26.i.out_unlock.thread.i_crit_edge525 ], [ %call23.i, %if.then26.i.out_unlock.thread.i_crit_edge526 ]
  %add.ptr.i274.i = getelementptr i8, ptr %42, i32 -1608
  %79 = ptrtoint ptr %add.ptr.i274.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %add.ptr.i274.i, align 8
  call fastcc void @trace_ocfs2_prepare_inode_for_write(i64 noundef %80, i64 noundef %37, i32 noundef %call115, i32 noundef %38) #10
  br label %if.else.i.i

out_unlock.i:                                     ; preds = %do.body168.i, %if.then148.i.out_unlock.i_crit_edge, %if.then148.i.out_unlock.i_crit_edge537, %if.then148.i.out_unlock.i_crit_edge538, %if.then148.i.out_unlock.i_crit_edge539, %if.then148.i.out_unlock.i_crit_edge540, %if.end145.i.out_unlock.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 -1608
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_prepare_inode_for_write(i64 noundef %82, i64 noundef %37, i32 noundef %call115, i32 noundef %38) #10
  br i1 %cmp101.i, label %if.then.i267.i, label %out_unlock.i.if.else.i.i_crit_edge

out_unlock.i.if.else.i.i_crit_edge:               ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i267.i:                                   ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @up_write(ptr noundef %ip_alloc_sem2.i.i) #10
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %out_unlock.i.if.else.i.i_crit_edge, %out_unlock.thread.i
  %ret.1280.i = phi i32 [ %ret.1.ph.i, %out_unlock.thread.i ], [ %ret.0.i, %out_unlock.i.if.else.i.i_crit_edge ]
  %meta_level.2278.i = phi i32 [ %meta_level.2.ph.i, %out_unlock.thread.i ], [ %meta_level.1.i, %out_unlock.i.if.else.i.i_crit_edge ]
  call void @up_read(ptr noundef %ip_alloc_sem2.i.i) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i267.i
  %ret.1279.i = phi i32 [ %ret.1280.i, %if.else.i.i ], [ %ret.0.i, %if.then.i267.i ]
  %meta_level.2277.i = phi i32 [ %meta_level.2278.i, %if.else.i.i ], [ %meta_level.1.i, %if.then.i267.i ]
  %83 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i.i268.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i268.i, label %if.end.i.i.ocfs2_prepare_inode_for_write.exit_crit_edge, label %if.then.i.i269.i

if.end.i.i.ocfs2_prepare_inode_for_write.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_prepare_inode_for_write.exit

if.then.i.i269.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %84) #10
  br label %ocfs2_prepare_inode_for_write.exit

ocfs2_prepare_inode_for_write.exit.thread:        ; preds = %do.body127.i, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge533, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge534, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge535, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge536, %do.body.i, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge519, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge520, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge521, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge522
  %ret.2.i.ph = phi i32 [ %call104.i, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge ], [ %call2.lcssa.i, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge ], [ %call2.lcssa.i, %do.body.i ], [ %call2.lcssa.i, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge519 ], [ %call2.lcssa.i, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge520 ], [ %call2.lcssa.i, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge521 ], [ %call2.lcssa.i, %if.then.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge522 ], [ %call104.i, %do.body127.i ], [ %call104.i, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge533 ], [ %call104.i, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge534 ], [ %call104.i, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge535 ], [ %call104.i, %if.then107.i.ocfs2_prepare_inode_for_write.exit.thread_crit_edge536 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh.i) #10
  br label %if.then157

ocfs2_prepare_inode_for_write.exit:               ; preds = %if.then.i.i269.i, %if.end.i.i.ocfs2_prepare_inode_for_write.exit_crit_edge
  %85 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %di_bh.i, align 4
  call void @ocfs2_inode_unlock(ptr noundef %42, i32 noundef %meta_level.2277.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1279.i)
  %cmp155 = icmp slt i32 %ret.1279.i, 0
  br i1 %cmp155, label %ocfs2_prepare_inode_for_write.exit.if.then157_crit_edge, label %if.end189

ocfs2_prepare_inode_for_write.exit.if.then157_crit_edge: ; preds = %ocfs2_prepare_inode_for_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.then157:                                       ; preds = %ocfs2_prepare_inode_for_write.exit.if.then157_crit_edge, %ocfs2_prepare_inode_for_write.exit.thread
  %ret.2.i480 = phi i32 [ %ret.2.i.ph, %ocfs2_prepare_inode_for_write.exit.thread ], [ %ret.1279.i, %ocfs2_prepare_inode_for_write.exit.if.then157_crit_edge ]
  %86 = zext i32 %ret.2.i480 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %ret.2.i480, label %do.body177 [
    i32 -11, label %if.then157.if.then324_crit_edge
    i32 -512, label %if.then157.if.then324_crit_edge541
    i32 -4, label %if.then157.if.then324_crit_edge542
    i32 -28, label %if.then157.if.then324_crit_edge543
    i32 -122, label %if.then157.if.then324_crit_edge544
  ]

if.then157.if.then324_crit_edge544:               ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then157.if.then324_crit_edge543:               ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then157.if.then324_crit_edge542:               ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then157.if.then324_crit_edge541:               ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.then157.if.then324_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

do.body177:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m178) #10
  %87 = ptrtoint ptr %_m178 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 1152921504606846976, ptr %_m178, align 8
  %conv182 = sext i32 %ret.2.i480 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m178, ptr noundef nonnull @__func__.ocfs2_file_write_iter, i32 noundef 2436, ptr noundef nonnull @.str, i64 noundef %conv182) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m178) #10
  br label %if.then324

if.end189:                                        ; preds = %ocfs2_prepare_inode_for_write.exit
  br i1 %tobool5.not, label %if.end189.if.end217_crit_edge, label %land.lhs.true191

if.end189.if.end217_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

land.lhs.true191:                                 ; preds = %if.end189
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %88 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i463 = icmp eq ptr %89, null
  br i1 %cmp.i463, label %land.lhs.true191.if.end217_crit_edge, label %land.lhs.true193

land.lhs.true191.if.end217_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

land.lhs.true193:                                 ; preds = %land.lhs.true191
  %90 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ki_pos, align 8
  %92 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_blocksize.i, align 16
  %sub.i465 = add i32 %95, -1
  %conv1.i = sext i32 %sub.i465 to i64
  %and.i = and i64 %91, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_is_io_unaligned.exit, label %land.lhs.true193.if.then197_crit_edge

land.lhs.true193.if.then197_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then197

ocfs2_is_io_unaligned.exit:                       ; preds = %land.lhs.true193
  %add.i467 = add i64 %91, %conv22.i
  %and3.i = and i64 %add.i467, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i.not = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i.not, label %ocfs2_is_io_unaligned.exit.if.end217_crit_edge, label %ocfs2_is_io_unaligned.exit.if.then197_crit_edge

ocfs2_is_io_unaligned.exit.if.then197_crit_edge:  ; preds = %ocfs2_is_io_unaligned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then197

ocfs2_is_io_unaligned.exit.if.end217_crit_edge:   ; preds = %ocfs2_is_io_unaligned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then197:                                       ; preds = %ocfs2_is_io_unaligned.exit.if.then197_crit_edge, %land.lhs.true193.if.then197_crit_edge
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %ki_complete.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !204
  call void @llvm.prefetch.p0(ptr %ki_complete.i, i32 1, i32 3, i32 1) #10
  %96 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %ki_complete.i) #10, !srcloc !205
  %asmresult.i = extractvalue { i32, i32 } %96, 0
  %97 = inttoptr i32 %asmresult.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  br label %if.end217

if.end217:                                        ; preds = %if.then197, %ocfs2_is_io_unaligned.exit.if.end217_crit_edge, %land.lhs.true191.if.end217_crit_edge, %if.end189.if.end217_crit_edge
  %saved_ki_complete.0 = phi ptr [ null, %land.lhs.true191.if.end217_crit_edge ], [ %97, %if.then197 ], [ null, %ocfs2_is_io_unaligned.exit.if.end217_crit_edge ], [ null, %if.end189.if.end217_crit_edge ]
  %private.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  call void @_set_bit(i32 noundef 0, ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lor.ext475)
  %tobool.not.i468 = icmp eq i32 %lor.ext475, 0
  br i1 %tobool.not.i468, label %if.else.i, label %if.then.i469

if.then.i469:                                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 1, ptr noundef %private.i) #10
  br label %ocfs2_iocb_set_rw_locked.exit

if.else.i:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 1, ptr noundef %private.i) #10
  br label %ocfs2_iocb_set_rw_locked.exit

ocfs2_iocb_set_rw_locked.exit:                    ; preds = %if.else.i, %if.then.i469
  %call218 = call i32 @__generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call218)
  %cmp220 = icmp eq i32 %call218, -529
  %spec.select453 = select i1 %cmp220, i1 %tobool5.not, i1 false
  br i1 %spec.select453, label %do.body231, label %do.end239, !prof !179

do.body231:                                       ; preds = %ocfs2_iocb_set_rw_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2453, 0\0A.popsection", ""() #10, !srcloc !207
  unreachable

do.end239:                                        ; preds = %ocfs2_iocb_set_rw_locked.exit
  br i1 %cmp220, label %do.end239.if.then245_crit_edge, label %lor.lhs.false242

do.end239.if.then245_crit_edge:                   ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then245

lor.lhs.false242:                                 ; preds = %do.end239
  %98 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %private.i, align 4
  %and1.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool244.not = icmp eq i32 %and1.i, 0
  br i1 %tobool244.not, label %lor.lhs.false242.if.then245_crit_edge, label %lor.lhs.false242.if.end246_crit_edge

lor.lhs.false242.if.end246_crit_edge:             ; preds = %lor.lhs.false242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end246

lor.lhs.false242.if.then245_crit_edge:            ; preds = %lor.lhs.false242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then245

if.then245:                                       ; preds = %lor.lhs.false242.if.then245_crit_edge, %do.end239.if.then245_crit_edge
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %lor.lhs.false242.if.end246_crit_edge
  %rw_level.0 = phi i32 [ -1, %if.then245 ], [ %lor.ext475, %lor.lhs.false242.if.end246_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call218)
  %cmp247 = icmp slt i32 %call218, 1
  br i1 %cmp247, label %if.end246.out_crit_edge, label %if.end256, !prof !179

if.end246.out_crit_edge:                          ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end256:                                        ; preds = %if.end246
  %f_flags = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %100 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %f_flags, align 4
  %and257 = and i32 %101, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  %brmerge455 = select i1 %tobool258.not, i1 true, i1 %tobool5.not.not
  br i1 %brmerge455, label %lor.lhs.false261, label %if.end256.if.then268_crit_edge

if.end256.if.then268_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then268

lor.lhs.false261:                                 ; preds = %if.end256
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 10
  %104 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_flags, align 4
  %and263 = and i32 %105, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %lor.lhs.false265, label %lor.lhs.false261.if.then268_crit_edge

lor.lhs.false261.if.then268_crit_edge:            ; preds = %lor.lhs.false261
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then268

lor.lhs.false265:                                 ; preds = %lor.lhs.false261
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %106 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_flags, align 4
  %and266 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %lor.lhs.false265.out_crit_edge, label %lor.lhs.false265.if.then268_crit_edge

lor.lhs.false265.if.then268_crit_edge:            ; preds = %lor.lhs.false265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then268

lor.lhs.false265.out_crit_edge:                   ; preds = %lor.lhs.false265
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then268:                                       ; preds = %lor.lhs.false265.if.then268_crit_edge, %lor.lhs.false261.if.then268_crit_edge, %if.end256.if.then268_crit_edge
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %108 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %f_mapping, align 4
  %110 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %ki_pos, align 8
  %conv270507 = zext i32 %call218 to i64
  %sub = sub i64 %111, %conv270507
  %sub272 = add i64 %111, -1
  %call273 = call i32 @filemap_fdatawrite_range(ptr noundef %109, i64 noundef %sub, i64 noundef %sub272) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %cmp274 = icmp slt i32 %call273, 0
  %spec.select456 = select i1 %cmp274, i32 %call273, i32 %call218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool278.not = icmp eq i32 %call273, 0
  br i1 %tobool278.not, label %if.end285, label %if.then268.out_crit_edge

if.then268.out_crit_edge:                         ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end285:                                        ; preds = %if.then268
  %journal = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 45
  %112 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %journal, align 4
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %j_journal, align 4
  %call280 = call i32 @jbd2_journal_force_commit(ptr noundef %115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %cmp281 = icmp slt i32 %call280, 0
  %spec.select457 = select i1 %cmp281, i32 %call280, i32 %spec.select456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %tobool286.not = icmp eq i32 %call280, 0
  br i1 %tobool286.not, label %if.then287, label %if.end285.out_crit_edge

if.end285.out_crit_edge:                          ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then287:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %f_mapping, align 4
  %118 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ki_pos, align 8
  %conv290 = sext i32 %spec.select457 to i64
  %sub291 = sub i64 %119, %conv290
  %sub293 = add i64 %119, -1
  %call294 = call i32 @filemap_fdatawait_range(ptr noundef %117, i64 noundef %sub291, i64 noundef %sub293) #10
  br label %out

out:                                              ; preds = %if.then287, %if.end285.out_crit_edge, %if.then268.out_crit_edge, %lor.lhs.false265.out_crit_edge, %if.end246.out_crit_edge
  %ret.3 = phi i32 [ %ret.1279.i, %if.end246.out_crit_edge ], [ %call280, %if.end285.out_crit_edge ], [ %call294, %if.then287 ], [ %ret.1279.i, %lor.lhs.false265.out_crit_edge ], [ %call273, %if.then268.out_crit_edge ]
  %written.2 = phi i32 [ %call218, %if.end246.out_crit_edge ], [ %spec.select457, %if.end285.out_crit_edge ], [ %spec.select457, %if.then287 ], [ %call218, %lor.lhs.false265.out_crit_edge ], [ %spec.select456, %if.then268.out_crit_edge ]
  %tobool297.not = icmp eq ptr %saved_ki_complete.0, null
  br i1 %tobool297.not, label %out.if.end321_crit_edge, label %if.then298

out.if.end321_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end321

if.then298:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %ki_complete300 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %call.i460 = call zeroext i1 @__kasan_check_write(ptr noundef %ki_complete300, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %120 = ptrtoint ptr %saved_ki_complete.0 to i32
  call void @llvm.prefetch.p0(ptr %ki_complete300, i32 1, i32 3, i32 1) #10
  %121 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %120, ptr %ki_complete300) #10, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !209
  br label %if.end321

if.end321:                                        ; preds = %if.then298, %out.if.end321_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rw_level.0)
  %cmp322.not = icmp eq i32 %rw_level.0, -1
  br i1 %cmp322.not, label %if.end321.out_mutex_crit_edge, label %if.end321.if.then324_crit_edge

if.end321.if.then324_crit_edge:                   ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then324

if.end321.out_mutex_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then324:                                       ; preds = %if.end321.if.then324_crit_edge, %do.body177, %if.then157.if.then324_crit_edge, %if.then157.if.then324_crit_edge541, %if.then157.if.then324_crit_edge542, %if.then157.if.then324_crit_edge543, %if.then157.if.then324_crit_edge544, %if.end146, %if.then118.if.then324_crit_edge, %do.body101, %if.then81.if.then324_crit_edge, %if.then81.if.then324_crit_edge512, %if.then81.if.then324_crit_edge513, %if.then81.if.then324_crit_edge514, %if.then81.if.then324_crit_edge515
  %ret.3492501 = phi i32 [ %ret.3, %if.end321.if.then324_crit_edge ], [ %ret.2.i480, %if.then157.if.then324_crit_edge ], [ %call115, %if.then118.if.then324_crit_edge ], [ %call115, %if.end146 ], [ %call77, %if.then81.if.then324_crit_edge ], [ %call77, %if.then81.if.then324_crit_edge512 ], [ %call77, %if.then81.if.then324_crit_edge513 ], [ %call77, %if.then81.if.then324_crit_edge514 ], [ %call77, %if.then81.if.then324_crit_edge515 ], [ %call77, %do.body101 ], [ %ret.2.i480, %if.then157.if.then324_crit_edge541 ], [ %ret.2.i480, %if.then157.if.then324_crit_edge542 ], [ %ret.2.i480, %if.then157.if.then324_crit_edge543 ], [ %ret.2.i480, %if.then157.if.then324_crit_edge544 ], [ %ret.2.i480, %do.body177 ]
  %written.2493500 = phi i32 [ %written.2, %if.end321.if.then324_crit_edge ], [ 0, %if.then157.if.then324_crit_edge ], [ %call115, %if.then118.if.then324_crit_edge ], [ 0, %if.end146 ], [ 0, %if.then81.if.then324_crit_edge ], [ 0, %if.then81.if.then324_crit_edge512 ], [ 0, %if.then81.if.then324_crit_edge513 ], [ 0, %if.then81.if.then324_crit_edge514 ], [ 0, %if.then81.if.then324_crit_edge515 ], [ 0, %do.body101 ], [ 0, %if.then157.if.then324_crit_edge541 ], [ 0, %if.then157.if.then324_crit_edge542 ], [ 0, %if.then157.if.then324_crit_edge543 ], [ 0, %if.then157.if.then324_crit_edge544 ], [ 0, %do.body177 ]
  %rw_level.1494499 = phi i32 [ %rw_level.0, %if.end321.if.then324_crit_edge ], [ %lor.ext475, %if.then157.if.then324_crit_edge ], [ %lor.ext475, %if.then118.if.then324_crit_edge ], [ %lor.ext475, %if.end146 ], [ %lor.ext475, %if.then81.if.then324_crit_edge ], [ %lor.ext475, %if.then81.if.then324_crit_edge512 ], [ %lor.ext475, %if.then81.if.then324_crit_edge513 ], [ %lor.ext475, %if.then81.if.then324_crit_edge514 ], [ %lor.ext475, %if.then81.if.then324_crit_edge515 ], [ %lor.ext475, %do.body101 ], [ %lor.ext475, %if.then157.if.then324_crit_edge541 ], [ %lor.ext475, %if.then157.if.then324_crit_edge542 ], [ %lor.ext475, %if.then157.if.then324_crit_edge543 ], [ %lor.ext475, %if.then157.if.then324_crit_edge544 ], [ %lor.ext475, %do.body177 ]
  call void @ocfs2_rw_unlock(ptr noundef %5, i32 noundef %rw_level.1494499) #10
  br label %out_mutex

out_mutex.thread:                                 ; preds = %do.body, %if.then42.out_mutex.thread_crit_edge, %if.then42.out_mutex.thread_crit_edge508, %if.then42.out_mutex.thread_crit_edge509, %if.then42.out_mutex.thread_crit_edge510, %if.then42.out_mutex.thread_crit_edge511
  %i_rwsem.i471504 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i471504) #10
  br label %122

out_mutex:                                        ; preds = %if.then324, %if.end321.out_mutex_crit_edge
  %ret.4 = phi i32 [ %ret.3492501, %if.then324 ], [ %ret.3, %if.end321.out_mutex_crit_edge ]
  %written.3 = phi i32 [ %written.2493500, %if.then324 ], [ %written.2, %if.end321.out_mutex_crit_edge ]
  %i_rwsem.i471 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i471) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.3)
  %tobool326.not = icmp eq i32 %written.3, 0
  br i1 %tobool326.not, label %out_mutex._crit_edge, label %out_mutex.cleanup_crit_edge

out_mutex.cleanup_crit_edge:                      ; preds = %out_mutex
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_mutex._crit_edge:                             ; preds = %out_mutex
  call void @__sanitizer_cov_trace_pc() #12
  br label %122

122:                                              ; preds = %out_mutex._crit_edge, %out_mutex.thread
  %ret.4506 = phi i32 [ %ret.0, %out_mutex.thread ], [ %ret.4, %out_mutex._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %122, %out_mutex.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -11, %if.then25.cleanup_crit_edge ], [ %ret.4506, %122 ], [ %written.3, %out_mutex.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %conv = sext i32 %1 to i64
  tail call fastcc void @trace_ocfs2_file_open(ptr noundef %inode, ptr noundef %file, ptr noundef %3, i64 noundef %5, i32 noundef %7, ptr noundef %9, i64 noundef %conv)
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %10 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_mode, align 8
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @dquot_initialize(ptr noundef %inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.leave_crit_edge

if.then.leave_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %12 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ip_flags, align 4
  %and10 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  br label %leave

if.end14:                                         ; preds = %if.end9
  %and15 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %13, 32
  %14 = ptrtoint ptr %ip_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %ip_flags, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %ip_open_count = getelementptr i8, ptr %inode, i32 -188
  %15 = ptrtoint ptr %ip_open_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip_open_count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %ip_open_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 488) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then23, label %ocfs2_init_file_private.exit.thread

ocfs2_init_file_private.exit.thread:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %file, ptr %call7.i.i.i, align 8
  %fp_mutex.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %fp_mutex.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ocfs2_init_file_private.__key) #10
  %fp_flock.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @ocfs2_file_lock_res_init(ptr noundef %fp_flock.i, ptr noundef nonnull %call7.i.i.i) #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  br label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %20 = ptrtoint ptr %ip_open_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip_open_count, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %ip_open_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %ocfs2_init_file_private.exit.thread
  %retval.0.i54 = phi i32 [ 0, %ocfs2_init_file_private.exit.thread ], [ -12, %if.then23 ]
  %22 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_mode, align 8
  %or29 = or i32 %23, 134217728
  store i32 %or29, ptr %f_mode, align 8
  br label %leave

leave:                                            ; preds = %if.end27, %if.then12, %if.then.leave_crit_edge
  %status.0 = phi i32 [ %call6, %if.then.leave_crit_edge ], [ -2, %if.then12 ], [ %retval.0.i54, %if.end27 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_file_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #10
  %ip_open_count = getelementptr i8, ptr %inode, i32 -188
  %0 = ptrtoint ptr %ip_open_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip_open_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ip_open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %2 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip_flags, align 4
  %and = and i32 %3, -33
  store i32 %and, ptr %ip_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %conv = zext i32 %dec to i64
  tail call fastcc void @trace_ocfs2_file_release(ptr noundef %inode, ptr noundef %file, ptr noundef %5, i64 noundef %7, i32 noundef %9, ptr noundef %11, i64 noundef %conv)
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.ocfs2_free_file_private.exit_crit_edge, label %if.then.i

if.end.ocfs2_free_file_private.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_free_file_private.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %fp_flock.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %13, i32 0, i32 2
  tail call void @ocfs2_simple_drop_lockres(ptr noundef %17, ptr noundef %fp_flock.i) #10
  tail call void @ocfs2_lock_res_free(ptr noundef %fp_flock.i) #10
  tail call void @kfree(ptr noundef nonnull %13) #10
  %18 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %private_data.i, align 4
  br label %ocfs2_free_file_private.exit

ocfs2_free_file_private.exit:                     ; preds = %if.then.i, %if.end.ocfs2_free_file_private.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_sync_file(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1608
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal1, align 4
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %j_journal, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 8
  %conv = sext i32 %datasync to i64
  tail call fastcc void @trace_ocfs2_sync_file(ptr noundef %3, ptr noundef %file, ptr noundef %13, i64 noundef %15, i32 noundef %17, ptr noundef %19, i64 noundef %conv)
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 23
  %20 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %21, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %22 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %osb_flags.i, align 8
  %and.i92 = and i32 %23, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool9.not = icmp eq i32 %and.i92, 0
  br i1 %tobool9.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call10 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool14.not = icmp eq i32 %datasync, 0
  %cond.in.v = select i1 %tobool14.not, i32 884, i32 888
  %cond.in = getelementptr i8, ptr %3, i32 %cond.in.v
  %24 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond = load i32, ptr %cond.in, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %11, align 8
  %and = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end19.thread, label %if.end19

if.end19.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call2094 = tail call i32 @jbd2_complete_transaction(ptr noundef %11, i32 noundef %cond) #10
  br label %if.end28

if.end19:                                         ; preds = %if.end13
  %call16 = tail call i32 @jbd2_trans_will_send_data_barrier(ptr noundef %11, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %call20 = tail call i32 @jbd2_complete_transaction(ptr noundef %11, i32 noundef %cond) #10
  br i1 %tobool17.not, label %if.then22, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 26
  %29 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev, align 4
  %call24 = tail call i32 @blkdev_issue_flush(ptr noundef %30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool25.not = icmp eq i32 %call20, 0
  %spec.select = select i1 %tobool25.not, i32 %call24, i32 %call20
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end19.if.end28_crit_edge, %if.end19.thread
  %err.0 = phi i32 [ %call20, %if.end19.if.end28_crit_edge ], [ %call2094, %if.end19.thread ], [ %spec.select, %if.then22 ]
  %31 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %err.0, label %do.body [
    i32 0, label %if.end28.if.end51_crit_edge
    i32 -512, label %if.end28.if.end51_crit_edge95
    i32 -4, label %if.end28.if.end51_crit_edge96
    i32 524289, label %if.end28.if.end51_crit_edge97
    i32 -28, label %if.end28.if.end51_crit_edge98
    i32 -122, label %if.end28.if.end51_crit_edge99
  ]

if.end28.if.end51_crit_edge99:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end28.if.end51_crit_edge98:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end28.if.end51_crit_edge97:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end28.if.end51_crit_edge96:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end28.if.end51_crit_edge95:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.body:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %32 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv48 = sext i32 %err.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_sync_file, i32 noundef 201, ptr noundef nonnull @.str, i64 noundef %conv48) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end51

if.end51:                                         ; preds = %do.body, %if.end28.if.end51_crit_edge, %if.end28.if.end51_crit_edge95, %if.end28.if.end51_crit_edge96, %if.end28.if.end51_crit_edge97, %if.end28.if.end51_crit_edge98, %if.end28.if.end51_crit_edge99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp52 = icmp slt i32 %err.0, 0
  %cond54 = select i1 %cmp52, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond54, %if.end51 ], [ -30, %lor.lhs.false.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lock(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_flock(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_fallocate(ptr nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  %sr = alloca %struct.ocfs2_space_resv, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sr) #10
  %6 = call ptr @memset(ptr %sr, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %tobool.not = icmp ult i32 %mode, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_feature_incompat.i.i, align 8
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %ocfs2_writes_unwritten_extents.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ocfs2_writes_unwritten_extents.exit:              ; preds = %if.end
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge, label %if.end4

ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge: ; preds = %ocfs2_writes_unwritten_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %ocfs2_writes_unwritten_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and5 = and i32 %mode, 1
  %12 = xor i32 %and5, 1
  %and9 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cmd.0 = select i1 %tobool10.not, i32 1076910122, i32 1076910123
  %l_whence = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 1
  %13 = ptrtoint ptr %l_whence to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %l_whence, align 2
  %l_start = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 2
  %14 = ptrtoint ptr %l_start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %offset, ptr %l_start, align 8
  %l_len = getelementptr inbounds %struct.ocfs2_space_resv, ptr %sr, i32 0, i32 3
  %15 = ptrtoint ptr %l_len to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %len, ptr %l_len, align 8
  %call13 = call fastcc i32 @__ocfs2_change_file_space(ptr noundef null, ptr noundef %1, i64 noundef %offset, i32 noundef %cmd.0, ptr noundef nonnull %sr, i32 noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %ocfs2_writes_unwritten_extents.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ocfs2_remap_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  %len.addr = alloca i64, align 8
  %in_bh = alloca ptr, align 4
  %out_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m97 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %len, ptr %len.addr, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i167 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i167 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i167, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_bh) #10
  %9 = ptrtoint ptr %in_bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %in_bh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_bh) #10
  %10 = ptrtoint ptr %out_bh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %out_bh, align 4
  %cmp = icmp eq ptr %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remap_flags)
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_feature_incompat.i, align 8
  %13 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 23
  %14 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %osb_flags.i, align 8
  %and.i168 = and i32 %15, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool7.not = icmp eq i32 %and.i168, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #10
  %16 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %osb_flags.i, align 8
  %and.i171 = and i32 %17, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171)
  %tobool9.not = icmp eq i32 %and.i171, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call i32 @ocfs2_reflink_inodes_lock(ptr noundef %2, ptr noundef nonnull %in_bh, ptr noundef %4, ptr noundef nonnull %out_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv = sext i32 %call12 to i64
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %ip_flags = getelementptr i8, ptr %2, i32 -76
  %18 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip_flags, align 4
  %and17 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end15.out_unlock_crit_edge

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false19:                                  ; preds = %if.end15
  %ip_flags21 = getelementptr i8, ptr %4, i32 -76
  %20 = ptrtoint ptr %ip_flags21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip_flags21, align 4
  %and22 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false19.out_unlock_crit_edge

lor.lhs.false19.out_unlock_crit_edge:             ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end25:                                         ; preds = %lor.lhs.false19
  %call26 = call i32 @generic_remap_file_range_prep(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, ptr noundef nonnull %len.addr, i32 noundef %remap_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.out_unlock_crit_edge, label %lor.lhs.false29

if.end25.out_unlock_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false29:                                  ; preds = %if.end25
  %22 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %len.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp30 = icmp eq i64 %23, 0
  br i1 %cmp30, label %lor.lhs.false29.out_unlock_crit_edge, label %if.end33

lor.lhs.false29.out_unlock_crit_edge:             ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end33:                                         ; preds = %lor.lhs.false29
  %ip_alloc_sem = getelementptr i8, ptr %2, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #10
  br i1 %cmp, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %ip_alloc_sem38 = getelementptr i8, ptr %4, i32 -424
  call void @down_write_nested(ptr noundef %ip_alloc_sem38, i32 noundef 1) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 46
  %and40 = and i64 %pos_out, -4096
  %24 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %len.addr, align 8
  %add = add i64 %pos_out, -1
  %sub = add i64 %add, %25
  %or = or i64 %sub, 4095
  call void @truncate_inode_pages_range(ptr noundef %i_data, i64 noundef %and40, i64 noundef %or) #10
  %26 = ptrtoint ptr %in_bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_bh, align 4
  %28 = ptrtoint ptr %out_bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out_bh, align 4
  %30 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %len.addr, align 8
  %call43 = call i64 @ocfs2_reflink_remap_blocks(ptr noundef %2, ptr noundef %27, i64 noundef %pos_in, ptr noundef %4, ptr noundef %29, i64 noundef %pos_out, i64 noundef %31) #10
  call void @up_write(ptr noundef %ip_alloc_sem) #10
  br i1 %cmp, label %if.end39.if.end50_crit_edge, label %if.then47

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %ip_alloc_sem49 = getelementptr i8, ptr %4, i32 -424
  call void @up_write(ptr noundef %ip_alloc_sem49) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end39.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call43)
  %cmp51 = icmp slt i64 %call43, 0
  br i1 %cmp51, label %if.then53, label %if.end75

if.then53:                                        ; preds = %if.end50
  %conv54 = trunc i64 %call43 to i32
  %32 = zext i32 %conv54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %conv54, label %do.body [
    i32 -512, label %if.then53.out_unlock_crit_edge
    i32 -4, label %if.then53.out_unlock_crit_edge177
    i32 524289, label %if.then53.out_unlock_crit_edge178
    i32 -28, label %if.then53.out_unlock_crit_edge179
    i32 -122, label %if.then53.out_unlock_crit_edge180
  ]

if.then53.out_unlock_crit_edge180:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then53.out_unlock_crit_edge179:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then53.out_unlock_crit_edge178:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then53.out_unlock_crit_edge177:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then53.out_unlock_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %33 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv72 = sext i32 %conv54 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_remap_file_range, i32 noundef 2690, ptr noundef nonnull @.str, i64 noundef %conv72) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out_unlock

if.end75:                                         ; preds = %if.end50
  call void @ocfs2_extent_map_trunc(ptr noundef %2, i32 noundef 0) #10
  call void @ocfs2_extent_map_trunc(ptr noundef %4, i32 noundef 0) #10
  %34 = ptrtoint ptr %out_bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_bh, align 4
  %36 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %len.addr, align 8
  %add76 = add i64 %37, %pos_out
  %call77 = call i32 @ocfs2_reflink_update_dest(ptr noundef %4, ptr noundef %35, i64 noundef %add76) #10
  %38 = zext i32 %call77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call77, label %do.body96 [
    i32 0, label %if.end75.out_unlock_crit_edge
    i32 -512, label %if.end75.out_unlock_crit_edge181
    i32 -4, label %if.end75.out_unlock_crit_edge182
    i32 524289, label %if.end75.out_unlock_crit_edge183
    i32 -28, label %if.end75.out_unlock_crit_edge184
    i32 -122, label %if.end75.out_unlock_crit_edge185
  ]

if.end75.out_unlock_crit_edge185:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end75.out_unlock_crit_edge184:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end75.out_unlock_crit_edge183:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end75.out_unlock_crit_edge182:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end75.out_unlock_crit_edge181:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end75.out_unlock_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body96:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m97) #10
  %39 = ptrtoint ptr %_m97 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m97, align 8
  %conv101 = sext i32 %call77 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m97, ptr noundef nonnull @__func__.ocfs2_remap_file_range, i32 noundef 2703, ptr noundef nonnull @.str, i64 noundef %conv101) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m97) #10
  br label %out_unlock

out_unlock:                                       ; preds = %do.body96, %if.end75.out_unlock_crit_edge, %if.end75.out_unlock_crit_edge181, %if.end75.out_unlock_crit_edge182, %if.end75.out_unlock_crit_edge183, %if.end75.out_unlock_crit_edge184, %if.end75.out_unlock_crit_edge185, %do.body, %if.then53.out_unlock_crit_edge, %if.then53.out_unlock_crit_edge177, %if.then53.out_unlock_crit_edge178, %if.then53.out_unlock_crit_edge179, %if.then53.out_unlock_crit_edge180, %lor.lhs.false29.out_unlock_crit_edge, %if.end25.out_unlock_crit_edge, %lor.lhs.false19.out_unlock_crit_edge, %if.end15.out_unlock_crit_edge
  %remapped.0 = phi i64 [ 0, %if.end15.out_unlock_crit_edge ], [ 0, %lor.lhs.false19.out_unlock_crit_edge ], [ 0, %if.end25.out_unlock_crit_edge ], [ 0, %lor.lhs.false29.out_unlock_crit_edge ], [ %call43, %if.end75.out_unlock_crit_edge ], [ %call43, %if.then53.out_unlock_crit_edge ], [ %call43, %if.then53.out_unlock_crit_edge177 ], [ %call43, %if.then53.out_unlock_crit_edge178 ], [ %call43, %if.then53.out_unlock_crit_edge179 ], [ %call43, %if.then53.out_unlock_crit_edge180 ], [ %call43, %do.body ], [ %call43, %if.end75.out_unlock_crit_edge181 ], [ %call43, %if.end75.out_unlock_crit_edge182 ], [ %call43, %if.end75.out_unlock_crit_edge183 ], [ %call43, %if.end75.out_unlock_crit_edge184 ], [ %call43, %if.end75.out_unlock_crit_edge185 ], [ %call43, %do.body96 ]
  %ret.0 = phi i32 [ -22, %if.end15.out_unlock_crit_edge ], [ -22, %lor.lhs.false19.out_unlock_crit_edge ], [ %call26, %if.end25.out_unlock_crit_edge ], [ %call26, %lor.lhs.false29.out_unlock_crit_edge ], [ %call77, %if.end75.out_unlock_crit_edge ], [ %conv54, %if.then53.out_unlock_crit_edge ], [ %conv54, %if.then53.out_unlock_crit_edge177 ], [ %conv54, %if.then53.out_unlock_crit_edge178 ], [ %conv54, %if.then53.out_unlock_crit_edge179 ], [ %conv54, %if.then53.out_unlock_crit_edge180 ], [ %conv54, %do.body ], [ %call77, %if.end75.out_unlock_crit_edge181 ], [ %call77, %if.end75.out_unlock_crit_edge182 ], [ %call77, %if.end75.out_unlock_crit_edge183 ], [ %call77, %if.end75.out_unlock_crit_edge184 ], [ %call77, %if.end75.out_unlock_crit_edge185 ], [ %call77, %do.body96 ]
  %40 = ptrtoint ptr %in_bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %in_bh, align 4
  %42 = ptrtoint ptr %out_bh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out_bh, align 4
  call void @ocfs2_reflink_inodes_unlock(ptr noundef %2, ptr noundef %41, ptr noundef %4, ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remapped.0)
  %cmp108 = icmp sgt i64 %remapped.0, 0
  %conv110 = sext i32 %ret.0 to i64
  %spec.select = select i1 %cmp108, i64 %remapped.0, i64 %conv110
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then14, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then14 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -30, %lor.lhs.false.cleanup_crit_edge ], [ -30, %if.end5.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_bh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_bh) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_readdir(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dir_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 488) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.ocfs2_init_file_private.exit_crit_edge, label %if.end.i

entry.ocfs2_init_file_private.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_init_file_private.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %file, ptr %call7.i.i.i, align 8
  %fp_mutex.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %fp_mutex.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ocfs2_init_file_private.__key) #10
  %fp_flock.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @ocfs2_file_lock_res_init(ptr noundef %fp_flock.i, ptr noundef nonnull %call7.i.i.i) #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  br label %ocfs2_init_file_private.exit

ocfs2_init_file_private.exit:                     ; preds = %if.end.i, %entry.ocfs2_init_file_private.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.ocfs2_init_file_private.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dir_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ocfs2_free_file_private.exit_crit_edge, label %if.then.i

entry.ocfs2_free_file_private.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_free_file_private.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %fp_flock.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %1, i32 0, i32 2
  tail call void @ocfs2_simple_drop_lockres(ptr noundef %5, ptr noundef %fp_flock.i) #10
  tail call void @ocfs2_lock_res_free(ptr noundef %fp_flock.i) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data.i, align 4
  br label %ocfs2_free_file_private.exit

ocfs2_free_file_private.exit:                     ; preds = %if.then.i, %entry.ocfs2_free_file_private.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_truncate_file(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_truncate_file_error(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_zero_range_for_truncate(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_zero_extend(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_refcount_cow(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_zero_extend_range(i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_extend_range, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_zero_extend_range, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  %call42 = tail call i32 @__traceiter_ocfs2_zero_extend_range(ptr noundef null, i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_extend_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_extend_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_zero_extend_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_zero_extend_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1402, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
define internal fastcc i32 @ocfs2_write_zero_page(ptr noundef %inode, i64 noundef %abs_from, i64 noundef %abs_to, ptr noundef %di_bh) unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m38.i = alloca i64, align 8
  %_m70.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m116 = alloca i64, align 8
  %_m150 = alloca i64, align 8
  %tmp163 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %shr = lshr i64 %abs_from, 12
  %conv = trunc i64 %shr to i32
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %abs_to, i64 %abs_from)
  %cmp.not = icmp ugt i64 %abs_to, %abs_from
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !167

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 764, 0\0A.popsection", ""() #10, !srcloc !212
  unreachable

do.body9:                                         ; preds = %entry
  %add = and i64 %abs_from, 17592186040320
  %shl = add nuw nsw i64 %add, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %abs_to)
  %cmp11 = icmp ult i64 %shl, %abs_to
  br i1 %cmp11, label %do.body20, label %do.body29, !prof !179

do.body20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #10, !srcloc !213
  unreachable

do.body29:                                        ; preds = %do.body9
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv30 = zext i8 %5 to i32
  %sub = add nsw i32 %conv30, -1
  %conv31 = sext i32 %sub to i64
  %and = and i64 %conv31, %abs_from
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool32.not = icmp eq i64 %and, 0
  br i1 %tobool32.not, label %do.end48, label %do.body40, !prof !167

do.body40:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 766, 0\0A.popsection", ""() #10, !srcloc !214
  unreachable

do.end48:                                         ; preds = %do.body29
  %sub49 = sub i64 %abs_to, %abs_from
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %12)
  %cmp.i.i = icmp eq i16 %12, -32768
  br i1 %cmp.i.i, label %ocfs2_should_order_data.exit.i, label %do.end48.if.end53_crit_edge

do.end48.if.end53_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

ocfs2_should_order_data.exit.i:                   ; preds = %do.end48
  %s_mount_opt.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 28
  %13 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_mount_opt.i.i, align 8
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.not.i, label %if.end.i, label %ocfs2_should_order_data.exit.i.if.end53_crit_edge

ocfs2_should_order_data.exit.i.if.end53_crit_edge: ; preds = %ocfs2_should_order_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end.i:                                         ; preds = %ocfs2_should_order_data.exit.i
  %call1.i = tail call ptr @ocfs2_start_trans(ptr noundef %9, i32 noundef 1) #10
  %cmp.i124.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.i, label %if.then82.i, label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i
  %ip_jinode.i.i = getelementptr i8, ptr %inode, i32 784
  %call1.i.i = tail call i32 @jbd2_journal_inode_ranged_write(ptr noundef %call1.i, ptr noundef %ip_jinode.i.i, i64 noundef %abs_from, i64 noundef %sub49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp18.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end48.i

if.then20.i:                                      ; preds = %if.end16.i
  %16 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call1.i.i, label %do.body37.i [
    i32 -512, label %if.then20.i.if.then84.i_crit_edge
    i32 -4, label %if.then20.i.if.then84.i_crit_edge269
    i32 -28, label %if.then20.i.if.then84.i_crit_edge270
    i32 -122, label %if.then20.i.if.then84.i_crit_edge271
  ]

if.then20.i.if.then84.i_crit_edge271:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

if.then20.i.if.then84.i_crit_edge270:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

if.then20.i.if.then84.i_crit_edge269:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

if.then20.i.if.then84.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

do.body37.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38.i) #10
  %17 = ptrtoint ptr %_m38.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m38.i, align 8
  %conv42.i = sext i32 %call1.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38.i, ptr noundef nonnull @__func__.ocfs2_zero_start_ordered_transaction, i32 noundef 731, ptr noundef nonnull @.str, i64 noundef %conv42.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38.i) #10
  br label %if.then84.i

if.end48.i:                                       ; preds = %if.end16.i
  %ip_metadata_cache.i.i = getelementptr i8, ptr %inode, i32 -56
  %call50.i = tail call i32 @ocfs2_journal_access_di(ptr noundef %call1.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %di_bh, i32 noundef 1) #10
  %18 = zext i32 %call50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call50.i, label %do.body69.i [
    i32 0, label %if.end48.i.if.end80.i_crit_edge
    i32 -512, label %if.end48.i.if.end80.i_crit_edge272
    i32 -4, label %if.end48.i.if.end80.i_crit_edge273
    i32 524289, label %if.end48.i.if.end80.i_crit_edge274
    i32 -28, label %if.end48.i.if.end80.i_crit_edge275
    i32 -122, label %if.end48.i.if.end80.i_crit_edge276
  ]

if.end48.i.if.end80.i_crit_edge276:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.end48.i.if.end80.i_crit_edge275:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.end48.i.if.end80.i_crit_edge274:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.end48.i.if.end80.i_crit_edge273:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.end48.i.if.end80.i_crit_edge272:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.end48.i.if.end80.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

do.body69.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70.i) #10
  %19 = ptrtoint ptr %_m70.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m70.i, align 8
  %conv74.i = sext i32 %call50.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70.i, ptr noundef nonnull @__func__.ocfs2_zero_start_ordered_transaction, i32 noundef 738, ptr noundef nonnull @.str, i64 noundef %conv74.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70.i) #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.body69.i, %if.end48.i.if.end80.i_crit_edge, %if.end48.i.if.end80.i_crit_edge272, %if.end48.i.if.end80.i_crit_edge273, %if.end48.i.if.end80.i_crit_edge274, %if.end48.i.if.end80.i_crit_edge275, %if.end48.i.if.end80.i_crit_edge276
  %h_aborted.i.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call1.i, i32 0, i32 7
  %20 = ptrtoint ptr %h_aborted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.i.i = load i32, ptr %h_aborted.i.i.i, align 4
  %21 = and i32 %bf.load.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end80.i.out.i_crit_edge

if.end80.i.out.i_crit_edge:                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

lor.lhs.false.i.i.i:                              ; preds = %if.end80.i
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call1.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.out.i_crit_edge, label %is_handle_aborted.exit.i.i

lor.lhs.false.i.i.i.out.i_crit_edge:              ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

is_handle_aborted.exit.i.i:                       ; preds = %lor.lhs.false.i.i.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %and.i.i.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %is_handle_aborted.exit.i.i.out.i_crit_edge

is_handle_aborted.exit.i.i.out.i_crit_edge:       ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then.i.i:                                      ; preds = %is_handle_aborted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i.i = getelementptr inbounds %struct.transaction_s, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %t_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_tid.i.i, align 4
  %i_sync_tid.i.i = getelementptr i8, ptr %inode, i32 884
  %30 = ptrtoint ptr %i_sync_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_sync_tid.i.i, align 4
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call1.i, align 4
  %t_tid4.i.i = getelementptr inbounds %struct.transaction_s, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %t_tid4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %t_tid4.i.i, align 4
  %i_datasync_tid.i.i = getelementptr i8, ptr %inode, i32 888
  %35 = ptrtoint ptr %i_datasync_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %i_datasync_tid.i.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.then.i.i, %is_handle_aborted.exit.i.i.out.i_crit_edge, %lor.lhs.false.i.i.i.out.i_crit_edge, %if.end80.i.out.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool81.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool81.not.i, label %out.i.ocfs2_zero_start_ordered_transaction.exit_crit_edge, label %out.i.if.then84.i_crit_edge

out.i.if.then84.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

out.i.ocfs2_zero_start_ordered_transaction.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_zero_start_ordered_transaction.exit

if.then82.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %36 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_zero_start_ordered_transaction, i32 noundef 725, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %if.end86.i

if.then84.i:                                      ; preds = %out.i.if.then84.i_crit_edge, %do.body37.i, %if.then20.i.if.then84.i_crit_edge, %if.then20.i.if.then84.i_crit_edge269, %if.then20.i.if.then84.i_crit_edge270, %if.then20.i.if.then84.i_crit_edge271
  %ret.0131.ph.i = phi i32 [ %call1.i.i, %if.then20.i.if.then84.i_crit_edge ], [ %call1.i.i, %if.then20.i.if.then84.i_crit_edge269 ], [ %call1.i.i, %if.then20.i.if.then84.i_crit_edge270 ], [ %call1.i.i, %if.then20.i.if.then84.i_crit_edge271 ], [ %call1.i.i, %do.body37.i ], [ %call50.i, %out.i.if.then84.i_crit_edge ]
  %call85.i = call i32 @ocfs2_commit_trans(ptr noundef %9, ptr noundef %call1.i) #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then84.i, %if.then82.i
  %ret.0131140.i = phi i32 [ %ret.0131.ph.i, %if.then84.i ], [ -12, %if.then82.i ]
  %37 = inttoptr i32 %ret.0131140.i to ptr
  br label %ocfs2_zero_start_ordered_transaction.exit

ocfs2_zero_start_ordered_transaction.exit:        ; preds = %if.end86.i, %out.i.ocfs2_zero_start_ordered_transaction.exit_crit_edge
  %handle.1.i = phi ptr [ %37, %if.end86.i ], [ %call1.i, %out.i.ocfs2_zero_start_ordered_transaction.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %handle.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %ocfs2_zero_start_ordered_transaction.exit.if.end53_crit_edge

ocfs2_zero_start_ordered_transaction.exit.if.end53_crit_edge: ; preds = %ocfs2_zero_start_ordered_transaction.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then51:                                        ; preds = %ocfs2_zero_start_ordered_transaction.exit
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %handle.1.i to i32
  br label %out

if.end53:                                         ; preds = %ocfs2_zero_start_ordered_transaction.exit.if.end53_crit_edge, %ocfs2_should_order_data.exit.i.if.end53_crit_edge, %do.end48.if.end53_crit_edge
  %handle.1.i260 = phi ptr [ %handle.1.i, %ocfs2_zero_start_ordered_transaction.exit.if.end53_crit_edge ], [ null, %ocfs2_should_order_data.exit.i.if.end53_crit_edge ], [ null, %do.end48.if.end53_crit_edge ]
  %call.i = call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %conv, i32 noundef 7, i32 noundef 3136) #10
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %do.body71, label %if.end80

do.body71:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %39 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_zero_page, i32 noundef 779, ptr noundef nonnull @.str, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out_commit_trans

if.end80:                                         ; preds = %if.end53
  %40 = trunc i64 %abs_from to i32
  %conv82 = and i32 %40, 4095
  %41 = trunc i64 %abs_to to i32
  %conv84 = and i32 %41, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv84)
  %tobool85.not = icmp eq i32 %conv84, 0
  %spec.store.select = select i1 %tobool85.not, i32 4096, i32 %conv84
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_write_zero_page(i64 noundef %43, i64 noundef %abs_from, i64 noundef %abs_to, i32 noundef %conv, i32 noundef %conv82, i32 noundef %spec.store.select)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv82, i32 %spec.store.select)
  %cmp89262 = icmp ult i32 %conv82, %spec.store.select
  br i1 %cmp89262, label %if.end80.for.body_crit_edge, label %if.end80.for.end_crit_edge

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end80.for.body_crit_edge
  %block_start.0263 = phi i32 [ %add92, %for.inc.for.body_crit_edge ], [ %conv82, %if.end80.for.body_crit_edge ]
  %44 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i_blkbits, align 2
  %conv.i = zext i8 %45 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %add92 = add i32 %shl.i, %block_start.0263
  %add93 = add nuw i32 %block_start.0263, 1
  %conv94 = zext i32 %add93 to i64
  %call95 = call i32 @__block_write_begin(ptr noundef nonnull %call.i, i64 noundef %conv94, i32 noundef 0, ptr noundef nonnull @ocfs2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end126

if.then98:                                        ; preds = %for.body
  %46 = zext i32 %call95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call95, label %do.body115 [
    i32 -512, label %if.then98.out_unlock_crit_edge
    i32 -4, label %if.then98.out_unlock_crit_edge277
    i32 -28, label %if.then98.out_unlock_crit_edge278
    i32 -122, label %if.then98.out_unlock_crit_edge279
  ]

if.then98.out_unlock_crit_edge279:                ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then98.out_unlock_crit_edge278:                ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then98.out_unlock_crit_edge277:                ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then98.out_unlock_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body115:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m116) #10
  %47 = ptrtoint ptr %_m116 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m116, align 8
  %conv120 = sext i32 %call95 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m116, ptr noundef nonnull @__func__.ocfs2_write_zero_page, i32 noundef 808, ptr noundef nonnull @.str, i64 noundef %conv120) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m116) #10
  br label %out_unlock

if.end126:                                        ; preds = %for.body
  %call129 = call i32 @block_commit_write(ptr noundef nonnull %call.i, i32 noundef %add93, i32 noundef %add93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end126.for.inc_crit_edge

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then132:                                       ; preds = %if.end126
  %48 = zext i32 %call129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call129, label %do.body149 [
    i32 -512, label %if.then132.for.inc_crit_edge
    i32 -4, label %if.then132.for.inc_crit_edge280
    i32 -28, label %if.then132.for.inc_crit_edge281
    i32 -122, label %if.then132.for.inc_crit_edge282
  ]

if.then132.for.inc_crit_edge282:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then132.for.inc_crit_edge281:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then132.for.inc_crit_edge280:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then132.for.inc_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body149:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m150) #10
  %49 = ptrtoint ptr %_m150 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m150, align 8
  %conv154 = sext i32 %call129 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m150, ptr noundef nonnull @__func__.ocfs2_write_zero_page, i32 noundef 817, ptr noundef nonnull @.str, i64 noundef %conv154) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m150) #10
  br label %for.inc

for.inc:                                          ; preds = %do.body149, %if.then132.for.inc_crit_edge, %if.then132.for.inc_crit_edge280, %if.then132.for.inc_crit_edge281, %if.then132.for.inc_crit_edge282, %if.end126.for.inc_crit_edge
  %ret.1 = phi i32 [ %call129, %if.then132.for.inc_crit_edge ], [ %call129, %if.then132.for.inc_crit_edge280 ], [ %call129, %if.then132.for.inc_crit_edge281 ], [ %call129, %if.then132.for.inc_crit_edge282 ], [ %call129, %do.body149 ], [ 0, %if.end126.for.inc_crit_edge ]
  %cmp89 = icmp ult i32 %add92, %spec.store.select
  br i1 %cmp89, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end80.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end80.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %abs_to)
  %50 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i252 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i252 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i252, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %53, i32 0, i32 36
  %54 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i = add i32 %55, -9
  %ip_clusters.i = getelementptr i8, ptr %inode, i32 -176
  %56 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ip_clusters.i, align 8
  %conv.i253 = zext i32 %57 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i254 = shl i64 %conv.i253, %sh_prom.i
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %58 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %shl.i254, ptr %i_blocks, align 8
  %call162 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %59 = call i64 @llvm.bswap.i64(i64 %call162)
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %3, i32 0, i32 9
  %60 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %i_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp163) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp163, ptr noundef %inode) #10
  %61 = call ptr @memcpy(ptr %i_ctime, ptr %tmp163, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp163) #10
  %62 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %63 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_mtime, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %64)
  %i_ctime165 = getelementptr inbounds %struct.ocfs2_dinode, ptr %3, i32 0, i32 14
  %66 = ptrtoint ptr %i_ctime165 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %i_ctime165, align 8
  %i_mtime166 = getelementptr inbounds %struct.ocfs2_dinode, ptr %3, i32 0, i32 15
  %67 = ptrtoint ptr %i_mtime166 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %65, ptr %i_mtime166, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tv_nsec, align 8
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %3, i32 0, i32 21
  %71 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %i_ctime_nsec, align 8
  %i_mtime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %3, i32 0, i32 22
  %72 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %70, ptr %i_mtime_nsec, align 4
  %tobool169.not = icmp eq ptr %handle.1.i260, null
  br i1 %tobool169.not, label %for.end.out_unlock_crit_edge, label %if.then170

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then170:                                       ; preds = %for.end
  call void @ocfs2_journal_dirty(ptr noundef nonnull %handle.1.i260, ptr noundef %di_bh) #10
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle.1.i260, i32 0, i32 7
  %73 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %74 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i255 = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i255, label %lor.lhs.false.i.i, label %if.then170.out_unlock_crit_edge

if.then170.out_unlock_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false.i.i:                                ; preds = %if.then170
  %75 = ptrtoint ptr %handle.1.i260 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %handle.1.i260, align 4
  %tobool1.not.i.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.out_unlock_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.out_unlock_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %and.i.i.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.out_unlock_crit_edge

is_handle_aborted.exit.i.out_unlock_crit_edge:    ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %83 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %i_sync_tid.i, align 4
  %84 = ptrtoint ptr %handle.1.i260 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %handle.1.i260, align 4
  %t_tid4.i = getelementptr inbounds %struct.transaction_s, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %t_tid4.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %t_tid4.i, align 4
  %i_datasync_tid.i = getelementptr i8, ptr %inode, i32 888
  %88 = ptrtoint ptr %i_datasync_tid.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %i_datasync_tid.i, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then.i, %is_handle_aborted.exit.i.out_unlock_crit_edge, %lor.lhs.false.i.i.out_unlock_crit_edge, %if.then170.out_unlock_crit_edge, %for.end.out_unlock_crit_edge, %do.body115, %if.then98.out_unlock_crit_edge, %if.then98.out_unlock_crit_edge277, %if.then98.out_unlock_crit_edge278, %if.then98.out_unlock_crit_edge279
  %ret.2 = phi i32 [ %ret.0.lcssa, %for.end.out_unlock_crit_edge ], [ %call95, %if.then98.out_unlock_crit_edge ], [ %call95, %if.then98.out_unlock_crit_edge277 ], [ %call95, %if.then98.out_unlock_crit_edge278 ], [ %call95, %if.then98.out_unlock_crit_edge279 ], [ %call95, %do.body115 ], [ %ret.0.lcssa, %if.then170.out_unlock_crit_edge ], [ %ret.0.lcssa, %lor.lhs.false.i.i.out_unlock_crit_edge ], [ %ret.0.lcssa, %is_handle_aborted.exit.i.out_unlock_crit_edge ], [ %ret.0.lcssa, %if.then.i ]
  call void @unlock_page(ptr noundef nonnull %call.i) #10
  %89 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %and.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i256 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i256, label %if.end.i.i, label %if.then.i.i257, !prof !167

if.then.i.i257:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %91, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i257
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i257 ], [ %92, %if.end.i.i ]
  %93 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %94 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.i.i = icmp eq i32 %95, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !179

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %93, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !215
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !216
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ocfs2_write_zero_page, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !172

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %93, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_commit_trans_crit_edge

folio_put_testzero.exit.i.i.out_commit_trans_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit_trans

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %93) #10
  br label %out_commit_trans

out_commit_trans:                                 ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_commit_trans_crit_edge, %do.body71
  %ret.3 = phi i32 [ -12, %do.body71 ], [ %ret.2, %folio_put_testzero.exit.i.i.out_commit_trans_crit_edge ], [ %ret.2, %if.then.i4.i ]
  %tobool172.not = icmp eq ptr %handle.1.i260, null
  br i1 %tobool172.not, label %out_commit_trans.out_crit_edge, label %if.then173

out_commit_trans.out_crit_edge:                   ; preds = %out_commit_trans
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then173:                                       ; preds = %out_commit_trans
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 33
  %99 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info, align 16
  %call174 = call i32 @ocfs2_commit_trans(ptr noundef %100, ptr noundef nonnull %handle.1.i260) #10
  br label %out

out:                                              ; preds = %if.then173, %out_commit_trans.out_crit_edge, %if.then51
  %ret.4 = phi i32 [ %38, %if.then51 ], [ %ret.3, %if.then173 ], [ %ret.3, %out_commit_trans.out_crit_edge ]
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_zero_extend_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_write_zero_page(i64 noundef %ino, i64 noundef %abs_from, i64 noundef %abs_to, i32 noundef %index, i32 noundef %zero_from, i32 noundef %zero_to) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_zero_page, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_write_zero_page, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !219
  %call42 = tail call i32 @__traceiter_ocfs2_write_zero_page(ptr noundef null, i64 noundef %ino, i64 noundef %abs_from, i64 noundef %abs_to, i32 noundef %index, i32 noundef %zero_from, i32 noundef %zero_to) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_zero_page, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_zero_page, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_write_zero_page.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_write_zero_page.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1400, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_inode_ranged_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_write_zero_page(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lock_allocators(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_extend_allocation(i64 noundef %ip_blkno, i64 noundef %size, i32 noundef %clusters, i32 noundef %clusters_to_add, i32 noundef %why) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_allocation, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_extend_allocation, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !221
  %call42 = tail call i32 @__traceiter_ocfs2_extend_allocation(ptr noundef null, i64 noundef %ip_blkno, i64 noundef %size, i32 noundef %clusters, i32 noundef %clusters_to_add, i32 noundef %why, i32 noundef 0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !222
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !167

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_allocation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_allocation, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_ocfs2_extend_allocation.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_extend_allocation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1350, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @ocfs2_allocate_extend_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_extend_allocation_end(i64 noundef %ino, i32 noundef %di_clusters, i64 noundef %di_size, i32 noundef %ip_clusters, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_allocation_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_extend_allocation_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !223
  %call42 = tail call i32 @__traceiter_ocfs2_extend_allocation_end(ptr noundef null, i64 noundef %ino, i32 noundef %di_clusters, i64 noundef %di_size, i32 noundef %ip_clusters, i64 noundef %i_size) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_allocation_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_allocation_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_extend_allocation_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_extend_allocation_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1373, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local void @ocfs2_free_alloc_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_extend_allocation(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_extend_allocation_end(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_setattr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_begin_ordered_truncate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_size_fits_inline_data(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_convert_inline_data_to_extents(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_remove_inode_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_zero_partial_clusters(i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_zero_partial_clusters, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !225
  %call42 = tail call i32 @__traceiter_ocfs2_zero_partial_clusters(ptr noundef null, i64 noundef %value1, i64 noundef %value2, i64 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !226
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_zero_partial_clusters.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_zero_partial_clusters.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1444, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
define internal fastcc i32 @ocfs2_zeroout_partial_cluster(ptr noundef %inode, i64 noundef %start, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  %p_cluster = alloca i32, align 4
  %nr_clusters = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_cluster) #10
  %0 = ptrtoint ptr %p_cluster to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %p_cluster, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_clusters) #10
  %1 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_clusters, align 4, !annotation !187
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_clustersize.i.i, align 4
  %sub.i.i = add i32 %9, -1
  %conv.i.i = sext i32 %sub.i.i to i64
  %add.i.i = add i64 %conv.i.i, %start
  %sh_prom.i.i = zext i32 %7 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %conv.i = and i64 %shr.i.i, 4294967295
  %shl.i = shl i64 %conv.i, %sh_prom.i.i
  %add = add i64 %len, %start
  %10 = tail call i64 @llvm.umin.i64(i64 %add, i64 %shl.i)
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %12, -1
  %conv.i46 = zext i32 %sub.i to i64
  %add.i = add i64 %conv.i46, %start
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %14 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %add.i50 = add i64 %10, %conv.i46
  %shr.i53 = lshr i64 %add.i50, %sh_prom.i
  %sub = sub i64 %shr.i53, %shr.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i53, i64 %shr.i)
  %tobool.not = icmp eq i64 %shr.i53, %shr.i
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %shr.i57 = lshr i64 %start, %sh_prom.i.i
  %conv.i58 = trunc i64 %shr.i57 to i32
  %call7 = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %conv.i58, ptr noundef nonnull %p_cluster, ptr noundef nonnull %nr_clusters, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %p_cluster to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i60 = getelementptr inbounds %struct.ocfs2_super, ptr %18, i32 0, i32 36
  %19 = ptrtoint ptr %s_clustersize_bits.i60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_clustersize_bits.i60, align 8
  %21 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i62 = zext i8 %22 to i32
  %sub.i63 = sub i32 %20, %conv.i62
  %conv1.i = and i64 %shr.i57, 4294967295
  %sh_prom.i64 = zext i32 %sub.i63 to i64
  %shl.i65 = shl i64 %conv1.i, %sh_prom.i64
  %sub15 = sub i64 %shr.i, %shl.i65
  %conv1.i71 = zext i32 %16 to i64
  %shl.i73 = shl i64 %conv1.i71, %sh_prom.i64
  %add17 = add i64 %sub15, %shl.i73
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %sub.i76 = add nsw i32 %conv.i62, -9
  %sh_prom.i77 = zext i32 %sub.i76 to i64
  %shl.i78 = shl i64 %add17, %sh_prom.i77
  %shl5.i = shl i64 %sub, %sh_prom.i77
  %call.i = call i32 @blkdev_issue_zeroout(ptr noundef %24, i64 noundef %shl.i78, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_clusters) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_cluster) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_zero_partial_clusters_range1(i64 noundef %val1, i64 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters_range1, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_zero_partial_clusters_range1, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !227
  %call42 = tail call i32 @__traceiter_ocfs2_zero_partial_clusters_range1(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !228
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters_range1, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters_range1, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_zero_partial_clusters_range1.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_zero_partial_clusters_range1.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
define internal fastcc void @trace_ocfs2_zero_partial_clusters_range2(i64 noundef %val1, i64 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters_range2, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_zero_partial_clusters_range2, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !229
  %call42 = tail call i32 @__traceiter_ocfs2_zero_partial_clusters_range2(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !230
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters_range2, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_zero_partial_clusters_range2, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_zero_partial_clusters_range2.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_zero_partial_clusters_range2.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1448, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @__traceiter_ocfs2_zero_partial_clusters(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_zero_partial_clusters_range1(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_zero_partial_clusters_range2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @should_remove_suid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_write_remove_suid(ptr noundef %inode, ptr noundef %bh) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m43 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %conv = zext i16 %7 to i32
  tail call fastcc void @trace_ocfs2_write_remove_suid(i64 noundef %5, i32 noundef %conv)
  %call1 = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %call1 to i32
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %8, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge108
    i32 524289, label %if.then.out_crit_edge109
    i32 -28, label %if.then.out_crit_edge110
    i32 -122, label %if.then.out_crit_edge111
  ]

if.then.out_crit_edge111:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge110:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge109:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge108:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv18 = sext i32 %8 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_write_remove_suid, i32 noundef 1388, ptr noundef nonnull @.str, i64 noundef %conv18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end20:                                         ; preds = %entry
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call22 = tail call i32 @ocfs2_journal_access_di(ptr noundef %call1, ptr noundef %ip_metadata_cache.i, ptr noundef %bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end53

if.then25:                                        ; preds = %if.end20
  %11 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call22, label %do.body42 [
    i32 -512, label %if.then25.out_trans_crit_edge
    i32 -4, label %if.then25.out_trans_crit_edge112
    i32 -28, label %if.then25.out_trans_crit_edge113
    i32 -122, label %if.then25.out_trans_crit_edge114
  ]

if.then25.out_trans_crit_edge114:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans

if.then25.out_trans_crit_edge113:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans

if.then25.out_trans_crit_edge112:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans

if.then25.out_trans_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans

do.body42:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #10
  %12 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m43, align 8
  %conv47 = sext i32 %call22 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.__ocfs2_write_remove_suid, i32 noundef 1395, ptr noundef nonnull @.str, i64 noundef %conv47) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #10
  br label %out_trans

if.end53:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %inode, align 8
  %15 = and i16 %14, 1032
  call void @__sanitizer_cov_trace_const_cmp2(i16 1032, i16 %15)
  %.not = icmp eq i16 %15, 1032
  %spec.select.v = select i1 %.not, i16 -3073, i16 -2049
  %spec.select = and i16 %14, %spec.select.v
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %spec.select, ptr %inode, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %i_mode74 = getelementptr inbounds %struct.ocfs2_dinode, ptr %18, i32 0, i32 10
  %20 = ptrtoint ptr %i_mode74 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %i_mode74, align 8
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call1, i32 0, i32 7
  %21 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %22 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end53.ocfs2_update_inode_fsync_trans.exit_crit_edge

if.end53.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

lor.lhs.false.i.i:                                ; preds = %if.end53
  %23 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call1, align 4
  %tobool1.not.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i.i.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge

is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge: ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_update_inode_fsync_trans.exit

if.then.i:                                        ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %inode, i32 884
  %31 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %i_sync_tid.i, align 4
  br label %ocfs2_update_inode_fsync_trans.exit

ocfs2_update_inode_fsync_trans.exit:              ; preds = %if.then.i, %is_handle_aborted.exit.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %lor.lhs.false.i.i.ocfs2_update_inode_fsync_trans.exit_crit_edge, %if.end53.ocfs2_update_inode_fsync_trans.exit_crit_edge
  tail call void @ocfs2_journal_dirty(ptr noundef %call1, ptr noundef %bh) #10
  br label %out_trans

out_trans:                                        ; preds = %ocfs2_update_inode_fsync_trans.exit, %do.body42, %if.then25.out_trans_crit_edge, %if.then25.out_trans_crit_edge112, %if.then25.out_trans_crit_edge113, %if.then25.out_trans_crit_edge114
  %call75 = call i32 @ocfs2_commit_trans(ptr noundef %3, ptr noundef %call1) #10
  br label %out

out:                                              ; preds = %out_trans, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge108, %if.then.out_crit_edge109, %if.then.out_crit_edge110, %if.then.out_crit_edge111
  %ret.0 = phi i32 [ %call22, %out_trans ], [ %8, %if.then.out_crit_edge ], [ %8, %if.then.out_crit_edge108 ], [ %8, %if.then.out_crit_edge109 ], [ %8, %if.then.out_crit_edge110 ], [ %8, %if.then.out_crit_edge111 ], [ %8, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_allocate_unwritten_extents(ptr noundef %inode, i64 noundef %start, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  %phys_cpos = alloca i32, align 4
  %alloc_size = alloca i32, align 4
  %di_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m47 = alloca i64, align 8
  %_m84 = alloca i64, align 8
  %_m125 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_cpos) #10
  %0 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys_cpos, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc_size) #10
  %1 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %alloc_size, align 4, !annotation !187
  %add = add i64 %len, %start
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #10
  %2 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %di_bh, align 4
  %ip_dyn_features = getelementptr i8, ptr %inode, i32 -172
  %3 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ip_dyn_features, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end58_crit_edge, label %if.then

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then:                                          ; preds = %entry
  %call1 = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %di_bh) #10
  %6 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call1, label %do.body [
    i32 0, label %if.end22
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge225
    i32 524289, label %if.then.out_crit_edge226
    i32 -28, label %if.then.out_crit_edge227
    i32 -122, label %if.then.out_crit_edge228
  ]

if.then.out_crit_edge228:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge227:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge226:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge225:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv20 = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_allocate_unwritten_extents, i32 noundef 1448, ptr noundef nonnull @.str, i64 noundef %conv20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end22:                                         ; preds = %if.then
  %8 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di_bh, align 4
  %call23 = call i32 @ocfs2_size_fits_inline_data(ptr noundef %9, i64 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %di_bh, align 4
  %call27 = call i32 @ocfs2_convert_inline_data_to_extents(ptr noundef %inode, ptr noundef %11) #10
  %12 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call27, label %do.body46 [
    i32 0, label %if.end26.if.end58_crit_edge
    i32 -512, label %if.end26.out_crit_edge
    i32 -4, label %if.end26.out_crit_edge229
    i32 524289, label %if.end26.out_crit_edge230
    i32 -28, label %if.end26.out_crit_edge231
    i32 -122, label %if.end26.out_crit_edge232
  ]

if.end26.out_crit_edge232:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26.out_crit_edge231:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26.out_crit_edge230:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26.out_crit_edge229:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26.if.end58_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.body46:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m47) #10
  %13 = ptrtoint ptr %_m47 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m47, align 8
  %conv51 = sext i32 %call27 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m47, ptr noundef nonnull @__func__.ocfs2_allocate_unwritten_extents, i32 noundef 1461, ptr noundef nonnull @.str, i64 noundef %conv51) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m47) #10
  br label %out

if.end58:                                         ; preds = %if.end26.if.end58_crit_edge, %entry.if.end58_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info, align 16
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 36
  %18 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %19 to i64
  %shr = lshr i64 %start, %sh_prom
  %conv59 = trunc i64 %shr to i32
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %17, i32 0, i32 35
  %20 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %21, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %add, %conv.i
  %shr.i = lshr i64 %add.i, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  %sub = sub i32 %conv2.i, %conv59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool63.not192 = icmp eq i32 %sub, 0
  br i1 %tobool63.not192, label %if.end58.out_crit_edge, label %if.end58.while.body_crit_edge

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  br label %while.body

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body:                                       ; preds = %next.while.body_crit_edge, %if.end58.while.body_crit_edge
  %cpos.0195 = phi i32 [ %add137, %next.while.body_crit_edge ], [ %conv59, %if.end58.while.body_crit_edge ]
  %clusters.0193 = phi i32 [ %sub138, %next.while.body_crit_edge ], [ %sub, %if.end58.while.body_crit_edge ]
  %call64 = call i32 @ocfs2_get_clusters(ptr noundef %inode, i32 noundef %cpos.0195, ptr noundef nonnull %phys_cpos, ptr noundef nonnull %alloc_size, ptr noundef null) #10
  %22 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call64, label %do.body83 [
    i32 0, label %if.end94
    i32 -512, label %while.body.out_crit_edge
    i32 -4, label %while.body.out_crit_edge233
    i32 524289, label %while.body.out_crit_edge234
    i32 -28, label %while.body.out_crit_edge235
    i32 -122, label %while.body.out_crit_edge236
  ]

while.body.out_crit_edge236:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge235:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge234:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge233:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body83:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m84) #10
  %23 = ptrtoint ptr %_m84 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606846976, ptr %_m84, align 8
  %conv88 = sext i32 %call64 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m84, ptr noundef nonnull @__func__.ocfs2_allocate_unwritten_extents, i32 noundef 1477, ptr noundef nonnull @.str, i64 noundef %conv88) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m84) #10
  br label %out

if.end94:                                         ; preds = %while.body
  %24 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %clusters.0193)
  %cmp95 = icmp ugt i32 %25, %clusters.0193
  br i1 %cmp95, label %if.then97, label %if.end94.if.end98_crit_edge

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %clusters.0193, ptr %alloc_size, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge
  %27 = ptrtoint ptr %phys_cpos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_cpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool99.not = icmp eq i32 %28, 0
  br i1 %tobool99.not, label %if.end101, label %if.end98.next_crit_edge

if.end98.next_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.end101:                                        ; preds = %if.end98
  %29 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alloc_size, align 4
  %call102 = call fastcc i32 @ocfs2_extend_allocation(ptr noundef %inode, i32 noundef %cpos.0195, i32 noundef %30, i32 noundef 1)
  %31 = zext i32 %call102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call102, label %do.body124 [
    i32 0, label %if.end101.next_crit_edge
    i32 -28, label %if.end101.out_crit_edge
    i32 -512, label %if.end101.out_crit_edge237
    i32 -4, label %if.end101.out_crit_edge238
    i32 524289, label %if.end101.out_crit_edge239
    i32 -122, label %if.end101.out_crit_edge240
  ]

if.end101.out_crit_edge240:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end101.out_crit_edge239:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end101.out_crit_edge238:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end101.out_crit_edge237:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end101.next_crit_edge:                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

do.body124:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m125) #10
  %32 = ptrtoint ptr %_m125 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m125, align 8
  %conv129 = sext i32 %call102 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m125, ptr noundef nonnull @__func__.ocfs2_allocate_unwritten_extents, i32 noundef 1499, ptr noundef nonnull @.str, i64 noundef %conv129) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m125) #10
  br label %out

next:                                             ; preds = %if.end101.next_crit_edge, %if.end98.next_crit_edge
  %33 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alloc_size, align 4
  %add137 = add i32 %34, %cpos.0195
  %sub138 = sub i32 %clusters.0193, %34
  %tobool63.not = icmp eq i32 %sub138, 0
  br i1 %tobool63.not, label %next.out_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

next.out_crit_edge:                               ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %next.out_crit_edge, %do.body124, %if.end101.out_crit_edge, %if.end101.out_crit_edge237, %if.end101.out_crit_edge238, %if.end101.out_crit_edge239, %if.end101.out_crit_edge240, %do.body83, %while.body.out_crit_edge, %while.body.out_crit_edge233, %while.body.out_crit_edge234, %while.body.out_crit_edge235, %while.body.out_crit_edge236, %if.end58.out_crit_edge, %do.body46, %if.end26.out_crit_edge, %if.end26.out_crit_edge229, %if.end26.out_crit_edge230, %if.end26.out_crit_edge231, %if.end26.out_crit_edge232, %if.end22.out_crit_edge, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge225, %if.then.out_crit_edge226, %if.then.out_crit_edge227, %if.then.out_crit_edge228
  %ret.0 = phi i32 [ 0, %if.end22.out_crit_edge ], [ %call1, %if.then.out_crit_edge ], [ %call1, %if.then.out_crit_edge225 ], [ %call1, %if.then.out_crit_edge226 ], [ %call1, %if.then.out_crit_edge227 ], [ %call1, %if.then.out_crit_edge228 ], [ %call1, %do.body ], [ %call27, %if.end26.out_crit_edge ], [ %call27, %if.end26.out_crit_edge229 ], [ %call27, %if.end26.out_crit_edge230 ], [ %call27, %if.end26.out_crit_edge231 ], [ %call27, %if.end26.out_crit_edge232 ], [ %call27, %do.body46 ], [ %call64, %do.body83 ], [ %call102, %do.body124 ], [ 0, %if.end58.out_crit_edge ], [ %call102, %if.end101.out_crit_edge ], [ %call102, %if.end101.out_crit_edge237 ], [ %call102, %if.end101.out_crit_edge238 ], [ %call102, %if.end101.out_crit_edge239 ], [ 0, %next.out_crit_edge ], [ %call102, %if.end101.out_crit_edge240 ], [ %call64, %while.body.out_crit_edge ], [ %call64, %while.body.out_crit_edge233 ], [ %call64, %while.body.out_crit_edge234 ], [ %call64, %while.body.out_crit_edge235 ], [ %call64, %while.body.out_crit_edge236 ]
  %35 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %36) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_cpos) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_write_remove_suid(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_remove_suid, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_write_remove_suid, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !231
  %call42 = tail call i32 @__traceiter_ocfs2_write_remove_suid(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !232
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_remove_suid, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_remove_suid, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_write_remove_suid.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_write_remove_suid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1442, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @__traceiter_ocfs2_write_remove_suid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_seek_data_hole_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_file_read_iter(ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_read_iter, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_file_read_iter, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !233
  %call42 = tail call i32 @__traceiter_ocfs2_file_read_iter(ptr noundef null, ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !234
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_read_iter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_read_iter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_file_read_iter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_file_read_iter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1320, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @ocfs2_try_rw_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_atime(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_generic_file_read_iter_ret(i32 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_file_read_iter_ret, i32 0, i32 1), ptr blockaddress(@trace_generic_file_read_iter_ret, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !235
  %call42 = tail call i32 @__traceiter_generic_file_read_iter_ret(ptr noundef null, i32 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !236
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_file_read_iter_ret, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_generic_file_read_iter_ret, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_generic_file_read_iter_ret.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_generic_file_read_iter_ret.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1472, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @__traceiter_ocfs2_file_read_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_generic_file_read_iter_ret(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_file_write_iter(ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_write_iter, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_file_write_iter, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !237
  %call42 = tail call i32 @__traceiter_ocfs2_file_write_iter(ptr noundef null, ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !238
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_write_iter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_write_iter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_file_write_iter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_file_write_iter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1316, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_force_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_file_write_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_inode_lock_for_extent_tree(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %meta_level, i32 noundef %write_sem, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %meta_level, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %call = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef %di_bh, i32 noundef %meta_level, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp48 = icmp slt i32 %call, 0
  br i1 %cmp48, label %if.end.thread.cleanup_crit_edge, label %if.then5

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_sem)
  %tobool6.not = icmp eq i32 %write_sem, 0
  %ip_alloc_sem11 = getelementptr i8, ptr %inode, i32 -424
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_write(ptr noundef %ip_alloc_sem11) #10
  br label %cleanup

if.else9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_read(ptr noundef %ip_alloc_sem11) #10
  br label %cleanup

if.else13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_sem)
  %tobool14.not = icmp eq i32 %write_sem, 0
  %ip_alloc_sem21 = getelementptr i8, ptr %inode, i32 -424
  br i1 %tobool14.not, label %if.else19, label %if.then15

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 @down_write_trylock(ptr noundef %ip_alloc_sem21) #10
  br label %if.end23

if.else19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @down_read_trylock(ptr noundef %ip_alloc_sem21) #10
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then15
  %ret.1 = phi i32 [ %call18, %if.then15 ], [ %call22, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool24.not = icmp eq i32 %ret.1, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  %0 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then25.brelse.exit_crit_edge, label %if.then.i

if.then25.brelse.exit_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %1) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then25.brelse.exit_crit_edge
  %2 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %di_bh, align 4
  tail call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef %meta_level) #10
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end23.cleanup_crit_edge, %if.else9, %if.then7, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then7 ], [ %call, %if.else9 ], [ %ret.1, %if.end23.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -11, %brelse.exit ], [ %call, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_overwrite_io(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_prepare_inode_for_write(i64 noundef %ino, i64 noundef %saved_pos, i32 noundef %count, i32 noundef %wait) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_prepare_inode_for_write, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_prepare_inode_for_write, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !239
  %call42 = tail call i32 @__traceiter_ocfs2_prepare_inode_for_write(ptr noundef null, i64 noundef %ino, i64 noundef %saved_pos, i32 noundef %count, i32 noundef %wait) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_prepare_inode_for_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_prepare_inode_for_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_prepare_inode_for_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_prepare_inode_for_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1470, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_prepare_inode_for_write(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_file_open(ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_open, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_file_open, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !241
  %call42 = tail call i32 @__traceiter_ocfs2_file_open(ptr noundef null, ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !242
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_open, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_open, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_file_open.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_file_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1310, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @__traceiter_ocfs2_file_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_file_lock_res_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_file_release(ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_release, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_file_release, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !243
  %call42 = tail call i32 @__traceiter_ocfs2_file_release(ptr noundef null, ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !244
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_file_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_file_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_file_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1312, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @__traceiter_ocfs2_file_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_simple_drop_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_lock_res_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_sync_file(ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_file, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_sync_file, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !167

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !245
  %call42 = tail call i32 @__traceiter_ocfs2_sync_file(ptr noundef null, ptr noundef %inode, ptr noundef %file, ptr noundef %dentry, i64 noundef %ino, i32 noundef %d_len, ptr noundef %d_name, i64 noundef %mode) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !246
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !167

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_file, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_file, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_sync_file.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_sync_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1314, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
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
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_trans_will_send_data_barrier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_complete_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_sync_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reflink_inodes_lock(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_remap_file_range_prep(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ocfs2_reflink_remap_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_extent_map_trunc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reflink_update_dest(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_reflink_inodes_unlock(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !57, !58, !60, !62, !64, !66, !67, !69, !71, !73, !74, !76, !78, !80, !81, !83, !84, !86, !87, !89, !91, !92, !94, !96, !98, !99, !101, !102, !104, !105, !107, !109, !111, !112, !114, !116, !118, !120, !121, !123, !124, !126, !128, !129, !131, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !149, !150}
!llvm.named.register.sp = !{!152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__func__.ocfs2_update_inode_atime, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/file.c", i32 260, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_set_inode_size, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/file.c", i32 301, i32 3}
!5 = !{ptr @__func__.ocfs2_simple_size_update, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/file.c", i32 320, i32 3}
!7 = !{ptr @__func__.ocfs2_truncate_file, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/file.c", i32 450, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.ocfs2_zero_extend, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/file.c", i32 986, i32 4}
!13 = !{ptr @__func__.ocfs2_extend_no_holes, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/file.c", i32 1033, i32 4}
!15 = !{ptr @__func__.ocfs2_setattr, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/file.c", i32 1168, i32 4}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/file.c", i32 1195, i32 3}
!19 = !{ptr @__func__.ocfs2_getattr, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/file.c", i32 1319, i32 4}
!21 = !{ptr @__func__.ocfs2_permission, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/file.c", i32 1362, i32 3}
!23 = !{ptr @__func__.ocfs2_remove_inode_range, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/file.c", i32 1793, i32 4}
!25 = !{ptr @__func__.ocfs2_check_range_for_refcount, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/file.c", i32 2146, i32 4}
!27 = !{ptr @ocfs2_file_iops, !28, !"ocfs2_file_iops", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/file.c", i32 2712, i32 31}
!29 = !{ptr @ocfs2_special_file_iops, !30, !"ocfs2_special_file_iops", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/file.c", i32 2724, i32 31}
!31 = !{ptr @ocfs2_fops, !32, !"ocfs2_fops", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/file.c", i32 2736, i32 30}
!33 = !{ptr @ocfs2_dops, !34, !"ocfs2_dops", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/file.c", i32 2756, i32 30}
!35 = !{ptr @ocfs2_fops_no_plocks, !36, !"ocfs2_fops_no_plocks", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/file.c", i32 2783, i32 30}
!37 = !{ptr @ocfs2_dops_no_plocks, !38, !"ocfs2_dops_no_plocks", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/file.c", i32 2802, i32 30}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1322, i32 1}
!44 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1324, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = !{ptr @__func__.ocfs2_orphan_for_truncate, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/file.c", i32 385, i32 3}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1404, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = !{ptr @__func__.ocfs2_zero_extend_get_range, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/file.c", i32 878, i32 4}
!60 = !{ptr @__func__.ocfs2_zero_extend_range, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/file.c", i32 954, i32 4}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/file.c", i32 963, i32 3}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1402, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @__func__.ocfs2_write_zero_page, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ocfs2/file.c", i32 779, i32 3}
!69 = !{ptr @__func__.ocfs2_zero_start_ordered_transaction, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ocfs2/file.c", i32 725, i32 3}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1375, i32 1}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/mm.h", i32 717, i32 2}
!76 = !{ptr @__func__.ocfs2_extend_allocation, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ocfs2/file.c", i32 579, i32 3}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1326, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1352, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1406, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = !{ptr @__func__.ocfs2_extend_file, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ocfs2/file.c", i32 1090, i32 4}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1450, i32 1}
!91 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!92 = !{ptr @__func__.ocfs2_cow_file_pos, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/file.c", i32 355, i32 3}
!94 = !{ptr @__func__.ocfs2_zero_partial_clusters, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/file.c", i32 1618, i32 4}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1444, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1446, i32 1}
!101 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1448, i32 1}
!104 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!105 = !{ptr @__func__.__ocfs2_change_file_space, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ocfs2/file.c", i32 1948, i32 3}
!107 = !{ptr @__func__.__ocfs2_write_remove_suid, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/file.c", i32 1388, i32 3}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1442, i32 1}
!111 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!112 = !{ptr @__func__.ocfs2_allocate_unwritten_extents, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/file.c", i32 1448, i32 4}
!114 = !{ptr @__func__.ocfs2_file_llseek, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/file.c", i32 2604, i32 4}
!116 = !{ptr @__func__.ocfs2_file_read_iter, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/file.c", i32 2524, i32 3}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1320, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1472, i32 1}
!123 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!124 = !{ptr @__func__.ocfs2_file_write_iter, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ocfs2/file.c", i32 2398, i32 4}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1316, i32 1}
!128 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!129 = !{ptr @__func__.ocfs2_prepare_inode_for_write, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ocfs2/file.c", i32 2257, i32 5}
!131 = !{ptr @__func__.ocfs2_write_remove_suid, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ocfs2/file.c", i32 1422, i32 3}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1452, i32 1}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1310, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = !{ptr @ocfs2_init_file_private.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../fs/ocfs2/file.c", i32 61, i32 2}
!141 = !{ptr @.str.10, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1312, i32 1}
!144 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!145 = !{ptr @__func__.ocfs2_sync_file, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ocfs2/file.c", i32 201, i32 3}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1314, i32 1}
!149 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!150 = !{ptr @__func__.ocfs2_remap_file_range, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ocfs2/file.c", i32 2690, i32 3}
!152 = !{!"sp"}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 2152565411}
!163 = !{i64 2150080179}
!164 = !{i64 2150085113}
!165 = !{i64 2150106831}
!166 = !{i64 2150111725}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 2150188252}
!169 = !{i64 2150188577}
!170 = !{i64 2152577273}
!171 = !{i64 2161748551, i64 2161749031, i64 2161748588, i64 2161748644, i64 2161748678, i64 2161748702, i64 2161748743, i64 2161748764, i64 2161748792, i64 2161748826}
!172 = !{i64 2148583710, i64 2148583715, i64 2148583728, i64 2148583772, i64 2148583806, i64 2148583827}
!173 = !{i64 2157762828}
!174 = !{i64 2157763073}
!175 = !{i64 2149580117}
!176 = !{i64 2149581153}
!177 = !{i64 1163792, i64 1163853}
!178 = !{i64 1166524}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{i64 1166809}
!181 = !{i64 2152563480}
!182 = !{i64 2152563322}
!183 = !{i64 2152563650}
!184 = !{i64 2150187927}
!185 = !{i64 2157780297}
!186 = !{i64 2157780530}
!187 = !{!"auto-init"}
!188 = !{i64 2161772035, i64 2161772515, i64 2161772072, i64 2161772128, i64 2161772162, i64 2161772186, i64 2161772227, i64 2161772248, i64 2161772276, i64 2161772310}
!189 = !{i64 2157883360}
!190 = !{i64 2157883601}
!191 = !{i64 2161775426, i64 2161775907, i64 2161775463, i64 2161775519, i64 2161775553, i64 2161775577, i64 2161775618, i64 2161775639, i64 2161775667, i64 2161775701}
!192 = !{i64 2161777062, i64 2161777543, i64 2161777099, i64 2161777155, i64 2161777189, i64 2161777213, i64 2161777254, i64 2161777275, i64 2161777303, i64 2161777337}
!193 = !{i64 2161752813, i64 2161753293, i64 2161752850, i64 2161752906, i64 2161752940, i64 2161752964, i64 2161753005, i64 2161753026, i64 2161753054, i64 2161753088}
!194 = !{i64 2161755249, i64 2161755729, i64 2161755286, i64 2161755342, i64 2161755376, i64 2161755400, i64 2161755441, i64 2161755462, i64 2161755490, i64 2161755524}
!195 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!196 = !{i64 2161759114, i64 2161759594, i64 2161759151, i64 2161759207, i64 2161759241, i64 2161759265, i64 2161759306, i64 2161759327, i64 2161759355, i64 2161759389}
!197 = !{i64 2157902741}
!198 = !{i64 2157903070}
!199 = !{i64 2161779675, i64 2161780156, i64 2161779712, i64 2161779768, i64 2161779802, i64 2161779826, i64 2161779867, i64 2161779888, i64 2161779916, i64 2161779950}
!200 = !{i64 2161781284, i64 2161781765, i64 2161781321, i64 2161781377, i64 2161781411, i64 2161781435, i64 2161781476, i64 2161781497, i64 2161781525, i64 2161781559}
!201 = !{i64 2158002148}
!202 = !{i64 2158002403}
!203 = !{i64 2161834155, i64 2161834636, i64 2161834192, i64 2161834248, i64 2161834282, i64 2161834306, i64 2161834347, i64 2161834368, i64 2161834396, i64 2161834430}
!204 = !{i64 2161828639}
!205 = !{i64 1265880, i64 1265897, i64 1265921, i64 1265947, i64 1265965}
!206 = !{i64 2161828992}
!207 = !{i64 2161829362, i64 2161829843, i64 2161829399, i64 2161829455, i64 2161829489, i64 2161829513, i64 2161829554, i64 2161829575, i64 2161829603, i64 2161829637}
!208 = !{i64 2161831769}
!209 = !{i64 2161832128}
!210 = !{i64 2157865323}
!211 = !{i64 2157865576}
!212 = !{i64 2161763208, i64 2161763688, i64 2161763245, i64 2161763301, i64 2161763335, i64 2161763359, i64 2161763400, i64 2161763421, i64 2161763449, i64 2161763483}
!213 = !{i64 2161764823, i64 2161765303, i64 2161764860, i64 2161764916, i64 2161764950, i64 2161764974, i64 2161765015, i64 2161765036, i64 2161765064, i64 2161765098}
!214 = !{i64 2161766433, i64 2161766913, i64 2161766470, i64 2161766526, i64 2161766560, i64 2161766584, i64 2161766625, i64 2161766646, i64 2161766674, i64 2161766708}
!215 = !{i64 2153253160, i64 2153253643, i64 2153253197, i64 2153253253, i64 2153253287, i64 2153253311, i64 2153253352, i64 2153253373, i64 2153253401, i64 2153253435}
!216 = !{i64 2148847588}
!217 = !{i64 2148762297, i64 2148762329, i64 2148762358, i64 2148762392, i64 2148762423, i64 2148762446}
!218 = !{i64 2148847817}
!219 = !{i64 2157842751}
!220 = !{i64 2157843052}
!221 = !{i64 2157803467}
!222 = !{i64 2157803796}
!223 = !{i64 2157823032}
!224 = !{i64 2157823341}
!225 = !{i64 2157942637}
!226 = !{i64 2157942898}
!227 = !{i64 2157960889}
!228 = !{i64 2157961140}
!229 = !{i64 2157979351}
!230 = !{i64 2157979602}
!231 = !{i64 2157920329}
!232 = !{i64 2157920558}
!233 = !{i64 2157744555}
!234 = !{i64 2157744848}
!235 = !{i64 2158037977}
!236 = !{i64 2158038198}
!237 = !{i64 2157701033}
!238 = !{i64 2157701328}
!239 = !{i64 2158020574}
!240 = !{i64 2158020849}
!241 = !{i64 2157643223}
!242 = !{i64 2157643506}
!243 = !{i64 2157662439}
!244 = !{i64 2157662728}
!245 = !{i64 2157681700}
!246 = !{i64 2157681983}
