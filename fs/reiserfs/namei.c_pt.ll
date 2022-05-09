; ModuleID = '/llk/IR_all_yes/fs/reiserfs/namei.c_pt.bc'
source_filename = "../fs/reiserfs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.reiserfs_dir_entry = type { ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.cpu_key }
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.69, i16, i16, i16 }
%struct.reiserfs_key = type { i32, i32, %union.anon.68 }
%union.anon.68 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%union.anon.69 = type { i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.offset_v1 = type { i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.55, %struct.list_head, %struct.list_head, %union.anon.56 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.77, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.77 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.reiserfs_security_handle = type { ptr, ptr, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7000\00", [24 x i8] zeroinitializer }, align 32
@__func__.search_by_entry_key = private unnamed_addr constant [20 x i8] c"search_by_entry_key\00", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"search_by_key returned item position == 0\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7002\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no path to here\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7005\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"found item %h is not directory item or does not belong to the same directory as key %K\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@reiserfs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @reiserfs_lookup, ptr null, ptr @reiserfs_permission, ptr @reiserfs_get_acl, ptr null, ptr @reiserfs_create, ptr @reiserfs_link, ptr @reiserfs_unlink, ptr @reiserfs_symlink, ptr @reiserfs_mkdir, ptr @reiserfs_rmdir, ptr @reiserfs_mknod, ptr @reiserfs_rename, ptr @reiserfs_setattr, ptr null, ptr @reiserfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_set_acl, ptr @reiserfs_fileattr_set, ptr @reiserfs_fileattr_get, [36 x i8] undef }, align 128
@reiserfs_symlink_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr @reiserfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_setattr, ptr null, ptr @reiserfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@reiserfs_special_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr @reiserfs_permission, ptr @reiserfs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_setattr, ptr null, ptr @reiserfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zam-7001\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_find_entry = private unnamed_addr constant [20 x i8] c"reiserfs_find_entry\00", align 1
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io error\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.linear_search_in_dir_item = private unnamed_addr constant [26 x i8] c"linear_search_in_dir_item\00", align 1
@.str.10 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"(!(de->de_deh != ((struct reiserfs_de_head *)(ih_item_body(de->de_bh, de->de_ih))))) at fs/reiserfs/namei.c:%i:%s: vs-7010: array of entry headers not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"(!(de->de_item_num)) at fs/reiserfs/namei.c:%i:%s: vs-7015: two diritems of the same directory in one node?\0A\00", [51 x i8] zeroinitializer }, align 32
@reiserfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@reiserfs_file_operations = external dso_local constant %struct.file_operations, align 4
@reiserfs_address_space_operations = external dso_local constant %struct.address_space_operations, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zam-7002\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_add_entry = private unnamed_addr constant [19 x i8] c"reiserfs_add_entry\00", align 1
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"reiserfs_find_entry() returned unexpected value (%d)\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-7010\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Congratulations! we have got hash function screwed up\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7032\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"entry with this key (%K) already exists\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-7042\00", [18 x i8] zeroinitializer }, align 32
@__func__.reiserfs_unlink = private unnamed_addr constant [16 x i8] c"reiserfs_unlink\00", align 1
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"deleting nonexistent file (%lu), %d\00", [60 x i8] zeroinitializer }, align 32
@reiserfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-7040\00", [18 x i8] zeroinitializer }, align 32
@__func__.reiserfs_rmdir = private unnamed_addr constant [15 x i8] c"reiserfs_rmdir\00", align 1
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"empty directory has nlink != 2 (%d)\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7050\00", [24 x i8] zeroinitializer }, align 32
@__func__.reiserfs_rename = private unnamed_addr constant [16 x i8] c"reiserfs_rename\00", align 1
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"new entry is found, new inode == 0\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"(!((((old_inode_mode) & 00170000) == 0040000) && !buffer_journal_prepared(dot_dot_de.de_bh))) at fs/reiserfs/namei.c:%i:%s: \0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7060\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't not cut old name. Fsck later?\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7042\00", [24 x i8] zeroinitializer }, align 32
@__func__.entry_points_to_object = private unnamed_addr constant [23 x i8] c"entry_points_to_object\00", align 1
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"entry must be visible\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-7043\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 64, i64 35, i64 48]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 64, i64 35, i64 48]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 129, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 145, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 155, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 415, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 325, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 243, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 295, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 522, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 535, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 554, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1051, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 963, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1423, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1560, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1627, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1284, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [23 x i8] c"../fs/reiserfs/namei.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1291, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_de_name_and_namelen(ptr nocapture noundef %de) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %de_entry_num = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 3
  %0 = ptrtoint ptr %de_entry_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %de_entry_num, align 4
  %de_ih = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 2
  %2 = ptrtoint ptr %de_ih to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %de_ih, align 8
  %u = getelementptr inbounds %struct.item_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %u, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp slt i32 %1, %conv
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !70

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

do.end9:                                          ; preds = %entry
  %de_deh = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 4
  %7 = ptrtoint ptr %de_deh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de_deh, align 8
  %9 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %de, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data.i.i, align 4
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %ih_item_location.i.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %3, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i, i32 %1
  %add.ptr1.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 -1
  %deh_location.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %add.ptr1.i, i32 0, i32 3
  %ih_item_len.sink.i = select i1 %tobool.not.i, ptr %ih_item_len.i, ptr %deh_location.i
  %16 = ptrtoint ptr %ih_item_len.sink.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %ih_item_len.sink.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %conv4.i = zext i16 %18 to i32
  %deh_location5.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i, i32 %1, i32 3
  %19 = ptrtoint ptr %deh_location5.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %deh_location5.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %conv6.i = zext i16 %21 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %de_entrylen = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 5
  %22 = ptrtoint ptr %de_entrylen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub7.i, ptr %de_entrylen, align 4
  %deh_state = getelementptr %struct.reiserfs_de_head, ptr %8, i32 %1, i32 4
  %23 = ptrtoint ptr %deh_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %deh_state, align 4
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  %cond.neg = select i1 %tobool14.not, i32 0, i32 -44
  %sub = add nsw i32 %cond.neg, %sub7.i
  %de_namelen = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 6
  %26 = ptrtoint ptr %de_namelen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %de_namelen, align 8
  %27 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i.i, align 4
  %29 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %ih_item_location.i.i, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #9
  %conv.i = zext i16 %31 to i32
  %add.ptr.i48 = getelementptr i8, ptr %28, i32 %conv.i
  %deh_location = getelementptr %struct.reiserfs_de_head, ptr %8, i32 %1, i32 3
  %32 = ptrtoint ptr %deh_location to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %deh_location, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv18 = zext i16 %34 to i32
  %add.ptr19 = getelementptr i8, ptr %add.ptr.i48, i32 %conv18
  %de_name = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 7
  %35 = ptrtoint ptr %de_name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr19, ptr %de_name, align 4
  %sub22 = add nsw i32 %sub, -1
  %arrayidx = getelementptr i8, ptr %add.ptr19, i32 %sub22
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24 = icmp eq i8 %37, 0
  br i1 %cmp24, label %if.then26, label %do.end9.if.end30_crit_edge

do.end9.if.end30_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then26:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @strlen(ptr noundef %add.ptr19) #12
  %38 = ptrtoint ptr %de_namelen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call28, ptr %de_namelen, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.end9.if.end30_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @search_by_entry_key(ptr noundef %sb, ptr noundef %key, ptr noundef %path, ptr noundef %de) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @search_by_key(ptr noundef %sb, ptr noundef %key, ptr noundef %path, i32 noundef 1) #9
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %path_elements = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %path, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %2, i32 1
  %3 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pe_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.search_by_entry_key, ptr noundef nonnull @.str.1) #9
  tail call void @pathrelse(ptr noundef %path) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %pe_position to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %pe_position, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pathrelse(ptr noundef %path) #9
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.search_by_entry_key, ptr noundef nonnull @.str.3) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %path, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %de, align 8
  %11 = load i32, ptr %path, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %11
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %11, i32 1
  %14 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pe_position.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %15
  %de_ih.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 2
  %18 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.i.i.i, ptr %de_ih.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data.i.i, align 4
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %ih_item_location.i.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %de_deh.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 4
  %24 = ptrtoint ptr %de_deh.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i17.i, ptr %de_deh.i, align 8
  %25 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %path, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %26, i32 1
  %27 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pe_position.i, align 4
  %de_item_num.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 1
  %29 = ptrtoint ptr %de_item_num.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %de_item_num.i, align 4
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i.i = icmp eq i16 %31, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog
  %32 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %u.i.i.i, align 1
  %34 = and i64 %33, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %34)
  %phi.cmp1.i.i = icmp eq i64 %34, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.lor.lhs.false_crit_edge, label %if.else.i.i.i.if.then13_crit_edge

if.else.i.i.i.if.then13_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.else.i.i.i.lor.lhs.false_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

is_direntry_le_ih.exit:                           ; preds = %sw.epilog
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %36)
  %cond.i.i = icmp eq i32 %36, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.lor.lhs.false_crit_edge, label %is_direntry_le_ih.exit.if.then13_crit_edge

is_direntry_le_ih.exit.if.then13_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

is_direntry_le_ih.exit.lor.lhs.false_crit_edge:   ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %is_direntry_le_ih.exit.lor.lhs.false_crit_edge, %if.else.i.i.i.lor.lhs.false_crit_edge
  %call11 = tail call i32 @comp_short_keys(ptr noundef %arrayidx.i.i.i, ptr noundef %key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %is_direntry_le_ih.exit.if.then13_crit_edge, %if.else.i.i.i.if.then13_crit_edge
  %37 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %de, align 8
  tail call void (ptr, ...) @print_block(ptr noundef %38, i32 noundef 0, i32 noundef -1, i32 noundef -1) #9
  %39 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %de_ih.i, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.search_by_entry_key, ptr noundef nonnull @.str.5, ptr noundef %40, ptr noundef %key) #13
  unreachable

if.end15:                                         ; preds = %lor.lhs.false
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %41 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %k_offset.i, align 8
  %43 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %de_ih.i, align 8
  %45 = ptrtoint ptr %de_deh.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %de_deh.i, align 8
  %u.i = getelementptr inbounds %struct.item_head, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp.not38.i = icmp eq i16 %48, 0
  br i1 %cmp.not38.i, label %if.end15.bin_search_in_dir_item.exit.thread_crit_edge, label %for.body.preheader.i

if.end15.bin_search_in_dir_item.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %bin_search_in_dir_item.exit.thread

for.body.preheader.i:                             ; preds = %if.end15
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #9
  %conv.i = zext i16 %49 to i32
  %sub.i = add nsw i32 %conv.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %j.041.in.i = phi i32 [ %add14.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i, %for.body.preheader.i ]
  %lbound.040.i = phi i32 [ %lbound.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %rbound.039.i = phi i32 [ %rbound.1.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i, %for.body.preheader.i ]
  %j.041.i = sdiv i32 %j.041.in.i, 2
  %add.ptr.i47 = getelementptr %struct.reiserfs_de_head, ptr %46, i32 %j.041.i
  %50 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i47, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %conv2.i = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %conv2.i)
  %cmp3.i = icmp slt i64 %42, %conv2.i
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub5.i = add nsw i32 %j.041.i, -1
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %conv2.i)
  %cmp9.i = icmp sgt i64 %42, %conv2.i
  br i1 %cmp9.i, label %if.then11.i, label %if.then18

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i = add nsw i32 %j.041.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.then.i
  %rbound.1.i = phi i32 [ %sub5.i, %if.then.i ], [ %rbound.039.i, %if.then11.i ]
  %lbound.1.i = phi i32 [ %lbound.040.i, %if.then.i ], [ %add12.i, %if.then11.i ]
  %add14.i = add i32 %lbound.1.i, %rbound.1.i
  %cmp.not.i = icmp sgt i32 %lbound.1.i, %rbound.1.i
  br i1 %cmp.not.i, label %for.inc.i.bin_search_in_dir_item.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.bin_search_in_dir_item.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bin_search_in_dir_item.exit.thread

bin_search_in_dir_item.exit.thread:               ; preds = %for.inc.i.bin_search_in_dir_item.exit.thread_crit_edge, %if.end15.bin_search_in_dir_item.exit.thread_crit_edge
  %lbound.0.lcssa.sink.i.ph = phi i32 [ 0, %if.end15.bin_search_in_dir_item.exit.thread_crit_edge ], [ %lbound.1.i, %for.inc.i.bin_search_in_dir_item.exit.thread_crit_edge ]
  %de_entry_num16.i64 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 3
  %53 = ptrtoint ptr %de_entry_num16.i64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %lbound.0.lcssa.sink.i.ph, ptr %de_entry_num16.i64, align 4
  %pos_in_item65 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %54 = ptrtoint ptr %pos_in_item65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %lbound.0.lcssa.sink.i.ph, ptr %pos_in_item65, align 4
  br label %cleanup

if.then18:                                        ; preds = %if.end.i
  %de_entry_num16.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 3
  %55 = ptrtoint ptr %de_entry_num16.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %j.041.i, ptr %de_entry_num16.i, align 4
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %56 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %j.041.i, ptr %pos_in_item, align 4
  %57 = load i32, ptr %de_entry_num16.i, align 4
  %58 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %de_ih.i, align 8
  %u.i49 = getelementptr inbounds %struct.item_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %u.i49 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %u.i49, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #9
  %conv.i50 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv.i50)
  %cmp.not.i51 = icmp slt i32 %57, %conv.i50
  br i1 %cmp.not.i51, label %do.end9.i, label %do.body4.i, !prof !70

do.body4.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

do.end9.i:                                        ; preds = %if.then18
  %63 = ptrtoint ptr %de_deh.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %de_deh.i, align 8
  %65 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %de, align 8
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_data.i.i.i, align 4
  %ih_item_location.i.i.i = getelementptr inbounds %struct.item_head, ptr %59, i32 0, i32 3
  %69 = ptrtoint ptr %ih_item_location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %ih_item_location.i.i.i, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #9
  %conv.i.i.i = zext i16 %71 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  %ih_item_len.i.i = getelementptr inbounds %struct.item_head, ptr %59, i32 0, i32 2
  %add.ptr.i.i53 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i, i32 %57
  %add.ptr1.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i53, i32 -1
  %deh_location.i.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %add.ptr1.i.i, i32 0, i32 3
  %ih_item_len.sink.i.i = select i1 %tobool.not.i.i, ptr %ih_item_len.i.i, ptr %deh_location.i.i
  %72 = ptrtoint ptr %ih_item_len.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %ih_item_len.sink.i.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #9
  %conv4.i.i = zext i16 %74 to i32
  %deh_location5.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i, i32 %57, i32 3
  %75 = ptrtoint ptr %deh_location5.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %deh_location5.i.i, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #9
  %conv6.i.i = zext i16 %77 to i32
  %sub7.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i
  %de_entrylen.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 5
  %78 = ptrtoint ptr %de_entrylen.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub7.i.i, ptr %de_entrylen.i, align 4
  %deh_state.i = getelementptr %struct.reiserfs_de_head, ptr %64, i32 %57, i32 4
  %79 = ptrtoint ptr %deh_state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %deh_state.i, align 4
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool14.not.i = icmp eq i32 %81, 0
  %cond.neg.i = select i1 %tobool14.not.i, i32 0, i32 -44
  %sub.i54 = add nsw i32 %cond.neg.i, %sub7.i.i
  %de_namelen.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 6
  %82 = ptrtoint ptr %de_namelen.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub.i54, ptr %de_namelen.i, align 8
  %83 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data.i.i.i, align 4
  %85 = ptrtoint ptr %ih_item_location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %ih_item_location.i.i.i, align 1
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #9
  %conv.i.i55 = zext i16 %87 to i32
  %add.ptr.i48.i = getelementptr i8, ptr %84, i32 %conv.i.i55
  %deh_location.i = getelementptr %struct.reiserfs_de_head, ptr %64, i32 %57, i32 3
  %88 = ptrtoint ptr %deh_location.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %deh_location.i, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #9
  %conv18.i = zext i16 %90 to i32
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i48.i, i32 %conv18.i
  %de_name.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 7
  %91 = ptrtoint ptr %de_name.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr19.i, ptr %de_name.i, align 4
  %sub22.i = add nsw i32 %sub.i54, -1
  %arrayidx.i = getelementptr i8, ptr %add.ptr19.i, i32 %sub22.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp24.i = icmp eq i8 %93, 0
  br i1 %cmp24.i, label %if.then26.i, label %do.end9.i.set_de_name_and_namelen.exit_crit_edge

do.end9.i.set_de_name_and_namelen.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_de_name_and_namelen.exit

if.then26.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i = tail call i32 @strlen(ptr noundef %add.ptr19.i) #14
  %94 = ptrtoint ptr %de_namelen.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call28.i, ptr %de_namelen.i, align 8
  br label %set_de_name_and_namelen.exit

set_de_name_and_namelen.exit:                     ; preds = %if.then26.i, %do.end9.i.set_de_name_and_namelen.exit_crit_edge
  %95 = ptrtoint ptr %u.i49 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %u.i49, align 1
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #9
  %conv.i59 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv.i59)
  %cmp.not.i60 = icmp slt i32 %57, %conv.i59
  br i1 %cmp.not.i60, label %set_de_object_key.exit, label %do.body3.i, !prof !70

do.body3.i:                                       ; preds = %set_de_name_and_namelen.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

set_de_object_key.exit:                           ; preds = %set_de_name_and_namelen.exit
  call void @__sanitizer_cov_trace_pc() #11
  %deh_dir_id.i = getelementptr %struct.reiserfs_de_head, ptr %64, i32 %57, i32 1
  %98 = ptrtoint ptr %deh_dir_id.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %deh_dir_id.i, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %de_dir_id.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 9
  %101 = ptrtoint ptr %de_dir_id.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %de_dir_id.i, align 4
  %deh_objectid.i = getelementptr %struct.reiserfs_de_head, ptr %64, i32 %57, i32 2
  %102 = ptrtoint ptr %deh_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %deh_objectid.i, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #9
  %de_objectid.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 10
  %105 = ptrtoint ptr %de_objectid.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %de_objectid.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_de_object_key.exit, %bin_search_in_dir_item.exit.thread, %sw.default, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %sw.default ], [ -2, %if.then ], [ %call, %entry.cleanup_crit_edge ], [ 1, %set_de_object_key.exit ], [ 0, %bin_search_in_dir_item.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_short_keys(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_block(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_get_parent(ptr nocapture noundef readonly %child) local_unnamed_addr #4 align 64 {
entry:
  %de = alloca %struct.reiserfs_dir_entry, align 8
  %path_to_entry = alloca %struct.treepath, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #9
  %0 = call ptr @memset(ptr %de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path_to_entry) #9
  %1 = getelementptr inbounds i8, ptr %path_to_entry, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = ptrtoint ptr %path_to_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path_to_entry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %de_gen_number_bit_string = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 8
  %9 = ptrtoint ptr %de_gen_number_bit_string to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %de_gen_number_bit_string, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %11) #9
  %call3 = call fastcc i32 @reiserfs_find_entry(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %path_to_entry, ptr noundef nonnull %de)
  call void @pathrelse(ptr noundef nonnull %path_to_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  br i1 %cmp4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @reiserfs_write_unlock(ptr noundef %13) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %de_dir_id = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 9
  %call10 = call ptr @reiserfs_iget(ptr noundef %13, ptr noundef %de_dir_id) #9
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %15) #9
  %call12 = call ptr @d_obtain_alias(ptr noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then5 ], [ %call12, %if.end8 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path_to_entry) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reiserfs_find_entry(ptr noundef %dir, ptr noundef %name, i32 noundef %namelen, ptr noundef %path_to_entry, ptr noundef %de) unnamed_addr #4 align 64 {
entry:
  %key_to_search = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key_to_search) #9
  %0 = call ptr @memset(ptr %key_to_search, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %namelen)
  %cmp = icmp sgt i32 %namelen, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %3 = zext i32 %namelen to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %namelen, label %if.end.if.end16.i_crit_edge [
    i32 0, label %if.end.get_third_component.exit_crit_edge
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true5.i
  ]

if.end.get_third_component.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_third_component.exit

if.end.if.end16.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %5)
  %cmp1.i = icmp eq i8 %5, 46
  br i1 %cmp1.i, label %land.lhs.true.i.get_third_component.exit_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i.get_third_component.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_third_component.exit

land.lhs.true5.i:                                 ; preds = %if.end
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %7)
  %cmp8.i = icmp eq i8 %7, 46
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.if.end16.i_crit_edge

land.lhs.true5.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %arrayidx11.i = getelementptr i8, ptr %name, i32 1
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %9)
  %cmp13.i = icmp eq i8 %9, 46
  br i1 %cmp13.i, label %land.lhs.true10.i.get_third_component.exit_crit_edge, label %land.lhs.true10.i.if.end16.i_crit_edge

land.lhs.true10.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true10.i.get_third_component.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_third_component.exit

if.end16.i:                                       ; preds = %land.lhs.true10.i.if.end16.i_crit_edge, %land.lhs.true5.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge, %if.end.if.end16.i_crit_edge
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_hash_function.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_hash_function.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_hash_function.i, align 4
  %call17.i = tail call i32 %13(ptr noundef %name, i32 noundef %namelen) #9
  %14 = and i32 %call17.i, 2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp20.i = icmp eq i32 %14, 0
  %.op.i = or i32 %14, 127
  %add.i = select i1 %cmp20.i, i32 255, i32 %.op.i
  br label %get_third_component.exit

get_third_component.exit:                         ; preds = %if.end16.i, %land.lhs.true10.i.get_third_component.exit_crit_edge, %land.lhs.true.i.get_third_component.exit_crit_edge, %if.end.get_third_component.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end16.i ], [ 1, %if.end.get_third_component.exit_crit_edge ], [ 1, %land.lhs.true.i.get_third_component.exit_crit_edge ], [ 2, %land.lhs.true10.i.get_third_component.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  call void @make_cpu_key(ptr noundef nonnull %key_to_search, ptr noundef %dir, i64 noundef %conv, i32 noundef 3, i32 noundef 3) #9
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %call354 = call i32 @search_by_entry_key(ptr noundef %16, ptr noundef nonnull %key_to_search, ptr noundef %path_to_entry, ptr noundef %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call354)
  %cmp455 = icmp eq i32 %call354, -2
  br i1 %cmp455, label %get_third_component.exit.if.then6_crit_edge, label %if.end8.lr.ph

get_third_component.exit.if.then6_crit_edge:      ; preds = %get_third_component.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end8.lr.ph:                                    ; preds = %get_third_component.exit
  %de_deh.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 4
  %de_entry_num.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 3
  %de_ih.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 2
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key_to_search, i32 0, i32 2
  %de_gen_number_bit_string.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 8
  %de_entrylen.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 5
  %de_namelen.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 6
  %de_name.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 7
  %de_item_num.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 1
  br label %if.end8

if.then6:                                         ; preds = %le_ih_k_offset.exit.if.then6_crit_edge, %get_third_component.exit.if.then6_crit_edge
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.reiserfs_find_entry, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end8:                                          ; preds = %le_ih_k_offset.exit.if.end8_crit_edge, %if.end8.lr.ph
  %19 = ptrtoint ptr %de_deh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %de_deh.i, align 8
  %21 = ptrtoint ptr %de_entry_num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %de_entry_num.i, align 4
  %23 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %de_ih.i, align 8
  %u.i = getelementptr inbounds %struct.item_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %u.i, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26) #9
  %conv.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp.i = icmp eq i32 %22, %conv.i
  br i1 %cmp.i, label %if.end8.if.then.i_crit_edge, label %lor.lhs.false.i

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end8
  %add.ptr.i = getelementptr %struct.reiserfs_de_head, ptr %20, i32 %22
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.i, align 1
  %30 = and i32 %29, -2130706561
  %31 = call i32 @llvm.bswap.i32(i32 %30) #9
  %and.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %k_offset.i.i, align 8
  %and4.i = and i64 %33, 2147483520
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i, i64 %and.i)
  %cmp5.not.i = icmp eq i64 %and4.i, %and.i
  br i1 %cmp5.not.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge
  %dec.i = add i32 %22, -1
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.do.body.i_crit_edge
  %i.0.i = phi i32 [ %dec.i, %if.then.i ], [ %22, %lor.lhs.false.i.do.body.i_crit_edge ]
  %34 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %de, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data.i.i, align 4
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %24, i32 0, i32 3
  %38 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %ih_item_location.i.i, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #9
  %conv.i.i = zext i16 %40 to i32
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %conv.i.i
  %cmp10.not.i = icmp eq ptr %20, %add.ptr.i.i
  br i1 %cmp10.not.i, label %do.end.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.linear_search_in_dir_item, ptr noundef nonnull @.str.10, i32 noundef 244, ptr noundef nonnull @__func__.linear_search_in_dir_item) #13
  unreachable

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp15112.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp15112.i, label %for.body.lr.ph.i, label %do.end.i.for.end.i_crit_edge

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %add.ptr14.i = getelementptr %struct.reiserfs_de_head, ptr %20, i32 %i.0.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.1114.i = phi i32 [ %i.0.i, %for.body.lr.ph.i ], [ %dec39.i, %for.inc.i.for.body.i_crit_edge ]
  %deh.0113.i = phi ptr [ %add.ptr14.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %deh.0113.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %deh.0113.i, align 1
  %43 = and i32 %42, -2130706561
  %44 = call i32 @llvm.bswap.i32(i32 %43) #9
  %and19.i = zext i32 %44 to i64
  %45 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %k_offset.i.i, align 8
  %and21.i = and i64 %46, 2147483520
  call void @__sanitizer_cov_trace_cmp8(i64 %and21.i, i64 %and19.i)
  %cmp22.not.i = icmp eq i64 %and21.i, %and19.i
  br i1 %cmp22.not.i, label %if.end25.i, label %for.body.i.if.then12_crit_edge

for.body.i.if.then12_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end25.i:                                       ; preds = %for.body.i
  %47 = ptrtoint ptr %de_gen_number_bit_string.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %de_gen_number_bit_string.i, align 8
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end25.i.if.end32.i_crit_edge, label %if.then26.i

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then26.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = lshr i32 %42, 24
  %50 = and i32 %49, 127
  call void @_set_bit(i32 noundef %50, ptr noundef nonnull %48) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then26.i, %if.end25.i.if.end32.i_crit_edge
  %51 = ptrtoint ptr %de_entry_num.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %i.1114.i, ptr %de_entry_num.i, align 4
  %52 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %de_ih.i, align 8
  %u.i.i = getelementptr inbounds %struct.item_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %u.i.i, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #9
  %conv.i82.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1114.i, i32 %conv.i82.i)
  %cmp.not.i.i = icmp ult i32 %i.1114.i, %conv.i82.i
  br i1 %cmp.not.i.i, label %do.end9.i.i, label %do.body4.i.i, !prof !70

do.body4.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

do.end9.i.i:                                      ; preds = %if.end32.i
  %57 = ptrtoint ptr %de_deh.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %de_deh.i, align 8
  %59 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %de, align 8
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i.i.i.i, align 4
  %ih_item_location.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %53, i32 0, i32 3
  %63 = ptrtoint ptr %ih_item_location.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %ih_item_location.i.i.i.i, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #9
  %conv.i.i.i.i = zext i16 %65 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %62, i32 %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1114.i)
  %tobool.not.i.i.i = icmp eq i32 %i.1114.i, 0
  %ih_item_len.i.i.i = getelementptr inbounds %struct.item_head, ptr %53, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i.i, i32 -1
  %add.ptr1.i.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i, i32 %i.1114.i
  %deh_location.i.i.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %add.ptr1.i.i.i, i32 0, i32 3
  %ih_item_len.sink.i.i.i = select i1 %tobool.not.i.i.i, ptr %ih_item_len.i.i.i, ptr %deh_location.i.i.i
  %66 = ptrtoint ptr %ih_item_len.sink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %ih_item_len.sink.i.i.i, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67) #9
  %conv4.i.i.i = zext i16 %68 to i32
  %deh_location5.i.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i.i, i32 %i.1114.i, i32 3
  %69 = ptrtoint ptr %deh_location5.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %deh_location5.i.i.i, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70) #9
  %conv6.i.i.i = zext i16 %71 to i32
  %sub7.i.i.i = sub nsw i32 %conv4.i.i.i, %conv6.i.i.i
  %72 = ptrtoint ptr %de_entrylen.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub7.i.i.i, ptr %de_entrylen.i.i, align 4
  %deh_state.i.i = getelementptr %struct.reiserfs_de_head, ptr %58, i32 %i.1114.i, i32 4
  %73 = ptrtoint ptr %deh_state.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %deh_state.i.i, align 4
  %75 = and i32 %74, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool14.not.i.i = icmp eq i32 %75, 0
  %cond.neg.i.i = select i1 %tobool14.not.i.i, i32 0, i32 -44
  %sub.i.i = add nsw i32 %cond.neg.i.i, %sub7.i.i.i
  %76 = ptrtoint ptr %de_namelen.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub.i.i, ptr %de_namelen.i.i, align 8
  %77 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data.i.i.i.i, align 4
  %79 = ptrtoint ptr %ih_item_location.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %ih_item_location.i.i.i.i, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #9
  %conv.i.i.i = zext i16 %81 to i32
  %add.ptr.i48.i.i = getelementptr i8, ptr %78, i32 %conv.i.i.i
  %deh_location.i.i = getelementptr %struct.reiserfs_de_head, ptr %58, i32 %i.1114.i, i32 3
  %82 = ptrtoint ptr %deh_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %deh_location.i.i, align 1
  %84 = call i16 @llvm.bswap.i16(i16 %83) #9
  %conv18.i.i = zext i16 %84 to i32
  %add.ptr19.i.i = getelementptr i8, ptr %add.ptr.i48.i.i, i32 %conv18.i.i
  %85 = ptrtoint ptr %de_name.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr19.i.i, ptr %de_name.i.i, align 4
  %sub22.i.i = add nsw i32 %sub.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %sub22.i.i
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp24.i.i = icmp eq i8 %87, 0
  br i1 %cmp24.i.i, label %if.then26.i.i, label %do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge

do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_de_name_and_namelen.exit.i

if.then26.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i.i = call i32 @strlen(ptr noundef %add.ptr19.i.i) #14
  %88 = ptrtoint ptr %de_namelen.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call28.i.i, ptr %de_namelen.i.i, align 8
  br label %set_de_name_and_namelen.exit.i

set_de_name_and_namelen.exit.i:                   ; preds = %if.then26.i.i, %do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge
  %89 = ptrtoint ptr %de_namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %de_namelen.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %namelen)
  %cmp.i.i = icmp eq i32 %90, %namelen
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %set_de_name_and_namelen.exit.i.for.inc.i_crit_edge

set_de_name_and_namelen.exit.i.for.inc.i_crit_edge: ; preds = %set_de_name_and_namelen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %set_de_name_and_namelen.exit.i
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr19.i.i, ptr %name, i32 %namelen) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %reiserfs_match.exit.i, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

reiserfs_match.exit.i:                            ; preds = %land.lhs.true.i.i
  %91 = ptrtoint ptr %deh_state.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %deh_state.i.i, align 4
  %93 = and i32 %92, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool4.not.i.i = icmp eq i32 %93, 0
  %cond.i.i = select i1 %tobool4.not.i.i, i32 3, i32 1
  %94 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %u.i.i, align 1
  %96 = call i16 @llvm.bswap.i16(i16 %95) #9
  %conv.i91.i = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1114.i, i32 %conv.i91.i)
  %cmp.not.i92.i = icmp ult i32 %i.1114.i, %conv.i91.i
  br i1 %cmp.not.i92.i, label %set_de_object_key.exit.i, label %do.body3.i.i, !prof !70

do.body3.i.i:                                     ; preds = %reiserfs_match.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

set_de_object_key.exit.i:                         ; preds = %reiserfs_match.exit.i
  %deh_dir_id.i.i = getelementptr %struct.reiserfs_de_head, ptr %58, i32 %i.1114.i, i32 1
  %97 = ptrtoint ptr %deh_dir_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %deh_dir_id.i.i, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98) #9
  %de_dir_id.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 9
  %100 = ptrtoint ptr %de_dir_id.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %de_dir_id.i.i, align 4
  %deh_objectid.i.i = getelementptr %struct.reiserfs_de_head, ptr %58, i32 %i.1114.i, i32 2
  %101 = ptrtoint ptr %deh_objectid.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %deh_objectid.i.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #9
  %de_objectid.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 10
  %104 = ptrtoint ptr %de_objectid.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %de_objectid.i.i, align 8
  %105 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %u.i.i, align 1
  %107 = call i16 @llvm.bswap.i16(i16 %106) #9
  %conv.i97.i = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1114.i, i32 %conv.i97.i)
  %cmp.not.i98.i = icmp ult i32 %i.1114.i, %conv.i97.i
  br i1 %cmp.not.i98.i, label %store_de_entry_key.exit.i, label %do.body4.i99.i, !prof !70

do.body4.i99.i:                                   ; preds = %set_de_object_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #9, !srcloc !73
  unreachable

store_de_entry_key.exit.i:                        ; preds = %set_de_object_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i101.i = getelementptr %struct.reiserfs_de_head, ptr %58, i32 %i.1114.i
  %de_entry_key.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11
  %version.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11, i32 1
  %108 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %version.i.i, align 8
  %109 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %53, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110) #9
  %112 = ptrtoint ptr %de_entry_key.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %de_entry_key.i.i, align 8
  %k_objectid.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %53, i32 0, i32 1
  %113 = ptrtoint ptr %k_objectid.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %k_objectid.i.i, align 1
  %115 = call i32 @llvm.bswap.i32(i32 %114) #9
  %k_objectid17.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11, i32 0, i32 1
  %116 = ptrtoint ptr %k_objectid17.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %k_objectid17.i.i, align 4
  %117 = ptrtoint ptr %add.ptr.i101.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %add.ptr.i101.i, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #9
  %conv19.i.i = zext i32 %119 to i64
  %k_offset.i.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11, i32 0, i32 2
  %120 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv19.i.i, ptr %k_offset.i.i.i, align 8
  %k_type.i.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11, i32 0, i32 3
  %121 = ptrtoint ptr %k_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %k_type.i.i.i, align 8
  br label %if.then12

for.inc.i:                                        ; preds = %land.lhs.true.i.i.for.inc.i_crit_edge, %set_de_name_and_namelen.exit.i.for.inc.i_crit_edge
  %dec39.i = add nsw i32 %i.1114.i, -1
  %incdec.ptr.i = getelementptr %struct.reiserfs_de_head, ptr %deh.0113.i, i32 -1
  %cmp15.i = icmp sgt i32 %i.1114.i, 0
  br i1 %cmp15.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %122 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %de_ih.i, align 8
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %cmp.i.i.i = icmp eq i16 %125, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %123, i32 0, i32 2
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %u.i.i.i, align 1
  %128 = call i32 @llvm.bswap.i32(i32 %127) #9
  %conv.i.i103.i = zext i32 %128 to i64
  br label %le_ih_k_offset.exit.i

cond.false.i.i.i:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 8)
  %130 = load i64, ptr %u.i.i.i, align 1
  %131 = and i64 %130, -241
  %132 = call i64 @llvm.bswap.i64(i64 %131) #9
  br label %le_ih_k_offset.exit.i

le_ih_k_offset.exit.i:                            ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i64 [ %conv.i.i103.i, %cond.true.i.i.i ], [ %132, %cond.false.i.i.i ]
  %and42.i = and i64 %cond.i.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42.i)
  %cmp43.i = icmp eq i64 %and42.i, 0
  br i1 %cmp43.i, label %le_ih_k_offset.exit.i.if.then12_crit_edge, label %do.body47.i

le_ih_k_offset.exit.i.if.then12_crit_edge:        ; preds = %le_ih_k_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

do.body47.i:                                      ; preds = %le_ih_k_offset.exit.i
  %133 = ptrtoint ptr %de_item_num.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %de_item_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool48.not.i = icmp eq i32 %134, 0
  br i1 %tobool48.not.i, label %if.end13, label %if.then49.i

if.then49.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.linear_search_in_dir_item, ptr noundef nonnull @.str.11, i32 noundef 296, ptr noundef nonnull @__func__.linear_search_in_dir_item) #13
  unreachable

if.then12:                                        ; preds = %le_ih_k_offset.exit.i.if.then12_crit_edge, %store_de_entry_key.exit.i, %for.body.i.if.then12_crit_edge
  %retval.0.i29.ph = phi i32 [ %cond.i.i, %store_de_entry_key.exit.i ], [ 0, %for.body.i.if.then12_crit_edge ], [ 0, %le_ih_k_offset.exit.i.if.then12_crit_edge ]
  %135 = ptrtoint ptr %de_entry_num.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %de_entry_num.i, align 4
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %path_to_entry, i32 0, i32 3
  %137 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %pos_in_item, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.body47.i
  %138 = ptrtoint ptr %de_ih.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %de_ih.i, align 8
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp.i.i30 = icmp eq i16 %141, 0
  %u.i.i31 = getelementptr inbounds %struct.reiserfs_key, ptr %139, i32 0, i32 2
  br i1 %cmp.i.i30, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %u.i.i31 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %u.i.i31, align 1
  %144 = call i32 @llvm.bswap.i32(i32 %143) #9
  %conv.i.i32 = zext i32 %144 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %u.i.i31 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %u.i.i31, align 1
  %147 = and i64 %146, -241
  %148 = call i64 @llvm.bswap.i64(i64 %147) #9
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i33 = phi i64 [ %conv.i.i32, %cond.true.i.i ], [ %148, %cond.false.i.i ]
  %sub = add nsw i64 %cond.i.i33, -1
  %149 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %sub, ptr %k_offset.i.i, align 8
  call void @pathrelse(ptr noundef %path_to_entry) #9
  %150 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i_sb, align 4
  %call3 = call i32 @search_by_entry_key(ptr noundef %151, ptr noundef nonnull %key_to_search, ptr noundef %path_to_entry, ptr noundef %de)
  %cmp4 = icmp eq i32 %call3, -2
  br i1 %cmp4, label %le_ih_k_offset.exit.if.then6_crit_edge, label %le_ih_k_offset.exit.if.end8_crit_edge

le_ih_k_offset.exit.if.end8_crit_edge:            ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

le_ih_k_offset.exit.if.then6_crit_edge:           ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

cleanup:                                          ; preds = %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then6 ], [ %retval.0.i29.ph, %if.then12 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key_to_search) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_iget(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @reiserfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #4 align 64 {
entry:
  %de = alloca %struct.reiserfs_dir_entry, align 8
  %path_to_entry = alloca %struct.treepath, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #9
  %0 = call ptr @memset(ptr %de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path_to_entry) #9
  %1 = getelementptr inbounds i8, ptr %path_to_entry, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = ptrtoint ptr %path_to_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path_to_entry, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %7) #9
  %de_gen_number_bit_string = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 8
  %8 = ptrtoint ptr %de_gen_number_bit_string to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %de_gen_number_bit_string, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %call5 = call fastcc i32 @reiserfs_find_entry(ptr noundef %dir, ptr noundef %10, i32 noundef %12, ptr noundef nonnull %path_to_entry, ptr noundef nonnull %de)
  call void @pathrelse(ptr noundef nonnull %path_to_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 1
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  br i1 %cmp6, label %if.then7, label %if.end21

if.then7:                                         ; preds = %if.end
  %de_dir_id = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 9
  %call9 = call ptr @reiserfs_iget(ptr noundef %14, ptr noundef %de_dir_id) #9
  %tobool.not = icmp eq ptr %call9, null
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %16) #9
  br label %cleanup

if.end14:                                         ; preds = %if.then7
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags, align 4
  %and = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end21.thread_crit_edge, label %if.then16

if.end14.if.end21.thread_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.thread

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags17 = getelementptr inbounds %struct.inode, ptr %call9, i32 0, i32 4
  %19 = ptrtoint ptr %i_flags17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags17, align 4
  %or = or i32 %20, 512
  store i32 %or, ptr %i_flags17, align 4
  %i_opflags = getelementptr inbounds %struct.inode, ptr %call9, i32 0, i32 1
  %21 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %i_opflags, align 2
  %23 = and i16 %22, -9
  store i16 %23, ptr %i_opflags, align 2
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %if.then16, %if.end14.if.end21.thread_crit_edge
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %25) #9
  br label %if.end27

if.end21:                                         ; preds = %if.end
  call void @reiserfs_write_unlock(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp23 = icmp eq i32 %call5, -2
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %if.end21.thread
  %inode.047 = phi ptr [ %call9, %if.end21.thread ], [ null, %if.end21.if.end27_crit_edge ]
  %call28 = call ptr @d_splice_alias(ptr noundef %inode.047, ptr noundef %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end21.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -13 to ptr), %if.then11 ], [ %call28, %if.end27 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path_to_entry) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_permission(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #4 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %security = alloca %struct.reiserfs_security_handle, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add8 = select i1 %tobool.not, i32 36, i32 206
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %6 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %security) #9
  %7 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %security, align 4, !annotation !74
  %8 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !74
  %10 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !74
  %call9 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call12 = tail call ptr @new_inode(ptr noundef %13) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %k_objectid.i = getelementptr i8, ptr %call12, i32 -260
  %14 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %k_objectid.i, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call12, ptr noundef %dir, i16 noundef zeroext %mode) #9
  %call1.i = tail call i32 @dquot_initialize(ptr noundef nonnull %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool17.not = icmp eq i32 %call1.i, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dquot_drop(ptr noundef nonnull %call12) #9
  tail call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %16, 32
  store i32 %or.i, ptr %i_flags.i, align 4
  tail call void @iput(ptr noundef nonnull %call12) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i32 @reiserfs_cache_default_acl(ptr noundef %dir) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call23 = call i32 @reiserfs_security_init(ptr noundef %dir, ptr noundef nonnull %call12, ptr noundef %d_name, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call12) #9
  call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i102 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags.i102 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags.i102, align 4
  %or.i103 = or i32 %18, 32
  store i32 %or.i103, ptr %i_flags.i102, align 4
  call void @iput(ptr noundef nonnull %call12) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %add22 = add i32 %call21, %add8
  %add27 = add i32 %add22, %call23
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %20) #9
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %call30 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %22, i32 noundef %add27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call12) #9
  call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i104 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %23 = ptrtoint ptr %i_flags.i104 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags.i104, align 4
  %or.i105 = or i32 %24, 32
  store i32 %or.i105, ptr %i_flags.i104, align 4
  call void @iput(ptr noundef nonnull %call12) #9
  br label %out_failed

if.end34:                                         ; preds = %if.end26
  %call35 = call i32 @reiserfs_new_inode(ptr noundef nonnull %th, ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef null, i64 noundef 0, ptr noundef %dentry, ptr noundef nonnull %call12, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_failed_crit_edge

if.end34.out_failed_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_failed

if.end38:                                         ; preds = %if.end34
  %i_op = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 7
  %25 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @reiserfs_file_inode_operations, ptr %i_op, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 44
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @reiserfs_file_operations, ptr %26, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 9
  %28 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @reiserfs_address_space_operations, ptr %a_ops, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 8
  %33 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_name, align 8
  %call41 = call fastcc i32 @reiserfs_add_entry(ptr noundef nonnull %th, ptr noundef %dir, ptr noundef %32, i32 noundef %34, ptr noundef nonnull %call12, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %call12) #9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 14
  %35 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef nonnull %call12, i64 noundef %36) #9
  %call44 = call i32 @journal_end(ptr noundef nonnull %th) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %spec.select = select i1 %tobool45.not, i32 %call41, i32 %call44
  call void @unlock_new_inode(ptr noundef nonnull %call12) #9
  call void @iput(ptr noundef nonnull %call12) #9
  br label %out_failed

if.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @reiserfs_update_inode_transaction(ptr noundef nonnull %call12) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %dir) #9
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef nonnull %call12) #9
  %call49 = call i32 @journal_end(ptr noundef nonnull %th) #9
  br label %out_failed

out_failed:                                       ; preds = %if.end48, %if.then43, %if.end34.out_failed_crit_edge, %if.then32
  %retval1.1 = phi i32 [ %call30, %if.then32 ], [ %call35, %if.end34.out_failed_crit_edge ], [ %spec.select, %if.then43 ], [ %call49, %if.end48 ]
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %out_failed, %if.then24, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then18 ], [ %call23, %if.then24 ], [ %retval1.1, %out_failed ], [ %call9, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %security) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #4 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %2 = call ptr @memset(ptr %th, i32 255, i32 36)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %8, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = select i1 %tobool.not, i32 54, i32 58
  %call3 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64534, i32 %13)
  %cmp = icmp ugt i32 %13, 64534
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %15) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @inc_nlink(ptr noundef %1) #9
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %call10 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %17, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %1) #9
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %19) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %22 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_name, align 8
  %call16 = call fastcc i32 @reiserfs_add_entry(ptr noundef nonnull %th, ptr noundef %dir, ptr noundef %21, i32 noundef %23, ptr noundef %1, i32 noundef 1)
  call void @reiserfs_update_inode_transaction(ptr noundef %1) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %1) #9
  %call19 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  %call16.call19 = select i1 %tobool21.not, i32 %call16, i32 %call19
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #9
  %26 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %1, i64 noundef %28) #9
  call void @ihold(ptr noundef %1) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #9
  %call24 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18, %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -31, %if.then6 ], [ %call10, %if.then12 ], [ %call16.call19, %if.then18 ], [ %call24, %if.end23 ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_unlink(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #4 align 64 {
entry:
  %de = alloca %struct.reiserfs_dir_entry, align 8
  %path = alloca %struct.treepath, align 4
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp32 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #9
  %0 = call ptr @memset(ptr %de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #9
  %1 = getelementptr inbounds i8, ptr %path, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %4 = call ptr @memset(ptr %th, i32 255, i32 36)
  %call = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %12, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %add = select i1 %tobool4.not, i32 38, i32 46
  tail call void @reiserfs_write_lock(ptr noundef %8) #9
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call7 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %14, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %de_gen_number_bit_string = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 8
  %15 = ptrtoint ptr %de_gen_number_bit_string to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %de_gen_number_bit_string, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name, align 8
  %call12 = call fastcc i32 @reiserfs_find_entry(ptr noundef %dir, ptr noundef %17, i32 noundef %19, ptr noundef nonnull %path, ptr noundef nonnull %de)
  %20 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call12, label %if.end17 [
    i32 0, label %if.end10.end_unlink_crit_edge
    i32 -2, label %if.then15
  ]

if.end10.end_unlink_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlink

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlink

if.end17:                                         ; preds = %if.end10
  call void @reiserfs_update_inode_transaction(ptr noundef %6) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %dir) #9
  %de_objectid = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 10
  %21 = ptrtoint ptr %de_objectid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %de_objectid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp18.not = icmp eq i32 %22, %24
  br i1 %cmp18.not, label %if.end20, label %if.end17.end_unlink_crit_edge

if.end17.end_unlink_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlink

if.end20:                                         ; preds = %if.end17
  %25 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb23 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb23, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %29, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_unlink, ptr noundef nonnull @.str.19, i32 noundef %22, i32 noundef 0) #9
  call void @set_nlink(ptr noundef %6, i32 noundef 1) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  call void @drop_nlink(ptr noundef %6) #9
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 4
  %de_entry_key = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11
  %call26 = call i32 @reiserfs_cut_from_item(ptr noundef nonnull %th, ptr noundef nonnull %path, ptr noundef %de_entry_key, ptr noundef %dir, ptr noundef null, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @inc_nlink(ptr noundef %6) #9
  br label %end_unlink

if.end29:                                         ; preds = %if.end25
  %i_ctime = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %6) #9
  %32 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %33 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %6, i64 noundef %34) #9
  %de_entrylen = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 5
  %35 = ptrtoint ptr %de_entrylen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %de_entrylen, align 4
  %add30 = add i32 %36, 16
  %conv = zext i32 %add30 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  %sub = sub i64 %38, %conv
  store i64 %sub, ptr %i_size, align 8
  %i_ctime31 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp32) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp32, ptr noundef %dir) #9
  %39 = call ptr @memcpy(ptr %i_mtime, ptr %tmp32, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp32) #9
  %40 = call ptr @memcpy(ptr %i_ctime31, ptr %i_mtime, i32 16)
  %41 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %dir, i64 noundef %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %if.then34, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @add_save_link(ptr noundef nonnull %th, ptr noundef %6, i32 noundef 0) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end29.if.end35_crit_edge
  %call36 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %call37 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #9
  br label %cleanup.sink.split

end_unlink:                                       ; preds = %if.then28, %if.end17.end_unlink_crit_edge, %if.then15, %if.end10.end_unlink_crit_edge
  %retval1.0 = phi i32 [ -5, %if.then15 ], [ %call26, %if.then28 ], [ -2, %if.end10.end_unlink_crit_edge ], [ -5, %if.end17.end_unlink_crit_edge ]
  call void @pathrelse(ptr noundef nonnull %path) #9
  %call39 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %call40 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool41.not = icmp eq i32 %call39, 0
  %spec.select = select i1 %tobool41.not, i32 %retval1.0, i32 %call39
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %end_unlink, %if.end35, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call36, %if.end35 ], [ %call7, %if.end.cleanup.sink.split_crit_edge ], [ %spec.select, %end_unlink ]
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %44) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %parent_dir, ptr noundef %dentry, ptr nocapture noundef readonly %symname) #4 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %security = alloca %struct.reiserfs_security_handle, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %security) #9
  %1 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %security, align 4, !annotation !74
  %2 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !74
  %4 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !74
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent_dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %11, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add8 = select i1 %tobool.not, i32 54, i32 224
  %call9 = tail call i32 @dquot_initialize(ptr noundef %parent_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call12 = tail call ptr @new_inode(ptr noundef %13) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %k_objectid.i = getelementptr i8, ptr %call12, i32 -260
  %14 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %k_objectid.i, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call12, ptr noundef %parent_dir, i16 noundef zeroext -24065) #9
  %call1.i = tail call i32 @dquot_initialize(ptr noundef nonnull %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool17.not = icmp eq i32 %call1.i, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dquot_drop(ptr noundef nonnull %call12) #9
  tail call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %16, 32
  store i32 %or.i, ptr %i_flags.i, align 4
  tail call void @iput(ptr noundef nonnull %call12) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call21 = call i32 @reiserfs_security_init(ptr noundef %parent_dir, ptr noundef nonnull %call12, ptr noundef %d_name, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call12) #9
  call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i142 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags.i142 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags.i142, align 4
  %or.i143 = or i32 %18, 32
  store i32 %or.i143, ptr %i_flags.i142, align 4
  call void @iput(ptr noundef nonnull %call12) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %add26 = add nuw i32 %call21, %add8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %20) #9
  %call28 = call i32 @strlen(ptr noundef %symname) #12
  %sub = add i32 %call28, 7
  %and31 = and i32 %sub, -8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize, align 16
  %sub37 = add i32 %24, -120
  call void @__sanitizer_cov_trace_cmp4(i32 %and31, i32 %sub37)
  %cmp38 = icmp ugt i32 %and31, %sub37
  br i1 %cmp38, label %if.then40, label %if.end8.i

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call12) #9
  call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i144 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags.i144 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags.i144, align 4
  %or.i145 = or i32 %26, 32
  store i32 %or.i145, ptr %i_flags.i144, align 4
  call void @iput(ptr noundef nonnull %call12) #9
  br label %out_failed

if.end8.i:                                        ; preds = %if.end25
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %and31, i32 noundef 3136) #15
  %tobool44.not = icmp eq ptr %call9.i, null
  br i1 %tobool44.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @drop_new_inode(ptr noundef nonnull %call12)
  br label %out_failed

if.end47:                                         ; preds = %if.end8.i
  %call48 = call i32 @strlen(ptr noundef %symname) #12
  %27 = call ptr @memcpy(ptr %call9.i, ptr %symname, i32 %call48)
  %call49 = call i32 @strlen(ptr noundef %symname) #12
  call void @padd_item(ptr noundef nonnull %call9.i, i32 noundef %and31, i32 noundef %call49) #9
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %call51 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %29, i32 noundef %add26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @drop_new_inode(ptr noundef nonnull %call12)
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %out_failed

if.end55:                                         ; preds = %if.end47
  %call57 = call i32 @strlen(ptr noundef %symname) #12
  %conv58 = zext i32 %call57 to i64
  %call59 = call i32 @reiserfs_new_inode(ptr noundef nonnull %th, ptr noundef %parent_dir, i16 noundef zeroext -24065, ptr noundef nonnull %call9.i, i64 noundef %conv58, ptr noundef %dentry, ptr noundef nonnull %call12, ptr noundef nonnull %security) #9
  call void @kfree(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end55.out_failed_crit_edge

if.end55.out_failed_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_failed

if.end62:                                         ; preds = %if.end55
  call void @reiserfs_update_inode_transaction(ptr noundef nonnull %call12) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %parent_dir) #9
  %i_op = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 7
  %30 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @reiserfs_symlink_inode_operations, ptr %i_op, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call12) #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 9
  %31 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @reiserfs_address_space_operations, ptr %a_ops, align 4
  %name64 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %name64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name64, align 8
  %36 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %d_name, align 8
  %call66 = call fastcc i32 @reiserfs_add_entry(ptr noundef nonnull %th, ptr noundef %parent_dir, ptr noundef %35, i32 noundef %37, ptr noundef nonnull %call12, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %if.then68

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %call12) #9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 14
  %38 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef nonnull %call12, i64 noundef %39) #9
  %call69 = call i32 @journal_end(ptr noundef nonnull %th) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  %spec.select = select i1 %tobool70.not, i32 %call66, i32 %call69
  call void @unlock_new_inode(ptr noundef nonnull %call12) #9
  call void @iput(ptr noundef nonnull %call12) #9
  br label %out_failed

if.end73:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef nonnull %call12) #9
  %call74 = call i32 @journal_end(ptr noundef nonnull %th) #9
  br label %out_failed

out_failed:                                       ; preds = %if.end73, %if.then68, %if.end55.out_failed_crit_edge, %if.then53, %if.then45, %if.then40
  %retval1.1 = phi i32 [ -36, %if.then40 ], [ %call51, %if.then53 ], [ %call59, %if.end55.out_failed_crit_edge ], [ %spec.select, %if.then68 ], [ %call74, %if.end73 ], [ -12, %if.then45 ]
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %out_failed, %if.then23, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then18 ], [ %call21, %if.then23 ], [ %retval1.1, %out_failed ], [ %call9, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %security) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #4 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %security = alloca %struct.reiserfs_security_handle, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %security) #9
  %1 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %security, align 4, !annotation !74
  %2 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !74
  %4 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !74
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %11, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add8 = select i1 %tobool.not, i32 54, i32 224
  %call9 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_packing_locality = getelementptr i8, ptr %dir, i32 -220
  %12 = ptrtoint ptr %new_packing_locality to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %new_packing_locality, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %new_packing_locality, align 4
  %13 = or i16 %mode, 16384
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %call14 = tail call ptr @new_inode(ptr noundef %15) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %k_objectid.i = getelementptr i8, ptr %call14, i32 -260
  %16 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %k_objectid.i, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call14, ptr noundef %dir, i16 noundef zeroext %13) #9
  %call1.i = tail call i32 @dquot_initialize(ptr noundef nonnull %call14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool19.not = icmp eq i32 %call1.i, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dquot_drop(ptr noundef nonnull %call14) #9
  tail call void @make_bad_inode(ptr noundef nonnull %call14) #9
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %18, 32
  store i32 %or.i, ptr %i_flags.i, align 4
  tail call void @iput(ptr noundef nonnull %call14) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @reiserfs_cache_default_acl(ptr noundef %dir) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call25 = call i32 @reiserfs_security_init(ptr noundef %dir, ptr noundef nonnull %call14, ptr noundef %d_name, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call14) #9
  call void @make_bad_inode(ptr noundef nonnull %call14) #9
  %i_flags.i137 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 4
  %19 = ptrtoint ptr %i_flags.i137 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags.i137, align 4
  %or.i138 = or i32 %20, 32
  store i32 %or.i138, ptr %i_flags.i137, align 4
  call void @iput(ptr noundef nonnull %call14) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %add24 = add i32 %call23, %add8
  %add30 = add i32 %add24, %call25
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %22) #9
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %call33 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %24, i32 noundef %add30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call14) #9
  call void @make_bad_inode(ptr noundef nonnull %call14) #9
  %i_flags.i139 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags.i139 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags.i139, align 4
  %or.i140 = or i32 %26, 32
  store i32 %or.i140, ptr %i_flags.i139, align 4
  call void @iput(ptr noundef nonnull %call14) #9
  br label %out_failed

if.end37:                                         ; preds = %if.end29
  %27 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp38.not = icmp eq i32 %29, 1
  br i1 %cmp38.not, label %if.end37.if.end45_crit_edge, label %if.then40

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %if.end37
  call void @inc_nlink(ptr noundef %dir) #9
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64534, i32 %31)
  %cmp41 = icmp ugt i32 %31, 64534
  br i1 %cmp41, label %if.then43, label %if.then40.if.end45_crit_edge

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void @set_nlink(ptr noundef %dir, i32 noundef 1) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then40.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i141 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i141 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i141, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_properties, align 4
  %and48 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, i64 48, i64 35
  %call51 = call i32 @reiserfs_new_inode(ptr noundef nonnull %th, ptr noundef %dir, i16 noundef zeroext %13, ptr noundef null, i64 noundef %cond50, ptr noundef %dentry, ptr noundef nonnull %call14, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %if.then53

if.then53:                                        ; preds = %if.end45
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp54.not = icmp eq i32 %39, 1
  br i1 %cmp54.not, label %if.then53.out_failed_crit_edge, label %if.then56

if.then53.out_failed_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_failed

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %dir) #9
  br label %out_failed

if.end58:                                         ; preds = %if.end45
  call void @reiserfs_update_inode_transaction(ptr noundef nonnull %call14) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %dir) #9
  %i_op = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 7
  %40 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @reiserfs_dir_inode_operations, ptr %i_op, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 44
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @reiserfs_dir_operations, ptr %41, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 8
  %45 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %d_name, align 8
  %call61 = call fastcc i32 @reiserfs_add_entry(ptr noundef nonnull %th, ptr noundef %dir, ptr noundef %44, i32 noundef %46, ptr noundef nonnull %call14, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end72, label %if.then63

if.then63:                                        ; preds = %if.end58
  call void @clear_nlink(ptr noundef nonnull %call14) #9
  %47 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp64.not = icmp eq i32 %48, 1
  br i1 %cmp64.not, label %if.then63.if.end67_crit_edge, label %if.then66

if.then63.if.end67_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %dir) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then63.if.end67_crit_edge
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 14
  %49 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef nonnull %call14, i64 noundef %50) #9
  %call68 = call i32 @journal_end(ptr noundef nonnull %th) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %spec.select = select i1 %tobool69.not, i32 %call61, i32 %call68
  call void @unlock_new_inode(ptr noundef nonnull %call14) #9
  call void @iput(ptr noundef nonnull %call14) #9
  br label %out_failed

if.end72:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %i_size.i142 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %51 = ptrtoint ptr %i_size.i142 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %i_size.i142, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %dir, i64 noundef %52) #9
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef nonnull %call14) #9
  %call73 = call i32 @journal_end(ptr noundef nonnull %th) #9
  br label %out_failed

out_failed:                                       ; preds = %if.end72, %if.end67, %if.then56, %if.then53.out_failed_crit_edge, %if.then35
  %retval1.1 = phi i32 [ %call33, %if.then35 ], [ %call51, %if.then56 ], [ %call51, %if.then53.out_failed_crit_edge ], [ %spec.select, %if.end67 ], [ %call73, %if.end72 ]
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %54) #9
  br label %cleanup

cleanup:                                          ; preds = %out_failed, %if.then27, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then20 ], [ %call25, %if.then27 ], [ %retval1.1, %out_failed ], [ %call9, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %security) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #4 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %path = alloca %struct.treepath, align 4
  %de = alloca %struct.reiserfs_dir_entry, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #9
  %1 = getelementptr inbounds i8, ptr %path, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #9
  %4 = call ptr @memset(ptr %de, i32 255, i32 80)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt, align 4
  %call2 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %10, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = select i1 %tobool.not, i32 38, i32 46
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %12) #9
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call6 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %14, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_rmdir_crit_edge

if.end.out_rmdir_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rmdir

if.end9:                                          ; preds = %if.end
  %de_gen_number_bit_string = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 8
  %15 = ptrtoint ptr %de_gen_number_bit_string to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %de_gen_number_bit_string, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name, align 8
  %call11 = call fastcc i32 @reiserfs_find_entry(ptr noundef %dir, ptr noundef %17, i32 noundef %19, ptr noundef nonnull %path, ptr noundef nonnull %de)
  %20 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call11, label %if.end16 [
    i32 0, label %if.end9.end_rmdir_crit_edge
    i32 -2, label %if.then14
  ]

if.end9.end_rmdir_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_rmdir

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_rmdir

if.end16:                                         ; preds = %if.end9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  call void @reiserfs_update_inode_transaction(ptr noundef %22) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %dir) #9
  %de_objectid = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 10
  %23 = ptrtoint ptr %de_objectid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %de_objectid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp18.not = icmp eq i32 %24, %26
  br i1 %cmp18.not, label %if.end20, label %if.end16.end_rmdir_crit_edge

if.end16.end_rmdir_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_rmdir

if.end20:                                         ; preds = %if.end16
  %i_size.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 14
  %27 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.33)
  switch i64 %28, label %if.end20.end_rmdir_crit_edge [
    i64 48, label %if.end20.if.end24_crit_edge
    i64 35, label %if.end20.if.end24_crit_edge88
  ]

if.end20.if.end24_crit_edge88:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end20.end_rmdir_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_rmdir

if.end24:                                         ; preds = %if.end20.if.end24_crit_edge, %if.end20.if.end24_crit_edge88
  %de_entry_key = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 11
  %call25 = call i32 @reiserfs_cut_from_item(ptr noundef nonnull %th, ptr noundef nonnull %path, ptr noundef %de_entry_key, ptr noundef %dir, ptr noundef null, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.end_rmdir_crit_edge, label %if.end28

if.end24.end_rmdir_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_rmdir

if.end28:                                         ; preds = %if.end24
  %29 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %.off = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb32 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb32, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.reiserfs_rmdir, ptr noundef nonnull @.str.21, i32 noundef %31) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  call void @clear_nlink(ptr noundef %22) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 17
  %i_ctime34 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %34 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %35 = call ptr @memcpy(ptr %i_ctime34, ptr %i_mtime, i32 16)
  %36 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  %37 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %22, i64 noundef %38) #9
  %39 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp35.not = icmp eq i32 %41, 1
  br i1 %cmp35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %dir) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33.if.end37_crit_edge
  %de_entrylen = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 5
  %42 = ptrtoint ptr %de_entrylen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %de_entrylen, align 4
  %add38 = add i32 %43, 16
  %conv = zext i32 %add38 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %44 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_size, align 8
  %sub = sub i64 %45, %conv
  store i64 %sub, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %dir, i64 noundef %sub) #9
  call void @add_save_link(ptr noundef nonnull %th, ptr noundef %22, i32 noundef 0) #9
  %call39 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %call40 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #9
  br label %out_rmdir

out_rmdir:                                        ; preds = %if.end37, %if.end.out_rmdir_crit_edge
  %retval1.0 = phi i32 [ %call6, %if.end.out_rmdir_crit_edge ], [ %call39, %if.end37 ]
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %47) #9
  br label %cleanup

end_rmdir:                                        ; preds = %if.end24.end_rmdir_crit_edge, %if.end20.end_rmdir_crit_edge, %if.end16.end_rmdir_crit_edge, %if.then14, %if.end9.end_rmdir_crit_edge
  %retval1.1 = phi i32 [ -5, %if.then14 ], [ %call25, %if.end24.end_rmdir_crit_edge ], [ -2, %if.end9.end_rmdir_crit_edge ], [ -5, %if.end16.end_rmdir_crit_edge ], [ -39, %if.end20.end_rmdir_crit_edge ]
  call void @pathrelse(ptr noundef nonnull %path) #9
  %call42 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  %retval1.1.call42 = select i1 %tobool44.not, i32 %retval1.1, i32 %call42
  br label %cleanup

cleanup:                                          ; preds = %end_rmdir, %out_rmdir, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out_rmdir ], [ %retval1.1.call42, %end_rmdir ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #4 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %security = alloca %struct.reiserfs_security_handle, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %security) #9
  %1 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %security, align 4, !annotation !74
  %2 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !74
  %4 = getelementptr inbounds %struct.reiserfs_security_handle, ptr %security, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !74
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %11, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add8 = select i1 %tobool.not, i32 54, i32 224
  %call9 = tail call i32 @dquot_initialize(ptr noundef %dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call12 = tail call ptr @new_inode(ptr noundef %13) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %k_objectid.i = getelementptr i8, ptr %call12, i32 -260
  %14 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %k_objectid.i, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call12, ptr noundef %dir, i16 noundef zeroext %mode) #9
  %call1.i = tail call i32 @dquot_initialize(ptr noundef nonnull %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool17.not = icmp eq i32 %call1.i, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dquot_drop(ptr noundef nonnull %call12) #9
  tail call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %16, 32
  store i32 %or.i, ptr %i_flags.i, align 4
  tail call void @iput(ptr noundef nonnull %call12) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i32 @reiserfs_cache_default_acl(ptr noundef %dir) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call23 = call i32 @reiserfs_security_init(ptr noundef %dir, ptr noundef nonnull %call12, ptr noundef %d_name, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call12) #9
  call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i103 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags.i103 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags.i103, align 4
  %or.i104 = or i32 %18, 32
  store i32 %or.i104, ptr %i_flags.i103, align 4
  call void @iput(ptr noundef nonnull %call12) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %add22 = add i32 %call21, %add8
  %add27 = add i32 %add22, %call23
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %20) #9
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %call30 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %22, i32 noundef %add27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @dquot_drop(ptr noundef nonnull %call12) #9
  call void @make_bad_inode(ptr noundef nonnull %call12) #9
  %i_flags.i105 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4
  %23 = ptrtoint ptr %i_flags.i105 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags.i105, align 4
  %or.i106 = or i32 %24, 32
  store i32 %or.i106, ptr %i_flags.i105, align 4
  call void @iput(ptr noundef nonnull %call12) #9
  br label %out_failed

if.end34:                                         ; preds = %if.end26
  %call35 = call i32 @reiserfs_new_inode(ptr noundef nonnull %th, ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef null, i64 noundef 0, ptr noundef %dentry, ptr noundef nonnull %call12, ptr noundef nonnull %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_failed_crit_edge

if.end34.out_failed_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_failed

if.end38:                                         ; preds = %if.end34
  %i_op = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 7
  %25 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @reiserfs_special_inode_operations, ptr %i_op, align 8
  %26 = ptrtoint ptr %call12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %call12, align 8
  call void @init_special_inode(ptr noundef nonnull %call12, i16 noundef zeroext %27, i32 noundef %rdev) #9
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 14
  %28 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef nonnull %call12, i64 noundef %29) #9
  call void @reiserfs_update_inode_transaction(ptr noundef nonnull %call12) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %dir) #9
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 8
  %32 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d_name, align 8
  %call41 = call fastcc i32 @reiserfs_add_entry(ptr noundef nonnull %th, ptr noundef %dir, ptr noundef %31, i32 noundef %33, ptr noundef nonnull %call12, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %call12) #9
  %34 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef nonnull %call12, i64 noundef %35) #9
  %call44 = call i32 @journal_end(ptr noundef nonnull %th) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %spec.select = select i1 %tobool45.not, i32 %call41, i32 %call44
  call void @unlock_new_inode(ptr noundef nonnull %call12) #9
  call void @iput(ptr noundef nonnull %call12) #9
  br label %out_failed

if.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef nonnull %call12) #9
  %call49 = call i32 @journal_end(ptr noundef nonnull %th) #9
  br label %out_failed

out_failed:                                       ; preds = %if.end48, %if.then43, %if.end34.out_failed_crit_edge, %if.then32
  %retval1.1 = phi i32 [ %call30, %if.then32 ], [ %call35, %if.end34.out_failed_crit_edge ], [ %spec.select, %if.then43 ], [ %call49, %if.end48 ]
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %37) #9
  br label %cleanup

cleanup:                                          ; preds = %out_failed, %if.then24, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then18 ], [ %call23, %if.then24 ], [ %retval1.1, %out_failed ], [ %call9, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %security) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #4 align 64 {
entry:
  %old_entry_path = alloca %struct.treepath, align 4
  %new_entry_path = alloca %struct.treepath, align 4
  %dot_dot_entry_path = alloca %struct.treepath, align 4
  %new_entry_ih = alloca %struct.item_head, align 4
  %old_entry_ih = alloca %struct.item_head, align 4
  %dot_dot_ih = alloca %struct.item_head, align 4
  %old_de = alloca %struct.reiserfs_dir_entry, align 8
  %new_de = alloca %struct.reiserfs_dir_entry, align 8
  %dot_dot_de = alloca %struct.reiserfs_dir_entry, align 8
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %ctime = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %old_entry_path) #9
  %0 = getelementptr inbounds i8, ptr %old_entry_path, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %old_entry_path to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %old_entry_path, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %new_entry_path) #9
  %3 = getelementptr inbounds i8, ptr %new_entry_path, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = ptrtoint ptr %new_entry_path to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %new_entry_path, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %dot_dot_entry_path) #9
  %6 = getelementptr inbounds i8, ptr %dot_dot_entry_path, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 64)
  %8 = ptrtoint ptr %dot_dot_entry_path to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dot_dot_entry_path, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_entry_ih) #9
  %9 = call ptr @memset(ptr %new_entry_ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %old_entry_ih) #9
  %10 = call ptr @memset(ptr %old_entry_ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dot_dot_ih) #9
  %11 = call ptr @memset(ptr %dot_dot_ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %old_de) #9
  %12 = call ptr @memset(ptr %old_de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %new_de) #9
  %13 = call ptr @memset(ptr %new_de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %dot_dot_de) #9
  %14 = call ptr @memset(ptr %dot_dot_de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #9
  %15 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctime)
  %16 = call ptr @memset(ptr %ctime, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_mount_opt, align 4
  %and2 = and i32 %22, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %add = select i1 %tobool3.not, i32 59, i32 67
  %call4 = tail call i32 @dquot_initialize(ptr noundef %old_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @dquot_initialize(ptr noundef %new_dir) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i381 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i381 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i381, align 8
  %de_gen_number_bit_string = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %old_de, i32 0, i32 8
  %27 = ptrtoint ptr %de_gen_number_bit_string to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %de_gen_number_bit_string, align 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %29) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 8
  %32 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d_name, align 8
  %call16 = call fastcc i32 @reiserfs_find_entry(ptr noundef %old_dir, ptr noundef %31, i32 noundef %33, ptr noundef nonnull %old_entry_path, ptr noundef nonnull %old_de)
  call void @pathrelse(ptr noundef nonnull %old_entry_path) #9
  %34 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call16, label %if.end11.if.then22_crit_edge [
    i32 -2, label %if.then17
    i32 1, label %lor.lhs.false
  ]

if.end11.if.then22_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %36) #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %de_objectid = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %old_de, i32 0, i32 10
  %37 = ptrtoint ptr %de_objectid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %de_objectid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp21.not = icmp eq i32 %38, %40
  br i1 %cmp21.not, label %if.end24, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end11.if.then22_crit_edge
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %42) #9
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %24, align 8
  %45 = and i16 %44, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %45)
  %cmp26 = icmp eq i16 %45, 16384
  br i1 %cmp26, label %if.then28, label %if.end24.if.end51_crit_edge

if.end24.if.end51_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then28:                                        ; preds = %if.end24
  %tobool29.not = icmp eq ptr %26, null
  br i1 %tobool29.not, label %if.then28.if.end36_crit_edge, label %if.then30

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %if.then28
  %i_size.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 14
  %46 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.35)
  switch i64 %47, label %if.then33 [
    i64 48, label %if.then30.if.end36_crit_edge
    i64 35, label %if.then30.if.end36_crit_edge412
  ]

if.then30.if.end36_crit_edge412:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %49) #9
  br label %cleanup

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.then30.if.end36_crit_edge412, %if.then28.if.end36_crit_edge
  %de_gen_number_bit_string37 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %dot_dot_de, i32 0, i32 8
  %50 = ptrtoint ptr %de_gen_number_bit_string37 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %de_gen_number_bit_string37, align 8
  %call38 = call fastcc i32 @reiserfs_find_entry(ptr noundef %24, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %dot_dot_entry_path, ptr noundef nonnull %dot_dot_de)
  call void @pathrelse(ptr noundef nonnull %dot_dot_entry_path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 1
  br i1 %cmp39.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %52) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %de_objectid44 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %dot_dot_de, i32 0, i32 10
  %53 = ptrtoint ptr %de_objectid44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %de_objectid44, align 8
  %i_ino45 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %55 = ptrtoint ptr %i_ino45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_ino45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp46.not = icmp eq i32 %54, %56
  br i1 %cmp46.not, label %if.end43.if.end51_crit_edge, label %if.then48

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %58) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end43.if.end51_crit_edge, %if.end24.if.end51_crit_edge
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %call53 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %60, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %62) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %d_name58 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %name59 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name59, align 8
  %65 = ptrtoint ptr %d_name58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %d_name58, align 8
  %call62 = call fastcc i32 @reiserfs_add_entry(ptr noundef nonnull %th, ptr noundef %new_dir, ptr noundef %64, i32 noundef %66, ptr noundef %24, i32 noundef 0)
  %67 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call62, label %if.then71 [
    i32 -17, label %if.then65
    i32 0, label %if.end57.if.end77_crit_edge
  ]

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then65:                                        ; preds = %if.end57
  %tobool66.not = icmp eq ptr %26, null
  br i1 %tobool66.not, label %if.then67, label %if.then65.if.end77_crit_edge

if.then65.if.end77_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then67:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %69, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.reiserfs_rename, ptr noundef nonnull @.str.23) #13
  unreachable

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %70 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool74.not = icmp eq i32 %call72, 0
  %call62.call72 = select i1 %tobool74.not, i32 %call62, i32 %call72
  br label %cleanup

if.end77:                                         ; preds = %if.then65.if.end77_crit_edge, %if.end57.if.end77_crit_edge
  call void @reiserfs_update_inode_transaction(ptr noundef %old_dir) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %new_dir) #9
  call void @reiserfs_update_inode_transaction(ptr noundef %24) #9
  %tobool78.not = icmp eq ptr %26, null
  br i1 %tobool78.not, label %if.end77.if.end80_crit_edge, label %if.then79

if.end77.if.end80_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  call void @reiserfs_update_inode_transaction(ptr noundef nonnull %26) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end77.if.end80_crit_edge
  %i_sb81 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %de_entry_key = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %old_de, i32 0, i32 11
  %72 = ptrtoint ptr %i_sb81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb81, align 4
  %call82410 = call i32 @search_by_entry_key(ptr noundef %73, ptr noundef %de_entry_key, ptr noundef nonnull %old_entry_path, ptr noundef nonnull %old_de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82410)
  %cmp83.not411 = icmp eq i32 %call82410, 1
  br i1 %cmp83.not411, label %if.end88.lr.ph, label %if.end80.if.then85_crit_edge

if.end80.if.then85_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

if.end88.lr.ph:                                   ; preds = %if.end80
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %old_entry_path, i32 0, i32 2
  %i_sb90 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %de_gen_number_bit_string92 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %new_de, i32 0, i32 8
  %path_elements.i382 = getelementptr inbounds %struct.treepath, ptr %new_entry_path, i32 0, i32 2
  %de_entry_key117 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %dot_dot_de, i32 0, i32 11
  %path_elements.i388 = getelementptr inbounds %struct.treepath, ptr %dot_dot_entry_path, i32 0, i32 2
  br label %if.end88

if.then85:                                        ; preds = %while.cond.backedge.if.then85_crit_edge, %if.end80.if.then85_crit_edge
  call void @pathrelse(ptr noundef nonnull %old_entry_path) #9
  %call86 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %74 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %75) #9
  br label %cleanup

if.end88:                                         ; preds = %while.cond.backedge.if.end88_crit_edge, %if.end88.lr.ph
  %76 = ptrtoint ptr %old_entry_path to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old_entry_path, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %77
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %77, i32 1
  %80 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 5
  %82 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %81
  call void @copy_item_head(ptr noundef nonnull %old_entry_ih, ptr noundef %arrayidx.i.i) #9
  %84 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb90, align 4
  %86 = ptrtoint ptr %old_de to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %old_de, align 8
  %call91 = call i32 @reiserfs_prepare_for_journal(ptr noundef %85, ptr noundef %87, i32 noundef 1) #9
  %88 = ptrtoint ptr %de_gen_number_bit_string92 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %de_gen_number_bit_string92, align 8
  %89 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name59, align 8
  %91 = ptrtoint ptr %d_name58 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %d_name58, align 8
  %call97 = call fastcc i32 @reiserfs_find_entry(ptr noundef %new_dir, ptr noundef %90, i32 noundef %92, ptr noundef nonnull %new_entry_path, ptr noundef nonnull %new_de)
  %93 = zext i32 %call97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call97, label %if.then102 [
    i32 3, label %if.end88.if.end105_crit_edge
    i32 1, label %if.end88.if.end105_crit_edge413
  ]

if.end88.if.end105_crit_edge413:                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.end88.if.end105_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then102:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  call void @pathrelse(ptr noundef nonnull %new_entry_path) #9
  call void @pathrelse(ptr noundef nonnull %old_entry_path) #9
  %call103 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %94 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %95) #9
  br label %cleanup

if.end105:                                        ; preds = %if.end88.if.end105_crit_edge, %if.end88.if.end105_crit_edge413
  %96 = ptrtoint ptr %new_entry_path to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %new_entry_path, align 4
  %add.ptr.i383 = getelementptr %struct.path_element, ptr %path_elements.i382, i32 %97
  %98 = ptrtoint ptr %add.ptr.i383 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i383, align 4
  %pe_position.i384 = getelementptr %struct.path_element, ptr %path_elements.i382, i32 %97, i32 1
  %100 = ptrtoint ptr %pe_position.i384 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pe_position.i384, align 4
  %b_data.i.i.i385 = getelementptr inbounds %struct.buffer_head, ptr %99, i32 0, i32 5
  %102 = ptrtoint ptr %b_data.i.i.i385 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data.i.i.i385, align 4
  %add.ptr.i.i.i386 = getelementptr i8, ptr %103, i32 24
  %arrayidx.i.i387 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i386, i32 %101
  call void @copy_item_head(ptr noundef nonnull %new_entry_ih, ptr noundef %arrayidx.i.i387) #9
  %104 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb90, align 4
  %106 = ptrtoint ptr %new_de to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %new_de, align 8
  %call109 = call i32 @reiserfs_prepare_for_journal(ptr noundef %105, ptr noundef %107, i32 noundef 1) #9
  %108 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %24, align 8
  %110 = and i16 %109, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %110)
  %cmp113 = icmp eq i16 %110, 16384
  br i1 %cmp113, label %if.then115, label %if.end105.if.end129_crit_edge

if.end105.if.end129_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then115:                                       ; preds = %if.end105
  %111 = ptrtoint ptr %i_sb81 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb81, align 4
  %call118 = call i32 @search_by_entry_key(ptr noundef %112, ptr noundef %de_entry_key117, ptr noundef nonnull %dot_dot_entry_path, ptr noundef nonnull %dot_dot_de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 1
  br i1 %cmp119.not, label %if.end124, label %if.then121

if.then121:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  call void @pathrelse(ptr noundef nonnull %dot_dot_entry_path) #9
  call void @pathrelse(ptr noundef nonnull %new_entry_path) #9
  call void @pathrelse(ptr noundef nonnull %old_entry_path) #9
  %call122 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %113 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %114) #9
  br label %cleanup

if.end124:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %dot_dot_entry_path to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dot_dot_entry_path, align 4
  %add.ptr.i389 = getelementptr %struct.path_element, ptr %path_elements.i388, i32 %116
  %117 = ptrtoint ptr %add.ptr.i389 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i389, align 4
  %pe_position.i390 = getelementptr %struct.path_element, ptr %path_elements.i388, i32 %116, i32 1
  %119 = ptrtoint ptr %pe_position.i390 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pe_position.i390, align 4
  %b_data.i.i.i391 = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 5
  %121 = ptrtoint ptr %b_data.i.i.i391 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data.i.i.i391, align 4
  %add.ptr.i.i.i392 = getelementptr i8, ptr %122, i32 24
  %arrayidx.i.i393 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i392, i32 %120
  call void @copy_item_head(ptr noundef nonnull %dot_dot_ih, ptr noundef %arrayidx.i.i393) #9
  %123 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_sb90, align 4
  %125 = ptrtoint ptr %dot_dot_de to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dot_dot_de, align 8
  %call128 = call i32 @reiserfs_prepare_for_journal(ptr noundef %124, ptr noundef %126, i32 noundef 1) #9
  br label %if.end129

if.end129:                                        ; preds = %if.end124, %if.end105.if.end129_crit_edge
  %call130 = call i32 @comp_items(ptr noundef nonnull %new_entry_ih, ptr noundef nonnull %new_entry_path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %lor.lhs.false132, label %if.end129.if.then149_crit_edge

if.end129.if.then149_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

lor.lhs.false132:                                 ; preds = %if.end129
  %127 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name59, align 8
  %129 = ptrtoint ptr %d_name58 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %d_name58, align 8
  %call137 = call fastcc i32 @entry_points_to_object(ptr noundef %128, i32 noundef %130, ptr noundef nonnull %new_de, ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %lor.lhs.false132.if.then149_crit_edge, label %lor.lhs.false139

lor.lhs.false132.if.then149_crit_edge:            ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

lor.lhs.false139:                                 ; preds = %lor.lhs.false132
  %call140 = call i32 @comp_items(ptr noundef nonnull %old_entry_ih, ptr noundef nonnull %old_entry_path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %lor.lhs.false142, label %lor.lhs.false139.if.then149_crit_edge

lor.lhs.false139.if.then149_crit_edge:            ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

lor.lhs.false142:                                 ; preds = %lor.lhs.false139
  %131 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name, align 8
  %133 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %d_name, align 8
  %call147 = call fastcc i32 @entry_points_to_object(ptr noundef %132, i32 noundef %134, ptr noundef nonnull %old_de, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %lor.lhs.false142.if.then149_crit_edge, label %if.end162

lor.lhs.false142.if.then149_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

if.then149:                                       ; preds = %lor.lhs.false142.if.then149_crit_edge, %lor.lhs.false139.if.then149_crit_edge, %lor.lhs.false132.if.then149_crit_edge, %if.end129.if.then149_crit_edge
  %135 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i_sb90, align 4
  %137 = ptrtoint ptr %new_de to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %new_de, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %136, ptr noundef %138) #9
  %139 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_sb90, align 4
  %141 = ptrtoint ptr %old_de to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %old_de, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %140, ptr noundef %142) #9
  br i1 %cmp26, label %if.then158, label %if.then149.while.cond.backedge_crit_edge

if.then149.while.cond.backedge_crit_edge:         ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then158:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_sb90, align 4
  %145 = ptrtoint ptr %dot_dot_de to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dot_dot_de, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %144, ptr noundef %146) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then173, %if.then158, %if.then149.while.cond.backedge_crit_edge
  %147 = ptrtoint ptr %i_sb81 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i_sb81, align 4
  %call82 = call i32 @search_by_entry_key(ptr noundef %148, ptr noundef %de_entry_key, ptr noundef nonnull %old_entry_path, ptr noundef nonnull %old_de)
  %cmp83.not = icmp eq i32 %call82, 1
  br i1 %cmp83.not, label %while.cond.backedge.if.end88_crit_edge, label %while.cond.backedge.if.then85_crit_edge

while.cond.backedge.if.then85_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

while.cond.backedge.if.end88_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.end162:                                        ; preds = %lor.lhs.false142
  br i1 %cmp26, label %if.then167, label %if.end162.while.end_crit_edge

if.end162.while.end_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then167:                                       ; preds = %if.end162
  %call168 = call i32 @comp_items(ptr noundef nonnull %dot_dot_ih, ptr noundef nonnull %dot_dot_entry_path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %lor.lhs.false170, label %if.then167.if.then173_crit_edge

if.then167.if.then173_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then173

lor.lhs.false170:                                 ; preds = %if.then167
  %call171 = call fastcc i32 @entry_points_to_object(ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %dot_dot_de, ptr noundef %old_dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %lor.lhs.false170.if.then173_crit_edge, label %land.lhs.true186.critedge

lor.lhs.false170.if.then173_crit_edge:            ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then173

if.then173:                                       ; preds = %lor.lhs.false170.if.then173_crit_edge, %if.then167.if.then173_crit_edge
  %149 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i_sb90, align 4
  %151 = ptrtoint ptr %old_de to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %old_de, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %150, ptr noundef %152) #9
  %153 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i_sb90, align 4
  %155 = ptrtoint ptr %new_de to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %new_de, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %154, ptr noundef %156) #9
  %157 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i_sb90, align 4
  %159 = ptrtoint ptr %dot_dot_de to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dot_dot_de, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %158, ptr noundef %160) #9
  br label %while.cond.backedge

land.lhs.true186.critedge:                        ; preds = %lor.lhs.false170
  %161 = ptrtoint ptr %dot_dot_de to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dot_dot_de, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %162, align 4
  %165 = and i32 %164, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool189.not = icmp eq i32 %165, 0
  br i1 %tobool189.not, label %if.then190, label %land.lhs.true186.critedge.while.end_crit_edge

land.lhs.true186.critedge.while.end_crit_edge:    ; preds = %land.lhs.true186.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then190:                                       ; preds = %land.lhs.true186.critedge
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.reiserfs_rename, ptr noundef nonnull @.str.24, i32 noundef 1561, ptr noundef nonnull @__func__.reiserfs_rename) #13
  unreachable

while.end:                                        ; preds = %land.lhs.true186.critedge.while.end_crit_edge, %if.end162.while.end_crit_edge
  %de_deh = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %new_de, i32 0, i32 4
  %166 = ptrtoint ptr %de_deh to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %de_deh, align 8
  %de_entry_num = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %new_de, i32 0, i32 3
  %168 = ptrtoint ptr %de_entry_num to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %de_entry_num, align 4
  %deh_state = getelementptr %struct.reiserfs_de_head, ptr %167, i32 %169, i32 4
  %170 = ptrtoint ptr %deh_state to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %deh_state, align 4
  %or.i.i = or i32 %171, 67108864
  store i32 %or.i.i, ptr %deh_state, align 4
  %add.ptr.i394 = getelementptr i8, ptr %24, i32 -264
  %172 = ptrtoint ptr %add.ptr.i394 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %add.ptr.i394, align 1
  %174 = load ptr, ptr %de_deh, align 8
  %175 = load i32, ptr %de_entry_num, align 4
  %deh_dir_id.i = getelementptr %struct.reiserfs_de_head, ptr %174, i32 %175, i32 1
  %176 = ptrtoint ptr %deh_dir_id.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %173, ptr %deh_dir_id.i, align 1
  %k_objectid.i = getelementptr i8, ptr %24, i32 -260
  %177 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %k_objectid.i, align 1
  %179 = load ptr, ptr %de_deh, align 8
  %180 = load i32, ptr %de_entry_num, align 4
  %deh_objectid.i = getelementptr %struct.reiserfs_de_head, ptr %179, i32 %180, i32 2
  %181 = ptrtoint ptr %deh_objectid.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %178, ptr %deh_objectid.i, align 1
  %182 = ptrtoint ptr %new_de to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %new_de, align 8
  %call195 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %183) #9
  %de_deh196 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %old_de, i32 0, i32 4
  %184 = ptrtoint ptr %de_deh196 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %de_deh196, align 8
  %de_entry_num197 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %old_de, i32 0, i32 3
  %186 = ptrtoint ptr %de_entry_num197 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %de_entry_num197, align 4
  %deh_state199 = getelementptr %struct.reiserfs_de_head, ptr %185, i32 %187, i32 4
  %188 = ptrtoint ptr %deh_state199 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %deh_state199, align 4
  %and.i.i = and i32 %189, -67108865
  store i32 %and.i.i, ptr %deh_state199, align 4
  %190 = ptrtoint ptr %old_de to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %old_de, align 8
  %call202 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %191) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ctime, ptr noundef %old_dir) #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  %192 = call ptr @memcpy(ptr %i_mtime, ptr %ctime, i32 16)
  %193 = call ptr @memcpy(ptr %i_ctime, ptr %ctime, i32 16)
  %i_ctime203 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %i_mtime204 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %194 = call ptr @memcpy(ptr %i_mtime204, ptr %ctime, i32 16)
  %195 = call ptr @memcpy(ptr %i_ctime203, ptr %ctime, i32 16)
  %i_ctime205 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 17
  %196 = call ptr @memcpy(ptr %i_ctime205, ptr %ctime, i32 16)
  br i1 %tobool78.not, label %while.end.if.end217_crit_edge, label %if.then207

while.end.if.end217_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

if.then207:                                       ; preds = %while.end
  %197 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %26, align 8
  %199 = and i16 %198, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %199)
  %cmp211 = icmp eq i16 %199, 16384
  br i1 %cmp211, label %if.then213, label %if.else214

if.then213:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #11
  call void @clear_nlink(ptr noundef nonnull %26) #9
  br label %if.end215

if.else214:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %26) #9
  br label %if.end215

if.end215:                                        ; preds = %if.else214, %if.then213
  %i_ctime216 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 17
  %200 = call ptr @memcpy(ptr %i_ctime216, ptr %ctime, i32 16)
  %201 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 12
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.end215, %while.end.if.end217_crit_edge
  %savelink.0 = phi i32 [ %203, %if.end215 ], [ 1, %while.end.if.end217_crit_edge ]
  br i1 %cmp26, label %if.then222, label %if.end217.if.end243_crit_edge

if.end217.if.end243_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then222:                                       ; preds = %if.end217
  %add.ptr.i395 = getelementptr i8, ptr %new_dir, i32 -264
  %204 = ptrtoint ptr %add.ptr.i395 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %add.ptr.i395, align 1
  %de_deh.i396 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %dot_dot_de, i32 0, i32 4
  %206 = ptrtoint ptr %de_deh.i396 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %de_deh.i396, align 8
  %de_entry_num.i397 = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %dot_dot_de, i32 0, i32 3
  %208 = ptrtoint ptr %de_entry_num.i397 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %de_entry_num.i397, align 4
  %deh_dir_id.i398 = getelementptr %struct.reiserfs_de_head, ptr %207, i32 %209, i32 1
  %210 = ptrtoint ptr %deh_dir_id.i398 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %205, ptr %deh_dir_id.i398, align 1
  %k_objectid.i399 = getelementptr i8, ptr %new_dir, i32 -260
  %211 = ptrtoint ptr %k_objectid.i399 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %k_objectid.i399, align 1
  %213 = load ptr, ptr %de_deh.i396, align 8
  %214 = load i32, ptr %de_entry_num.i397, align 4
  %deh_objectid.i400 = getelementptr %struct.reiserfs_de_head, ptr %213, i32 %214, i32 2
  %215 = ptrtoint ptr %deh_objectid.i400 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 4)
  store i32 %212, ptr %deh_objectid.i400, align 1
  %216 = ptrtoint ptr %dot_dot_de to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dot_dot_de, align 8
  %call227 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %217) #9
  br i1 %tobool78.not, label %if.then229, label %if.then222.if.end238_crit_edge

if.then222.if.end238_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then229:                                       ; preds = %if.then222
  %218 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 12
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp230.not = icmp eq i32 %220, 1
  br i1 %cmp230.not, label %if.then229.if.end238_crit_edge, label %if.then232

if.then229.if.end238_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then232:                                       ; preds = %if.then229
  call void @inc_nlink(ptr noundef %new_dir) #9
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64534, i32 %222)
  %cmp233 = icmp ugt i32 %222, 64534
  br i1 %cmp233, label %if.then235, label %if.then232.if.end238_crit_edge

if.then232.if.end238_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then235:                                       ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  call void @set_nlink(ptr noundef %new_dir, i32 noundef 1) #9
  br label %if.end238

if.end238:                                        ; preds = %if.then235, %if.then232.if.end238_crit_edge, %if.then229.if.end238_crit_edge, %if.then222.if.end238_crit_edge
  %223 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 12
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp239.not = icmp eq i32 %225, 1
  br i1 %cmp239.not, label %if.end238.if.end243_crit_edge, label %if.then241

if.end238.if.end243_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then241:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef %old_dir) #9
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %if.end238.if.end243_crit_edge, %if.end217.if.end243_crit_edge
  call void @pathrelse(ptr noundef nonnull %new_entry_path) #9
  call void @pathrelse(ptr noundef nonnull %dot_dot_entry_path) #9
  %call245 = call i32 @reiserfs_cut_from_item(ptr noundef nonnull %th, ptr noundef nonnull %old_entry_path, ptr noundef %de_entry_key, ptr noundef %old_dir, ptr noundef null, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %if.then248, label %if.end243.if.end250_crit_edge

if.end243.if.end250_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #11
  %226 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %227, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.reiserfs_rename, ptr noundef nonnull @.str.26) #9
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end243.if.end250_crit_edge
  %de_entrylen = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %old_de, i32 0, i32 5
  %228 = ptrtoint ptr %de_entrylen to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %de_entrylen, align 4
  %add251 = add i32 %229, 16
  %conv252 = zext i32 %add251 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 14
  %230 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %i_size, align 8
  %sub = sub i64 %231, %conv252
  store i64 %sub, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %old_dir, i64 noundef %sub) #9
  %i_size.i402 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 14
  %232 = ptrtoint ptr %i_size.i402 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %i_size.i402, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %new_dir, i64 noundef %233) #9
  %i_size.i403 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 14
  %234 = ptrtoint ptr %i_size.i403 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %i_size.i403, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %24, i64 noundef %235) #9
  br i1 %tobool78.not, label %if.end250.if.end259_crit_edge, label %if.then254

if.end250.if.end259_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

if.then254:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %savelink.0)
  %cmp255 = icmp eq i32 %savelink.0, 0
  br i1 %cmp255, label %if.then257, label %if.then254.if.end258_crit_edge

if.then254.if.end258_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end258

if.then257:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #11
  call void @add_save_link(ptr noundef nonnull %th, ptr noundef nonnull %26, i32 noundef 0) #9
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %if.then254.if.end258_crit_edge
  %i_size.i404 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 14
  %236 = ptrtoint ptr %i_size.i404 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %i_size.i404, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef nonnull %26, i64 noundef %237) #9
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.end250.if.end259_crit_edge
  %call260 = call i32 @journal_end(ptr noundef nonnull %th) #9
  %238 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %239) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end259, %if.then121, %if.then102, %if.then85, %if.then71, %if.then55, %if.then48, %if.then41, %if.then33, %if.then22, %if.then17, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then17 ], [ -2, %if.then22 ], [ -5, %if.then41 ], [ -5, %if.then48 ], [ %call53, %if.then55 ], [ -5, %if.then85 ], [ -5, %if.then102 ], [ -5, %if.then121 ], [ %call260, %if.end259 ], [ %call62.call72, %if.then71 ], [ -39, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctime)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %dot_dot_de) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %new_de) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %old_de) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dot_dot_ih) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %old_entry_ih) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_entry_ih) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %dot_dot_entry_path) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %new_entry_path) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %old_entry_path) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_setattr(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_fileattr_get(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_cpu_key(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_new_inode(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dquot_drop(ptr noundef %inode) #9
  tail call void @make_bad_inode(ptr noundef %inode) #9
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %or = or i32 %1, 32
  store i32 %or, ptr %i_flags, align 4
  tail call void @iput(ptr noundef %inode) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_cache_default_acl(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_security_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_new_inode(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reiserfs_add_entry(ptr noundef %th, ptr noundef %dir, ptr noundef %name, i32 noundef %namelen, ptr nocapture noundef readonly %inode, i32 noundef %visible) unnamed_addr #4 align 64 {
entry:
  %entry_key = alloca %struct.cpu_key, align 8
  %path = alloca %struct.treepath, align 4
  %de = alloca %struct.reiserfs_dir_entry, align 8
  %bit_string = alloca [4 x i32], align 4
  %small_buf = alloca [48 x i8], align 1
  %tmp138 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entry_key) #9
  %0 = call ptr @memset(ptr %entry_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #9
  %1 = getelementptr inbounds i8, ptr %path, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 64)
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #9
  %4 = call ptr @memset(ptr %de, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bit_string) #9
  %5 = call ptr @memset(ptr %bit_string, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %small_buf) #9
  %6 = call ptr @memset(ptr %small_buf, i32 255, i32 48)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %7 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !75

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 454, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen)
  %tobool11.not = icmp eq i32 %namelen, 0
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %namelen)
  %cmp = icmp sgt i32 %namelen, 255
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end13
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %11 = zext i32 %namelen to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %namelen, label %if.end15.if.end16.i_crit_edge [
    i32 0, label %if.end15.get_third_component.exit_crit_edge
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true5.i
  ]

if.end15.get_third_component.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_third_component.exit

if.end15.if.end16.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end15
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %13)
  %cmp1.i = icmp eq i8 %13, 46
  br i1 %cmp1.i, label %land.lhs.true.i.get_third_component.exit_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i.get_third_component.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_third_component.exit

land.lhs.true5.i:                                 ; preds = %if.end15
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %15)
  %cmp8.i = icmp eq i8 %15, 46
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.if.end16.i_crit_edge

land.lhs.true5.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %arrayidx11.i = getelementptr i8, ptr %name, i32 1
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %17)
  %cmp13.i = icmp eq i8 %17, 46
  br i1 %cmp13.i, label %land.lhs.true10.i.get_third_component.exit_crit_edge, label %land.lhs.true10.i.if.end16.i_crit_edge

land.lhs.true10.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true10.i.get_third_component.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_third_component.exit

if.end16.i:                                       ; preds = %land.lhs.true10.i.if.end16.i_crit_edge, %land.lhs.true5.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge, %if.end15.if.end16.i_crit_edge
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_hash_function.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_hash_function.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_hash_function.i, align 4
  %call17.i = tail call i32 %21(ptr noundef %name, i32 noundef %namelen) #9
  %22 = and i32 %call17.i, 2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp20.i = icmp eq i32 %22, 0
  %.op.i = or i32 %22, 127
  %add.i = select i1 %cmp20.i, i32 255, i32 %.op.i
  br label %get_third_component.exit

get_third_component.exit:                         ; preds = %if.end16.i, %land.lhs.true10.i.get_third_component.exit_crit_edge, %land.lhs.true.i.get_third_component.exit_crit_edge, %if.end15.get_third_component.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end16.i ], [ 1, %if.end15.get_third_component.exit_crit_edge ], [ 1, %land.lhs.true.i.get_third_component.exit_crit_edge ], [ 2, %land.lhs.true10.i.get_third_component.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  call void @make_cpu_key(ptr noundef nonnull %entry_key, ptr noundef %dir, i64 noundef %conv, i32 noundef 3, i32 noundef 3) #9
  %sub = add nsw i32 %namelen, 7
  %and = and i32 %sub, -8
  %conv18 = add i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %conv18)
  %cmp19 = icmp ugt i32 %conv18, 48
  br i1 %cmp19, label %if.end8.i, label %get_third_component.exit.if.end26_crit_edge

get_third_component.exit.if.end26_crit_edge:      ; preds = %get_third_component.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end8.i:                                        ; preds = %get_third_component.exit
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv18, i32 noundef 3136) #15
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end26_crit_edge

if.end8.i.if.end26_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end8.i.if.end26_crit_edge, %get_third_component.exit.if.end26_crit_edge
  %buffer.0 = phi ptr [ %call9.i, %if.end8.i.if.end26_crit_edge ], [ %small_buf, %get_third_component.exit.if.end26_crit_edge ]
  %i_flags = getelementptr i8, ptr %dir, i32 -248
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags, align 8
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30 = icmp eq i32 %25, 0
  %add32 = add nsw i32 %namelen, 16
  %cond33 = select i1 %cmp30, i32 %add32, i32 %conv18
  %deh_location = getelementptr inbounds %struct.reiserfs_de_head, ptr %buffer.0, i32 0, i32 3
  %26 = ptrtoint ptr %deh_location to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %deh_location, align 1
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %entry_key, i32 0, i32 2
  %27 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %k_offset.i, align 8
  %conv35 = trunc i64 %28 to i32
  %29 = call i32 @llvm.bswap.i32(i32 %conv35)
  %30 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %buffer.0, align 1
  %deh_state = getelementptr inbounds %struct.reiserfs_de_head, ptr %buffer.0, i32 0, i32 4
  %31 = ptrtoint ptr %deh_state to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 0, ptr %deh_state, align 1
  %add.ptr.i222 = getelementptr i8, ptr %inode, i32 -264
  %32 = ptrtoint ptr %add.ptr.i222 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i222, align 8
  %deh_dir_id = getelementptr inbounds %struct.reiserfs_de_head, ptr %buffer.0, i32 0, i32 1
  %34 = ptrtoint ptr %deh_dir_id to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %deh_dir_id, align 1
  %k_objectid = getelementptr i8, ptr %inode, i32 -260
  %35 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %k_objectid, align 4
  %deh_objectid = getelementptr inbounds %struct.reiserfs_de_head, ptr %buffer.0, i32 0, i32 2
  %37 = ptrtoint ptr %deh_objectid to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %deh_objectid, align 1
  %add.ptr = getelementptr %struct.reiserfs_de_head, ptr %buffer.0, i32 1
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %namelen)
  call void @padd_item(ptr noundef %add.ptr, i32 noundef %and, i32 noundef %namelen) #9
  %39 = ptrtoint ptr %deh_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %deh_state, align 4
  %and.i.i = and i32 %40, -83886081
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %visible)
  %tobool49.not = icmp eq i32 %visible, 0
  %or.i.i = or i32 %and.i.i, 67108864
  %storemerge = select i1 %tobool49.not, i32 %and.i.i, i32 %or.i.i
  %41 = ptrtoint ptr %deh_state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge, ptr %deh_state, align 4
  %42 = call ptr @memset(ptr %bit_string, i32 0, i32 16)
  %de_gen_number_bit_string = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 8
  %43 = ptrtoint ptr %de_gen_number_bit_string to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bit_string, ptr %de_gen_number_bit_string, align 8
  %call60 = call fastcc i32 @reiserfs_find_entry(ptr noundef %dir, ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull %path, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end78, label %if.then63

if.then63:                                        ; preds = %if.end26
  %cmp65.not = icmp eq ptr %buffer.0, %small_buf
  br i1 %cmp65.not, label %if.then63.if.end68_crit_edge, label %if.then67

if.then63.if.end68_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %buffer.0) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then63.if.end68_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #9
  %44 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call60, label %if.then75 [
    i32 -2, label %if.end68.cleanup_crit_edge
    i32 1, label %if.end68.if.end77_crit_edge
  ]

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %46, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.reiserfs_add_entry, ptr noundef nonnull @.str.13, i32 noundef %call60) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end68.if.end77_crit_edge
  br label %cleanup

if.end78:                                         ; preds = %if.end26
  %call80 = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %bit_string, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call80)
  %cmp81 = icmp sgt i32 %call80, 127
  br i1 %cmp81, label %if.then83, label %if.end90

if.then83:                                        ; preds = %if.end78
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %48, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.reiserfs_add_entry, ptr noundef nonnull @.str.15) #9
  %cmp86.not = icmp eq ptr %buffer.0, %small_buf
  br i1 %cmp86.not, label %if.then83.if.end89_crit_edge, label %if.then88

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then88:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %buffer.0) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.then83.if.end89_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #9
  br label %cleanup

if.end90:                                         ; preds = %if.end78
  %49 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %buffer.0, align 1
  %51 = and i32 %50, -2130706561
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %or = or i32 %52, %call80
  %53 = call i32 @llvm.bswap.i32(i32 %or)
  %54 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %buffer.0, align 1
  %conv98 = zext i32 %or to i64
  %55 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv98, ptr %k_offset.i, align 8
  %56 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %max_hash_collisions = getelementptr inbounds %struct.reiserfs_sb_info, ptr %59, i32 0, i32 27, i32 2
  %60 = ptrtoint ptr %max_hash_collisions to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_hash_collisions, align 4
  %62 = call i32 @llvm.smax.i32(i32 %61, i32 %call80)
  %63 = ptrtoint ptr %max_hash_collisions to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %max_hash_collisions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp110.not = icmp eq i32 %call80, 0
  br i1 %cmp110.not, label %if.end90.if.end125_crit_edge, label %if.then112

if.end90.if.end125_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then112:                                       ; preds = %if.end90
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %call114 = call i32 @search_by_entry_key(ptr noundef %65, ptr noundef nonnull %entry_key, ptr noundef nonnull %path, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %if.then112.if.end125_crit_edge, label %if.then117

if.then112.if.end125_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then117:                                       ; preds = %if.then112
  %66 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %67, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.reiserfs_add_entry, ptr noundef nonnull @.str.17, ptr noundef nonnull %entry_key) #9
  %cmp120.not = icmp eq ptr %buffer.0, %small_buf
  br i1 %cmp120.not, label %if.then117.if.end123_crit_edge, label %if.then122

if.then117.if.end123_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then122:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %buffer.0) #9
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.then117.if.end123_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #9
  br label %cleanup

if.end125:                                        ; preds = %if.then112.if.end125_crit_edge, %if.end90.if.end125_crit_edge
  %call126 = call i32 @reiserfs_paste_into_item(ptr noundef %th, ptr noundef nonnull %path, ptr noundef nonnull %entry_key, ptr noundef %dir, ptr noundef nonnull %buffer.0, i32 noundef %cond33) #9
  %cmp128.not = icmp eq ptr %buffer.0, %small_buf
  br i1 %cmp128.not, label %if.end125.if.end131_crit_edge, label %if.then130

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %buffer.0) #9
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end125.if.end131_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool132.not = icmp eq i32 %call126, 0
  br i1 %tobool132.not, label %if.end135, label %if.then133

if.then133:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %call134 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #9
  br label %cleanup

if.end135:                                        ; preds = %if.end131
  %conv136 = sext i32 %cond33 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %68 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_size, align 8
  %add137 = add i64 %69, %conv136
  store i64 %add137, ptr %i_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp138) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp138, ptr noundef %dir) #9
  %70 = call ptr @memcpy(ptr %i_ctime, ptr %tmp138, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp138) #9
  %71 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %72 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %inode, align 8
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %74)
  %cmp141 = icmp eq i16 %74, 16384
  %brmerge = or i1 %tobool49.not, %cmp141
  br i1 %brmerge, label %if.end135.if.end145_crit_edge, label %if.then144

if.end135.if.end145_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %dir, i64 noundef %76) #9
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end135.if.end145_crit_edge
  %call146 = call i32 @reiserfs_check_path(ptr noundef nonnull %path) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %if.then133, %if.end123, %if.end89, %if.end77, %if.end68.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.end77 ], [ -16, %if.end89 ], [ -16, %if.end123 ], [ %call126, %if.then133 ], [ 0, %if.end145 ], [ -22, %do.end10.cleanup_crit_edge ], [ -36, %if.end13.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -5, %if.end68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %small_buf) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bit_string) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry_key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_inode_transaction(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @padd_item(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_paste_into_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_check_path(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_sd_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_cut_from_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_save_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_item_head(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_items(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @entry_points_to_object(ptr nocapture noundef readonly %name, i32 noundef %len, ptr nocapture noundef readonly %de, ptr noundef readonly %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.sroa.53.0.de.sroa_idx.i = getelementptr inbounds i8, ptr %de, i32 8
  %0 = ptrtoint ptr %tmp.sroa.53.0.de.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.sroa.53.0.copyload.i = load ptr, ptr %tmp.sroa.53.0.de.sroa_idx.i, align 8
  %tmp.sroa.6.0.de.sroa_idx.i = getelementptr inbounds i8, ptr %de, i32 12
  %1 = ptrtoint ptr %tmp.sroa.6.0.de.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.sroa.6.0.copyload.i = load i32, ptr %tmp.sroa.6.0.de.sroa_idx.i, align 4
  %u.i.i = getelementptr inbounds %struct.item_head, ptr %tmp.sroa.53.0.copyload.i, i32 0, i32 1
  %2 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %u.i.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #9
  %conv.i.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.sroa.6.0.copyload.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp slt i32 %tmp.sroa.6.0.copyload.i, %conv.i.i
  br i1 %cmp.not.i.i, label %do.end9.i.i, label %do.body4.i.i, !prof !70

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %tmp.sroa.7.0.de.sroa_idx.i = getelementptr inbounds i8, ptr %de, i32 16
  %5 = ptrtoint ptr %tmp.sroa.7.0.de.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.sroa.7.0.copyload.i = load ptr, ptr %tmp.sroa.7.0.de.sroa_idx.i, align 8
  %6 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.sroa.0.0.copyload.i = load ptr, ptr %de, align 8
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %tmp.sroa.0.0.copyload.i, i32 0, i32 5
  %7 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data.i.i.i.i, align 4
  %ih_item_location.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %tmp.sroa.53.0.copyload.i, i32 0, i32 3
  %9 = ptrtoint ptr %ih_item_location.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %ih_item_location.i.i.i.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  %conv.i.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.sroa.6.0.copyload.i)
  %tobool.not.i.i.i = icmp eq i32 %tmp.sroa.6.0.copyload.i, 0
  %ih_item_len.i.i.i = getelementptr inbounds %struct.item_head, ptr %tmp.sroa.53.0.copyload.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i.i, i32 %tmp.sroa.6.0.copyload.i
  %add.ptr1.i.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i, i32 -1
  %deh_location.i.i.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %add.ptr1.i.i.i, i32 0, i32 3
  %ih_item_len.sink.i.i.i = select i1 %tobool.not.i.i.i, ptr %ih_item_len.i.i.i, ptr %deh_location.i.i.i
  %12 = ptrtoint ptr %ih_item_len.sink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ih_item_len.sink.i.i.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  %conv4.i.i.i = zext i16 %14 to i32
  %deh_location5.i.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i.i, i32 %tmp.sroa.6.0.copyload.i, i32 3
  %15 = ptrtoint ptr %deh_location5.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %deh_location5.i.i.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %conv6.i.i.i = zext i16 %17 to i32
  %sub7.i.i.i = sub nsw i32 %conv4.i.i.i, %conv6.i.i.i
  %deh_state.i.i = getelementptr %struct.reiserfs_de_head, ptr %tmp.sroa.7.0.copyload.i, i32 %tmp.sroa.6.0.copyload.i, i32 4
  %18 = ptrtoint ptr %deh_state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %deh_state.i.i, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not.i.i = icmp eq i32 %20, 0
  %cond.neg.i.i = select i1 %tobool14.not.i.i, i32 0, i32 -44
  %sub.i.i = add nsw i32 %cond.neg.i.i, %sub7.i.i.i
  %deh_location.i.i = getelementptr %struct.reiserfs_de_head, ptr %tmp.sroa.7.0.copyload.i, i32 %tmp.sroa.6.0.copyload.i, i32 3
  %21 = ptrtoint ptr %deh_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %deh_location.i.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %conv18.i.i = zext i16 %23 to i32
  %add.ptr19.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv18.i.i
  %sub22.i.i = add nsw i32 %sub.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %sub22.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp24.i.i = icmp eq i8 %25, 0
  br i1 %cmp24.i.i, label %if.then26.i.i, label %do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge

do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_de_name_and_namelen.exit.i

if.then26.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i.i = tail call i32 @strlen(ptr noundef %add.ptr19.i.i) #14
  br label %set_de_name_and_namelen.exit.i

set_de_name_and_namelen.exit.i:                   ; preds = %if.then26.i.i, %do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge
  %tmp.sroa.9.0.i = phi i32 [ %call28.i.i, %if.then26.i.i ], [ %sub.i.i, %do.end9.i.i.set_de_name_and_namelen.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.sroa.9.0.i, i32 %len)
  %cmp.not.i = icmp eq i32 %tmp.sroa.9.0.i, %len
  br i1 %cmp.not.i, label %de_still_valid.exit, label %set_de_name_and_namelen.exit.i.return_crit_edge

set_de_name_and_namelen.exit.i.return_crit_edge:  ; preds = %set_de_name_and_namelen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

de_still_valid.exit:                              ; preds = %set_de_name_and_namelen.exit.i
  %de_name.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 7
  %26 = ptrtoint ptr %de_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %de_name.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %name, ptr %27, i32 %len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %de_still_valid.exit.return_crit_edge

de_still_valid.exit.return_crit_edge:             ; preds = %de_still_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %de_still_valid.exit
  %tobool1.not = icmp eq ptr %inode, null
  %28 = ptrtoint ptr %tmp.sroa.7.0.de.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tmp.sroa.7.0.de.sroa_idx.i, align 8
  %30 = ptrtoint ptr %tmp.sroa.6.0.de.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.sroa.6.0.de.sroa_idx.i, align 4
  %deh_state11 = getelementptr %struct.reiserfs_de_head, ptr %29, i32 %31, i32 4
  %32 = ptrtoint ptr %deh_state11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %deh_state11, align 4
  %34 = and i32 %33, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not = icmp eq i32 %34, 0
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %tobool13.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %36, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.entry_points_to_object, ptr noundef nonnull @.str.28) #13
  unreachable

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %de_objectid = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 10
  %37 = ptrtoint ptr %de_objectid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %de_objectid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp = icmp eq i32 %38, %40
  %cond = zext i1 %cmp to i32
  br label %return

if.end7:                                          ; preds = %if.end
  br i1 %tobool13.not, label %if.end7.return_crit_edge, label %if.then14

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.entry_points_to_object, ptr noundef nonnull @.str.28) #13
  unreachable

return:                                           ; preds = %if.end7.return_crit_edge, %if.end6, %de_still_valid.exit.return_crit_edge, %set_de_name_and_namelen.exit.i.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end6 ], [ 0, %de_still_valid.exit.return_crit_edge ], [ 1, %if.end7.return_crit_edge ], [ 0, %set_de_name_and_namelen.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_restore_prepared_buffer(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { noreturn nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/namei.c", i32 129, i32 4}
!2 = !{ptr @__func__.search_by_entry_key, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/namei.c", i32 145, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/reiserfs/namei.c", i32 155, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/namei.c", i32 415, i32 36}
!12 = !{ptr @reiserfs_dir_inode_operations, !13, !"reiserfs_dir_inode_operations", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/namei.c", i32 1649, i32 31}
!14 = !{ptr @reiserfs_symlink_inode_operations, !15, !"reiserfs_symlink_inode_operations", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/namei.c", i32 1672, i32 31}
!16 = !{ptr @reiserfs_special_inode_operations, !17, !"reiserfs_special_inode_operations", i1 false, i1 false}
!17 = !{!"../fs/reiserfs/namei.c", i32 1682, i32 31}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/reiserfs/namei.c", i32 325, i32 4}
!20 = !{ptr @__func__.reiserfs_find_entry, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/namei.c", i32 243, i32 2}
!24 = !{ptr @__func__.linear_search_in_dir_item, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/reiserfs/namei.c", i32 295, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/namei.c", i32 522, i32 4}
!30 = !{ptr @__func__.reiserfs_add_entry, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/reiserfs/namei.c", i32 535, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/reiserfs/namei.c", i32 554, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/reiserfs/namei.c", i32 1051, i32 3}
!40 = !{ptr @__func__.reiserfs_unlink, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/reiserfs/namei.c", i32 963, i32 3}
!44 = !{ptr @__func__.reiserfs_rmdir, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/reiserfs/namei.c", i32 1423, i32 4}
!48 = !{ptr @__func__.reiserfs_rename, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/namei.c", i32 1560, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/reiserfs/namei.c", i32 1627, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/reiserfs/namei.c", i32 1284, i32 4}
!57 = !{ptr @__func__.entry_points_to_object, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/namei.c", i32 1291, i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2154205228, i64 2154205711, i64 2154205265, i64 2154205321, i64 2154205355, i64 2154205379, i64 2154205420, i64 2154205441, i64 2154205469, i64 2154205503}
!72 = !{i64 2154207739, i64 2154208222, i64 2154207776, i64 2154207832, i64 2154207866, i64 2154207890, i64 2154207931, i64 2154207952, i64 2154207980, i64 2154208014}
!73 = !{i64 2154210466, i64 2154210949, i64 2154210503, i64 2154210559, i64 2154210593, i64 2154210617, i64 2154210658, i64 2154210679, i64 2154210707, i64 2154210741}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2154221905, i64 2154222389, i64 2154221942, i64 2154221998, i64 2154222032, i64 2154222056, i64 2154222097, i64 2154222118, i64 2154222146, i64 2154222180}
