; ModuleID = '/llk/IR_all_yes/fs/hfsplus/dir.c_pt.bc'
source_filename = "../fs/hfsplus/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.hfsplus_cat_entry = type { %struct.hfsplus_cat_file, [272 x i8] }
%struct.hfsplus_cat_file = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.84, i32, i32, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_perm = type { i32, i32, i8, i8, i16, i32 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { %struct.FInfo, %struct.FXInfo }
%struct.FInfo = type { i32, i32, i16, %struct.hfsp_point, i16 }
%struct.hfsp_point = type { i16, i16 }
%struct.FXInfo = type { i16, [8 x i8], i16, i32 }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
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
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.hfsplus_cat_thread = type { i16, i16, i32, %struct.hfsplus_unistr }
%struct.hfsplus_unistr = type { i16, [255 x i16] }
%struct.hfsplus_cat_key = type <{ i16, i32, %struct.hfsplus_unistr }>
%struct.hfsplus_readdir_data = type { %struct.list_head, ptr, %struct.hfsplus_cat_key }

@hfsplus_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @hfsplus_lookup, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_create, ptr @hfsplus_link, ptr @hfsplus_unlink, ptr @hfsplus_symlink, ptr @hfsplus_mkdir, ptr @hfsplus_rmdir, ptr @hfsplus_mknod, ptr @hfsplus_rename, ptr null, ptr @hfsplus_getattr, ptr @hfsplus_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_fileattr_set, ptr @hfsplus_fileattr_get, [36 x i8] undef }, align 128
@hfsplus_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfsplus_readdir, ptr null, ptr @hfsplus_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @hfsplus_dir_release, ptr @hfsplus_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iNode%d\00", [24 x i8] zeroinitializer }, align 32
@hfsplus_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hfsplus: invalid catalog entry type in lookup\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfsplus_lookup\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/hfsplus/dir.c\00", [47 x i8] zeroinitializer }, align 32
@hfsplus_lookup._entry_ptr = internal global ptr @hfsplus_lookup._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"temp%lu\00", [24 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfsplus: bad catalog folder thread\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hfsplus_readdir\00", [16 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry_ptr = internal global ptr @hfsplus_readdir._entry, section ".printk_index", align 4
@hfsplus_readdir._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfsplus: truncated catalog thread\0A\00", [59 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry_ptr.9 = internal global ptr @hfsplus_readdir._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.3, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfsplus: walked past end of dir\0A\00", [61 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry_ptr.13 = internal global ptr @hfsplus_readdir._entry.11, section ".printk_index", align 4
@hfsplus_readdir._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013hfsplus: small dir entry\0A\00", [36 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry_ptr.16 = internal global ptr @hfsplus_readdir._entry.14, section ".printk_index", align 4
@hfsplus_readdir._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013hfsplus: small file entry\0A\00", [35 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry_ptr.19 = internal global ptr @hfsplus_readdir._entry.17, section ".printk_index", align 4
@hfsplus_readdir._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfsplus: bad catalog entry type\0A\00", [61 x i8] zeroinitializer }, align 32
@hfsplus_readdir._entry_ptr.22 = internal global ptr @hfsplus_readdir._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@switch.table.hfsplus_readdir = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 2, i32 0, i32 0, i32 0, i32 6, i32 0, i32 8, i32 0, i32 10, i32 0, i32 12], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"hfsplus_dir_operations\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 576, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 101, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 113, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 375, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 172, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 177, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 181, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 193, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 213, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 229, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private constant [20 x i8] c"../fs/hfsplus/dir.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 252, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 3566, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"switch.table.hfsplus_readdir\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @hfsplus_lookup._entry, ptr @hfsplus_lookup._entry_ptr, ptr @hfsplus_readdir._entry, ptr @hfsplus_readdir._entry.11, ptr @hfsplus_readdir._entry.14, ptr @hfsplus_readdir._entry.17, ptr @hfsplus_readdir._entry.20, ptr @hfsplus_readdir._entry.7, ptr @hfsplus_readdir._entry_ptr, ptr @hfsplus_readdir._entry_ptr.13, ptr @hfsplus_readdir._entry_ptr.16, ptr @hfsplus_readdir._entry_ptr.19, ptr @hfsplus_readdir._entry_ptr.22, ptr @hfsplus_readdir._entry_ptr.9, ptr @hfsplus_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @switch.table.hfsplus_readdir], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_readdir._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_readdir._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_readdir._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_readdir._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_readdir._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hfsplus_readdir to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hfsplus_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfsplus_cat_entry, align 2
  %str = alloca %struct.qstr, align 8
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #7
  %1 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %d_fsdata, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cat_tree, align 4
  %call2 = call i32 @hfsplus_find_init(ptr noundef %8, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = inttoptr i32 %call2 to ptr
  br label %cleanup108

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fd, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call4 = call i32 @hfsplus_cat_build_key(ptr noundef %3, ptr noundef %11, i32 noundef %13, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.fail_crit_edge, label %again.preheader, !prof !52

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

again.preheader:                                  ; preds = %if.end
  %entrylength28 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %id33 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10
  %fdCreator = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10, i32 0, i32 0, i32 1
  %create_date = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %dev = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 5
  %name64 = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  br label %again

again:                                            ; preds = %if.else60.again_crit_edge, %again.preheader
  %linkid.0 = phi i32 [ 0, %again.preheader ], [ %55, %if.else60.again_crit_edge ]
  %call9 = call i32 @hfsplus_brec_read(ptr noundef nonnull %fd, ptr noundef nonnull %entry1, i32 noundef 520) #7
  %15 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %again.fail_crit_edge [
    i32 0, label %if.end15
    i32 -2, label %if.then13
  ]

again.fail_crit_edge:                             ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then13:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  br label %out

if.end15:                                         ; preds = %again
  %16 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %entry1, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %17, label %do.end [
    i16 1, label %if.then18
    i16 2, label %if.then27
  ]

if.then18:                                        ; preds = %if.end15
  %19 = ptrtoint ptr %entrylength28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entrylength28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %20)
  %cmp19 = icmp ult i32 %20, 88
  br i1 %cmp19, label %if.then18.fail_crit_edge, label %if.end22

if.then18.fail_crit_edge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %id33 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %id33, align 2
  %23 = inttoptr i32 %22 to ptr
  %24 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %d_fsdata, align 4
  br label %if.end92

if.then27:                                        ; preds = %if.end15
  %25 = ptrtoint ptr %entrylength28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entrylength28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %26)
  %cmp29 = icmp ult i32 %26, 248
  br i1 %cmp29, label %if.then27.fail_crit_edge, label %if.end32

if.then27.fail_crit_edge:                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end32:                                         ; preds = %if.then27
  %27 = ptrtoint ptr %id33 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %id33, align 2
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1751936619, i32 %30)
  %cmp34 = icmp eq i32 %30, 1751936619
  br i1 %cmp34, label %land.lhs.true, label %if.end32.if.else82_crit_edge

if.end32.if.else82_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

land.lhs.true:                                    ; preds = %if.end32
  %31 = ptrtoint ptr %fdCreator to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %fdCreator, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1751544619, i32 %32)
  %cmp37 = icmp eq i32 %32, 1751544619
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true.if.else82_crit_edge

land.lhs.true.if.else82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

land.lhs.true39:                                  ; preds = %land.lhs.true
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hidden_dir, align 4
  %tobool41.not = icmp eq ptr %36, null
  br i1 %tobool41.not, label %land.lhs.true39.if.else82_crit_edge, label %land.lhs.true42

land.lhs.true39.if.else82_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %37 = ptrtoint ptr %create_date to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %create_date, align 2
  %create_date46 = getelementptr i8, ptr %36, i32 -92
  %39 = ptrtoint ptr %create_date46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %create_date46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp47 = icmp eq i32 %38, %40
  br i1 %cmp47, label %land.lhs.true42.if.then55_crit_edge, label %lor.lhs.false

land.lhs.true42.if.then55_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.lhs.false:                                    ; preds = %land.lhs.true42
  %41 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_inode.i, align 8
  %create_date52 = getelementptr i8, ptr %44, i32 -92
  %45 = ptrtoint ptr %create_date52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %create_date52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %46)
  %cmp53 = icmp eq i32 %38, %46
  br i1 %cmp53, label %lor.lhs.false.if.then55_crit_edge, label %lor.lhs.false.if.else82_crit_edge

lor.lhs.false.if.else82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %land.lhs.true42.if.then55_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #7
  %47 = call ptr @memset(ptr %str, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %48 = call ptr @memset(ptr %name, i32 255, i32 32)
  %49 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_fsdata, align 4
  %tobool57.not = icmp eq ptr %50, null
  br i1 %tobool57.not, label %if.else60, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %50 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #7
  br label %if.end92

if.else60:                                        ; preds = %if.then55
  %52 = inttoptr i32 %28 to ptr
  %53 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %d_fsdata, align 4
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %dev, align 2
  %call62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %55)
  %56 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call62, ptr %str, align 8
  %57 = ptrtoint ptr %name64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %name, ptr %name64, align 8
  %58 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fd, align 4
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %hidden_dir67 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %hidden_dir67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hidden_dir67, align 4
  %i_ino68 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %i_ino68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_ino68, align 8
  %call69 = call i32 @hfsplus_cat_build_key(ptr noundef %3, ptr noundef %59, i32 noundef %65, ptr noundef nonnull %str) #7
  %cmp70 = icmp slt i32 %call69, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #7
  br i1 %cmp70, label %if.else60.fail_crit_edge, label %if.else60.again_crit_edge

if.else60.again_crit_edge:                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %again

if.else60.fail_crit_edge:                         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.else82:                                        ; preds = %lor.lhs.false.if.else82_crit_edge, %land.lhs.true39.if.else82_crit_edge, %land.lhs.true.if.else82_crit_edge, %if.end32.if.else82_crit_edge
  %66 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_fsdata, align 4
  %tobool84.not = icmp eq ptr %67, null
  br i1 %tobool84.not, label %if.then85, label %if.else82.if.end92_crit_edge

if.else82.if.end92_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then85:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  %68 = inttoptr i32 %28 to ptr
  %69 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %d_fsdata, align 4
  br label %if.end92

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %fail

if.end92:                                         ; preds = %if.then85, %if.else82.if.end92_crit_edge, %cleanup.thread, %if.end22
  %cnid.1 = phi i32 [ %22, %if.end22 ], [ %28, %if.else82.if.end92_crit_edge ], [ %28, %if.then85 ], [ %51, %cleanup.thread ]
  %linkid.2 = phi i32 [ %linkid.0, %if.end22 ], [ %linkid.0, %if.else82.if.end92_crit_edge ], [ %linkid.0, %if.then85 ], [ 0, %cleanup.thread ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  %70 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb, align 4
  %call94 = call ptr @hfsplus_iget(ptr noundef %71, i32 noundef %cnid.1) #7
  %cmp.i = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end92.cleanup108_crit_edge, label %if.end98

if.end92.cleanup108_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108

if.end98:                                         ; preds = %if.end92
  %72 = ptrtoint ptr %call94 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %call94, align 8
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %74)
  %cmp100 = icmp eq i16 %74, -32768
  br i1 %cmp100, label %if.then102, label %if.end98.out_crit_edge

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %linkid104 = getelementptr i8, ptr %call94, i32 -88
  %75 = ptrtoint ptr %linkid104 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %linkid.2, ptr %linkid104, align 8
  br label %out

out:                                              ; preds = %if.then102, %if.end98.out_crit_edge, %if.then13
  %inode.0 = phi ptr [ null, %if.then13 ], [ %call94, %if.then102 ], [ %call94, %if.end98.out_crit_edge ]
  %call106 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #7
  br label %cleanup108

fail:                                             ; preds = %do.end, %if.else60.fail_crit_edge, %if.then27.fail_crit_edge, %if.then18.fail_crit_edge, %again.fail_crit_edge, %if.end.fail_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.fail_crit_edge ], [ -5, %do.end ], [ -5, %if.then18.fail_crit_edge ], [ -5, %if.then27.fail_crit_edge ], [ %call9, %again.fail_crit_edge ], [ %call69, %if.else60.fail_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  %76 = inttoptr i32 %err.1 to ptr
  br label %cleanup108

cleanup108:                                       ; preds = %fail, %out, %if.end92.cleanup108_crit_edge, %if.then
  %retval.0 = phi ptr [ %9, %if.then ], [ %76, %fail ], [ %call106, %out ], [ %call94, %if.end92.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hfsplus_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_link(ptr noundef %src_dentry, ptr noundef %dst_dir, ptr noundef %dst_dentry) #0 align 64 {
entry:
  %str = alloca %struct.qstr, align 8
  %name = alloca [32 x i8], align 1
  %id = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %src_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %src_dentry, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %d_inode.i85 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i85 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i85, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #7
  %10 = call ptr @memset(ptr %str, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %11 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %id, align 4, !annotation !53
  %flags = getelementptr i8, ptr %5, i32 -84
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %5, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp = icmp eq i16 %17, -32768
  br i1 %cmp, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %src_dentry, i32 0, i32 11
  %20 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_fsdata, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %22)
  %cmp8 = icmp eq i32 %19, %22
  br i1 %cmp8, label %for.cond.preheader, label %if.end7.if.end32_crit_edge

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.cond.preheader:                               ; preds = %if.end7
  %name12 = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %d_name = getelementptr inbounds %struct.dentry, ptr %src_dentry, i32 0, i32 4
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %for.cond.preheader
  call void @get_random_bytes(ptr noundef nonnull %id, i32 noundef 4) #7
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %and11 = and i32 %24, 1073741823
  store i32 %and11, ptr %id, align 4
  %25 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name, ptr %name12, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %and11)
  %26 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call14, ptr %str, align 8
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  %29 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hidden_dir, align 4
  %call16 = call i32 @hfsplus_rename_cat(i32 noundef %28, ptr noundef %9, ptr noundef %d_name, ptr noundef %30, ptr noundef nonnull %str) #7
  %31 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call16, label %for.cond.out_crit_edge [
    i32 0, label %for.end
    i32 -17, label %for.cond.for.cond_crit_edge
  ]

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.end:                                          ; preds = %for.cond
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %linkid = getelementptr i8, ptr %5, i32 -88
  %34 = ptrtoint ptr %linkid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %linkid, align 8
  %next_cnid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 22
  %35 = ptrtoint ptr %next_cnid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %next_cnid, align 8
  %inc = add i32 %36, 1
  store i32 %inc, ptr %next_cnid, align 8
  %37 = inttoptr i32 %36 to ptr
  %38 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %d_fsdata, align 4
  %call27 = call i32 @hfsplus_create_cat(i32 noundef %36, ptr noundef %9, ptr noundef %d_name, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %file_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 23
  %39 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %file_count, align 4
  %inc31 = add i32 %40, 1
  store i32 %inc31, ptr %file_count, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end7.if.end32_crit_edge
  %next_cnid33 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 22
  %41 = ptrtoint ptr %next_cnid33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %next_cnid33, align 8
  %inc34 = add i32 %42, 1
  store i32 %inc34, ptr %next_cnid33, align 8
  %d_name35 = getelementptr inbounds %struct.dentry, ptr %dst_dentry, i32 0, i32 4
  %call36 = call i32 @hfsplus_create_cat(i32 noundef %42, ptr noundef %dst_dir, ptr noundef %d_name35, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @inc_nlink(ptr noundef %5) #7
  %43 = inttoptr i32 %42 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dst_dentry, i32 0, i32 11
  %44 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %d_fsdata.i, align 4
  call void @d_instantiate(ptr noundef %dst_dentry, ptr noundef %5) #7
  call void @ihold(ptr noundef %5) #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %5) #7
  %45 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #7
  %file_count40 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 23
  %46 = ptrtoint ptr %file_count40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %file_count40, align 4
  %inc41 = add i32 %47, 1
  store i32 %inc41, ptr %file_count40, align 4
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  call void @hfsplus_mark_mdb_dirty(ptr noundef %49) #7
  br label %out

out:                                              ; preds = %if.end39, %if.end32.out_crit_edge, %for.end.out_crit_edge, %for.cond.out_crit_edge
  %res.0 = phi i32 [ %call27, %for.end.out_crit_edge ], [ %call36, %if.end32.out_crit_edge ], [ 0, %if.end39 ], [ %call16, %for.cond.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %vh_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %str = alloca %struct.qstr, align 8
  %name = alloca [32 x i8], align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #7
  %6 = call ptr @memset(ptr %str, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 -344
  %flags = getelementptr i8, ptr %5, i32 -84
  %7 = call ptr @memset(ptr %name, i32 255, i32 32)
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #7
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata, align 4
  %12 = ptrtoint ptr %11 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp = icmp eq i32 %14, %12
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end17_crit_edge, label %if.then7

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then7:                                         ; preds = %land.lhs.true
  %name8 = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %17 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name, ptr %name8, align 8
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, i32 noundef %19)
  %20 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call11, ptr %str, align 8
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hidden_dir, align 4
  %call13 = call i32 @hfsplus_rename_cat(i32 noundef %22, ptr noundef %dir, ptr noundef %d_name, ptr noundef %24, ptr noundef nonnull %str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then15:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags, align 4
  %or = or i32 %26, 16
  store i32 %or, ptr %i_flags, align 4
  call void @drop_nlink(ptr noundef %5) #7
  br label %out

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %d_name18 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call19 = tail call i32 @hfsplus_delete_cat(i32 noundef %12, ptr noundef %dir, ptr noundef %d_name18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end22:                                         ; preds = %if.end17
  %27 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp23.not = icmp eq i32 %29, 0
  br i1 %cmp23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drop_nlink(ptr noundef %5) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %12)
  %cmp27 = icmp eq i32 %31, %12
  br i1 %cmp27, label %if.then28, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clear_nlink(ptr noundef %5) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool30.not = icmp eq i32 %33, 0
  br i1 %tobool30.not, label %if.then31, label %if.else51

if.then31:                                        ; preds = %if.end29
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %12)
  %cmp33.not = icmp eq i32 %35, %12
  br i1 %cmp33.not, label %if.else49, label %if.then34

if.then34:                                        ; preds = %if.then31
  %file_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 23
  %36 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %file_count, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %file_count, align 4
  %call.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #7
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then34
  %40 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino, align 8
  %hidden_dir41 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 9
  %42 = ptrtoint ptr %hidden_dir41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hidden_dir41, align 4
  %call42 = tail call i32 @hfsplus_delete_cat(i32 noundef %41, ptr noundef %43, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.then39.if.end54_crit_edge

if.then39.if.end54_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hfsplus_delete_inode(ptr noundef %5) #7
  br label %if.end54

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags46 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %i_flags46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_flags46, align 4
  %or47 = or i32 %45, 16
  store i32 %or47, ptr %i_flags46, align 4
  br label %if.end54

if.else49:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hfsplus_delete_inode(ptr noundef %5) #7
  br label %if.end54

if.else51:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %file_count52 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 23
  %46 = ptrtoint ptr %file_count52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %file_count52, align 4
  %dec53 = add i32 %47, -1
  store i32 %dec53, ptr %file_count52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.else49, %if.else, %if.then44, %if.then39.if.end54_crit_edge
  %res.0 = phi i32 [ 0, %if.else51 ], [ 0, %if.else ], [ %call42, %if.then39.if.end54_crit_edge ], [ 0, %if.then44 ], [ 0, %if.else49 ]
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %5) #7
  %48 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #7
  br label %out

out:                                              ; preds = %if.end54, %if.end17.out_crit_edge, %if.then15, %if.then7.out_crit_edge
  %res.1 = phi i32 [ %call13, %if.then7.out_crit_edge ], [ 0, %if.then15 ], [ %call19, %if.end17.out_crit_edge ], [ %res.0, %if.end54 ]
  call void @mutex_unlock(ptr noundef %vh_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %out ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call2 = tail call ptr @hfsplus_new_inode(ptr noundef %5, ptr noundef %dir, i16 noundef zeroext -24065) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strlen(ptr noundef %symname) #11
  %add = add i32 %call3, 1
  %call4 = tail call i32 @page_symlink(ptr noundef nonnull %call2, ptr noundef %symname, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end7:                                          ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call8 = tail call i32 @hfsplus_create_cat(i32 noundef %7, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_err_crit_edge

if.end7.out_err_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end11:                                         ; preds = %if.end7
  %call13 = tail call i32 @hfsplus_init_security(ptr noundef nonnull %call2, ptr noundef %dir, ptr noundef %d_name) #7
  %8 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call13, label %if.then16 [
    i32 -95, label %if.end11.if.end21_crit_edge
    i32 0, label %if.end11.if.end21_crit_edge49
  ]

if.end11.if.end21_crit_edge49:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %call19 = tail call i32 @hfsplus_delete_cat(i32 noundef %10, ptr noundef %dir, ptr noundef %d_name) #7
  br label %out_err

if.end21:                                         ; preds = %if.end11.if.end21_crit_edge, %if.end11.if.end21_crit_edge49
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %13 = inttoptr i32 %12 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %d_fsdata.i, align 4
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call2) #7
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call2, i32 noundef 7) #7
  br label %out

out_err:                                          ; preds = %if.then16, %if.end7.out_err_crit_edge, %if.end.out_err_crit_edge
  %res.1 = phi i32 [ %call4, %if.end.out_err_crit_edge ], [ %call8, %if.end7.out_err_crit_edge ], [ %call13, %if.then16 ]
  tail call void @clear_nlink(ptr noundef nonnull %call2) #7
  tail call void @hfsplus_delete_inode(ptr noundef nonnull %call2) #7
  tail call void @iput(ptr noundef nonnull %call2) #7
  br label %out

out:                                              ; preds = %out_err, %if.end21, %entry.out_crit_edge
  %res.2 = phi i32 [ %res.1, %out_err ], [ 0, %if.end21 ], [ -12, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vh_mutex) #7
  ret i32 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %call = tail call i32 @hfsplus_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %3)
  %cmp.not = icmp eq i64 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = tail call i32 @hfsplus_delete_cat(i32 noundef %9, ptr noundef %dir, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clear_nlink(ptr noundef %1) #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #7
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @hfsplus_delete_inode(ptr noundef %1) #7
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %vh_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -39, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %vh_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %vh_mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call2 = tail call ptr @hfsplus_new_inode(ptr noundef %5, ptr noundef %dir, i16 noundef zeroext %mode) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %6 = and i16 %mode, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %6, label %if.end.if.end19_crit_edge [
    i16 24576, label %if.end.if.then18_crit_edge
    i16 8192, label %if.end.if.then18_crit_edge66
    i16 4096, label %if.end.if.then18_crit_edge67
    i16 -16384, label %if.end.if.then18_crit_edge68
  ]

if.end.if.then18_crit_edge68:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.then18_crit_edge67:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.then18_crit_edge66:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end.if.then18_crit_edge, %if.end.if.then18_crit_edge66, %if.end.if.then18_crit_edge67, %if.end.if.then18_crit_edge68
  tail call void @init_special_inode(ptr noundef nonnull %call2, i16 noundef zeroext %mode, i32 noundef %rdev) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call20 = tail call i32 @hfsplus_create_cat(i32 noundef %9, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.failed_mknod_crit_edge

if.end19.failed_mknod_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_mknod

if.end23:                                         ; preds = %if.end19
  %call25 = tail call i32 @hfsplus_init_security(ptr noundef nonnull %call2, ptr noundef %dir, ptr noundef %d_name) #7
  %10 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call25, label %if.then30 [
    i32 -95, label %if.end23.if.end35_crit_edge
    i32 0, label %if.end23.if.end35_crit_edge69
  ]

if.end23.if.end35_crit_edge69:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %call33 = tail call i32 @hfsplus_delete_cat(i32 noundef %12, ptr noundef %dir, ptr noundef %d_name) #7
  br label %failed_mknod

if.end35:                                         ; preds = %if.end23.if.end35_crit_edge, %if.end23.if.end35_crit_edge69
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = inttoptr i32 %14 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %16 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %d_fsdata.i, align 4
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call2) #7
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call2, i32 noundef 7) #7
  br label %out

failed_mknod:                                     ; preds = %if.then30, %if.end19.failed_mknod_crit_edge
  %res.1 = phi i32 [ %call20, %if.end19.failed_mknod_crit_edge ], [ %call25, %if.then30 ]
  tail call void @clear_nlink(ptr noundef nonnull %call2) #7
  tail call void @hfsplus_delete_inode(ptr noundef nonnull %call2) #7
  tail call void @iput(ptr noundef nonnull %call2) #7
  br label %out

out:                                              ; preds = %failed_mknod, %if.end35, %entry.out_crit_edge
  %res.2 = phi i32 [ %res.1, %failed_mknod ], [ 0, %if.end35 ], [ -12, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vh_mutex) #7
  ret i32 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end.if.end10_crit_edge, label %if.then1

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then1:                                         ; preds = %if.end
  %2 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_dentry, align 8
  %4 = and i32 %3, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %4)
  %5 = icmp eq i32 %4, 2097152
  br i1 %5, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @hfsplus_rmdir(ptr noundef %new_dir, ptr noundef %new_dentry)
  br label %if.end6

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @hfsplus_unlink(ptr noundef %new_dir, ptr noundef %new_dentry)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %res.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %tobool7.not = icmp eq i32 %res.0, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata, align 4
  %8 = ptrtoint ptr %7 to i32
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %d_name11 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call12 = tail call i32 @hfsplus_rename_cat(i32 noundef %8, ptr noundef %old_dir, ptr noundef %d_name, ptr noundef %new_dir, ptr noundef %d_name11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_fsdata, align 4
  %d_fsdata16 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 11
  %11 = ptrtoint ptr %d_fsdata16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %d_fsdata16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %res.0, %if.end6.cleanup_crit_edge ], [ 0, %if.then14 ], [ %call12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_fileattr_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %entry1 = alloca %union.hfsplus_cat_entry, align 2
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #7
  %5 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %6 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %7 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %f_pos, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.not = icmp slt i64 %8, %10
  br i1 %cmp.not, label %if.end, label %entry.cleanup214_crit_edge

entry.cleanup214_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup214

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cat_tree, align 4
  %call3 = call i32 @hfsplus_find_init(ptr noundef %14, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup214_crit_edge

if.end.cleanup214_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup214

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 1531) #12
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end5
  %16 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fd, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  call void @hfsplus_cat_build_key_with_cnid(ptr noundef %3, ptr noundef %17, i32 noundef %19) #7
  %call10 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.end9
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i64 %21, label %if.end13.if.end50_crit_edge [
    i64 0, label %if.then15
    i64 1, label %if.end13.if.then23_crit_edge
  ]

if.end13.if.then23_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.end13.if.end50_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then15:                                        ; preds = %if.end13
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %29 to i64
  %call.i = call i32 %23(ptr noundef %ctx, ptr noundef nonnull @.str.23, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end20.thread, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20.thread:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1, ptr %pos, align 8
  br label %if.then23

if.then23:                                        ; preds = %if.end20.thread, %if.end13.if.then23_crit_edge
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %31 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %32)
  %cmp24 = icmp ugt i32 %32, 520
  br i1 %cmp24, label %if.then23.out_crit_edge, label %if.end28

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %if.then23
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %33 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %35 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %34, ptr noundef nonnull %entry1, i32 noundef %36, i32 noundef %32) #7
  %37 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %entry1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp30.not = icmp eq i16 %38, 3
  br i1 %cmp30.not, label %if.end34, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %out

if.end34:                                         ; preds = %if.end28
  %39 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp36 = icmp slt i32 %40, 10
  br i1 %cmp36, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %out

if.end44:                                         ; preds = %if.end34
  %parentID = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 2
  %41 = ptrtoint ptr %parentID to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %parentID, align 2
  %conv45 = zext i32 %42 to i64
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 8
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %pos, align 8
  %call.i277 = call i32 %44(ptr noundef %ctx, ptr noundef nonnull @.str.10, i32 noundef 2, i64 noundef %46, i64 noundef %conv45, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp.i278 = icmp eq i32 %call.i277, 0
  br i1 %cmp.i278, label %if.end48, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 2, ptr %pos, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end13.if.end50_crit_edge
  %48 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pos, align 8
  %50 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp53.not = icmp slt i64 %49, %51
  br i1 %cmp53.not, label %if.end56, label %if.end50.out_crit_edge

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end56:                                         ; preds = %if.end50
  %52 = trunc i64 %49 to i32
  %conv58 = add i32 %52, -1
  %call59 = call i32 @hfsplus_brec_goto(ptr noundef nonnull %fd, i32 noundef %conv58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %for.cond.preheader, label %if.end56.out_crit_edge

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.preheader:                               ; preds = %if.end56
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %entrylength73 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %bnode82 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %entryoffset83 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %mode133 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 4
  %id174 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end194.for.cond_crit_edge, %for.cond.preheader
  %53 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %key, align 4
  %parent = getelementptr inbounds %struct.hfsplus_cat_key, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %parent, align 1
  %57 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp64.not = icmp eq i32 %56, %58
  br i1 %cmp64.not, label %if.end72, label %do.end69

do.end69:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %out

if.end72:                                         ; preds = %for.cond
  %59 = ptrtoint ptr %entrylength73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %entrylength73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %60)
  %cmp74 = icmp ugt i32 %60, 520
  br i1 %cmp74, label %if.end72.out_crit_edge, label %if.end81

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end81:                                         ; preds = %if.end72
  %61 = ptrtoint ptr %bnode82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bnode82, align 4
  %63 = ptrtoint ptr %entryoffset83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %entryoffset83, align 4
  call void @hfsplus_bnode_read(ptr noundef %62, ptr noundef nonnull %entry1, i32 noundef %64, i32 noundef %60) #7
  %65 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %entry1, align 2
  %67 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1530, ptr %len, align 4
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %key, align 4
  %name = getelementptr inbounds %struct.hfsplus_cat_key, ptr %69, i32 0, i32 2
  %call86 = call i32 @hfsplus_uni2asc(ptr noundef %3, ptr noundef %name, ptr noundef nonnull %call7.i, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end81.out_crit_edge

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end89:                                         ; preds = %if.end81
  %70 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %66, label %do.end183 [
    i16 1, label %if.then93
    i16 2, label %if.then121
  ]

if.then93:                                        ; preds = %if.end89
  %71 = ptrtoint ptr %entrylength73 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %entrylength73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %72)
  %cmp95 = icmp ult i32 %72, 88
  br i1 %cmp95, label %do.end100, label %if.end103

do.end100:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %out

if.end103:                                        ; preds = %if.then93
  %73 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i, align 16
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hidden_dir, align 4
  %tobool105.not = icmp eq ptr %76, null
  br i1 %tobool105.not, label %if.end103.if.end112_crit_edge, label %land.lhs.true

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

land.lhs.true:                                    ; preds = %if.end103
  %i_ino108 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %i_ino108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_ino108, align 8
  %79 = ptrtoint ptr %id174 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %id174, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp109 = icmp eq i32 %78, %80
  br i1 %cmp109, label %land.lhs.true.next_crit_edge, label %land.lhs.true.if.end112_crit_edge

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

land.lhs.true.next_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %next

if.end112:                                        ; preds = %land.lhs.true.if.end112_crit_edge, %if.end103.if.end112_crit_edge
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  %83 = ptrtoint ptr %id174 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %id174, align 2
  %conv114 = zext i32 %84 to i64
  %85 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctx, align 8
  %87 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %pos, align 8
  %call.i282 = call i32 %86(ptr noundef %ctx, ptr noundef nonnull %call7.i, i32 noundef %82, i64 noundef %88, i64 noundef %conv114, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %cmp.i283 = icmp eq i32 %call.i282, 0
  br i1 %cmp.i283, label %if.end112.next_crit_edge, label %if.end112.for.end_crit_edge

if.end112.for.end_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end112.next_crit_edge:                         ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %next

if.then121:                                       ; preds = %if.end89
  %89 = ptrtoint ptr %entrylength73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %entrylength73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %90)
  %cmp124 = icmp ult i32 %90, 248
  br i1 %cmp124, label %cleanup, label %if.end132

if.end132:                                        ; preds = %if.then121
  %91 = ptrtoint ptr %mode133 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %mode133, align 2
  %93 = lshr i16 %92, 12
  %94 = trunc i16 %93 to i4
  %switch.tableidx = add i4 %94, -1
  %95 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %95)
  %96 = icmp ult i4 %switch.tableidx, -4
  br i1 %96, label %switch.lookup, label %if.end132.if.end173_crit_edge

if.end132.if.end173_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

switch.lookup:                                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %97 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.hfsplus_readdir, i32 0, i32 %97
  %98 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %98)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end173

if.end173:                                        ; preds = %switch.lookup, %if.end132.if.end173_crit_edge
  %type122.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end132.if.end173_crit_edge ]
  %99 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len, align 4
  %101 = ptrtoint ptr %id174 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %id174, align 2
  %conv175 = zext i32 %102 to i64
  %103 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ctx, align 8
  %105 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %pos, align 8
  %call.i285 = call i32 %104(ptr noundef %ctx, ptr noundef nonnull %call7.i, i32 noundef %100, i64 noundef %106, i64 noundef %conv175, i32 noundef %type122.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %cmp.i286 = icmp eq i32 %call.i285, 0
  br i1 %cmp.i286, label %if.end173.next_crit_edge, label %if.end173.for.end_crit_edge

if.end173.for.end_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end173.next_crit_edge:                         ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %next

cleanup:                                          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %out

do.end183:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %out

next:                                             ; preds = %if.end173.next_crit_edge, %if.end112.next_crit_edge, %land.lhs.true.next_crit_edge
  %107 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %pos, align 8
  %inc = add i64 %108, 1
  store i64 %inc, ptr %pos, align 8
  %109 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %110)
  %cmp191.not = icmp slt i64 %inc, %110
  br i1 %cmp191.not, label %if.end194, label %next.out_crit_edge

next.out_crit_edge:                               ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end194:                                        ; preds = %next
  %call195 = call i32 @hfsplus_brec_goto(ptr noundef nonnull %fd, i32 noundef 1) #7
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end194.for.cond_crit_edge, label %if.end194.out_crit_edge

if.end194.out_crit_edge:                          ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end194.for.cond_crit_edge:                     ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %if.end173.for.end_crit_edge, %if.end112.for.end_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %111 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %private_data, align 4
  %tobool199.not = icmp eq ptr %112, null
  br i1 %tobool199.not, label %if.then200, label %for.end.if.end211_crit_edge

for.end.if.end211_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then200:                                       ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %113 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i275 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %113, i32 noundef 3264, i32 noundef 532) #12
  %tobool202.not = icmp eq ptr %call7.i275, null
  br i1 %tobool202.not, label %if.then200.out_crit_edge, label %if.end204

if.then200.out_crit_edge:                         ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end204:                                        ; preds = %if.then200
  %114 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i275, ptr %private_data, align 4
  %file206 = getelementptr inbounds %struct.hfsplus_readdir_data, ptr %call7.i275, i32 0, i32 1
  %115 = ptrtoint ptr %file206 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %file, ptr %file206, align 8
  %open_dir_lock = getelementptr i8, ptr %1, i32 -56
  call void @_raw_spin_lock(ptr noundef %open_dir_lock) #7
  %open_dir_list = getelementptr i8, ptr %1, i32 -64
  %116 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %open_dir_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i275, ptr noundef %open_dir_list, ptr noundef %117) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end204.list_add.exit_crit_edge

if.end204.list_add.exit_crit_edge:                ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i275, ptr %prev1.i.i, align 4
  %119 = ptrtoint ptr %call7.i275 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %call7.i275, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i275, i32 0, i32 1
  %120 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %open_dir_list, ptr %prev3.i.i, align 4
  %121 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %call7.i275, ptr %open_dir_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end204.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_dir_lock) #7
  br label %if.end211

if.end211:                                        ; preds = %list_add.exit, %for.end.if.end211_crit_edge
  %rd.0 = phi ptr [ %112, %for.end.if.end211_crit_edge ], [ %call7.i275, %list_add.exit ]
  %key212 = getelementptr inbounds %struct.hfsplus_readdir_data, ptr %rd.0, i32 0, i32 2
  %122 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %key, align 4
  %124 = call ptr @memcpy(ptr %key212, ptr %123, i32 518)
  br label %out

out:                                              ; preds = %if.end211, %if.then200.out_crit_edge, %if.end194.out_crit_edge, %next.out_crit_edge, %do.end183, %cleanup, %do.end100, %if.end81.out_crit_edge, %if.end72.out_crit_edge, %do.end69, %if.end56.out_crit_edge, %if.end50.out_crit_edge, %if.end44.out_crit_edge, %do.end41, %do.end, %if.then23.out_crit_edge, %if.then15.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge
  %err.3 = phi i32 [ %call10, %if.end9.out_crit_edge ], [ -5, %do.end ], [ -5, %do.end41 ], [ 0, %if.end50.out_crit_edge ], [ %call59, %if.end56.out_crit_edge ], [ -5, %do.end69 ], [ -5, %do.end100 ], [ 0, %if.end211 ], [ -5, %cleanup ], [ -5, %do.end183 ], [ 0, %if.end44.out_crit_edge ], [ 0, %if.then15.out_crit_edge ], [ -12, %if.end5.out_crit_edge ], [ -5, %if.then23.out_crit_edge ], [ -12, %if.then200.out_crit_edge ], [ -5, %if.end72.out_crit_edge ], [ %call195, %if.end194.out_crit_edge ], [ 0, %next.out_crit_edge ], [ %call86, %if.end81.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #7
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  br label %cleanup214

cleanup214:                                       ; preds = %out, %if.end.cleanup214_crit_edge, %entry.cleanup214_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ 0, %entry.cleanup214_crit_edge ], [ %call3, %if.end.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_dir_release(ptr noundef %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %open_dir_lock = getelementptr i8, ptr %inode, i32 -56
  tail call void @_raw_spin_lock(ptr noundef %open_dir_lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %open_dir_lock) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_cat_build_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_rename_cat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_create_cat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_mark_mdb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_delete_cat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_delete_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_new_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_cat_build_key_with_cnid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_rec_by_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_goto(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_uni2asc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @hfsplus_dir_inode_operations, !1, !"hfsplus_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/dir.c", i32 560, i32 31}
!2 = !{ptr @hfsplus_dir_operations, !3, !"hfsplus_dir_operations", i1 false, i1 false}
!3 = !{!"../fs/hfsplus/dir.c", i32 576, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hfsplus/dir.c", i32 101, i32 29}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/dir.c", i32 113, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hfsplus_lookup._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @hfsplus_lookup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hfsplus/dir.c", i32 375, i32 27}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hfsplus/dir.c", i32 172, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hfsplus_readdir._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @hfsplus_readdir._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/hfsplus/dir.c", i32 177, i32 4}
!21 = !{ptr @hfsplus_readdir._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @hfsplus_readdir._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/hfsplus/dir.c", i32 181, i32 22}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/hfsplus/dir.c", i32 193, i32 4}
!27 = !{ptr @hfsplus_readdir._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hfsplus_readdir._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/hfsplus/dir.c", i32 213, i32 5}
!31 = !{ptr @hfsplus_readdir._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hfsplus_readdir._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/hfsplus/dir.c", i32 229, i32 5}
!35 = !{ptr @hfsplus_readdir._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hfsplus_readdir._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/hfsplus/dir.c", i32 252, i32 4}
!39 = !{ptr @hfsplus_readdir._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hfsplus_readdir._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"auto-init"}
