; ModuleID = '/llk/IR_all_yes/fs/hfsplus/inode.c_pt.bc'
source_filename = "../fs/hfsplus/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.74, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
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
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }
%union.hfsplus_cat_entry = type { %struct.hfsplus_cat_file, [272 x i8] }
%struct.hfsplus_cat_file = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.84, i32, i32, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_perm = type { i32, i32, i8, i8, i16, i32 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { %struct.FInfo, %struct.FXInfo }
%struct.FInfo = type { i32, i32, i16, %struct.hfsp_point, i16 }
%struct.hfsp_point = type { i16, i16 }
%struct.FXInfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.hfsplus_cat_folder = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.81, i32, i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.DInfo, %struct.DXInfo }
%struct.DInfo = type { %struct.hfsp_rect, i16, %struct.hfsp_point, i16 }
%struct.hfsp_rect = type { i16, i16, i16, i16 }
%struct.DXInfo = type { %struct.hfsp_point, i32, i16, i16, i32 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@hfsplus_btree_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @hfsplus_writepage, ptr @hfsplus_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @hfsplus_write_begin, ptr @generic_write_end, ptr @hfsplus_bmap, ptr null, ptr @hfsplus_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfsplus_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @hfsplus_writepage, ptr @hfsplus_readpage, ptr @hfsplus_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @hfsplus_write_begin, ptr @generic_write_end, ptr @hfsplus_bmap, ptr null, ptr null, ptr null, ptr @hfsplus_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfsplus_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr @hfsplus_hash_dentry, ptr @hfsplus_compare_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@hfsplus_file_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hfsplus: sync non-existent attributes tree\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfsplus_file_fsync\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/hfsplus/inode.c\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_file_fsync._entry_ptr = internal global ptr @hfsplus_file_fsync._entry, section ".printk_index", align 4
@hfsplus_new_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hip->open_dir_lock\00", [44 x i8] zeroinitializer }, align 32
@hfsplus_new_inode.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hip->extents_lock\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@hfsplus_dir_operations = external dso_local constant %struct.file_operations, align 4
@hfsplus_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_setattr, ptr @hfsplus_getattr, ptr @hfsplus_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_fileattr_set, ptr @hfsplus_fileattr_get, [36 x i8] undef }, align 128
@hfsplus_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr @hfsplus_file_open, ptr null, ptr @hfsplus_file_release, ptr @hfsplus_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@hfsplus_cat_read_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013hfsplus: bad catalog entry used to create inode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hfsplus_cat_read_inode\00", [41 x i8] zeroinitializer }, align 32
@hfsplus_cat_read_inode._entry_ptr = internal global ptr @hfsplus_cat_read_inode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"hfsplus_btree_aops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 158, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"hfsplus_aops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 168, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 342, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 397, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 398, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"hfsplus_file_operations\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 368, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [22 x i8] c"../fs/hfsplus/inode.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 560, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @hfsplus_cat_read_inode._entry, ptr @hfsplus_cat_read_inode._entry_ptr, ptr @hfsplus_file_fsync._entry, ptr @hfsplus_file_fsync._entry_ptr, ptr @hfsplus_btree_aops, ptr @hfsplus_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hfsplus_new_inode.__key, ptr @.str.3, ptr @hfsplus_new_inode.__key.4, ptr @.str.5, ptr @hfsplus_file_operations, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_file_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_new_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_new_inode.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_cat_read_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @hfsplus_get_block, ptr noundef %wbc) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @hfsplus_get_block) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %phys_size = getelementptr i8, ptr %2, i32 -8
  %call1 = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @hfsplus_get_block, ptr noundef %phys_size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !36

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @hfsplus_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @hfsplus_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @hfsplus_get_block) #8
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_releasepage(ptr noundef %page, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 8, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %10, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_fs_info.i84 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i84 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i84, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_fs_info.i85 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i85, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %14, i32 0, i32 6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #8, !srcloc !37
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %tree.0.in = phi ptr [ %attr_tree, %sw.bb3 ], [ %cat_tree, %sw.bb1 ], [ %ext_tree, %sw.bb ]
  %15 = ptrtoint ptr %tree.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %tree.0 = load ptr, ptr %tree.0.in, align 4
  %tobool.not = icmp eq ptr %tree.0, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 11
  %16 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %17)
  %cmp = icmp ugt i32 %17, 4095
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 12
  %20 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %node_size_shift, align 4
  br i1 %cmp, label %if.then8, label %if.else22

if.then8:                                         ; preds = %if.end
  %sub = add i32 %21, -12
  %shr = lshr i32 %19, %sub
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %call9 = tail call ptr @hfsplus_bnode_findhash(ptr noundef nonnull %tree.0, i32 noundef %shr) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.cond.true_crit_edge, label %if.end16

if.then8.cond.true_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

if.end16:                                         ; preds = %if.then8
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %call9, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %22 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %if.then19, label %cleanup.critedge

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hfsplus_bnode_unhash(ptr noundef nonnull %call9) #8
  tail call void @hfsplus_bnode_free(ptr noundef nonnull %call9) #8
  br label %cond.true

if.else22:                                        ; preds = %if.end
  %sub25 = sub i32 12, %21
  %shl = shl i32 %19, %sub25
  %shl28 = shl nuw i32 1, %sub25
  %hash_lock29 = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock29) #8
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 8
  br label %do.body30

do.body30:                                        ; preds = %land.rhs.do.body30_crit_edge, %if.else22
  %nidx.0 = phi i32 [ %shl, %if.else22 ], [ %inc, %land.rhs.do.body30_crit_edge ]
  %i.0 = phi i32 [ %shl28, %if.else22 ], [ %dec, %land.rhs.do.body30_crit_edge ]
  %inc = add i32 %nidx.0, 1
  %call31 = tail call ptr @hfsplus_bnode_findhash(ptr noundef nonnull %tree.0, i32 noundef %nidx.0) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.body30.do.cond40_crit_edge, label %if.end34

do.body30.do.cond40_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond40

if.end34:                                         ; preds = %do.body30
  %refcnt35 = getelementptr inbounds %struct.hfs_bnode, ptr %call31, i32 0, i32 11
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt35, i32 noundef 4) #8
  %24 = ptrtoint ptr %refcnt35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %refcnt35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not = icmp eq i32 %25, 0
  br i1 %tobool37.not, label %if.end39, label %if.end45

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hfsplus_bnode_unhash(ptr noundef nonnull %call31) #8
  tail call void @hfsplus_bnode_free(ptr noundef nonnull %call31) #8
  br label %do.cond40

do.cond40:                                        ; preds = %if.end39, %do.body30.do.cond40_crit_edge
  %dec = add i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %do.cond40.cond.true_crit_edge, label %land.rhs

do.cond40.cond.true_crit_edge:                    ; preds = %do.cond40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

land.rhs:                                         ; preds = %do.cond40
  %26 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node_count, align 4
  %cmp42 = icmp ult i32 %inc, %27
  br i1 %cmp42, label %land.rhs.do.body30_crit_edge, label %land.rhs.cond.true_crit_edge

land.rhs.cond.true_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

land.rhs.do.body30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.end45:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock29) #8
  br label %cleanup

cond.true:                                        ; preds = %land.rhs.cond.true_crit_edge, %do.cond40.cond.true_crit_edge, %if.then19, %if.then8.cond.true_crit_edge
  %hash_lock29.sink = phi ptr [ %hash_lock, %if.then19 ], [ %hash_lock, %if.then8.cond.true_crit_edge ], [ %hash_lock29, %land.rhs.cond.true_crit_edge ], [ %hash_lock29, %do.cond40.cond.true_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock29.sink) #8
  %call47 = tail call i32 @try_to_free_buffers(ptr noundef %page) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %cond.true, %if.end45, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %call47, %cond.true ], [ 0, %if.end45 ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @hfsplus_get_block) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %11, ptr noundef %iter, ptr noundef nonnull @hfsplus_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %12 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_source.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %spec.select, label %if.then, label %entry.if.end12_crit_edge, !prof !39

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %conv8 = zext i32 %7 to i64
  %add = add i64 %15, %conv8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call7)
  %cmp9 = icmp sgt i64 %add, %call7
  br i1 %cmp9, label %if.then11, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hfsplus_write_failed(ptr noundef %3, i64 noundef %add)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_hash_dentry(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_compare_dentry(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %and = and i32 %request_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat, align 8
  %or = or i32 %5, 2048
  store i32 %or, ptr %stat, align 8
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  %create_date = getelementptr i8, ptr %3, i32 -92
  %6 = ptrtoint ptr %create_date to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %create_date, align 4
  %sub.i = add i32 %7, -2082844800
  %conv.i = zext i32 %sub.i to i64
  %8 = ptrtoint ptr %btime to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %btime, align 8
  %.compoundliteral.sroa.2.0.btime.sroa_idx = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0.btime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %.compoundliteral.sroa.2.0.btime.sroa_idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags, align 4
  %and3 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %12 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %attributes, align 8
  %or6 = or i64 %13, 32
  store i64 %or6, ptr %attributes, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %and9 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %attributes12 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %16 = ptrtoint ptr %attributes12 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %attributes12, align 8
  %or13 = or i64 %17, 16
  store i64 %or13, ptr %attributes12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %userflags = getelementptr i8, ptr %3, i32 -72
  %18 = ptrtoint ptr %userflags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %userflags, align 8
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %attributes18 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %21 = ptrtoint ptr %attributes18 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %attributes18, align 8
  %or19 = or i64 %22, 64
  store i64 %or19, ptr %attributes18, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %23 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %attributes_mask, align 8
  %or21 = or i64 %24, 112
  store i64 %or21, ptr %attributes_mask, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_file_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %call3 = tail call i32 @sync_inode_metadata(ptr noundef %3, i32 noundef 1) #8
  %flags = getelementptr i8, ptr %3, i32 -84
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cat_tree, align 4
  %inode7 = getelementptr inbounds %struct.hfs_btree, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %inode7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inode7, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %13, i64 noundef 0, i64 noundef 9223372036854775807) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %error.0 = phi i32 [ %call.i, %if.then6 ], [ 0, %if.end.if.end9_crit_edge ]
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.if.end20_crit_edge, label %if.then13

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_tree, align 8
  %inode14 = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %inode14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inode14, align 4
  %i_mapping15 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping15, align 8
  %call.i81 = tail call i32 @filemap_write_and_wait_range(ptr noundef %19, i64 noundef 0, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool17.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool17.not, i32 %call.i81, i32 %error.0
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end9.if.end20_crit_edge
  %error.1 = phi i32 [ %error.0, %if.end9.if.end20_crit_edge ], [ %spec.select, %if.then13 ]
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end36_crit_edge, label %if.then24

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then24:                                        ; preds = %if.end20
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 6
  %20 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attr_tree, align 8
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %do.end, label %if.then26

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %inode28 = getelementptr inbounds %struct.hfs_btree, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %inode28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inode28, align 4
  %i_mapping29 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping29, align 8
  %call.i82 = tail call i32 @filemap_write_and_wait_range(ptr noundef %25, i64 noundef 0, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool31.not = icmp eq i32 %error.1, 0
  %spec.select79 = select i1 %tobool31.not, i32 %call.i82, i32 %error.1
  br label %if.end36

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.then26, %if.end20.if.end36_crit_edge
  %error.2 = phi i32 [ %error.1, %do.end ], [ %error.1, %if.end20.if.end36_crit_edge ], [ %spec.select79, %if.then26 ]
  %call38 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end36.if.end46_crit_edge, label %if.then40

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 8
  %26 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alloc_file, align 8
  %i_mapping41 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %i_mapping41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_mapping41, align 8
  %call.i83 = tail call i32 @filemap_write_and_wait_range(ptr noundef %29, i64 noundef 0, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool43.not = icmp eq i32 %error.2, 0
  %spec.select80 = select i1 %tobool43.not, i32 %call.i83, i32 %error.2
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end36.if.end46_crit_edge
  %error.3 = phi i32 [ %error.2, %if.end36.if.end46_crit_edge ], [ %spec.select80, %if.then40 ]
  %flags47 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 33
  %30 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags47, align 4
  %32 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool49.not = icmp eq i32 %32, 0
  br i1 %tobool49.not, label %if.then50, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev, align 4
  %call52 = tail call i32 @blkdev_issue_flush(ptr noundef %36) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46.if.end53_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %if.end53 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_new_inode(ptr noundef %sb, ptr noundef %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @new_inode(ptr noundef %sb) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_cnid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %next_cnid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_cnid, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %next_cnid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i_ino, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1, ptr noundef %dir, i16 noundef zeroext %mode) #8
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef 1) #8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call1) #8
  %5 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %6 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %7 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -344
  %open_dir_list = getelementptr i8, ptr %call1, i32 -64
  %8 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %open_dir_list, ptr %open_dir_list, align 4
  %prev.i = getelementptr i8, ptr %call1, i32 -60
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %open_dir_list, ptr %prev.i, align 4
  %open_dir_lock = getelementptr i8, ptr %call1, i32 -56
  call void @__raw_spin_lock_init(ptr noundef %open_dir_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @hfsplus_new_inode.__key, i16 noundef signext 3) #8
  %extents_lock = getelementptr i8, ptr %call1, i32 -188
  call void @__mutex_init(ptr noundef %extents_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @hfsplus_new_inode.__key.4) #8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %add.ptr.i, align 4
  %flags = getelementptr i8, ptr %call1, i32 -84
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %userflags = getelementptr i8, ptr %call1, i32 -72
  %12 = ptrtoint ptr %userflags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %userflags, align 8
  %subfolders = getelementptr i8, ptr %call1, i32 -68
  %13 = ptrtoint ptr %subfolders to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %subfolders, align 4
  %alloc_blocks = getelementptr i8, ptr %call1, i32 -332
  %first_blocks = getelementptr i8, ptr %call1, i32 -340
  %14 = ptrtoint ptr %first_blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %first_blocks, align 4
  %phys_size = getelementptr i8, ptr %call1, i32 -8
  %15 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %phys_size, align 8
  %fs_blocks = getelementptr i8, ptr %call1, i32 -80
  %16 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %fs_blocks, align 8
  %rsrc_inode = getelementptr i8, ptr %call1, i32 -96
  %17 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rsrc_inode, align 8
  %18 = call ptr @memset(ptr %alloc_blocks, i32 0, i32 144)
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call1, align 8
  %21 = and i16 %20, -4096
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %21, label %if.else32 [
    i16 16384, label %if.then9
    i16 -32768, label %if.then16
    i16 -24576, label %if.then25
  ]

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %23 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 2, ptr %i_size, align 8
  %folder_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %folder_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %folder_count, align 8
  %inc10 = add i32 %25, 1
  store i32 %inc10, ptr %folder_count, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %26 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hfsplus_dir_inode_operations, ptr %i_op, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hfsplus_dir_operations, ptr %27, align 8
  br label %if.end37

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %file_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %file_count, align 4
  %inc17 = add i32 %30, 1
  store i32 %inc17, ptr %file_count, align 4
  %i_op18 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %31 = ptrtoint ptr %i_op18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hfsplus_file_inode_operations, ptr %i_op18, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hfsplus_file_operations, ptr %32, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %34 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hfsplus_aops, ptr %a_ops, align 4
  %data_clump_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %data_clump_blocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_clump_blocks, align 8
  %clump_blocks = getelementptr i8, ptr %call1, i32 -336
  %39 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %clump_blocks, align 8
  br label %if.end37

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %file_count26 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 23
  %40 = ptrtoint ptr %file_count26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %file_count26, align 4
  %inc27 = add i32 %41, 1
  store i32 %inc27, ptr %file_count26, align 4
  %i_op28 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %42 = ptrtoint ptr %i_op28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @page_symlink_inode_operations, ptr %i_op28, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call1) #8
  %i_mapping29 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %43 = ptrtoint ptr %i_mapping29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping29, align 8
  %a_ops30 = getelementptr inbounds %struct.address_space, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %a_ops30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @hfsplus_aops, ptr %a_ops30, align 4
  %clump_blocks31 = getelementptr i8, ptr %call1, i32 -336
  %46 = ptrtoint ptr %clump_blocks31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %clump_blocks31, align 8
  br label %if.end37

if.else32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %file_count33 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %file_count33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %file_count33, align 4
  %inc34 = add i32 %48, 1
  store i32 %inc34, ptr %file_count33, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then25, %if.then16, %if.then9
  %49 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call1, i32 noundef %50) #8
  call void @__mark_inode_dirty(ptr noundef nonnull %call1, i32 noundef 7) #8
  call void @hfsplus_mark_mdb_dirty(ptr noundef %sb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_mark_mdb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_delete_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %folder_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %folder_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %folder_count, align 8
  %dec = add i32 %8, -1
  store i32 %dec, ptr %folder_count, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %file_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %6, i32 0, i32 23
  %9 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %file_count, align 4
  %dec3 = add i32 %10, -1
  store i32 %dec3, ptr %file_count, align 4
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %13 = and i16 %12, -4096
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %13, label %if.end.cleanup_crit_edge [
    i16 -32768, label %if.then9
    i16 -24576, label %if.end.if.end20.sink.split_crit_edge
  ]

if.end.if.end20.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %15 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then9.if.end20.sink.split_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.if.end20.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then9.if.end20.sink.split_crit_edge, %if.end.if.end20.sink.split_crit_edge
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %18 = ptrtoint ptr %i_size18 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %i_size18, align 8
  tail call void @hfsplus_file_truncate(ptr noundef %inode) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20.sink.split, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  tail call void @hfsplus_mark_mdb_dirty(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_file_truncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_inode_read_fork(ptr noundef %inode, ptr nocapture noundef readonly %fork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %first_extents = getelementptr i8, ptr %inode, i32 -320
  %extents = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %first_extents, ptr %extents, i32 64)
  %block_count = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %block_count to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %block_count, align 1
  %block_count.1 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %block_count.1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %block_count.1, align 1
  %add.1 = add i32 %8, %6
  %block_count.2 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 2, i32 1
  %9 = ptrtoint ptr %block_count.2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %block_count.2, align 1
  %add.2 = add i32 %10, %add.1
  %block_count.3 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 3, i32 1
  %11 = ptrtoint ptr %block_count.3 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %block_count.3, align 1
  %add.3 = add i32 %12, %add.2
  %block_count.4 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 4, i32 1
  %13 = ptrtoint ptr %block_count.4 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %block_count.4, align 1
  %add.4 = add i32 %14, %add.3
  %block_count.5 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 5, i32 1
  %15 = ptrtoint ptr %block_count.5 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %block_count.5, align 1
  %add.5 = add i32 %16, %add.4
  %block_count.6 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 6, i32 1
  %17 = ptrtoint ptr %block_count.6 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %block_count.6, align 1
  %add.6 = add i32 %18, %add.5
  %block_count.7 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 7, i32 1
  %19 = ptrtoint ptr %block_count.7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %block_count.7, align 1
  %add.7 = add i32 %20, %add.6
  %first_blocks = getelementptr i8, ptr %inode, i32 -340
  %21 = ptrtoint ptr %first_blocks to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.7, ptr %first_blocks, align 4
  %cached_extents = getelementptr i8, ptr %inode, i32 -256
  %22 = call ptr @memset(ptr %cached_extents, i32 0, i32 64)
  %cached_start = getelementptr i8, ptr %inode, i32 -328
  %23 = ptrtoint ptr %cached_start to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cached_start, align 8
  %cached_blocks = getelementptr i8, ptr %inode, i32 -324
  %24 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cached_blocks, align 4
  %total_blocks = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 2
  %25 = ptrtoint ptr %total_blocks to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %total_blocks, align 1
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -332
  %27 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %alloc_blocks, align 4
  %28 = ptrtoint ptr %fork to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %fork, align 1
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %i_size, align 8
  %phys_size = getelementptr i8, ptr %inode, i32 -8
  %31 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %29, ptr %phys_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %33 to i64
  %add4 = add i64 %29, -1
  %sub = add i64 %add4, %conv
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %35 to i64
  %shr = ashr i64 %sub, %sh_prom
  %fs_blocks = getelementptr i8, ptr %inode, i32 -80
  %36 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shr, ptr %fs_blocks, align 8
  %37 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom9 = zext i8 %37 to i64
  %shl = shl i64 %shr, %sh_prom9
  tail call void @inode_set_bytes(ptr noundef %inode, i64 noundef %shl) #8
  %clump_size = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 1
  %38 = ptrtoint ptr %clump_size to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %clump_size, align 1
  %alloc_blksz_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 16
  %40 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %alloc_blksz_shift, align 8
  %shr10 = lshr i32 %39, %41
  %clump_blocks = getelementptr i8, ptr %inode, i32 -336
  %42 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr10, ptr %clump_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr10)
  %tobool.not = icmp eq i32 %shr10, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %inode, i32 -84
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool14.not = icmp eq i32 %and1.i, 0
  %rsrc_clump_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 19
  %data_clump_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 18
  %cond.in = select i1 %tobool14.not, ptr %data_clump_blocks, ptr %rsrc_clump_blocks
  %45 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %cond = load i32, ptr %cond.in, align 4
  %46 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond, ptr %clump_blocks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hfsplus_inode_write_fork(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fork) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extents = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3
  %first_extents = getelementptr i8, ptr %inode, i32 -320
  %0 = call ptr @memcpy(ptr %extents, ptr %first_extents, i32 64)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %1 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size, align 8
  %3 = ptrtoint ptr %fork to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %fork, align 1
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -332
  %4 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc_blocks, align 4
  %total_blocks = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 2
  %6 = ptrtoint ptr %total_blocks to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %total_blocks, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_cat_read_inode(ptr noundef %inode, ptr nocapture noundef readonly %fd) local_unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca %union.hfsplus_cat_entry, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #8
  %0 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %1 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %3 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entryoffset, align 4
  %call = tail call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %2, i32 noundef %4) #8
  %linkid = getelementptr i8, ptr %inode, i32 -88
  %5 = ptrtoint ptr %linkid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %linkid, align 8
  %6 = zext i16 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %call, label %do.end142 [
    i16 1, label %if.then
    i16 2, label %if.then49
  ]

if.then:                                          ; preds = %entry
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %7 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %8)
  %cmp4 = icmp ult i32 %8, 88
  br i1 %cmp4, label %do.end, label %if.then.if.end_crit_edge, !prof !39

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 512, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bnode, align 4
  %11 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %10, ptr noundef nonnull %entry1, i32 noundef %12, i32 noundef 88) #8
  %permissions = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 9
  call fastcc void @hfsplus_get_perms(ptr noundef %inode, ptr noundef %permissions, i32 noundef 1)
  call void @set_nlink(ptr noundef %inode, i32 noundef 1) #8
  %valence = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 2
  %13 = ptrtoint ptr %valence to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %valence, align 1
  %add = add i32 %14, 2
  %conv27 = zext i32 %add to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv27, ptr %i_size, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %access_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 7
  %16 = ptrtoint ptr %access_date to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %access_date, align 1
  %sub.i = add i32 %17, -2082844800
  %conv.i = zext i32 %sub.i to i64
  %18 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv.i, ptr %i_atime, align 8
  %.compoundliteral.sroa.2.0.i_atime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_atime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_atime.sroa_idx, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %content_mod_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 5
  %20 = ptrtoint ptr %content_mod_date to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %content_mod_date, align 1
  %sub.i203 = add i32 %21, -2082844800
  %conv.i204 = zext i32 %sub.i203 to i64
  %22 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.i204, ptr %i_mtime, align 8
  %.compoundliteral29.sroa.2.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %.compoundliteral29.sroa.2.0.i_mtime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral29.sroa.2.0.i_mtime.sroa_idx, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %attribute_mod_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 6
  %24 = ptrtoint ptr %attribute_mod_date to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %attribute_mod_date, align 1
  %sub.i205 = add i32 %25, -2082844800
  %conv.i206 = zext i32 %sub.i205 to i64
  %26 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv.i206, ptr %i_ctime, align 8
  %.compoundliteral33.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %27 = ptrtoint ptr %.compoundliteral33.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %.compoundliteral33.sroa.2.0.i_ctime.sroa_idx, align 8
  %create_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 4
  %28 = ptrtoint ptr %create_date to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %create_date, align 1
  %create_date38 = getelementptr i8, ptr %inode, i32 -92
  %30 = ptrtoint ptr %create_date38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %create_date38, align 4
  %fs_blocks = getelementptr i8, ptr %inode, i32 -80
  %31 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %fs_blocks, align 8
  %flags = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %flags, align 1
  %34 = and i16 %33, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool41.not = icmp eq i16 %34, 0
  br i1 %tobool41.not, label %if.end.if.end45_crit_edge, label %if.then42

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %subfolders = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 12
  %35 = ptrtoint ptr %subfolders to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %subfolders, align 1
  %subfolders44 = getelementptr i8, ptr %inode, i32 -68
  %37 = ptrtoint ptr %subfolders44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %subfolders44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end.if.end45_crit_edge
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %38 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @hfsplus_dir_inode_operations, ptr %i_op, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @hfsplus_dir_operations, ptr %39, align 8
  br label %if.end146

if.then49:                                        ; preds = %entry
  %entrylength51 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %41 = ptrtoint ptr %entrylength51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %entrylength51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %42)
  %cmp52 = icmp ult i32 %42, 248
  br i1 %cmp52, label %do.end69, label %if.then49.if.end75_crit_edge, !prof !39

if.then49.if.end75_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end69:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 532, i32 noundef 9, ptr noundef null) #8
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %if.then49.if.end75_crit_edge
  %43 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bnode, align 4
  %45 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %44, ptr noundef nonnull %entry1, i32 noundef %46, i32 noundef 248) #8
  %flags86 = getelementptr i8, ptr %inode, i32 -84
  %47 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags86, align 4
  %and1.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool88.not = icmp eq i32 %and1.i, 0
  %rsrc_fork = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 14
  %data_fork = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 13
  %cond = select i1 %tobool88.not, ptr %data_fork, ptr %rsrc_fork
  call void @hfsplus_inode_read_fork(ptr noundef %inode, ptr noundef %cond)
  %permissions89 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9
  call fastcc void @hfsplus_get_perms(ptr noundef %inode, ptr noundef %permissions89, i32 noundef 0)
  call void @set_nlink(ptr noundef %inode, i32 noundef 1) #8
  %49 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inode, align 8
  %51 = and i16 %50, -4096
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %51, label %if.else112 [
    i16 -32768, label %if.then94
    i16 -24576, label %if.then108
  ]

if.then94:                                        ; preds = %if.end75
  %dev = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 5
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %dev, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool96.not = icmp eq i32 %54, 0
  br i1 %tobool96.not, label %if.then94.if.end100_crit_edge, label %if.then97

if.then94.if.end100_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then97:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_nlink(ptr noundef %inode, i32 noundef %54) #8
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.then94.if.end100_crit_edge
  %i_op101 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %55 = ptrtoint ptr %i_op101 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @hfsplus_file_inode_operations, ptr %i_op101, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @hfsplus_file_operations, ptr %56, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %58 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @hfsplus_aops, ptr %a_ops, align 4
  br label %if.end117

if.then108:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %i_op109 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %61 = ptrtoint ptr %i_op109 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @page_symlink_inode_operations, ptr %i_op109, align 8
  call void @inode_nohighmem(ptr noundef %inode) #8
  %i_mapping110 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %62 = ptrtoint ptr %i_mapping110 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_mapping110, align 8
  %a_ops111 = getelementptr inbounds %struct.address_space, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %a_ops111 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @hfsplus_aops, ptr %a_ops111, align 4
  br label %if.end117

if.else112:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %dev115 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 5
  %65 = ptrtoint ptr %dev115 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %dev115, align 1
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %50, i32 noundef %66) #8
  br label %if.end117

if.end117:                                        ; preds = %if.else112, %if.then108, %if.end100
  %i_atime118 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %access_date121 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 7
  %67 = ptrtoint ptr %access_date121 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %access_date121, align 1
  %sub.i211 = add i32 %68, -2082844800
  %conv.i212 = zext i32 %sub.i211 to i64
  %69 = ptrtoint ptr %i_atime118 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv.i212, ptr %i_atime118, align 8
  %.compoundliteral119.sroa.2.0.i_atime118.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %70 = ptrtoint ptr %.compoundliteral119.sroa.2.0.i_atime118.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %.compoundliteral119.sroa.2.0.i_atime118.sroa_idx, align 8
  %i_mtime124 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %content_mod_date127 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 5
  %71 = ptrtoint ptr %content_mod_date127 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %content_mod_date127, align 1
  %sub.i213 = add i32 %72, -2082844800
  %conv.i214 = zext i32 %sub.i213 to i64
  %73 = ptrtoint ptr %i_mtime124 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv.i214, ptr %i_mtime124, align 8
  %.compoundliteral125.sroa.2.0.i_mtime124.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %74 = ptrtoint ptr %.compoundliteral125.sroa.2.0.i_mtime124.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %.compoundliteral125.sroa.2.0.i_mtime124.sroa_idx, align 8
  %i_ctime130 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %attribute_mod_date133 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 6
  %75 = ptrtoint ptr %attribute_mod_date133 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %attribute_mod_date133, align 1
  %sub.i215 = add i32 %76, -2082844800
  %conv.i216 = zext i32 %sub.i215 to i64
  %77 = ptrtoint ptr %i_ctime130 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv.i216, ptr %i_ctime130, align 8
  %.compoundliteral131.sroa.2.0.i_ctime130.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %78 = ptrtoint ptr %.compoundliteral131.sroa.2.0.i_ctime130.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %.compoundliteral131.sroa.2.0.i_ctime130.sroa_idx, align 8
  %create_date136 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 4
  %79 = ptrtoint ptr %create_date136 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %create_date136, align 1
  %create_date138 = getelementptr i8, ptr %inode, i32 -92
  %81 = ptrtoint ptr %create_date138 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %create_date138, align 4
  br label %if.end146

do.end142:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %if.end146

if.end146:                                        ; preds = %do.end142, %if.end117, %if.end45
  %res.0 = phi i32 [ 0, %if.end45 ], [ 0, %if.end117 ], [ -5, %do.end142 ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #8
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfsplus_bnode_read_u16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsplus_get_perms(ptr nocapture noundef %inode, ptr nocapture noundef readonly %perms, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mode1 = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 4
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %mode1, align 1
  %6 = ptrtoint ptr %perms to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %perms, align 1
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %8 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %9, i32 noundef %7) #8
  %10 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i79 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %s_user_ns.i.i79 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_user_ns.i.i79, align 8
  %15 = insertvalue [1 x i32] undef, i32 %call1.i, 0
  %call1.i81 = tail call i32 @from_kuid(ptr noundef %14, [1 x i32] %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not = icmp eq i32 %call1.i81, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %uid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 29
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uid, align 4
  %18 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %i_uid.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %group = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 1
  %19 = ptrtoint ptr %group to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %group, align 1
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i83 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %s_user_ns.i.i83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_user_ns.i.i83, align 8
  %call1.i84 = tail call i32 @make_kgid(ptr noundef %24, i32 noundef %20) #8
  %25 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call1.i84, ptr %i_gid.i, align 8
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i86 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %s_user_ns.i.i86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_user_ns.i.i86, align 8
  %30 = insertvalue [1 x i32] undef, i32 %call1.i84, 0
  %call1.i89 = tail call i32 @from_kgid(ptr noundef %29, [1 x i32] %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool5.not = icmp eq i32 %call1.i89, 0
  %or.cond77 = select i1 %tobool5.not, i1 %tobool3.not, i1 false
  br i1 %or.cond77, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %gid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 30
  %31 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gid, align 8
  %33 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %i_gid.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool10.not = icmp eq i32 %dir, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i16 %5, 4095
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %umask = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 28
  %34 = ptrtoint ptr %umask to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %umask, align 8
  %36 = and i16 %35, 511
  %37 = xor i16 %36, 511
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %and, %cond.true ], [ %37, %cond.false ]
  %38 = or i16 %cond, 16384
  br label %if.end28

if.else:                                          ; preds = %if.end9
  br i1 %tobool3.not, label %if.then20, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %umask21 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 28
  %39 = ptrtoint ptr %umask21 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %umask21, align 8
  %41 = and i16 %40, 438
  %42 = xor i16 %41, -32330
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.else.if.end28_crit_edge, %cond.end
  %mode.0 = phi i16 [ %38, %cond.end ], [ %5, %if.else.if.end28_crit_edge ], [ %42, %if.then20 ]
  %43 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %mode.0, ptr %inode, align 8
  %userflags = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 3
  %44 = ptrtoint ptr %userflags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %userflags, align 1
  %userflags30 = getelementptr i8, ptr %inode, i32 -72
  %46 = ptrtoint ptr %userflags30 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %userflags30, align 8
  %rootflags = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 2
  %47 = ptrtoint ptr %rootflags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rootflags, align 1
  %i_flags37 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %49 = ptrtoint ptr %i_flags37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_flags37, align 4
  %and38 = and i32 %50, -9
  %51 = shl i8 %48, 2
  %52 = and i8 %51, 8
  %53 = zext i8 %52 to i32
  %and38.sink = or i32 %and38, %53
  store i32 %and38.sink, ptr %i_flags37, align 4
  %54 = load i8, ptr %rootflags, align 1
  %55 = and i8 %54, 4
  %i_flags48 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %and49 = and i32 %and38.sink, -5
  %56 = zext i8 %55 to i32
  %and49.sink = or i32 %and49, %56
  %57 = ptrtoint ptr %i_flags48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and49.sink, ptr %i_flags48, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_cat_write_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfsplus_cat_entry, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #8
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #8
  %1 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  %flags = getelementptr i8, ptr %inode, i32 -84
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -96
  %4 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsrc_inode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %main_inode.0 = phi ptr [ %5, %if.then ], [ %inode, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.inode, ptr %main_inode.0, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %main_inode.0, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cat_tree, align 4
  %call8 = call i32 @hfsplus_find_init(ptr noundef %14, ptr noundef nonnull %fd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %main_inode.0, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %call13 = call i32 @hfsplus_find_cat(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %fd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %main_inode.0 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %main_inode.0, align 8
  %21 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp = icmp eq i16 %21, 16384
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %22 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %23)
  %cmp19 = icmp ult i32 %23, 88
  br i1 %cmp19, label %do.end, label %if.then18.if.end35_crit_edge, !prof !39

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 589, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then18.if.end35_crit_edge
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %24 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %26 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %25, ptr noundef nonnull %entry1, i32 noundef %27, i32 noundef 88) #8
  %permissions = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 9
  call void @hfsplus_cat_set_perms(ptr noundef %inode, ptr noundef %permissions) #8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %28 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_atime, align 8
  %conv.i = trunc i64 %29 to i32
  %add.i = add i32 %conv.i, 2082844800
  %access_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 7
  %30 = ptrtoint ptr %access_date to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %add.i, ptr %access_date, align 1
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %31 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_mtime, align 8
  %conv.i181 = trunc i64 %32 to i32
  %add.i182 = add i32 %conv.i181, 2082844800
  %content_mod_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 5
  %33 = ptrtoint ptr %content_mod_date to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %add.i182, ptr %content_mod_date, align 1
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %34 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_ctime, align 8
  %conv.i183 = trunc i64 %35 to i32
  %add.i184 = add i32 %conv.i183, 2082844800
  %attribute_mod_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 6
  %36 = ptrtoint ptr %attribute_mod_date to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %add.i184, ptr %attribute_mod_date, align 1
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  %39 = trunc i64 %38 to i32
  %conv47 = add i32 %39, -2
  %valence = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 2
  %40 = ptrtoint ptr %valence to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %conv47, ptr %valence, align 1
  %flags48 = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 1
  %41 = ptrtoint ptr %flags48 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %flags48, align 1
  %43 = and i16 %42, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool51.not = icmp eq i16 %43, 0
  br i1 %tobool51.not, label %if.end35.if.end137_crit_edge, label %if.then52

if.end35.if.end137_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then52:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %subfolders = getelementptr i8, ptr %inode, i32 -68
  %44 = ptrtoint ptr %subfolders to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subfolders, align 4
  %subfolders54 = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 12
  %46 = ptrtoint ptr %subfolders54 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %subfolders54, align 1
  br label %if.end137

if.else:                                          ; preds = %if.end16
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags, align 4
  %and1.i179 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i179)
  %tobool61.not = icmp eq i32 %and1.i179, 0
  br i1 %tobool61.not, label %if.else67, label %if.then62

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bnode63 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %49 = ptrtoint ptr %bnode63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bnode63, align 4
  %entryoffset64 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %51 = ptrtoint ptr %entryoffset64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entryoffset64, align 4
  call void @hfsplus_bnode_read(ptr noundef %50, ptr noundef nonnull %entry1, i32 noundef %52, i32 noundef 248) #8
  %rsrc_fork = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 14
  %extents.i = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 14, i32 3
  %first_extents.i = getelementptr i8, ptr %inode, i32 -320
  %53 = call ptr @memcpy(ptr %extents.i, ptr %first_extents.i, i32 64)
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %54 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_size.i, align 8
  %56 = ptrtoint ptr %rsrc_fork to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %rsrc_fork, align 1
  %alloc_blocks.i = getelementptr i8, ptr %inode, i32 -332
  %57 = ptrtoint ptr %alloc_blocks.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %alloc_blocks.i, align 4
  %total_blocks.i = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 14, i32 2
  %59 = ptrtoint ptr %total_blocks.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %total_blocks.i, align 1
  br label %if.end137

if.else67:                                        ; preds = %if.else
  %entrylength70 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %60 = ptrtoint ptr %entrylength70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entrylength70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %61)
  %cmp71 = icmp ult i32 %61, 248
  br i1 %cmp71, label %do.end88, label %if.else67.if.end94_crit_edge, !prof !39

if.else67.if.end94_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

do.end88:                                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 614, i32 noundef 9, ptr noundef null) #8
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %if.else67.if.end94_crit_edge
  %bnode102 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %62 = ptrtoint ptr %bnode102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bnode102, align 4
  %entryoffset103 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %64 = ptrtoint ptr %entryoffset103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %entryoffset103, align 4
  call void @hfsplus_bnode_read(ptr noundef %63, ptr noundef nonnull %entry1, i32 noundef %65, i32 noundef 248) #8
  %data_fork = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 13
  %extents.i187 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 13, i32 3
  %first_extents.i188 = getelementptr i8, ptr %inode, i32 -320
  %66 = call ptr @memcpy(ptr %extents.i187, ptr %first_extents.i188, i32 64)
  %i_size.i189 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %67 = ptrtoint ptr %i_size.i189 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %i_size.i189, align 8
  %69 = ptrtoint ptr %data_fork to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %data_fork, align 1
  %alloc_blocks.i190 = getelementptr i8, ptr %inode, i32 -332
  %70 = ptrtoint ptr %alloc_blocks.i190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %alloc_blocks.i190, align 4
  %total_blocks.i191 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 13, i32 2
  %72 = ptrtoint ptr %total_blocks.i191 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %total_blocks.i191, align 1
  %permissions104 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9
  call void @hfsplus_cat_set_perms(ptr noundef %inode, ptr noundef %permissions104) #8
  %rootflags = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 2
  %73 = ptrtoint ptr %rootflags to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rootflags, align 1
  %userflags = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 3
  %75 = ptrtoint ptr %userflags to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %userflags, align 1
  %or178 = or i8 %76, %74
  %flags117 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 1
  %77 = ptrtoint ptr %flags117 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %flags117, align 1
  %79 = and i16 %78, -2
  %80 = lshr i8 %or178, 1
  %.lobit = and i8 %80, 1
  %81 = zext i8 %.lobit to i16
  %.sink = or i16 %79, %81
  store i16 %.sink, ptr %flags117, align 1
  %i_atime122 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %82 = ptrtoint ptr %i_atime122 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %i_atime122, align 8
  %conv.i192 = trunc i64 %83 to i32
  %add.i193 = add i32 %conv.i192, 2082844800
  %access_date125 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 7
  %84 = ptrtoint ptr %access_date125 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %add.i193, ptr %access_date125, align 1
  %i_mtime126 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %85 = ptrtoint ptr %i_mtime126 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_mtime126, align 8
  %conv.i194 = trunc i64 %86 to i32
  %add.i195 = add i32 %conv.i194, 2082844800
  %content_mod_date129 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 5
  %87 = ptrtoint ptr %content_mod_date129 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %add.i195, ptr %content_mod_date129, align 1
  %i_ctime130 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %88 = ptrtoint ptr %i_ctime130 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %i_ctime130, align 8
  %conv.i196 = trunc i64 %89 to i32
  %add.i197 = add i32 %conv.i196, 2082844800
  %attribute_mod_date133 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 6
  %90 = ptrtoint ptr %attribute_mod_date133 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %add.i197, ptr %attribute_mod_date133, align 1
  br label %if.end137

if.end137:                                        ; preds = %if.end94, %if.then62, %if.then52, %if.end35.if.end137_crit_edge
  %bnode63.sink = phi ptr [ %bnode63, %if.then62 ], [ %bnode102, %if.end94 ], [ %bnode, %if.then52 ], [ %bnode, %if.end35.if.end137_crit_edge ]
  %entryoffset64.sink = phi ptr [ %entryoffset64, %if.then62 ], [ %entryoffset103, %if.end94 ], [ %entryoffset, %if.then52 ], [ %entryoffset, %if.end35.if.end137_crit_edge ]
  %.sink201 = phi i32 [ 248, %if.then62 ], [ 248, %if.end94 ], [ 88, %if.then52 ], [ 88, %if.end35.if.end137_crit_edge ]
  %91 = ptrtoint ptr %bnode63.sink to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bnode63.sink, align 4
  %93 = ptrtoint ptr %entryoffset64.sink to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %entryoffset64.sink, align 4
  call void @hfsplus_bnode_write(ptr noundef %92, ptr noundef nonnull %entry1, i32 noundef %94, i32 noundef %.sink201) #8
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %out

out:                                              ; preds = %if.end137, %if.end11.out_crit_edge
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_cat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_cat_set_perms(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = shl i32 %3, 1
  %4 = and i32 %and, 16
  %and3 = shl i32 %3, 3
  %5 = and i32 %and3, 32
  %6 = or i32 %5, %4
  %userflags = getelementptr i8, ptr %1, i32 -72
  %7 = ptrtoint ptr %userflags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %userflags, align 8
  %9 = shl i8 %8, 6
  %10 = and i8 %9, 64
  %11 = zext i8 %10 to i32
  %12 = or i32 %6, %11
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %12) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_fileattr_set(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %2 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %bf.cast.not.i, label %entry.if.end_crit_edge, label %land.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %4 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %5, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %6 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %8 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 0
  br i1 %cmp2.not.i, label %fileattr_has_fsx.exit, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fileattr_has_fsx.exit:                            ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %10 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i.not = icmp eq i32 %11, 0
  br i1 %cmp3.i.not, label %fileattr_has_fsx.exit.if.end_crit_edge, label %fileattr_has_fsx.exit.cleanup_crit_edge

fileattr_has_fsx.exit.cleanup_crit_edge:          ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fileattr_has_fsx.exit.if.end_crit_edge:           ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %fileattr_has_fsx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fa, align 4
  %and = and i32 %13, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = lshr i32 %13, 1
  %14 = and i32 %and6, 8
  %and11 = lshr i32 %13, 3
  %15 = and i32 %and11, 4
  %16 = or i32 %15, %14
  tail call void @inode_set_flags(ptr noundef %1, i32 noundef %16, i32 noundef 12) #8
  %17 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fa, align 4
  %userflags22 = getelementptr i8, ptr %1, i32 -72
  %19 = ptrtoint ptr %userflags22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %userflags22, align 8
  %21 = and i8 %20, -2
  %22 = trunc i32 %18 to i8
  %23 = lshr i8 %22, 6
  %24 = and i8 %23, 1
  %.sink = or i8 %21, %24
  store i8 %.sink, ptr %userflags22, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #8
  %25 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %fileattr_has_fsx.exit.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %fileattr_has_fsx.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %lor.lhs.false1.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsplus_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #8
  tail call void @hfsplus_file_truncate(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_bnode_findhash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_unhash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !39

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !42
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !44
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ia_size, align 8
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %call3)
  %cmp.not = icmp eq i64 %5, %call3
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %if.then4

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then4:                                         ; preds = %land.lhs.true
  tail call void @inode_dio_wait(ptr noundef %1) #8
  %6 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ia_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp6 = icmp sgt i64 %7, %9
  br i1 %cmp6, label %if.then7, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.then4
  %call9 = tail call i32 @generic_cont_expand_simple(ptr noundef %1, i64 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.then4.if.end13_crit_edge
  %10 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %11) #8
  tail call void @hfsplus_file_truncate(ptr noundef %1) #8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #8
  %12 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %13 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call1, %entry.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_cont_expand_simple(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_file_open(ptr noundef %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %inode, i32 -84
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -96
  %2 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsrc_inode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode.addr.0 = phi ptr [ %3, %if.then ], [ %inode, %entry.if.end_crit_edge ]
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %inode.addr.0)
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call4)
  %cmp = icmp sgt i64 %call4, 2147483647
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %add.ptr.i12 = getelementptr i8, ptr %inode.addr.0, i32 -344
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i12, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i12, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i12, ptr %add.ptr.i12, i32 1, ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !47
  br label %return

return:                                           ; preds = %if.end6, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -75, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_file_release(ptr noundef %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %flags = getelementptr i8, ptr %inode, i32 -84
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -96
  %4 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsrc_inode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode.addr.0 = phi ptr [ %5, %if.then ], [ %inode, %entry.if.end_crit_edge ]
  %add.ptr.i22 = getelementptr i8, ptr %inode.addr.0, i32 -344
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i22, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i22, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i22, ptr %add.ptr.i22, i32 1, ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  tail call void @hfsplus_file_truncate(ptr noundef %inode.addr.0) #8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 4
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end10_crit_edge, label %if.then7

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.then5
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hidden_dir, align 4
  %call9 = tail call i32 @hfsplus_delete_cat(i32 noundef %10, ptr noundef %14, ptr noundef null) #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %17 = ptrtoint ptr %inode.addr.0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inode.addr.0, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp.i = icmp eq i16 %19, 16384
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i, align 16
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %folder_count.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %folder_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %folder_count.i, align 8
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %folder_count.i, align 8
  br label %hfsplus_delete_inode.exit

if.end.i:                                         ; preds = %if.then7
  %file_count.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %21, i32 0, i32 23
  %24 = ptrtoint ptr %file_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %file_count.i, align 4
  %dec3.i = add i32 %25, -1
  store i32 %dec3.i, ptr %file_count.i, align 4
  %26 = ptrtoint ptr %inode.addr.0 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %inode.addr.0, align 8
  %28 = and i16 %27, -4096
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %28, label %if.end.i.hfsplus_delete_inode.exit_crit_edge [
    i16 -32768, label %if.then9.i
    i16 -24576, label %if.end.i.if.end20.sink.split.i_crit_edge
  ]

if.end.i.if.end20.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i

if.end.i.hfsplus_delete_inode.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hfsplus_delete_inode.exit

if.then9.i:                                       ; preds = %if.end.i
  %30 = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then9.i.if.end20.sink.split.i_crit_edge, label %if.then9.i.hfsplus_delete_inode.exit_crit_edge

if.then9.i.hfsplus_delete_inode.exit_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hfsplus_delete_inode.exit

if.then9.i.if.end20.sink.split.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i

if.end20.sink.split.i:                            ; preds = %if.then9.i.if.end20.sink.split.i_crit_edge, %if.end.i.if.end20.sink.split.i_crit_edge
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 14
  %33 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %i_size18.i, align 8
  tail call void @hfsplus_file_truncate(ptr noundef %inode.addr.0) #8
  br label %hfsplus_delete_inode.exit

hfsplus_delete_inode.exit:                        ; preds = %if.end20.sink.split.i, %if.then9.i.hfsplus_delete_inode.exit_crit_edge, %if.end.i.hfsplus_delete_inode.exit_crit_edge, %if.then.i
  tail call void @hfsplus_mark_mdb_dirty(ptr noundef %16) #8
  br label %if.end10

if.end10:                                         ; preds = %hfsplus_delete_inode.exit, %if.then5.if.end10_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_delete_cat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @hfsplus_btree_aops, !1, !"hfsplus_btree_aops", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/inode.c", i32 158, i32 39}
!2 = !{ptr @hfsplus_aops, !3, !"hfsplus_aops", i1 false, i1 false}
!3 = !{!"../fs/hfsplus/inode.c", i32 168, i32 39}
!4 = !{ptr @hfsplus_dentry_operations, !5, !"hfsplus_dentry_operations", i1 false, i1 false}
!5 = !{!"../fs/hfsplus/inode.c", i32 179, i32 32}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/inode.c", i32 342, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hfsplus_file_fsync._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @hfsplus_file_fsync._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @hfsplus_new_inode.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../fs/hfsplus/inode.c", i32 397, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hfsplus_new_inode.__key.4, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/hfsplus/inode.c", i32 398, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hfsplus/inode.c", i32 560, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hfsplus_cat_read_inode._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @hfsplus_cat_read_inode._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @hfsplus_file_inode_operations, !24, !"hfsplus_file_inode_operations", i1 false, i1 false}
!24 = !{!"../fs/hfsplus/inode.c", i32 360, i32 38}
!25 = !{ptr @hfsplus_file_operations, !26, !"hfsplus_file_operations", i1 false, i1 false}
!26 = !{!"../fs/hfsplus/inode.c", i32 368, i32 37}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2154459014, i64 2154459496, i64 2154459051, i64 2154459107, i64 2154459141, i64 2154459165, i64 2154459206, i64 2154459227, i64 2154459255, i64 2154459289}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 870481, i64 870542}
!41 = !{i64 873213}
!42 = !{i64 873498}
!43 = !{i64 2152594012}
!44 = !{i64 2152593854}
!45 = !{i64 2152594182}
!46 = !{i64 2150231268}
!47 = !{i64 2148476223, i64 2148476249, i64 2148476278, i64 2148476312, i64 2148476343, i64 2148476366}
!48 = !{i64 2148564675}
!49 = !{i64 2148479408, i64 2148479440, i64 2148479469, i64 2148479503, i64 2148479534, i64 2148479557}
!50 = !{i64 2148564904}
