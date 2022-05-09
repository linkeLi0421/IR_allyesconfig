; ModuleID = '/llk/IR_all_yes/fs/jfs/inode.c_pt.bc'
source_filename = "../fs/jfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bmap = type { %struct.dbmap, ptr, %struct.mutex, [128 x %struct.atomic_t], ptr }
%struct.dbmap = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8 }
%struct.xad = type { i8, [2 x i8], i8, i32, %struct.pxd_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@jfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_file_operations = external dso_local constant %struct.file_operations, align 4
@jfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @jfs_writepage, ptr @jfs_readpage, ptr @jfs_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @jfs_readahead, ptr @jfs_write_begin, ptr @nobh_write_end, ptr @jfs_bmap, ptr null, ptr null, ptr null, ptr @jfs_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_fast_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jfs_commit_inode.noisy = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@jfs_commit_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016In jfs_commit_inode, inode = 0x%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jfs_commit_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/jfs/inode.c\00", [17 x i8] zeroinitializer }, align 32
@jfs_commit_inode._entry_ptr = internal global ptr @jfs_commit_inode._entry, section ".printk_index", align 4
@jfs_commit_inode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013jfs_commit_inode(0x%p) called on read-only volume\0A\00", [43 x i8] zeroinitializer }, align 32
@jfs_commit_inode._entry_ptr.5 = internal global ptr @jfs_commit_inode._entry.3, section ".printk_index", align 4
@jfs_commit_inode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Is remount racy?\0A\00", [44 x i8] zeroinitializer }, align 32
@jfs_commit_inode._entry_ptr.8 = internal global ptr @jfs_commit_inode._entry.6, section ".printk_index", align 4
@jfs_write_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013jfs_write_inode: jfs_commit_inode failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jfs_write_inode\00", [16 x i8] zeroinitializer }, align 32
@jfs_write_inode._entry_ptr = internal global ptr @jfs_write_inode._entry, section ".printk_index", align 4
@jfs_evict_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016In jfs_evict_inode, inode = 0x%p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jfs_evict_inode\00", [16 x i8] zeroinitializer }, align 32
@jfs_evict_inode._entry_ptr = internal global ptr @jfs_evict_inode._entry, section ".printk_index", align 4
@jfs_dirty_inode.noisy = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@jfs_dirty_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013jfs_dirty_inode called on read-only volume\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jfs_dirty_inode\00", [16 x i8] zeroinitializer }, align 32
@jfs_dirty_inode._entry_ptr = internal global ptr @jfs_dirty_inode._entry, section ".printk_index", align 4
@jfs_dirty_inode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.14, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_dirty_inode._entry_ptr.16 = internal global ptr @jfs_dirty_inode._entry.15, section ".printk_index", align 4
@jfs_truncate_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jfs_truncate_nolock\00", [44 x i8] zeroinitializer }, align 32
@jfs_truncate_nolock._entry_ptr = internal global ptr @jfs_truncate_nolock._entry, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"length >= 0\00", [20 x i8] zeroinitializer }, align 32
@jfs_truncate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016jfs_truncate: size = 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jfs_truncate\00", [19 x i8] zeroinitializer }, align 32
@jfs_truncate._entry_ptr = internal global ptr @jfs_truncate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"jfs_aops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 359, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 77, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 79, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 93, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 95, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 133, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 143, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"noisy\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 181, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 188, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 189, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 380, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [18 x i8] c"../fs/jfs/inode.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 417, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @jfs_commit_inode._entry, ptr @jfs_commit_inode._entry.3, ptr @jfs_commit_inode._entry.6, ptr @jfs_commit_inode._entry_ptr, ptr @jfs_commit_inode._entry_ptr.5, ptr @jfs_commit_inode._entry_ptr.8, ptr @jfs_dirty_inode._entry, ptr @jfs_dirty_inode._entry.15, ptr @jfs_dirty_inode._entry_ptr, ptr @jfs_dirty_inode._entry_ptr.16, ptr @jfs_evict_inode._entry, ptr @jfs_evict_inode._entry_ptr, ptr @jfs_truncate._entry, ptr @jfs_truncate._entry_ptr, ptr @jfs_truncate_nolock._entry, ptr @jfs_truncate_nolock._entry_ptr, ptr @jfs_write_inode._entry, ptr @jfs_write_inode._entry_ptr, ptr @jfs_aops, ptr @jfs_commit_inode.noisy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @jfs_dirty_inode.noisy, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_commit_inode.noisy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_commit_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_commit_inode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_commit_inode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_write_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_evict_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_dirty_inode.noisy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_dirty_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_dirty_inode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_truncate_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_truncate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jfs_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @diRead(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iget_failed(ptr noundef nonnull %call) #8
  %2 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call, align 8
  %5 = and i16 %4, -4096
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.else38 [
    i16 -32768, label %if.then12
    i16 16384, label %if.then18
    i16 -24576, label %if.then26
  ]

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @jfs_file_inode_operations, ptr %i_op, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @jfs_file_operations, ptr %8, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @jfs_aops, ptr %a_ops, align 4
  br label %if.end43

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %i_op19 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %i_op19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @jfs_dir_inode_operations, ptr %i_op19, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @jfs_dir_operations, ptr %14, align 8
  br label %if.end43

if.then26:                                        ; preds = %if.end8
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %17)
  %cmp27 = icmp sgt i64 %17, 255
  %i_op30 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  br i1 %cmp27, label %if.then29, label %if.else33

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %i_op30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @page_symlink_inode_operations, ptr %i_op30, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call) #8
  %i_mapping31 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping31, align 8
  %a_ops32 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %a_ops32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @jfs_aops, ptr %a_ops32, align 4
  br label %if.end43

if.else33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %i_op30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @jfs_fast_symlink_inode_operations, ptr %i_op30, align 8
  %23 = getelementptr i8, ptr %call, i32 -368
  %24 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 48
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 4
  %idxprom = trunc i64 %17 to i32
  %arrayidx = getelementptr i8, ptr %23, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end43

if.else38:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %i_op39 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %i_op39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @jfs_file_inode_operations, ptr %i_op39, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 13
  %28 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_rdev, align 8
  tail call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %4, i32 noundef %29) #8
  br label %if.end43

if.end43:                                         ; preds = %if.else38, %if.else33, %if.then29, %if.then18, %if.then12
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then6 ], [ %call, %if.end43 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diRead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_commit_inode(ptr noundef %inode, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  %inode.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %inode.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %inode) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode.addr, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %do.end3.cleanup_crit_edge, label %lor.lhs.false

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end3
  %cflag = getelementptr i8, ptr %3, i32 -768
  %7 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cflag, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log.i, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %if.then11, label %if.end59

if.then11:                                        ; preds = %if.end8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 8
  %18 = and i16 %17, -4096
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %18, label %land.lhs.true [
    i16 8192, label %if.then11.cleanup_crit_edge
    i16 24576, label %if.then11.cleanup_crit_edge82
    i16 4096, label %if.then11.cleanup_crit_edge83
    i16 -16384, label %if.then11.cleanup_crit_edge84
  ]

if.then11.cleanup_crit_edge84:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.cleanup_crit_edge83:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.cleanup_crit_edge82:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then11
  %20 = load i32, ptr @jfs_commit_inode.noisy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool32.not = icmp eq i32 %20, 0
  br i1 %tobool32.not, label %land.lhs.true.cleanup_crit_edge, label %do.body34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body34:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %21 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp35 = icmp sgt i32 %21, 0
  br i1 %cmp35, label %do.body46, label %do.body34.do.end57_crit_edge

do.body34.do.end57_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

do.body46:                                        ; preds = %do.body34
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp47 = icmp sgt i32 %.pr, 0
  br i1 %cmp47, label %do.end52, label %do.body46.do.end57_crit_edge

do.body46.do.end57_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %do.end57

do.end57:                                         ; preds = %do.end52, %do.body46.do.end57_crit_edge, %do.body34.do.end57_crit_edge
  %22 = load i32, ptr @jfs_commit_inode.noisy, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr @jfs_commit_inode.noisy, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end8
  %call60 = tail call zeroext i16 @txBegin(ptr noundef %11, i32 noundef 8192) #8
  %23 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inode.addr, align 4
  %commit_mutex = getelementptr i8, ptr %24, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool62.not = icmp eq i32 %27, 0
  br i1 %tobool62.not, label %if.end59.if.end71_crit_edge, label %land.lhs.true63

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.end59
  %cflag65 = getelementptr i8, ptr %24, i32 -768
  %28 = ptrtoint ptr %cflag65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %cflag65, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool67.not = icmp eq i32 %30, 0
  br i1 %tobool67.not, label %land.lhs.true63.if.end71_crit_edge, label %if.then68

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then68:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool69.not = icmp ne i32 %wait, 0
  %cond = zext i1 %tobool69.not to i32
  %call70 = call i32 @txCommit(i16 noundef zeroext %call60, i32 noundef 1, ptr noundef nonnull %inode.addr, i32 noundef %cond) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true63.if.end71_crit_edge, %if.end59.if.end71_crit_edge
  %rc.0 = phi i32 [ %call70, %if.then68 ], [ 0, %land.lhs.true63.if.end71_crit_edge ], [ 0, %if.end59.if.end71_crit_edge ]
  call void @txEnd(i16 noundef zeroext %call60) #8
  %31 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inode.addr, align 4
  %commit_mutex73 = getelementptr i8, ptr %32, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex73) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end57, %land.lhs.true.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then11.cleanup_crit_edge82, %if.then11.cleanup_crit_edge83, %if.then11.cleanup_crit_edge84, %lor.lhs.false.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end71 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end3.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge82 ], [ 0, %if.then11.cleanup_crit_edge83 ], [ 0, %if.then11.cleanup_crit_edge84 ], [ 0, %do.end57 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cflag = getelementptr i8, ptr %inode, i32 -768
  %5 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cflag, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %log = getelementptr inbounds %struct.jfs_sb_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 4
  tail call void @jfs_flush_journal(ptr noundef %13, i32 noundef %conv) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @jfs_commit_inode(ptr noundef %inode, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %14 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10 = icmp sgt i32 %14, 0
  br i1 %cmp10, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_flush_journal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -848
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %inode) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end4.if.else_crit_edge

do.end4.if.else_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end4
  %call5 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #8
  br i1 %call5, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @dquot_initialize(ptr noundef %inode) #8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp9 = icmp eq i32 %5, 16
  br i1 %cmp9, label %if.then10, label %if.then6.if.end23_crit_edge

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then10:                                        ; preds = %if.then6
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #8
  %cflag = getelementptr i8, ptr %inode, i32 -768
  %6 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cflag, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.then10.if.end15_crit_edge, label %if.then14

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jfs_free_zero_link(ptr noundef %inode) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then10.if.end15_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %ipimap = getelementptr inbounds %struct.jfs_sb_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %ipimap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipimap, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @diFree(ptr noundef %inode) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  tail call void @dquot_free_inode(ptr noundef %inode) #8
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end4.if.else_crit_edge
  %i_data22 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data22) #8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end20, %if.then6.if.end23_crit_edge
  tail call void @clear_inode(ptr noundef %inode) #8
  tail call void @dquot_drop(ptr noundef %inode) #8
  %anon_inode_list = getelementptr i8, ptr %inode, i32 -696
  %15 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %anon_inode_list, align 4
  %cmp.i.not = icmp eq ptr %16, %anon_inode_list
  br i1 %cmp.i.not, label %do.end39, label %do.body31, !prof !58

do.body31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

do.end39:                                         ; preds = %if.end23
  %ag_lock = getelementptr i8, ptr %inode, i32 -740
  tail call void @_raw_spin_lock_irq(ptr noundef %ag_lock) #8
  %active_ag = getelementptr i8, ptr %inode, i32 -749
  %17 = ptrtoint ptr %active_ag to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %active_ag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp40.not = icmp eq i8 %18, -1
  br i1 %cmp40.not, label %do.end39.if.end48_crit_edge, label %if.then42

do.end39.if.end48_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then42:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb43 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb43, align 4
  %s_fs_info.i72 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i72 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i72, align 16
  %bmap45 = getelementptr inbounds %struct.jfs_sb_info, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %bmap45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmap45, align 4
  %idxprom = sext i8 %18 to i32
  %arrayidx = getelementptr %struct.bmap, ptr %24, i32 0, i32 3, i32 %idxprom
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #8, !srcloc !60
  %26 = ptrtoint ptr %active_ag to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %active_ag, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %do.end39.if.end48_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ag_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_free_zero_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_dirty_inode(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log.i, align 4
  %tobool.not.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.not, label %if.then, label %if.end38

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %8, label %land.lhs.true [
    i16 8192, label %if.then.return_crit_edge
    i16 24576, label %if.then.return_crit_edge46
    i16 4096, label %if.then.return_crit_edge47
    i16 -16384, label %if.then.return_crit_edge48
  ]

if.then.return_crit_edge48:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.return_crit_edge47:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.return_crit_edge46:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %if.then
  %10 = load i32, ptr @jfs_dirty_inode.noisy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %land.lhs.true.return_crit_edge, label %do.body

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %11 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp sgt i32 %11, 0
  br i1 %cmp21, label %do.body27, label %do.body.do.end36_crit_edge

do.body.do.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.body27:                                        ; preds = %do.body
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp28 = icmp sgt i32 %.pr, 0
  br i1 %cmp28, label %do.end32, label %do.body27.do.end36_crit_edge

do.body27.do.end36_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %do.end36

do.end36:                                         ; preds = %do.end32, %do.body27.do.end36_crit_edge, %do.body.do.end36_crit_edge
  %12 = load i32, ptr @jfs_dirty_inode.noisy, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr @jfs_dirty_inode.noisy, align 4
  br label %return

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cflag = getelementptr i8, ptr %inode, i32 -768
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cflag) #8
  br label %return

return:                                           ; preds = %if.end38, %do.end36, %land.lhs.true.return_crit_edge, %if.then.return_crit_edge, %if.then.return_crit_edge46, %if.then.return_crit_edge47, %if.then.return_crit_edge48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_get_block(ptr noundef %ip, i64 noundef %lblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %xad = alloca %struct.xad, align 4
  %xaddr = alloca i64, align 8
  %xflag = alloca i32, align 4
  %xlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xad) #8
  %0 = getelementptr inbounds %struct.xad, ptr %xad, i32 0, i32 2
  %1 = getelementptr inbounds %struct.xad, ptr %xad, i32 0, i32 3
  %2 = getelementptr inbounds %struct.xad, ptr %xad, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xad, ptr %xad, i32 0, i32 4, i32 1
  %4 = call ptr @memset(ptr %xad, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #8
  %5 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %xaddr, align 8, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag) #8
  %6 = ptrtoint ptr %xflag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %xflag, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %7 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %10 to i32
  %shr = lshr i32 %8, %conv
  %11 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %xlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  %rdwrlock2 = getelementptr i8, ptr %ip, i32 -688
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_write_nested(ptr noundef %rdwrlock2, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_read_nested(ptr noundef %rdwrlock2, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %15 to i64
  %shl = shl i64 %lblock, %sh_prom
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %16 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %17)
  %cmp = icmp slt i64 %shl, %17
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %18 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xlen, align 4
  %conv5 = sext i32 %19 to i64
  %call6 = call i32 @xtLookup(ptr noundef %ip, i64 noundef %lblock, i64 noundef %conv5, ptr noundef nonnull %xflag, ptr noundef nonnull %xaddr, ptr noundef nonnull %xlen, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true8:                                   ; preds = %land.lhs.true
  %20 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %xaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool9.not = icmp eq i64 %21, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end31_crit_edge, label %if.then10

land.lhs.true8.if.end31_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then10:                                        ; preds = %land.lhs.true8
  %22 = ptrtoint ptr %xflag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xflag, align 4
  %and = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then10.if.end25_crit_edge, label %if.then12

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then12:                                        ; preds = %if.then10
  br i1 %tobool.not, label %if.then12.if.else62_crit_edge, label %if.end15

if.then12.if.else62_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else62

if.end15:                                         ; preds = %if.then12
  %shr16 = lshr i64 %lblock, 32
  %conv17 = trunc i64 %shr16 to i8
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17, ptr %0, align 1
  %conv19 = trunc i64 %lblock to i32
  %25 = call i32 @llvm.bswap.i32(i32 %conv19)
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %1, align 4
  %27 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xlen, align 4
  %and1.i = and i32 %28, 16777215
  %29 = call i32 @llvm.bswap.i32(i32 %and1.i) #8
  %sum.shift.i = lshr i64 %21, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i = and i32 %conv7.i, 255
  %or.i102 = or i32 %29, %conv.i
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i102, ptr %2, align 4
  %conv3.i = trunc i64 %21 to i32
  %31 = call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %3, align 4
  %call21 = call i32 @extRecord(ptr noundef %ip, ptr noundef nonnull %xad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.if.then59_crit_edge

if.end15.if.then59_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end24:                                         ; preds = %if.end15
  %33 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %bh_result, align 4
  %35 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end24.if.end25_crit_edge

if.end24.if.end25_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then.i, %if.end24.if.end25_crit_edge, %if.then10.if.end25_crit_edge
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %38 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %xaddr, align 8
  %40 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %bh_result, align 4
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end25.unlock_crit_edge

if.end25.unlock_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #8
  br label %unlock

if.end31:                                         ; preds = %land.lhs.true8.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  br i1 %tobool.not, label %if.end31.if.else62_crit_edge, label %if.end34

if.end31.if.else62_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else62

if.end34:                                         ; preds = %if.end31
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits36 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %s_blocksize_bits36 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %s_blocksize_bits36, align 4
  %sh_prom38 = zext i8 %46 to i64
  %shl39 = shl i64 %lblock, %sh_prom38
  %call40 = call i32 @extHint(ptr noundef %ip, i64 noundef %shl39, ptr noundef nonnull %xad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end34.if.then59_crit_edge

if.end34.if.then59_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end43:                                         ; preds = %if.end34
  %47 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %xlen, align 4
  %conv44 = sext i32 %48 to i64
  %call45 = call i32 @extAlloc(ptr noundef %ip, i64 noundef %conv44, i64 noundef %lblock, ptr noundef nonnull %xad, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.if.then59_crit_edge

if.end43.if.then59_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end48:                                         ; preds = %if.end43
  %49 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %bh_result, align 4
  %51 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i97 = icmp eq i32 %51, 0
  br i1 %tobool.not.i97, label %if.then.i98, label %if.end48.set_buffer_new.exit99_crit_edge

if.end48.set_buffer_new.exit99_crit_edge:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_new.exit99

if.then.i98:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #8
  br label %set_buffer_new.exit99

set_buffer_new.exit99:                            ; preds = %if.then.i98, %if.end48.set_buffer_new.exit99_crit_edge
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %2, align 4
  %56 = shl i32 %55, 24
  %conv.i103 = zext i32 %56 to i64
  %shl.i = shl nuw nsw i64 %conv.i103, 8
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %3, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #8
  %conv1.i = zext i32 %59 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %60 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %bh_result, align 4
  %62 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i.i105 = icmp eq i32 %62, 0
  br i1 %tobool.not.i.i105, label %if.then.i.i106, label %set_buffer_new.exit99.map_bh.exit112_crit_edge

set_buffer_new.exit99.map_bh.exit112_crit_edge:   ; preds = %set_buffer_new.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_bh.exit112

if.then.i.i106:                                   ; preds = %set_buffer_new.exit99
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #8
  br label %map_bh.exit112

map_bh.exit112:                                   ; preds = %if.then.i.i106, %set_buffer_new.exit99.map_bh.exit112_crit_edge
  %s_bdev.i107 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 26
  %63 = ptrtoint ptr %s_bdev.i107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_bdev.i107, align 4
  %b_bdev.i108 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %65 = ptrtoint ptr %b_bdev.i108 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %b_bdev.i108, align 8
  %b_blocknr.i109 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %66 = ptrtoint ptr %b_blocknr.i109 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add.i, ptr %b_blocknr.i109, align 8
  %s_blocksize.i110 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 3
  %67 = ptrtoint ptr %s_blocksize.i110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize.i110, align 16
  %69 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %b_size, align 8
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %2, align 4
  %72 = and i32 %71, -256
  %73 = call i32 @llvm.bswap.i32(i32 %72) #8
  %74 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i_blkbits, align 2
  %conv55 = zext i8 %75 to i32
  %shl56 = shl i32 %73, %conv55
  %76 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shl56, ptr %b_size, align 8
  br label %if.then59

unlock:                                           ; preds = %if.then.i.i, %if.end25.unlock_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 26
  %77 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %79 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %80 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %39, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 3
  %81 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_blocksize.i, align 16
  %83 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %b_size, align 8
  %84 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xlen, align 4
  %86 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i_blkbits, align 2
  %conv28 = zext i8 %87 to i32
  %shl29 = shl i32 %85, %conv28
  store i32 %shl29, ptr %b_size, align 8
  br i1 %tobool.not, label %unlock.if.else62_crit_edge, label %unlock.if.then59_crit_edge

unlock.if.then59_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

unlock.if.else62_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else62

if.then59:                                        ; preds = %unlock.if.then59_crit_edge, %map_bh.exit112, %if.end43.if.then59_crit_edge, %if.end34.if.then59_crit_edge, %if.end15.if.then59_crit_edge
  %rc.1117 = phi i32 [ 0, %unlock.if.then59_crit_edge ], [ %call21, %if.end15.if.then59_crit_edge ], [ 0, %map_bh.exit112 ], [ %call45, %if.end43.if.then59_crit_edge ], [ %call40, %if.end34.if.then59_crit_edge ]
  %rdwrlock61 = getelementptr i8, ptr %ip, i32 -688
  call void @up_write(ptr noundef %rdwrlock61) #8
  br label %if.end65

if.else62:                                        ; preds = %unlock.if.else62_crit_edge, %if.end31.if.else62_crit_edge, %if.then12.if.else62_crit_edge
  %rdwrlock64 = getelementptr i8, ptr %ip, i32 -688
  call void @up_read(ptr noundef %rdwrlock64) #8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then59
  %rc.1116 = phi i32 [ 0, %if.else62 ], [ %rc.1117, %if.then59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xad) #8
  ret i32 %rc.1116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtLookup(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extRecord(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extHint(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extAlloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @jfs_get_block, ptr noundef %wbc) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @jfs_get_block) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @jfs_get_block) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jfs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @jfs_get_block) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nobh_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @jfs_get_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @jfs_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jfs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @jfs_get_block) #8
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
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
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %11, ptr noundef %iter, ptr noundef nonnull @jfs_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %12 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_source.i, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %spec.select, label %if.then, label %entry.if.end13_crit_edge, !prof !63

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %conv9 = zext i32 %7 to i64
  %add = add i64 %15, %conv9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call8)
  %cmp10 = icmp sgt i64 %add, %call8
  br i1 %cmp10, label %if.then12, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @jfs_write_failed(ptr noundef %3, i64 noundef %add)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_truncate_nolock(ptr noundef %ip, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %ip.addr = alloca ptr, align 4
  %tmp24 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ip, ptr %ip.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %length)
  %cmp = icmp sgt i64 %length, -1
  br i1 %cmp, label %do.end9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 380, ptr noundef nonnull @.str.19) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 380, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

do.end9:                                          ; preds = %entry
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %1 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %cflag, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end9.do.body15_crit_edge, label %if.then12

do.end9.do.body15_crit_edge:                      ; preds = %do.end9
  br label %do.body15

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i64 @xtTruncate(i16 noundef zeroext 0, ptr noundef %ip, i64 noundef %length, i32 noundef 32) #8
  br label %cleanup

do.body15:                                        ; preds = %if.end23.do.body15_crit_edge, %do.end9.do.body15_crit_edge
  %3 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip.addr, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call16 = call zeroext i16 @txBegin(ptr noundef %6, i32 noundef 0) #8
  %7 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip.addr, align 4
  %commit_mutex = getelementptr i8, ptr %8, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #8
  %9 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip.addr, align 4
  %call18 = call i64 @xtTruncate(i16 noundef zeroext %call16, ptr noundef %10, i64 noundef %length, i32 noundef 576) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call18)
  %cmp19 = icmp slt i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  call void @txEnd(i16 noundef zeroext %call16) #8
  %11 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip.addr, align 4
  %commit_mutex22 = getelementptr i8, ptr %12, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex22) #8
  br label %cleanup

if.end23:                                         ; preds = %do.body15
  %13 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ip.addr, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp24) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp24, ptr noundef %14) #8
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %tmp24, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp24) #8
  %16 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %17 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip.addr, align 4
  call void @__mark_inode_dirty(ptr noundef %18, i32 noundef 7) #8
  %call25 = call i32 @txCommit(i16 noundef zeroext %call16, i32 noundef 1, ptr noundef nonnull %ip.addr, i32 noundef 0) #8
  call void @txEnd(i16 noundef zeroext %call16) #8
  %19 = ptrtoint ptr %ip.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ip.addr, align 4
  %commit_mutex27 = getelementptr i8, ptr %20, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex27) #8
  %cmp29 = icmp sgt i64 %call18, %length
  br i1 %cmp29, label %if.end23.do.body15_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.do.body15_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then20, %if.then12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xtTruncate(i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_truncate(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %1 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 9
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %i_size3 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %5 = ptrtoint ptr %i_size3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size3, align 8
  %call4 = tail call i32 @nobh_truncate_page(ptr noundef %4, i64 noundef %6, ptr noundef nonnull @jfs_get_block) #8
  %rdwrlock = getelementptr i8, ptr %ip, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock, i32 noundef 0) #8
  %7 = ptrtoint ptr %i_size3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size3, align 8
  tail call void @jfs_truncate_nolock(ptr noundef %ip, i64 noundef %8)
  tail call void @up_write(ptr noundef %rdwrlock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jfs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
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
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %4 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp sgt i32 %4, 3
  br i1 %cmp.i, label %do.end.i, label %if.then.jfs_truncate.exit_crit_edge

if.then.jfs_truncate.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %jfs_truncate.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  %conv.i = trunc i64 %6 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i) #11
  br label %jfs_truncate.exit

jfs_truncate.exit:                                ; preds = %do.end.i, %if.then.jfs_truncate.exit_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping.i, align 8
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  %call4.i = tail call i32 @nobh_truncate_page(ptr noundef %8, i64 noundef %10, ptr noundef nonnull @jfs_get_block) #8
  %rdwrlock.i = getelementptr i8, ptr %1, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  tail call void @jfs_truncate_nolock(ptr noundef %1, i64 noundef %12) #8
  tail call void @up_write(ptr noundef %rdwrlock.i) #8
  br label %if.end

if.end:                                           ; preds = %jfs_truncate.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !65
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !66
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !63

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !67
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !69
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
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
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @jfs_commit_inode.noisy, !1, !"noisy", i1 false, i1 false}
!1 = !{!"../fs/jfs/inode.c", i32 77, i32 13}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jfs/inode.c", i32 79, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jfs_commit_inode._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jfs_commit_inode._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jfs/inode.c", i32 93, i32 4}
!10 = !{ptr @jfs_commit_inode._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jfs_commit_inode._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jfs/inode.c", i32 95, i32 4}
!14 = !{ptr @jfs_commit_inode._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @jfs_commit_inode._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jfs/inode.c", i32 133, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @jfs_write_inode._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @jfs_write_inode._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jfs/inode.c", i32 143, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jfs_evict_inode._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @jfs_evict_inode._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @jfs_dirty_inode.noisy, !27, !"noisy", i1 false, i1 false}
!27 = !{!"../fs/jfs/inode.c", i32 181, i32 13}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/jfs/inode.c", i32 188, i32 4}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @jfs_dirty_inode._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @jfs_dirty_inode._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @jfs_dirty_inode._entry.15, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../fs/jfs/inode.c", i32 189, i32 4}
!35 = !{ptr @jfs_dirty_inode._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @jfs_aops, !37, !"jfs_aops", i1 false, i1 false}
!37 = !{!"../fs/jfs/inode.c", i32 359, i32 39}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jfs/inode.c", i32 380, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @jfs_truncate_nolock._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @jfs_truncate_nolock._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/jfs/inode.c", i32 417, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @jfs_truncate._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @jfs_truncate._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2154770467, i64 2154770946, i64 2154770504, i64 2154770560, i64 2154770594, i64 2154770618, i64 2154770659, i64 2154770680, i64 2154770708, i64 2154770742}
!60 = !{i64 2148662779, i64 2148662805, i64 2148662834, i64 2148662868, i64 2148662899, i64 2148662922}
!61 = !{!"auto-init"}
!62 = !{i8 0, i8 2}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2154778042, i64 2154778521, i64 2154778079, i64 2154778135, i64 2154778169, i64 2154778193, i64 2154778234, i64 2154778255, i64 2154778283, i64 2154778317}
!65 = !{i64 1064994, i64 1065055}
!66 = !{i64 1067726}
!67 = !{i64 1068011}
!68 = !{i64 2152503145}
!69 = !{i64 2152502987}
!70 = !{i64 2152503315}
!71 = !{i64 2150089129}
