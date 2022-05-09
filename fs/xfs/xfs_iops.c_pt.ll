; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_iops.c_pt.bc'
source_filename = "../fs/xfs/xfs_iops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.92, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.91, i16, i8, i32 }
%union.anon.91 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.spinlock, i32 }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.xfs_name = type { ptr, i32, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.kuid_t }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xattr = type { ptr, ptr, i32 }
%struct.delayed_call = type { ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/xfs/xfs_iops.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&inode->i_sb->s_type->i_mutex_dir_key\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&xfs_dir_ilock_class\00", [43 x i8] zeroinitializer }, align 32
@xfs_dir_ilock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&xfs_nondir_ilock_class\00", [40 x i8] zeroinitializer }, align 32
@xfs_nondir_ilock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xfs_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @xfs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfs_vn_setattr, ptr @xfs_vn_getattr, ptr @xfs_vn_listxattr, ptr @xfs_vn_fiemap, ptr @xfs_vn_update_time, ptr null, ptr null, ptr @xfs_set_acl, ptr @xfs_fileattr_set, ptr @xfs_fileattr_get, [36 x i8] undef }, align 128
@xfs_file_operations = external dso_local constant %struct.file_operations, align 4
@xfs_address_space_operations = external dso_local constant %struct.address_space_operations, align 4
@xfs_dir_ci_inode_operations = internal constant %struct.inode_operations { ptr @xfs_vn_ci_lookup, ptr null, ptr null, ptr @xfs_get_acl, ptr null, ptr @xfs_vn_create, ptr @xfs_vn_link, ptr @xfs_vn_unlink, ptr @xfs_vn_symlink, ptr @xfs_vn_mkdir, ptr @xfs_vn_unlink, ptr @xfs_vn_mknod, ptr @xfs_vn_rename, ptr @xfs_vn_setattr, ptr @xfs_vn_getattr, ptr @xfs_vn_listxattr, ptr null, ptr @xfs_vn_update_time, ptr null, ptr @xfs_vn_tmpfile, ptr @xfs_set_acl, ptr @xfs_fileattr_set, ptr @xfs_fileattr_get, [36 x i8] undef }, align 128
@xfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @xfs_vn_lookup, ptr null, ptr null, ptr @xfs_get_acl, ptr null, ptr @xfs_vn_create, ptr @xfs_vn_link, ptr @xfs_vn_unlink, ptr @xfs_vn_symlink, ptr @xfs_vn_mkdir, ptr @xfs_vn_unlink, ptr @xfs_vn_mknod, ptr @xfs_vn_rename, ptr @xfs_vn_setattr, ptr @xfs_vn_getattr, ptr @xfs_vn_listxattr, ptr null, ptr @xfs_vn_update_time, ptr null, ptr @xfs_vn_tmpfile, ptr @xfs_set_acl, ptr @xfs_fileattr_set, ptr @xfs_fileattr_get, [36 x i8] undef }, align 128
@xfs_dir_file_operations = external dso_local constant %struct.file_operations, align 4
@xfs_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @xfs_vn_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfs_vn_setattr, ptr @xfs_vn_getattr, ptr @xfs_vn_listxattr, ptr null, ptr @xfs_vn_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__tracepoint_xfs_setattr = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_setattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xfs_isilocked(ip, XFS_IOLOCK_EXCL)\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xfs_isilocked(ip, XFS_MMAPLOCK_EXCL)\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"S_ISREG(inode->i_mode)\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"(iattr->ia_valid & (ATTR_UID|ATTR_GID|ATTR_ATIME|ATTR_ATIME_SET| ATTR_MTIME_SET|ATTR_TIMES_SET)) == 0\00", [58 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(mask & ATTR_SIZE) == 0\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udqp == NULL\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gdqp == NULL\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mask & ATTR_UID\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udqp\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xfs_has_pquotino(mp) || !XFS_IS_PQUOTA_ON(mp)\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mask & ATTR_GID\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gdqp\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_zero_eof = external dso_local global %struct.tracepoint, align 4
@trace_xfs_zero_eof.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_getattr = external dso_local global %struct.tracepoint, align 4
@trace_xfs_getattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@xfs_xattr_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@xfs_read_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@__tracepoint_xfs_update_time = external dso_local global %struct.tracepoint, align 4
@trace_xfs_update_time.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 637, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1333, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1335, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"xfs_dir_ilock_class\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 41, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1337, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"xfs_nondir_ilock_class\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 40, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 753, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 846, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 847, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 848, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 849, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 686, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 717, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 718, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 761, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 762, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 770, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 772, i32 5 }
@___asan_gen_.92 = private constant [21 x i8] c"../fs/xfs/xfs_iops.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 773, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 271, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @xfs_dir_ilock_class, ptr @.str.5, ptr @xfs_nondir_ilock_class, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir_ilock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_nondir_ilock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_setattr_time(ptr noundef %ip, ptr nocapture noundef readonly %iattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #10
  br i1 %call1, label %entry.cond.end_crit_edge, label %cond.false, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 637) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %0 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iattr, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 15
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %2 = call ptr @memcpy(ptr %i_atime, ptr %ia_atime, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %3 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iattr, align 8
  %and5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %5 = call ptr @memcpy(ptr %i_ctime, ptr %ia_ctime, i32 16)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %6 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iattr, align 8
  %and10 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %i_mtime, ptr %ia_mtime, i32 16)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_vn_setattr_size(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  tail call fastcc void @trace_xfs_setattr(ptr noundef %add.ptr.i)
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -312
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %m_opstate.i.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i10.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i10.not.i, label %xfs_vn_change_ok.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

xfs_vn_change_ok.exit:                            ; preds = %if.end.i
  %call6.i = tail call i32 @setattr_prepare(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %xfs_vn_change_ok.exit.cleanup_crit_edge

xfs_vn_change_ok.exit.cleanup_crit_edge:          ; preds = %xfs_vn_change_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %xfs_vn_change_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call fastcc i32 @xfs_setattr_size(ptr noundef %mnt_userns, ptr noundef %add.ptr.i, ptr noundef %iattr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_vn_change_ok.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call6.i, %xfs_vn_change_ok.exit.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_setattr(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_setattr, i32 0, i32 1), ptr blockaddress(@trace_xfs_setattr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %call42 = tail call i32 @__traceiter_xfs_setattr(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_setattr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_setattr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_setattr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_setattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 753, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_setattr_size(ptr noundef %mnt_userns, ptr noundef %ip, ptr nocapture noundef %iattr) unnamed_addr #4 align 64 {
entry:
  %tp = alloca ptr, align 4
  %did_zeroing = alloca i8, align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %did_zeroing) #10
  %3 = ptrtoint ptr %did_zeroing to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %did_zeroing, align 1
  %call1 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 1) #10
  br i1 %call1, label %entry.cond.end_crit_edge, label %cond.false, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 846) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call3 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 16) #10
  br i1 %call3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !77

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 847) #10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %4 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_vnode.i, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp = icmp eq i16 %6, -32768
  br i1 %cmp, label %cond.end12.cond.end22_crit_edge, label %cond.false21, !prof !77

cond.end12.cond.end22_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 848) #10
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end12.cond.end22_crit_edge
  %7 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iattr, align 8
  %and23 = and i32 %8, 65942
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %cond.end22.cond.end34_crit_edge, label %cond.false33, !prof !77

cond.end22.cond.end34_crit_edge:                  ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 850) #10
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.end22.cond.end34_crit_edge
  %i_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %11 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp35 = icmp eq i64 %12, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp37 = icmp eq i64 %10, 0
  %or.cond = select i1 %cmp35, i1 %cmp37, i1 false
  br i1 %or.cond, label %land.lhs.true39, label %cond.end34.if.end49_crit_edge

cond.end34.if.end49_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true39:                                  ; preds = %cond.end34
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp40 = icmp eq i32 %14, 0
  br i1 %cmp40, label %if.then, label %land.lhs.true39.if.end49_crit_edge

land.lhs.true39.if.end49_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then:                                          ; preds = %land.lhs.true39
  %15 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iattr, align 8
  %and43 = and i32 %16, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and47 = and i32 %16, -9
  %17 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and47, ptr %iattr, align 8
  %call48 = tail call fastcc i32 @xfs_setattr_nonsize(ptr noundef %mnt_userns, ptr noundef %ip, ptr noundef %iattr)
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true39.if.end49_crit_edge, %cond.end34.if.end49_crit_edge
  %call50 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  tail call void @inode_dio_wait(ptr noundef %i_vnode.i) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp54 = icmp sgt i64 %12, %10
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %12, %10
  %conv57 = trunc i64 %sub to i32
  tail call fastcc void @trace_xfs_zero_eof(ptr noundef %ip, i64 noundef %10, i32 noundef %conv57)
  %call59 = call i32 @xfs_zero_range(ptr noundef %ip, i64 noundef %10, i64 noundef %sub, ptr noundef nonnull %did_zeroing) #10
  br label %if.end65

if.else:                                          ; preds = %if.end53
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %call60 = tail call i32 @filemap_write_and_wait_range(ptr noundef %19, i64 noundef %12, i64 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = call i32 @xfs_truncate_page(ptr noundef %ip, i64 noundef %12, ptr noundef nonnull %did_zeroing) #10
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.then56
  %error.0 = phi i32 [ %call59, %if.then56 ], [ %call64, %if.end63 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool66.not = icmp eq i32 %error.0, 0
  br i1 %tobool66.not, label %if.end68, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end68:                                         ; preds = %if.end65
  call void @truncate_setsize(ptr noundef %i_vnode.i, i64 noundef %12) #10
  %20 = ptrtoint ptr %did_zeroing to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %did_zeroing, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool69.not = icmp eq i8 %21, 0
  br i1 %tobool69.not, label %lor.lhs.false, label %if.end68.if.then77_crit_edge

if.end68.if.then77_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end68
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %22 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %23)
  %cmp71 = icmp sle i64 %12, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %23)
  %cmp75.not = icmp eq i64 %10, %23
  %or.cond234 = select i1 %cmp71, i1 true, i1 %cmp75.not
  br i1 %or.cond234, label %lor.lhs.false.if.end86_crit_edge, label %lor.lhs.false.if.then77_crit_edge

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

lor.lhs.false.if.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end68.if.then77_crit_edge
  %i_mapping79 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %24 = ptrtoint ptr %i_mapping79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping79, align 8
  %i_disk_size80 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %26 = ptrtoint ptr %i_disk_size80 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_disk_size80, align 8
  %sub81 = add i64 %12, -1
  %call82 = call i32 @filemap_write_and_wait_range(ptr noundef %25, i64 noundef %27, i64 noundef %sub81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then77.if.end86_crit_edge, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then77.if.end86_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.end86:                                         ; preds = %if.then77.if.end86_crit_edge, %lor.lhs.false.if.end86_crit_edge
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 1
  %call87 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_itruncate, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #10
  %28 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %29, ptr noundef %ip, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp91.not = icmp eq i64 %12, %10
  br i1 %cmp91.not, label %if.end90.if.end100_crit_edge, label %land.lhs.true93

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

land.lhs.true93:                                  ; preds = %if.end90
  %30 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iattr, align 8
  %and95 = and i32 %31, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then97, label %land.lhs.true93.if.end100_crit_edge

land.lhs.true93.if.end100_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then97:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %i_vnode.i) #10
  %32 = call ptr @memcpy(ptr %ia_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %33 = call ptr @memcpy(ptr %ia_ctime, ptr %ia_mtime, i32 16)
  %34 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iattr, align 8
  %or99 = or i32 %35, 96
  store i32 %or99, ptr %iattr, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %land.lhs.true93.if.end100_crit_edge, %if.end90.if.end100_crit_edge
  %i_disk_size101 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %36 = ptrtoint ptr %i_disk_size101 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %12, ptr %i_disk_size101, align 8
  %37 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %38, ptr noundef %ip, i32 noundef 1) #10
  br i1 %cmp54, label %if.end100.if.end109_crit_edge, label %if.then104

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then104:                                       ; preds = %if.end100
  %call.i = call i32 @xfs_itruncate_extents_flags(ptr noundef nonnull %tp, ptr noundef %ip, i32 noundef 0, i64 noundef %12, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool106.not = icmp eq i32 %call.i, 0
  br i1 %tobool106.not, label %if.end108, label %out_trans_cancel

if.end108:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @xfs_iflags_set(ptr noundef %ip)
  call void @xfs_inode_clear_eofblocks_tag(ptr noundef %ip) #10
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end100.if.end109_crit_edge
  %39 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iattr, align 8
  %and111 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end109.if.end114_crit_edge, label %if.then113

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @xfs_setattr_mode(ptr noundef %ip, ptr noundef %iattr)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end109.if.end114_crit_edge
  %41 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iattr, align 8
  %and116 = and i32 %42, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end114.if.end119_crit_edge, label %if.then118

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_setattr_time(ptr noundef %ip, ptr noundef %iattr)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end114.if.end119_crit_edge
  %43 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %44, ptr noundef %ip, i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %45 = load ptr, ptr @xfsstats, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %add = add i32 %52, %46
  %53 = inttoptr i32 %add to ptr
  %xs_ig_attrchg = getelementptr inbounds %struct.__xfsstats, ptr %53, i32 0, i32 32
  %54 = ptrtoint ptr %xs_ig_attrchg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %xs_ig_attrchg, align 8
  %inc = add i32 %55, 1
  store i32 %inc, ptr %xs_ig_attrchg, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %56 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %m_stats, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = load i32, ptr %cpu, align 4
  %arrayidx133 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx133, align 4
  %add134 = add i32 %61, %58
  %62 = inttoptr i32 %add134 to ptr
  %xs_ig_attrchg135 = getelementptr inbounds %struct.__xfsstats, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %xs_ig_attrchg135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xs_ig_attrchg135, align 8
  %inc136 = add i32 %64, 1
  store i32 %inc136, ptr %xs_ig_attrchg135, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %65 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %m_features.i, align 8
  %and.i236 = and i64 %66, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i236)
  %tobool.i.not = icmp eq i64 %and.i236, 0
  br i1 %tobool.i.not, label %if.end119.if.end142_crit_edge, label %if.then140

if.end119.if.end142_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then140:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %t_flags, align 4
  %or141 = or i32 %70, 8
  store i32 %or141, ptr %t_flags, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end119.if.end142_crit_edge
  %71 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tp, align 4
  %call143 = call i32 @xfs_trans_commit(ptr noundef %72) #10
  br label %if.then145

if.then145:                                       ; preds = %out_trans_cancel, %if.end142
  %error.1 = phi i32 [ %call.i, %out_trans_cancel ], [ %call143, %if.end142 ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  br label %cleanup

out_trans_cancel:                                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %74) #10
  br label %if.then145

cleanup:                                          ; preds = %if.then145, %if.end86.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end ], [ %error.1, %if.then145 ], [ 0, %if.then.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call60, %if.else.cleanup_crit_edge ], [ %error.0, %if.end65.cleanup_crit_edge ], [ %call82, %if.then77.cleanup_crit_edge ], [ %call87, %if.end86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %did_zeroing) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_diflags_to_iflags(ptr noundef %ip, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @xfs_ip2xflags(ptr noundef %ip) #10
  %and6 = and i32 %call1, 8
  %and8 = lshr i32 %call1, 2
  %0 = and i32 %and8, 4
  %1 = or i32 %0, %and6
  %and13 = lshr i32 %call1, 5
  %2 = and i32 %and13, 1
  %3 = or i32 %1, %2
  %4 = and i32 %and13, 2
  %5 = or i32 %3, %4
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and29 = and i32 %7, -16
  %or31 = or i32 %5, %and29
  store i32 %or31, ptr %i_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ip2xflags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_setup_inode(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_ino, align 8
  %conv = trunc i64 %1 to i32
  %i_ino1 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 11
  %2 = ptrtoint ptr %i_ino1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %i_ino1, align 8
  %i_state = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 24
  %3 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_state, align 8
  %or = or i32 %4, 8
  store i32 %or, ptr %i_state, align 8
  tail call void @inode_sb_list_add(ptr noundef %i_vnode) #10
  %i_hash.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 28
  %pprev.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 28, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i_hash.i, ptr %pprev.i.i, align 4
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %6 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_disk_size, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %11, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %entry.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

entry.i_size_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %22, ptrtoint (ptr @lockdep_recursion to i32)
  %23 = inttoptr i32 %add.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i7.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i29.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %34 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i9.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %37, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %38 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %41, ptrtoint (ptr @hardirqs_enabled to i32)
  %42 = inttoptr i32 %add47.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %45 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i12.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %48, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool54.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !77

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %entry.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23
  %49 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %dep_map.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23, i32 1
  %51 = tail call ptr @llvm.returnaddress(i32 0) #10
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %52) #10
  %i_size8.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  %53 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %7, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %54 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %56 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i26.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %call1.i = tail call i32 @xfs_ip2xflags(ptr noundef %ip) #10
  %and6.i = and i32 %call1.i, 8
  %and8.i = lshr i32 %call1.i, 2
  %60 = and i32 %and8.i, 4
  %61 = or i32 %60, %and6.i
  %and13.i = lshr i32 %call1.i, 5
  %62 = and i32 %and13.i, 1
  %63 = or i32 %61, %62
  %64 = and i32 %and13.i, 2
  %65 = or i32 %63, %64
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 4
  %66 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_flags.i, align 4
  %and29.i = and i32 %67, -16
  %or31.i = or i32 %65, %and29.i
  store i32 %or31.i, ptr %i_flags.i, align 4
  %68 = ptrtoint ptr %i_vnode to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %i_vnode, align 8
  %70 = and i16 %69, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %70)
  %cmp = icmp eq i16 %70, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25, i32 6
  %i_sb = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %71 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_type, align 32
  %i_mutex_dir_key = getelementptr inbounds %struct.file_system_type, ptr %74, i32 0, i32 16
  %wait_type_inner = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 25, i32 6, i32 4
  %75 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.3, ptr noundef %i_mutex_dir_key, i32 noundef 0, i8 noundef zeroext %76, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %dep_map8 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 0, i32 6
  %wait_type_inner12 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 0, i32 6, i32 4
  %77 = ptrtoint ptr %wait_type_inner12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %wait_type_inner12, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map8, ptr noundef nonnull @.str.4, ptr noundef nonnull @xfs_dir_ilock_class, i32 noundef 0, i8 noundef zeroext %78, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end

if.else:                                          ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map19 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 0, i32 6
  %wait_type_inner23 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 10, i32 0, i32 6, i32 4
  %79 = ptrtoint ptr %wait_type_inner23 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %wait_type_inner23, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map19, ptr noundef nonnull @.str.5, ptr noundef nonnull @xfs_nondir_ilock_class, i32 noundef 0, i8 noundef zeroext %80, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %81 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %gfp_mask.i, align 4
  %and29 = and i32 %84, -129
  store i32 %and29, ptr %gfp_mask.i, align 4
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %85 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp31.not = icmp eq i8 %86, 0
  br i1 %cmp31.not, label %if.then33, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %if.end
  %87 = ptrtoint ptr %i_vnode to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %i_vnode, align 8
  %conv.i.i = zext i16 %88 to i32
  %and.i.i = and i32 %conv.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i59 = icmp ne i32 %and.i.i, 0
  %89 = and i32 %conv.i.i, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %89)
  %90 = icmp eq i32 %89, 1032
  %or.cond.i = or i1 %tobool.not.i.i59, %90
  br i1 %or.cond.i, label %if.then33.inode_has_no_xattr.exit_crit_edge, label %land.lhs.true.i

if.then33.inode_has_no_xattr.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %inode_has_no_xattr.exit

land.lhs.true.i:                                  ; preds = %if.then33
  %i_sb.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %91 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %94, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.inode_has_no_xattr.exit_crit_edge, label %if.then.i

land.lhs.true.i.inode_has_no_xattr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inode_has_no_xattr.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %96, 4096
  store i32 %or.i, ptr %i_flags.i, align 4
  br label %inode_has_no_xattr.exit

inode_has_no_xattr.exit:                          ; preds = %if.then.i, %land.lhs.true.i.inode_has_no_xattr.exit_crit_edge, %if.then33.inode_has_no_xattr.exit_crit_edge
  %i_acl.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 5
  %97 = ptrtoint ptr %i_acl.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %i_acl.i, align 8
  %i_default_acl.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 6
  %98 = ptrtoint ptr %i_default_acl.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %i_default_acl.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %inode_has_no_xattr.exit, %if.end.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sb_list_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_setup_iops(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %i_vnode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %sw.default [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb4
    i16 -24576, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_op = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xfs_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xfs_file_operations, ptr %5, align 8
  %i_mapping2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %7 = ptrtoint ptr %i_mapping2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping2, align 8
  %a_ops3 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %a_ops3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xfs_address_space_operations, ptr %a_ops3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr @xfs_dir_inode_operations, ptr @xfs_dir_ci_inode_operations
  %16 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 44
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xfs_dir_file_operations, ptr %18, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_op11 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 7
  %20 = ptrtoint ptr %i_op11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xfs_symlink_inode_operations, ptr %i_op11, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_op12 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 7
  %21 = ptrtoint ptr %i_op12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xfs_inode_operations, ptr %i_op12, align 8
  %i_rdev = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 13
  %22 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_rdev, align 8
  tail call void @init_special_inode(ptr noundef %i_vnode, i16 noundef zeroext %1, i32 noundef %23) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_setattr_nonsize(ptr noundef %mnt_userns, ptr noundef %ip, ptr nocapture noundef readonly %iattr) unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  %udqp = alloca ptr, align 4
  %gdqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %2 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iattr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %udqp) #10
  %5 = ptrtoint ptr %udqp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %udqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gdqp) #10
  %6 = ptrtoint ptr %gdqp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gdqp, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 686) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %7 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_qflags, align 4
  %and2 = and i32 %8, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and4 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %cond.end.if.end48_crit_edge, label %if.then

cond.end.if.end48_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then:                                          ; preds = %cond.end
  %and6 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond293 = select i1 %tobool7.not, i1 true, i1 %tobool11.not
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %i_uid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %qflags.0 = select i1 %or.cond293, i32 0, i32 4
  %uid.sroa.0.0.in = select i1 %or.cond293, ptr %i_uid, ptr %ia_uid
  %9 = ptrtoint ptr %uid.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %uid.sroa.0.0 = load i32, ptr %uid.sroa.0.0.in, align 4
  %and13 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and17 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond302 = select i1 %tobool14.not, i1 true, i1 %tobool18.not
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %or20 = or i32 %qflags.0, 8192
  %i_gid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %qflags.1 = select i1 %or.cond302, i32 %qflags.0, i32 %or20
  %gid.sroa.0.0.in = select i1 %or.cond302, ptr %i_gid, ptr %ia_gid
  %10 = ptrtoint ptr %gid.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %gid.sroa.0.0 = load i32, ptr %gid.sroa.0.0.in, align 4
  %11 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udqp, align 4
  %cmp23 = icmp eq ptr %12, null
  br i1 %cmp23, label %if.then.cond.end32_crit_edge, label %cond.false31, !prof !77

if.then.cond.end32_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end32

cond.false31:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 717) #10
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %if.then.cond.end32_crit_edge
  %13 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gdqp, align 4
  %cmp33 = icmp eq ptr %14, null
  br i1 %cmp33, label %cond.end32.cond.end42_crit_edge, label %cond.false41, !prof !77

cond.end32.cond.end42_crit_edge:                  ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 718) #10
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.end32.cond.end42_crit_edge
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %15 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_projid, align 8
  %.fca.0.insert233 = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0, 0
  %.fca.0.insert223 = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0, 0
  %call44 = call i32 @xfs_qm_vop_dqalloc(ptr noundef %ip, [1 x i32] %.fca.0.insert233, [1 x i32] %.fca.0.insert223, i32 noundef %16, i32 noundef %qflags.1, ptr noundef nonnull %udqp, ptr noundef nonnull %gdqp, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cond.end42.if.end48_crit_edge, label %cond.end42.cleanup207_crit_edge

cond.end42.cleanup207_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

cond.end42.if.end48_crit_edge:                    ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end48:                                         ; preds = %cond.end42.if.end48_crit_edge, %cond.end.if.end48_crit_edge
  %17 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udqp, align 4
  %19 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gdqp, align 4
  %call49 = call zeroext i1 @capable(i32 noundef 3) #10
  %call50 = call i32 @xfs_trans_alloc_ichange(ptr noundef %ip, ptr noundef %18, ptr noundef %20, ptr noundef null, i1 noundef zeroext %call49, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %out_dqrele

if.end53:                                         ; preds = %if.end48
  br i1 %tobool5.not, label %if.end53.if.end163_crit_edge, label %if.then56

if.end53.if.end163_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then56:                                        ; preds = %if.end53
  %i_uid57 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %21 = ptrtoint ptr %i_uid57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %iuid.sroa.0.0.copyload = load i32, ptr %i_uid57, align 4
  %i_gid58 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %22 = ptrtoint ptr %i_gid58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %igid.sroa.0.0.copyload = load i32, ptr %i_gid58, align 8
  %and59 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then56.cond.end64_crit_edge, label %cond.true61

if.then56.cond.end64_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end64

cond.true61:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %ia_gid62 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %23 = ptrtoint ptr %ia_gid62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %gid.sroa.0.0.copyload228 = load i32, ptr %ia_gid62, align 4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true61, %if.then56.cond.end64_crit_edge
  %gid.sroa.0.1 = phi i32 [ %gid.sroa.0.0.copyload228, %cond.true61 ], [ %igid.sroa.0.0.copyload, %if.then56.cond.end64_crit_edge ]
  %and65 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %cond.end64.cond.end70_crit_edge, label %cond.true67

cond.end64.cond.end70_crit_edge:                  ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end70

cond.true67:                                      ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #12
  %ia_uid68 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %24 = ptrtoint ptr %ia_uid68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %uid.sroa.0.0.copyload238 = load i32, ptr %ia_uid68, align 8
  br label %cond.end70

cond.end70:                                       ; preds = %cond.true67, %cond.end64.cond.end70_crit_edge
  %uid.sroa.0.1 = phi i32 [ %uid.sroa.0.0.copyload238, %cond.true67 ], [ %iuid.sroa.0.0.copyload, %cond.end64.cond.end70_crit_edge ]
  %25 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %i_vnode.i, align 8
  %27 = and i16 %26, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool72.not = icmp eq i16 %27, 0
  br i1 %tobool72.not, label %cond.end70.if.end80_crit_edge, label %land.lhs.true73

cond.end70.if.end80_crit_edge:                    ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true73:                                  ; preds = %cond.end70
  %call74 = call zeroext i1 @capable(i32 noundef 4) #10
  br i1 %call74, label %land.lhs.true73.if.end80_crit_edge, label %if.then75

land.lhs.true73.if.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then75:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %i_vnode.i, align 8
  %30 = and i16 %29, -3073
  store i16 %30, ptr %i_vnode.i, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %land.lhs.true73.if.end80_crit_edge, %cond.end70.if.end80_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %iuid.sroa.0.0.copyload, i32 %uid.sroa.0.1)
  %cmp.i = icmp eq i32 %iuid.sroa.0.0.copyload, %uid.sroa.0.1
  br i1 %cmp.i, label %if.end80.if.end113_crit_edge, label %if.then84

if.end80.if.end113_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then84:                                        ; preds = %if.end80
  %31 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_qflags, align 4
  %and86 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.then84.if.end111_crit_edge, label %if.then88

if.then84.if.end111_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then88:                                        ; preds = %if.then84
  br i1 %tobool66.not, label %cond.false98, label %if.then88.cond.end99_crit_edge, !prof !93

if.then88.cond.end99_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end99

cond.false98:                                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 761) #10
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false98, %if.then88.cond.end99_crit_edge
  %33 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udqp, align 4
  %tobool100.not = icmp eq ptr %34, null
  br i1 %tobool100.not, label %cond.false108, label %cond.end99.cond.end109_crit_edge, !prof !93

cond.end99.cond.end109_crit_edge:                 ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end109

cond.false108:                                    ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 762) #10
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false108, %cond.end99.cond.end109_crit_edge
  %35 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tp, align 4
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %37 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udqp, align 4
  %call110 = call ptr @xfs_qm_vop_chown(ptr noundef %36, ptr noundef %ip, ptr noundef %i_udquot, ptr noundef %38) #10
  br label %if.end111

if.end111:                                        ; preds = %cond.end109, %if.then84.if.end111_crit_edge
  %olddquot1.0 = phi ptr [ %call110, %cond.end109 ], [ null, %if.then84.if.end111_crit_edge ]
  %39 = ptrtoint ptr %i_uid57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %uid.sroa.0.1, ptr %i_uid57, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.end111, %if.end80.if.end113_crit_edge
  %olddquot1.1 = phi ptr [ null, %if.end80.if.end113_crit_edge ], [ %olddquot1.0, %if.end111 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %igid.sroa.0.0.copyload, i32 %gid.sroa.0.1)
  %cmp.i294 = icmp eq i32 %igid.sroa.0.0.copyload, %gid.sroa.0.1
  br i1 %cmp.i294, label %if.end113.if.end163_crit_edge, label %if.then117

if.end113.if.end163_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then117:                                       ; preds = %if.end113
  %40 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %m_qflags, align 4
  %and119 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then117.if.end160_crit_edge, label %if.then121

if.then117.if.end160_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then121:                                       ; preds = %if.then117
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %42 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %43, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %and125 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  %or.cond303 = select i1 %tobool.i, i1 true, i1 %tobool126.not
  br i1 %or.cond303, label %if.then121.cond.end137_crit_edge, label %cond.false136, !prof !94

if.then121.cond.end137_crit_edge:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end137

cond.false136:                                    ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 771) #10
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false136, %if.then121.cond.end137_crit_edge
  br i1 %tobool60.not, label %cond.false147, label %cond.end137.cond.end148_crit_edge, !prof !93

cond.end137.cond.end148_crit_edge:                ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end148

cond.false147:                                    ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 772) #10
  br label %cond.end148

cond.end148:                                      ; preds = %cond.false147, %cond.end137.cond.end148_crit_edge
  %44 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gdqp, align 4
  %tobool149.not = icmp eq ptr %45, null
  br i1 %tobool149.not, label %cond.false157, label %cond.end148.cond.end158_crit_edge, !prof !93

cond.end148.cond.end158_crit_edge:                ; preds = %cond.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end158

cond.false157:                                    ; preds = %cond.end148
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 773) #10
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false157, %cond.end148.cond.end158_crit_edge
  %46 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tp, align 4
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %48 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gdqp, align 4
  %call159 = call ptr @xfs_qm_vop_chown(ptr noundef %47, ptr noundef %ip, ptr noundef %i_gdquot, ptr noundef %49) #10
  br label %if.end160

if.end160:                                        ; preds = %cond.end158, %if.then117.if.end160_crit_edge
  %olddquot2.0 = phi ptr [ %call159, %cond.end158 ], [ null, %if.then117.if.end160_crit_edge ]
  %50 = ptrtoint ptr %i_gid58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %gid.sroa.0.1, ptr %i_gid58, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.end160, %if.end113.if.end163_crit_edge, %if.end53.if.end163_crit_edge
  %olddquot1.2 = phi ptr [ %olddquot1.1, %if.end113.if.end163_crit_edge ], [ %olddquot1.1, %if.end160 ], [ null, %if.end53.if.end163_crit_edge ]
  %olddquot2.1 = phi ptr [ null, %if.end113.if.end163_crit_edge ], [ %olddquot2.0, %if.end160 ], [ null, %if.end53.if.end163_crit_edge ]
  %and164 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end163.if.end167_crit_edge, label %if.then166

if.end163.if.end167_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

if.then166:                                       ; preds = %if.end163
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %51 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ia_mode.i, align 4
  %call1.i = call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #10
  br i1 %call1.i, label %if.then166.xfs_setattr_mode.exit_crit_edge, label %cond.false.i, !prof !77

if.then166.xfs_setattr_mode.exit_crit_edge:       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_setattr_mode.exit

cond.false.i:                                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 624) #10
  br label %xfs_setattr_mode.exit

xfs_setattr_mode.exit:                            ; preds = %cond.false.i, %if.then166.xfs_setattr_mode.exit_crit_edge
  %53 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %i_vnode.i, align 8
  %55 = and i16 %54, -4096
  %56 = and i16 %52, 4095
  %or11.i = or i16 %55, %56
  store i16 %or11.i, ptr %i_vnode.i, align 8
  br label %if.end167

if.end167:                                        ; preds = %xfs_setattr_mode.exit, %if.end163.if.end167_crit_edge
  %and168 = and i32 %3, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end167.if.end171_crit_edge, label %if.then170

if.end167.if.end171_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then170:                                       ; preds = %if.end167
  %call1.i295 = call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #10
  br i1 %call1.i295, label %if.then170.cond.end.i_crit_edge, label %cond.false.i296, !prof !77

if.then170.cond.end.i_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i296:                                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 637) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i296, %if.then170.cond.end.i_crit_edge
  %57 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iattr, align 8
  %and.i297 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297)
  %tobool3.not.i = icmp eq i32 %and.i297, 0
  br i1 %tobool3.not.i, label %cond.end.i.if.end.i_crit_edge, label %if.then.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 15
  %ia_atime.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %59 = call ptr @memcpy(ptr %i_atime.i, ptr %ia_atime.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.i.if.end.i_crit_edge
  %60 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iattr, align 8
  %and5.i = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_ctime.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17
  %ia_ctime.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %62 = call ptr @memcpy(ptr %i_ctime.i, ptr %ia_ctime.i, i32 16)
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %63 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iattr, align 8
  %and10.i = and i32 %64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end171_crit_edge, label %if.then12.i

if.end8.i.if.end171_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16
  %ia_mtime.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %65 = call ptr @memcpy(ptr %i_mtime.i, ptr %ia_mtime.i, i32 16)
  br label %if.end171

if.end171:                                        ; preds = %if.then12.i, %if.end8.i.if.end171_crit_edge, %if.end167.if.end171_crit_edge
  %66 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %67, ptr noundef %ip, i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %68 = load ptr, ptr @xfsstats, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i298 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i298 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx, align 4
  %add = add i32 %75, %69
  %76 = inttoptr i32 %add to ptr
  %xs_ig_attrchg = getelementptr inbounds %struct.__xfsstats, ptr %76, i32 0, i32 32
  %77 = ptrtoint ptr %xs_ig_attrchg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xs_ig_attrchg, align 8
  %inc = add i32 %78, 1
  store i32 %inc, ptr %xs_ig_attrchg, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %79 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %m_stats, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = load i32, ptr %cpu, align 4
  %arrayidx184 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx184, align 4
  %add185 = add i32 %84, %81
  %85 = inttoptr i32 %add185 to ptr
  %xs_ig_attrchg186 = getelementptr inbounds %struct.__xfsstats, ptr %85, i32 0, i32 32
  %86 = ptrtoint ptr %xs_ig_attrchg186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xs_ig_attrchg186, align 8
  %inc187 = add i32 %87, 1
  store i32 %inc187, ptr %xs_ig_attrchg186, align 8
  %m_features.i299 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %88 = ptrtoint ptr %m_features.i299 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %m_features.i299, align 8
  %and.i300 = and i64 %89, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i300)
  %tobool.i301.not = icmp eq i64 %and.i300, 0
  br i1 %tobool.i301.not, label %if.end171.if.end193_crit_edge, label %if.then191

if.end171.if.end193_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then191:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %t_flags, align 4
  %or192 = or i32 %93, 8
  store i32 %or192, ptr %t_flags, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end171.if.end193_crit_edge
  %94 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tp, align 4
  %call194 = call i32 @xfs_trans_commit(ptr noundef %95) #10
  call void @xfs_qm_dqrele(ptr noundef %olddquot1.2) #10
  call void @xfs_qm_dqrele(ptr noundef %olddquot2.1) #10
  %96 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %97) #10
  %98 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.end193.cleanup207_crit_edge

if.end193.cleanup207_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end197:                                        ; preds = %if.end193
  br i1 %tobool165.not, label %if.end197.if.end206_crit_edge, label %if.then200

if.end197.if.end206_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then200:                                       ; preds = %if.end197
  %100 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %i_vnode.i, align 8
  %call202 = call i32 @posix_acl_chmod(ptr noundef %mnt_userns, ptr noundef %i_vnode.i, i16 noundef zeroext %101) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then200.if.end206_crit_edge, label %if.then200.cleanup207_crit_edge

if.then200.cleanup207_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.then200.if.end206_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.end206:                                        ; preds = %if.then200.if.end206_crit_edge, %if.end197.if.end206_crit_edge
  br label %cleanup207

out_dqrele:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %103) #10
  %104 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %105) #10
  br label %cleanup207

cleanup207:                                       ; preds = %out_dqrele, %if.end206, %if.then200.cleanup207_crit_edge, %if.end193.cleanup207_crit_edge, %cond.end42.cleanup207_crit_edge
  %retval.1 = phi i32 [ %call50, %out_dqrele ], [ 0, %if.end206 ], [ %call44, %cond.end42.cleanup207_crit_edge ], [ %call194, %if.end193.cleanup207_crit_edge ], [ %call202, %if.then200.cleanup207_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gdqp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %udqp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_zero_eof(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 1), ptr blockaddress(@trace_xfs_zero_eof, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call42 = tail call i32 @__traceiter_xfs_zero_eof(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_zero_eof.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_zero_eof.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1533, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
declare dso_local i32 @xfs_zero_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iflags_set(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #10
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 8
  %or.i = or i32 %1, 32
  store i32 %or.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_clear_eofblocks_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_setattr_mode(ptr noundef %ip, ptr nocapture noundef readonly %iattr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %0 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ia_mode, align 4
  %call1 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #10
  br i1 %call1, label %entry.cond.end_crit_edge, label %cond.false, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 624) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %2 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_vnode.i, align 8
  %4 = and i16 %3, -4096
  %5 = and i16 %1, 4095
  %or11 = or i16 %4, %5
  store i16 %or11, ptr %i_vnode.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_vop_dqalloc(ptr noundef, [1 x i32], [1 x i32], i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_ichange(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_qm_vop_chown(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqrele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_zero_eof(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_itruncate_extents_flags(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #4 align 64 {
entry:
  %iolock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iattr, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iolock) #10
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 16) #10
  %4 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 17, ptr %iolock, align 4
  %call2 = call i32 @xfs_break_layouts(ptr noundef %1, ptr noundef nonnull %iolock, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -312
  call fastcc void @trace_xfs_setattr(ptr noundef %add.ptr.i.i) #10
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -312
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 8
  %m_opstate.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 66
  %11 = ptrtoint ptr %m_opstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %m_opstate.i.i.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.end
  %14 = ptrtoint ptr %m_opstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %m_opstate.i.i.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i10.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i10.not.i.i, label %xfs_vn_change_ok.exit.i, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

xfs_vn_change_ok.exit.i:                          ; preds = %if.end.i.i
  %call6.i.i = call i32 @setattr_prepare(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %xfs_vn_change_ok.exit.i.cleanup.thread_crit_edge

xfs_vn_change_ok.exit.i.cleanup.thread_crit_edge: ; preds = %xfs_vn_change_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i:                                         ; preds = %xfs_vn_change_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call fastcc i32 @xfs_setattr_size(ptr noundef %mnt_userns, ptr noundef %add.ptr.i.i, ptr noundef %iattr) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i, %xfs_vn_change_ok.exit.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call6.i.i, %xfs_vn_change_ok.exit.i.cleanup.thread_crit_edge ], [ -5, %if.end.i.i.cleanup.thread_crit_edge ], [ -30, %if.end.cleanup.thread_crit_edge ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iolock) #10
  br label %cleanup12

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iolock) #10
  br label %cleanup12

if.else:                                          ; preds = %entry
  tail call fastcc void @trace_xfs_setattr(ptr noundef %add.ptr.i)
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i31 = getelementptr i8, ptr %18, i32 -312
  %19 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i31, align 8
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 66
  %21 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %m_opstate.i.i, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %if.end.i32, label %if.else.cleanup12_crit_edge

if.else.cleanup12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.end.i32:                                       ; preds = %if.else
  %24 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %m_opstate.i.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i10.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i10.not.i, label %xfs_vn_change_ok.exit, label %if.end.i32.cleanup12_crit_edge

if.end.i32.cleanup12_crit_edge:                   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

xfs_vn_change_ok.exit:                            ; preds = %if.end.i32
  %call6.i = tail call i32 @setattr_prepare(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not, label %if.then8, label %xfs_vn_change_ok.exit.cleanup12_crit_edge

xfs_vn_change_ok.exit.cleanup12_crit_edge:        ; preds = %xfs_vn_change_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then8:                                         ; preds = %xfs_vn_change_ok.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @xfs_setattr_nonsize(ptr noundef %mnt_userns, ptr noundef %add.ptr.i, ptr noundef %iattr)
  br label %cleanup12

cleanup12:                                        ; preds = %if.then8, %xfs_vn_change_ok.exit.cleanup12_crit_edge, %if.end.i32.cleanup12_crit_edge, %if.else.cleanup12_crit_edge, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ %call2, %cleanup ], [ %call6.i, %xfs_vn_change_ok.exit.cleanup12_crit_edge ], [ %call9, %if.then8 ], [ %retval.0.i, %cleanup.thread ], [ -5, %if.end.i32.cleanup12_crit_edge ], [ -30, %if.else.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_getattr(ptr noundef %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #4 align 64 {
entry:
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call fastcc void @trace_xfs_getattr(ptr noundef %add.ptr.i)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp.i = icmp eq i16 %11, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %i_size_seqcount.i.i = getelementptr i8, ptr %3, i32 168
  %dep_map.c48.i.i.i = getelementptr i8, ptr %3, i32 172
  %i_size18.i.i = getelementptr i8, ptr %3, i32 56
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.then.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !97
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %13 = tail call ptr @llvm.returnaddress(i32 0) #10
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %14) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call ptr @llvm.returnaddress(i32 0) #10
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %16) #10
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !98
  %and.i.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !93

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !99
  %18 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !101
  %20 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %21, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %21, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %22 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  %24 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %25, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %while.end.i.i.XFS_ISIZE.exit_crit_edge, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

while.end.i.i.XFS_ISIZE.exit_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i = getelementptr i8, ptr %3, i32 -56
  %26 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %while.end.i.i.XFS_ISIZE.exit_crit_edge
  %retval.0.i = phi i64 [ %27, %if.end.i ], [ %23, %while.end.i.i.XFS_ISIZE.exit_crit_edge ]
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %28 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %retval.0.i, ptr %size, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dev, align 8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 8
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %mode, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %40 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %nlink, align 8
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %41 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 53
  %42 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %45 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %43, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %XFS_ISIZE.exit.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

XFS_ISIZE.exit.i_uid_into_mnt.exit_crit_edge:     ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %XFS_ISIZE.exit
  %cmp.i21.i.i = icmp eq ptr %43, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %43, [1 x i32] %45) #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #10
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %XFS_ISIZE.exit.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %XFS_ISIZE.exit.i_uid_into_mnt.exit_crit_edge ]
  %46 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.sroa.0.0.i.i, ptr %uid, align 8
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i88 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %s_user_ns.i.i88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_user_ns.i.i88, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack.i89 = load i32, ptr %i_gid.i, align 8
  %52 = insertvalue [1 x i32] undef, i32 %.unpack.i89, 0
  %cmp.i.i.i91 = icmp eq ptr %50, %mnt_userns
  %spec.select.i.i.i92 = or i1 %cmp.i.i.i.i, %cmp.i.i.i91
  br i1 %spec.select.i.i.i92, label %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i94

i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge: ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_gid_into_mnt.exit

if.end.i.i94:                                     ; preds = %i_uid_into_mnt.exit
  %cmp.i21.i.i93 = icmp eq ptr %50, @init_user_ns
  br i1 %cmp.i21.i.i93, label %if.end.i.i94.if.end7.i.i98_crit_edge, label %if.else.i.i96

if.end.i.i94.if.end7.i.i98_crit_edge:             ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i98

if.else.i.i96:                                    ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i95 = tail call i32 @from_kgid(ptr noundef %50, [1 x i32] %52) #10
  br label %if.end7.i.i98

if.end7.i.i98:                                    ; preds = %if.else.i.i96, %if.end.i.i94.if.end7.i.i98_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i95, %if.else.i.i96 ], [ %.unpack.i89, %if.end.i.i94.if.end7.i.i98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i97 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i97, label %if.end7.i.i98.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i100

if.end7.i.i98.i_gid_into_mnt.exit_crit_edge:      ; preds = %if.end7.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_gid_into_mnt.exit

if.end9.i.i100:                                   ; preds = %if.end7.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i99 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #10
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i100, %if.end7.i.i98.i_gid_into_mnt.exit_crit_edge, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i101 = phi i32 [ %call10.i.i99, %if.end9.i.i100 ], [ -1, %if.end7.i.i98.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i89, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge ]
  %53 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.sroa.0.0.i.i101, ptr %gid, align 4
  %i_ino = getelementptr i8, ptr %3, i32 -296
  %54 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %56 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %ino, align 8
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %i_atime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %57 = call ptr @memcpy(ptr %atime, ptr %i_atime, i32 16)
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %58 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %59 = call ptr @memcpy(ptr %ctime, ptr %i_ctime, i32 16)
  %i_nblocks = getelementptr i8, ptr %3, i32 -48
  %60 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_nblocks, align 8
  %i_delayed_blks = getelementptr i8, ptr %3, i32 -64
  %62 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_delayed_blks, align 8
  %add = add i64 %63, %61
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  %64 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %65 to i64
  %shl = shl i64 %add, %sh_prom
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %66 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %shl, ptr %blocks, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %67 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %68, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i102.not = icmp eq i64 %and.i, 0
  %and = and i32 %request_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool.i102.not
  br i1 %or.cond, label %i_gid_into_mnt.exit.if.end12_crit_edge, label %if.then10

i_gid_into_mnt.exit.if.end12_crit_edge:           ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stat, align 8
  %or = or i32 %70, 2048
  store i32 %or, ptr %stat, align 8
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  %i_crtime = getelementptr i8, ptr %3, i32 -16
  %71 = call ptr @memcpy(ptr %btime, ptr %i_crtime, i32 16)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %i_gid_into_mnt.exit.if.end12_crit_edge
  %i_diflags = getelementptr i8, ptr %3, i32 -26
  %72 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %i_diflags, align 2
  %74 = and i16 %73, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool15.not = icmp eq i16 %74, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %if.then16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %75 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %attributes, align 8
  %or17 = or i64 %76, 16
  store i64 %or17, ptr %attributes, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %77 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %i_diflags, align 2
  %79 = and i16 %78, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool22.not = icmp eq i16 %79, 0
  br i1 %tobool22.not, label %if.end18.if.end26_crit_edge, label %if.then23

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %attributes24 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %80 = ptrtoint ptr %attributes24 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %attributes24, align 8
  %or25 = or i64 %81, 32
  store i64 %or25, ptr %attributes24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18.if.end26_crit_edge
  %82 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %i_diflags, align 2
  %84 = and i16 %83, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool30.not = icmp eq i16 %84, 0
  br i1 %tobool30.not, label %if.end26.if.end34_crit_edge, label %if.then31

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %attributes32 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %85 = ptrtoint ptr %attributes32 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %attributes32, align 8
  %or33 = or i64 %86, 64
  store i64 %or33, ptr %attributes32, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26.if.end34_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %87 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %attributes_mask, align 8
  %or35 = or i64 %88, 112
  store i64 %or35, ptr %attributes_mask, align 8
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %3, align 8
  %91 = and i16 %90, -4096
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %91, label %sw.default [
    i16 24576, label %if.end34.sw.bb_crit_edge
    i16 8192, label %if.end34.sw.bb_crit_edge113
  ]

if.end34.sw.bb_crit_edge113:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end34.sw.bb_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end34.sw.bb_crit_edge, %if.end34.sw.bb_crit_edge113
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %93 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4096, ptr %blksize, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %94 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_rdev, align 8
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end34
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 8
  %98 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %i_diflags, align 2
  %100 = and i16 %99, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i = icmp eq i16 %100, 0
  br i1 %tobool.not.i, label %sw.default.if.end.i105_crit_edge, label %land.lhs.true.i

sw.default.if.end.i105_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i105

land.lhs.true.i:                                  ; preds = %sw.default
  %m_rtdev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %97, i32 0, i32 15
  %101 = ptrtoint ptr %m_rtdev_targp.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %m_rtdev_targp.i, align 64
  %tobool2.not.i = icmp eq ptr %102, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i105_crit_edge, label %if.then.i103

land.lhs.true.i.if.end.i105_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i105

if.then.i103:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @xfs_get_extsz_hint(ptr noundef %add.ptr.i) #10
  %conv3.i = zext i32 %call.i to i64
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %97, i32 0, i32 20
  %103 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %104 to i64
  %shl.i = shl i64 %conv3.i, %sh_prom.i
  %conv5.i = trunc i64 %shl.i to i32
  br label %xfs_stat_blksize.exit

if.end.i105:                                      ; preds = %land.lhs.true.i.if.end.i105_crit_edge, %sw.default.if.end.i105_crit_edge
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %97, i32 0, i32 61
  %105 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %m_features.i.i, align 8
  %and.i.i104 = and i64 %106, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i104)
  %tobool.i.not.i = icmp eq i64 %and.i.i104, 0
  br i1 %tobool.i.not.i, label %if.end.i105.xfs_stat_blksize.exit_crit_edge, label %if.then7.i

if.end.i105.xfs_stat_blksize.exit_crit_edge:      ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_stat_blksize.exit

if.then7.i:                                       ; preds = %if.end.i105
  %m_swidth.i = getelementptr inbounds %struct.xfs_mount, ptr %97, i32 0, i32 51
  %107 = ptrtoint ptr %m_swidth.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %m_swidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool8.not.i = icmp eq i32 %108, 0
  br i1 %tobool8.not.i, label %if.end18.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1133.i = zext i32 %108 to i64
  %sb_blocklog13.i = getelementptr inbounds %struct.xfs_sb, ptr %97, i32 0, i32 20
  %109 = ptrtoint ptr %sb_blocklog13.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sb_blocklog13.i, align 8
  %sh_prom15.i = zext i8 %110 to i64
  %shl16.i = shl i64 %conv1133.i, %sh_prom15.i
  %conv17.i = trunc i64 %shl16.i to i32
  br label %xfs_stat_blksize.exit

if.end18.i:                                       ; preds = %if.then7.i
  %and.i35.i = and i64 %106, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i35.i)
  %tobool.i36.not.i = icmp eq i64 %and.i35.i, 0
  br i1 %tobool.i36.not.i, label %if.end18.i.xfs_stat_blksize.exit_crit_edge, label %if.then20.i

if.end18.i.xfs_stat_blksize.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_stat_blksize.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %m_allocsize_log.i = getelementptr inbounds %struct.xfs_mount, ptr %97, i32 0, i32 53
  %111 = ptrtoint ptr %m_allocsize_log.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %m_allocsize_log.i, align 4
  %shl21.i = shl nuw i32 1, %112
  br label %xfs_stat_blksize.exit

xfs_stat_blksize.exit:                            ; preds = %if.then20.i, %if.end18.i.xfs_stat_blksize.exit_crit_edge, %if.then9.i, %if.end.i105.xfs_stat_blksize.exit_crit_edge, %if.then.i103
  %retval.0.i106 = phi i32 [ %conv5.i, %if.then.i103 ], [ %conv17.i, %if.then9.i ], [ %shl21.i, %if.then20.i ], [ 4096, %if.end18.i.xfs_stat_blksize.exit_crit_edge ], [ 4096, %if.end.i105.xfs_stat_blksize.exit_crit_edge ]
  %blksize40 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %113 = ptrtoint ptr %blksize40 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i106, ptr %blksize40, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %xfs_stat_blksize.exit, %sw.bb
  %.sink = phi i32 [ %95, %sw.bb ], [ 0, %xfs_stat_blksize.exit ]
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %114 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink, ptr %rdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_vn_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %length) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 2) #10
  %0 = ptrtoint ptr %fieinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fieinfo, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and2 = and i32 %1, -3
  %2 = ptrtoint ptr %fieinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and2, ptr %fieinfo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xfs_read_iomap_ops.sink = phi ptr [ @xfs_xattr_iomap_ops, %if.then ], [ @xfs_read_iomap_ops, %entry.if.end_crit_edge ]
  %call4 = tail call i32 @iomap_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %length, ptr noundef nonnull %xfs_read_iomap_ops.sink) #10
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 2) #10
  ret i32 %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_update_time(ptr noundef %inode, ptr noundef %now, i32 noundef %flags) #4 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !83
  tail call fastcc void @trace_xfs_update_time(ptr noundef %add.ptr.i)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %and = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %and1 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.then4_crit_edge, label %land.lhs.true

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

land.lhs.true:                                    ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #10
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %land.lhs.true
  %cur.0.i = phi i64 [ %call.i.i1.i, %land.lhs.true ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %for.cond.i.if.then4_crit_edge, label %if.end.i

for.cond.i.if.then4_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.i:                                         ; preds = %for.cond.i
  %7 = add i64 %cur.0.i, 2
  %add.i = and i64 %7, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #10
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #10
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.if.end6_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !77

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %for.cond.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %call5 = tail call i32 @generic_update_time(ptr noundef %inode, ptr noundef %now, i32 noundef %flags) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %log_flags.0 = phi i32 [ 16384, %entry.if.end6_crit_edge ], [ 16385, %if.end.i.if.end6_crit_edge ]
  %tr_fsyncts = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 25
  %call7 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_fsyncts, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 4) #10
  %and11 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %8 = call ptr @memcpy(ptr %i_ctime, ptr %now, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %9 = call ptr @memcpy(ptr %i_mtime, ptr %now, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %10 = call ptr @memcpy(ptr %i_atime, ptr %now, i32 16)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %12, ptr noundef %add.ptr.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %14, ptr noundef %add.ptr.i, i32 noundef %log_flags.0) #10
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %call23 = call i32 @xfs_trans_commit(ptr noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ %call5, %if.then4 ], [ %call7, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_break_layouts(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_getattr(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getattr, i32 0, i32 1), ptr blockaddress(@trace_xfs_getattr, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %call42 = tail call i32 @__traceiter_xfs_getattr(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getattr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getattr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_getattr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_getattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 752, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
declare dso_local i32 @__traceiter_xfs_getattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_get_extsz_hint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_update_time(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_update_time, i32 0, i32 1), ptr blockaddress(@trace_xfs_update_time, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %call42 = tail call i32 @__traceiter_xfs_update_time(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_update_time, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_update_time, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_update_time.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_update_time.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 772, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #10
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
declare dso_local i32 @generic_update_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_update_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_vn_ci_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #4 align 64 {
entry:
  %ip = alloca ptr, align 4
  %xname = alloca %struct.xfs_name, align 4
  %ci_name = alloca %struct.xfs_name, align 4
  %dname = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #10
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xname) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ci_name) #10
  %1 = ptrtoint ptr %ci_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ci_name, align 4, !annotation !83
  %2 = getelementptr inbounds %struct.xfs_name, ptr %ci_name, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !83
  %4 = getelementptr inbounds %struct.xfs_name, ptr %ci_name, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dname) #10
  %6 = call ptr @memset(ptr %dname, i32 255, i32 16)
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp = icmp ugt i32 %8, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.xfs_name, ptr %xname, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xfs_name, ptr %xname, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 8
  %13 = ptrtoint ptr %xname to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %xname, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %10, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -312
  %call2 = call i32 @xfs_lookup(ptr noundef %add.ptr.i, ptr noundef nonnull %xname, ptr noundef nonnull %ip, ptr noundef nonnull %ci_name) #10
  %16 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call2, label %if.then13 [
    i32 0, label %if.end16
    i32 -2, label %if.end.cleanup_crit_edge
  ], !prof !109

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %ci_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ci_name, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %21, i32 0, i32 27
  %call20 = call ptr @d_splice_alias(ptr noundef %i_vnode.i, ptr noundef %dentry) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %name23 = getelementptr inbounds %struct.qstr, ptr %dname, i32 0, i32 1
  %22 = ptrtoint ptr %name23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %name23, align 8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  %25 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dname, align 8
  %26 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ip, align 4
  %i_vnode.i39 = getelementptr inbounds %struct.xfs_inode, ptr %27, i32 0, i32 27
  %call27 = call ptr @d_add_ci(ptr noundef %dentry, ptr noundef %i_vnode.i39, ptr noundef nonnull %dname) #10
  %28 = ptrtoint ptr %ci_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ci_name, align 4
  call void @kvfree(ptr noundef %29) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then13 ], [ %call27, %if.end21 ], [ %call20, %if.then18 ], [ null, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dname) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ci_name) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xname) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #10
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_generic_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #4 align 64 {
entry:
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #10
  %2 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %conv = zext i16 %5 to i32
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name, align 4
  %9 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name.i, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  %call.i = tail call zeroext i8 @xfs_mode_to_ftype(i32 noundef %conv) #10
  %conv.i = zext i8 %call.i to i32
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp.i.not = icmp eq i8 %call.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end, !prof !93

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -312
  %add.ptr.i25 = getelementptr i8, ptr %1, i32 -312
  %call6 = call i32 @xfs_link(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i25, ptr noundef nonnull %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end15, label %if.end.cleanup_crit_edge, !prof !77

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @ihold(ptr noundef %1) #10
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -117, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_unlink(ptr noundef %dir, ptr noundef %dentry) #4 align 64 {
entry:
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #10
  %0 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name, align 4
  %5 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name.i, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -312
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 -312
  %call3 = call i32 @xfs_remove(ptr noundef %add.ptr.i, ptr noundef nonnull %name, ptr noundef %add.ptr.i12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info, align 16
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %16, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @d_invalidate(ptr noundef %dentry) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_symlink(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #4 align 64 {
entry:
  %cip = alloca ptr, align 4
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cip) #10
  %0 = ptrtoint ptr %cip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cip, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #10
  %1 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %2 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 1, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @current_umask() #10
  %4 = trunc i32 %call to i16
  %5 = and i16 %4, 511
  %phi.cast = xor i16 %5, -24065
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ -24065, %entry.cond.end_crit_edge ]
  %conv1 = zext i16 %cond to i32
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name, align 4
  %9 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name.i, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %call.i = tail call zeroext i8 @xfs_mode_to_ftype(i32 noundef %conv1) #10
  %conv.i = zext i8 %call.i to i32
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp.i.not = icmp eq i8 %call.i, 0
  br i1 %cmp.i.not, label %cond.end.cleanup_crit_edge, label %if.end, !prof !93

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -312
  %call7 = call i32 @xfs_symlink(ptr noundef %mnt_userns, ptr noundef %add.ptr.i, ptr noundef nonnull %name, ptr noundef %symname, i16 noundef zeroext %cond, ptr noundef nonnull %cip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %if.end.cleanup_crit_edge, !prof !77

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %13 = ptrtoint ptr %cip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 27
  %call18 = call fastcc i32 @xfs_init_security(ptr noundef %i_vnode.i, ptr noundef %dir, ptr noundef %d_name.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %15 = ptrtoint ptr %cip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cip, align 4
  br i1 %tobool19.not, label %if.end27, label %out_cleanup_inode, !prof !77

if.end27:                                         ; preds = %if.end16
  %i_vnode.i43 = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %i_vnode.i43 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_vnode.i43, align 8
  %19 = and i16 %18, -4096
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %19, label %sw.default.i [
    i16 -32768, label %sw.bb.i
    i16 16384, label %sw.bb4.i
    i16 -24576, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %i_op.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 7
  %21 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xfs_inode_operations, ptr %i_op.i, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xfs_file_operations, ptr %22, align 8
  %i_mapping2.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 9
  %24 = ptrtoint ptr %i_mapping2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping2.i, align 8
  %a_ops3.i = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %a_ops3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xfs_address_space_operations, ptr %a_ops3.i, align 4
  br label %xfs_setup_iops.exit

sw.bb4.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %30, i32 0, i32 61
  %31 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %32, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.i = select i1 %tobool.i.not.i, ptr @xfs_dir_inode_operations, ptr @xfs_dir_ci_inode_operations
  %33 = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 7
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select.i, ptr %33, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 44
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xfs_dir_file_operations, ptr %35, align 8
  br label %xfs_setup_iops.exit

sw.bb10.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %i_op11.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 7
  %37 = ptrtoint ptr %i_op11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xfs_symlink_inode_operations, ptr %i_op11.i, align 8
  br label %xfs_setup_iops.exit

sw.default.i:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %i_op12.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 7
  %38 = ptrtoint ptr %i_op12.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xfs_inode_operations, ptr %i_op12.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27, i32 13
  %39 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_rdev.i, align 8
  call void @init_special_inode(ptr noundef %i_vnode.i43, i16 noundef zeroext %18, i32 noundef %40) #10
  br label %xfs_setup_iops.exit

xfs_setup_iops.exit:                              ; preds = %sw.default.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %i_vnode.i) #10
  %41 = ptrtoint ptr %cip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cip, align 4
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %42, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #10
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i44 = and i32 %44, -9
  store i32 %and.i.i44, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %42, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i) #10
  br label %cleanup

out_cleanup_inode:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @xfs_finish_inode_setup(ptr noundef %16)
  call fastcc void @xfs_cleanup_inode(ptr noundef %dir, ptr noundef %i_vnode.i, ptr noundef %dentry)
  %45 = ptrtoint ptr %cip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cip, align 4
  call void @xfs_irele(ptr noundef %46) #10
  br label %cleanup

cleanup:                                          ; preds = %out_cleanup_inode, %xfs_setup_iops.exit, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_setup_iops.exit ], [ -117, %cond.end.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call18, %out_cleanup_inode ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cip) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_mkdir(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %call = tail call fastcc i32 @xfs_generic_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %0, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_mknod(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_generic_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_rename(ptr noundef %mnt_userns, ptr noundef %odir, ptr nocapture noundef readonly %odentry, ptr noundef %ndir, ptr nocapture noundef readonly %ndentry, i32 noundef %flags) #4 align 64 {
entry:
  %oname = alloca %struct.xfs_name, align 4
  %nname = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %oname) #10
  %2 = getelementptr inbounds %struct.xfs_name, ptr %oname, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xfs_name, ptr %oname, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nname) #10
  %4 = getelementptr inbounds %struct.xfs_name, ptr %nname, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xfs_name, ptr %nname, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %conv = zext i16 %7 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %omode.0 = phi i32 [ %conv, %if.then3 ], [ 0, %if.end.if.end5_crit_edge ]
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %odentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %odentry, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 8
  %10 = ptrtoint ptr %oname to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %oname, align 4
  %11 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name.i, align 8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %2, align 4
  %call.i = tail call zeroext i8 @xfs_mode_to_ftype(i32 noundef %omode.0) #10
  %conv.i = zext i8 %call.i to i32
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp.i = icmp ne i8 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %omode.0)
  %tobool7.not = icmp eq i32 %omode.0, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end12, label %if.end5.cleanup_crit_edge, !prof !94

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %d_inode.i49 = getelementptr inbounds %struct.dentry, ptr %odentry, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i49, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 8
  %conv15 = zext i16 %18 to i32
  %d_name.i50 = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4
  %name.i51 = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %name.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i51, align 8
  %21 = ptrtoint ptr %nname to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %nname, align 4
  %22 = ptrtoint ptr %d_name.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_name.i50, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %4, align 4
  %call.i53 = tail call zeroext i8 @xfs_mode_to_ftype(i32 noundef %conv15) #10
  %conv.i54 = zext i8 %call.i53 to i32
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i54, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i53)
  %cmp.i56.not = icmp eq i8 %call.i53, 0
  br i1 %cmp.i56.not, label %if.end12.cleanup_crit_edge, label %if.end25, !prof !93

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %odir, i32 -312
  %26 = ptrtoint ptr %d_inode.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i49, align 8
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 -312
  %add.ptr.i60 = getelementptr i8, ptr %ndir, i32 -312
  %tobool30.not = icmp eq ptr %1, null
  %add.ptr.i61 = getelementptr i8, ptr %1, i32 -312
  %spec.select = select i1 %tobool30.not, ptr null, ptr %add.ptr.i61
  %call32 = call i32 @xfs_rename(ptr noundef %mnt_userns, ptr noundef %add.ptr.i, ptr noundef nonnull %oname, ptr noundef %add.ptr.i59, ptr noundef %add.ptr.i60, ptr noundef nonnull %nname, ptr noundef %spec.select, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ -117, %if.end5.cleanup_crit_edge ], [ -117, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nname) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %oname) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vn_tmpfile(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xfs_generic_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef 0, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_add_ci(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_generic_create(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev, i1 noundef zeroext %tmpfile) unnamed_addr #4 align 64 {
entry:
  %mode.addr = alloca i16, align 2
  %ip = alloca ptr, align 4
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #10
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #10
  %2 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #10
  %3 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #10
  %4 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %6 = and i16 %mode, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %6, label %entry.if.end11_crit_edge [
    i16 8192, label %entry.if.then_crit_edge
    i16 24576, label %entry.if.then_crit_edge130
  ]

entry.if.then_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge130
  %8 = and i32 %rdev, -536084480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %if.then.if.end11_crit_edge, label %if.then.cleanup_crit_edge, !prof !77

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %rdev.addr.0 = phi i32 [ %rdev, %if.then.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  %call12 = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef nonnull %mode.addr, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode.addr, align 2
  %conv16 = zext i16 %10 to i32
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 8
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name, align 4
  %14 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name.i, align 8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 4
  %call.i = call zeroext i8 @xfs_mode_to_ftype(i32 noundef %conv16) #10
  %conv.i = zext i8 %call.i to i32
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp.i.not = icmp eq i8 %call.i, 0
  br i1 %cmp.i.not, label %if.end15.out_free_acl_crit_edge, label %if.end26, !prof !93

if.end15.out_free_acl_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_acl

if.end26:                                         ; preds = %if.end15
  %add.ptr.i110 = getelementptr i8, ptr %dir, i32 -312
  %18 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mode.addr, align 2
  br i1 %tmpfile, label %if.else32, label %if.then28

if.then28:                                        ; preds = %if.end26
  %20 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %default_acl, align 4
  %22 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %23, null
  %tobool1.not.i = icmp eq ptr %21, null
  %or.cond.i = and i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end3.i, label %if.then28.xfs_create_need_xattr.exit_crit_edge

if.then28.xfs_create_need_xattr.exit_crit_edge:   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_create_need_xattr.exit

if.end3.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_security.i, align 4
  %tobool4.not.i = icmp ne ptr %27, null
  br label %xfs_create_need_xattr.exit

xfs_create_need_xattr.exit:                       ; preds = %if.end3.i, %if.then28.xfs_create_need_xattr.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.then28.xfs_create_need_xattr.exit_crit_edge ], [ %tobool4.not.i, %if.end3.i ]
  %call31 = call i32 @xfs_create(ptr noundef %mnt_userns, ptr noundef %add.ptr.i110, ptr noundef nonnull %name, i16 noundef zeroext %19, i32 noundef %rdev.addr.0, i1 noundef zeroext %retval.0.i, ptr noundef nonnull %ip) #10
  br label %if.end35

if.else32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 @xfs_create_tmpfile(ptr noundef %mnt_userns, ptr noundef %add.ptr.i110, i16 noundef zeroext %19, ptr noundef nonnull %ip) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %xfs_create_need_xattr.exit
  %error.0 = phi i32 [ %call34, %if.else32 ], [ %call31, %xfs_create_need_xattr.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool36.not = icmp eq i32 %error.0, 0
  br i1 %tobool36.not, label %if.end44, label %if.end35.out_free_acl_crit_edge, !prof !77

if.end35.out_free_acl_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_acl

if.end44:                                         ; preds = %if.end35
  %28 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %29, i32 0, i32 27
  %call46 = call fastcc i32 @xfs_init_security(ptr noundef %i_vnode.i, ptr noundef %dir, ptr noundef %d_name.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end55, label %if.end44.out_cleanup_inode_crit_edge, !prof !77

if.end44.out_cleanup_inode_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup_inode

if.end55:                                         ; preds = %if.end44
  %30 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %default_acl, align 4
  %tobool56.not = icmp eq ptr %31, null
  br i1 %tobool56.not, label %if.end55.if.end62_crit_edge, label %if.then57

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then57:                                        ; preds = %if.end55
  %call58 = call i32 @__xfs_set_acl(ptr noundef %i_vnode.i, ptr noundef nonnull %31, i32 noundef 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.if.end62_crit_edge, label %if.then57.out_cleanup_inode_crit_edge

if.then57.out_cleanup_inode_crit_edge:            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup_inode

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  %32 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acl, align 4
  %tobool63.not = icmp eq ptr %33, null
  br i1 %tobool63.not, label %if.end62.if.end69_crit_edge, label %if.then64

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then64:                                        ; preds = %if.end62
  %call65 = call i32 @__xfs_set_acl(ptr noundef %i_vnode.i, ptr noundef nonnull %33, i32 noundef 32768) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.out_cleanup_inode_crit_edge

if.then64.out_cleanup_inode_crit_edge:            ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cleanup_inode

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  %34 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ip, align 4
  %i_vnode.i111 = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %i_vnode.i111 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %i_vnode.i111, align 8
  %38 = and i16 %37, -4096
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %38, label %sw.default.i [
    i16 -32768, label %sw.bb.i
    i16 16384, label %sw.bb4.i
    i16 -24576, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %i_op.i = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 7
  %40 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @xfs_inode_operations, ptr %i_op.i, align 8
  %41 = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 44
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @xfs_file_operations, ptr %41, align 8
  %i_mapping2.i = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 9
  %43 = ptrtoint ptr %i_mapping2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping2.i, align 8
  %a_ops3.i = getelementptr inbounds %struct.address_space, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %a_ops3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xfs_address_space_operations, ptr %a_ops3.i, align 4
  br label %xfs_setup_iops.exit

sw.bb4.i:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i112 = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 8
  %46 = ptrtoint ptr %i_sb.i112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb.i112, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 61
  %50 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %51, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.i = select i1 %tobool.i.not.i, ptr @xfs_dir_inode_operations, ptr @xfs_dir_ci_inode_operations
  %52 = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 7
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %spec.select.i, ptr %52, align 8
  %54 = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 44
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @xfs_dir_file_operations, ptr %54, align 8
  br label %xfs_setup_iops.exit

sw.bb10.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %i_op11.i = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 7
  %56 = ptrtoint ptr %i_op11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @xfs_symlink_inode_operations, ptr %i_op11.i, align 8
  br label %xfs_setup_iops.exit

sw.default.i:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %i_op12.i = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 7
  %57 = ptrtoint ptr %i_op12.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @xfs_inode_operations, ptr %i_op12.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 27, i32 13
  %58 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_rdev.i, align 8
  call void @init_special_inode(ptr noundef %i_vnode.i111, i16 noundef zeroext %37, i32 noundef %59) #10
  br label %xfs_setup_iops.exit

xfs_setup_iops.exit:                              ; preds = %sw.default.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i
  br i1 %tmpfile, label %if.then71, label %if.else72

if.then71:                                        ; preds = %xfs_setup_iops.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @set_nlink(ptr noundef %i_vnode.i, i32 noundef 1) #10
  call void @d_tmpfile(ptr noundef %dentry, ptr noundef %i_vnode.i) #10
  br label %if.end73

if.else72:                                        ; preds = %xfs_setup_iops.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %i_vnode.i) #10
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then71
  %60 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ip, align 4
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %61, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #10
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i113 = and i32 %63, -9
  store i32 %and.i.i113, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %61, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i) #10
  br label %out_free_acl

out_free_acl:                                     ; preds = %if.end76, %if.end73, %if.end35.out_free_acl_crit_edge, %if.end15.out_free_acl_crit_edge
  %error.3 = phi i32 [ -117, %if.end15.out_free_acl_crit_edge ], [ %error.0, %if.end35.out_free_acl_crit_edge ], [ %error.4, %if.end76 ], [ 0, %if.end73 ]
  %64 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %default_acl, align 4
  %tobool.not.i114 = icmp eq ptr %65, null
  br i1 %tobool.not.i114, label %out_free_acl.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

out_free_acl.posix_acl_release.exit_crit_edge:    ; preds = %out_free_acl
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %out_free_acl
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %65, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !111
  call void @llvm.prefetch.p0(ptr nonnull %65, i32 1, i32 3, i32 1) #10
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %65, ptr nonnull %65, i32 1, ptr nonnull elementtype(i32) %65) #10, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !77

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %65, i32 noundef 3) #10
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !113
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %65, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %out_free_acl.posix_acl_release.exit_crit_edge
  %67 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %acl, align 4
  %tobool.not.i115 = icmp eq ptr %68, null
  br i1 %tobool.not.i115, label %posix_acl_release.exit.cleanup_crit_edge, label %land.lhs.true.i119

posix_acl_release.exit.cleanup_crit_edge:         ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i119:                               ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %68, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !111
  call void @llvm.prefetch.p0(ptr nonnull %68, i32 1, i32 3, i32 1) #10
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %68, ptr nonnull %68, i32 1, ptr nonnull elementtype(i32) %68) #10, !srcloc !112
  %asmresult.i.i.i.i.i.i.i117 = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i117)
  %cmp.i.i.i.i118 = icmp eq i32 %asmresult.i.i.i.i.i.i.i117, 1
  br i1 %cmp.i.i.i.i118, label %do.end.i124, label %if.end5.i.i.i.i121

if.end5.i.i.i.i121:                               ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i117)
  %.not.i.i.i.i120 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i117, 0
  br i1 %.not.i.i.i.i120, label %if.end5.i.i.i.i121.cleanup_crit_edge, label %if.then10.i.i.i.i122, !prof !77

if.end5.i.i.i.i121.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i122:                             ; preds = %if.end5.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %68, i32 noundef 3) #10
  br label %cleanup

do.end.i124:                                      ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !113
  %a_rcu.i123 = getelementptr inbounds %struct.posix_acl, ptr %68, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i123, ptr noundef nonnull inttoptr (i32 4 to ptr)) #10
  br label %cleanup

out_cleanup_inode:                                ; preds = %if.then64.out_cleanup_inode_crit_edge, %if.then57.out_cleanup_inode_crit_edge, %if.end44.out_cleanup_inode_crit_edge
  %error.4 = phi i32 [ %call46, %if.end44.out_cleanup_inode_crit_edge ], [ %call58, %if.then57.out_cleanup_inode_crit_edge ], [ %call65, %if.then64.out_cleanup_inode_crit_edge ]
  %70 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ip, align 4
  %i_flags_lock.i.i126 = getelementptr inbounds %struct.xfs_inode, ptr %71, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i126) #10
  %i_flags.i.i127 = getelementptr inbounds %struct.xfs_inode, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %i_flags.i.i127 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_flags.i.i127, align 8
  %and.i.i128 = and i32 %73, -9
  store i32 %and.i.i128, ptr %i_flags.i.i127, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i126) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %i_vnode.i.i129 = getelementptr inbounds %struct.xfs_inode, ptr %71, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i129) #10
  br i1 %tmpfile, label %out_cleanup_inode.if.end76_crit_edge, label %if.then75

out_cleanup_inode.if.end76_crit_edge:             ; preds = %out_cleanup_inode
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then75:                                        ; preds = %out_cleanup_inode
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @xfs_cleanup_inode(ptr noundef %dir, ptr noundef %i_vnode.i, ptr noundef %dentry)
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %out_cleanup_inode.if.end76_crit_edge
  %74 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %75) #10
  br label %out_free_acl

cleanup:                                          ; preds = %do.end.i124, %if.then10.i.i.i.i122, %if.end5.i.i.i.i121.cleanup_crit_edge, %posix_acl_release.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %error.3, %posix_acl_release.exit.cleanup_crit_edge ], [ %error.3, %if.end5.i.i.i.i121.cleanup_crit_edge ], [ %error.3, %if.then10.i.i.i.i122 ], [ %error.3, %do.end.i124 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_create_tmpfile(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull @xfs_initxattrs, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_set_acl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_finish_inode_setup(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #10
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %1, -9
  store i32 %and.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @unlock_new_inode(ptr noundef %i_vnode.i) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_cleanup_inode(ptr noundef %dir, ptr noundef %inode, ptr nocapture noundef readonly %dentry) unnamed_addr #4 align 64 {
entry:
  %teardown = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %teardown) #10
  %0 = getelementptr inbounds %struct.xfs_name, ptr %teardown, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_name, ptr %teardown, i32 0, i32 2
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  %4 = ptrtoint ptr %teardown to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %teardown, align 4
  %5 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name.i, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -312
  %add.ptr.i3 = getelementptr i8, ptr %inode, i32 -312
  %call2 = call i32 @xfs_remove(ptr noundef %add.ptr.i, ptr noundef nonnull %teardown, ptr noundef %add.ptr.i3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %teardown) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_mode_to_ftype(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr nocapture noundef readnone %fs_info) #0 align 64 {
entry:
  %args = alloca %struct.xfs_da_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not17 = icmp eq ptr %1, null
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %name1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.018, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %3, %for.cond.for.body_crit_edge ]
  %xattr.018 = phi ptr [ %xattr_array, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args) #10
  %5 = call ptr @memset(ptr %args, i32 0, i32 112)
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %name1, align 4
  %call4 = call i32 @strlen(ptr noundef nonnull %4) #13
  %7 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4, ptr %namelen, align 8
  %value5 = getelementptr inbounds %struct.xattr, ptr %xattr.018, i32 0, i32 1
  %8 = ptrtoint ptr %value5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value5, align 4
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %value, align 8
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.018, i32 0, i32 2
  %11 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value_len, align 4
  %13 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %valuelen, align 4
  %14 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %attr_filter, align 8
  %15 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %dp, align 8
  %call6 = call i32 @xfs_attr_set(ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args) #10
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %error.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call6, %for.body.for.end_crit_edge ], [ %call6, %for.cond.for.end_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_vn_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #4 align 64 {
entry:
  %cip = alloca ptr, align 4
  %name = alloca %struct.xfs_name, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cip) #10
  %0 = ptrtoint ptr %cip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cip, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #10
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %1 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp = icmp ugt i32 %2, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xfs_name, ptr %name, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 8
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %4, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -312
  %call2 = call i32 @xfs_lookup(ptr noundef %add.ptr.i, ptr noundef nonnull %name, ptr noundef nonnull %cip, ptr noundef null) #10
  %10 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call2, label %if.else16 [
    i32 0, label %if.then6
    i32 -2, label %if.end.if.end19_crit_edge
  ], !prof !109

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %cip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 27
  br label %if.end19

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = inttoptr i32 %call2 to ptr
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then6, %if.end.if.end19_crit_edge
  %inode.0 = phi ptr [ %i_vnode.i, %if.then6 ], [ %13, %if.else16 ], [ null, %if.end.if.end19_crit_edge ]
  %call20 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call20, %if.end19 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cip) #10
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_vn_get_link(ptr noundef readonly %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %done) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1025) #14
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -312
  %call7 = tail call i32 @xfs_readlink(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %out_kfree, !prof !77

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %4 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %arg2.i, align 4
  br label %cleanup

out_kfree:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %phi.cast = inttoptr i32 %call7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end12 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %phi.cast, %out_kfree ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_readlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !53, !55, !57, !58, !60, !61, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_iops.c", i32 637, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_iops.c", i32 1280, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_iops.c", i32 1333, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_iops.c", i32 1335, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_iops.c", i32 1337, i32 3}
!11 = !{ptr @xfs_nondir_ilock_class, !12, !"xfs_nondir_ilock_class", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_iops.c", i32 40, i32 30}
!13 = !{ptr @xfs_dir_ilock_class, !14, !"xfs_dir_ilock_class", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_iops.c", i32 41, i32 30}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_trace.h", i32 753, i32 1}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_iops.c", i32 846, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_iops.c", i32 847, i32 2}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_iops.c", i32 848, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_iops.c", i32 849, i32 2}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_iops.c", i32 686, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_iops.c", i32 717, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_iops.c", i32 718, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_iops.c", i32 761, i32 5}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_iops.c", i32 762, i32 5}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_iops.c", i32 770, i32 5}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_iops.c", i32 772, i32 5}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_iops.c", i32 773, i32 5}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 1533, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xfs_inode_operations, !54, !"xfs_inode_operations", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_iops.c", i32 1157, i32 38}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_trace.h", i32 752, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_trace.h", i32 772, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{ptr @xfs_dir_ci_inode_operations, !62, !"xfs_dir_ci_inode_operations", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_iops.c", i32 1196, i32 38}
!63 = !{ptr @xfs_dir_inode_operations, !64, !"xfs_dir_inode_operations", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_iops.c", i32 1169, i32 38}
!65 = !{ptr @xfs_symlink_inode_operations, !66, !"xfs_symlink_inode_operations", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_iops.c", i32 1223, i32 38}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148278712, i64 2148278717, i64 2148278730, i64 2148278774, i64 2148278808, i64 2148278829}
!79 = !{i64 2157831711}
!80 = !{i64 2157831900}
!81 = !{i64 2149980805}
!82 = !{i64 2149981841}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
!85 = !{i64 2153152855}
!86 = !{i64 2149707106}
!87 = !{i64 2149712038}
!88 = !{i64 2149733750}
!89 = !{i64 2149738642}
!90 = !{i64 2149815099}
!91 = !{i64 2149815424}
!92 = !{i64 2153164717}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"branch_weights", i32 4001, i32 1}
!95 = !{i64 2159770941}
!96 = !{i64 2159775223}
!97 = !{i64 1055404, i64 1055465}
!98 = !{i64 1058136}
!99 = !{i64 1058421}
!100 = !{i64 2153150924}
!101 = !{i64 2153150766}
!102 = !{i64 2153151094}
!103 = !{i64 2149814774}
!104 = !{i64 2166452366}
!105 = !{i64 2157816022}
!106 = !{i64 2157816211}
!107 = !{i64 2158122915}
!108 = !{i64 2158123112}
!109 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!110 = !{i64 2155714739}
!111 = !{i64 2148740279}
!112 = !{i64 2148654719, i64 2148654751, i64 2148654780, i64 2148654814, i64 2148654845, i64 2148654868}
!113 = !{i64 2149922703}
