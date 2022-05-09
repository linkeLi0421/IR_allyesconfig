; ModuleID = '/llk/IR_all_yes/fs/affs/dir.c_pt.bc'
source_filename = "../fs/affs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
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
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.affs_head = type { i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.affs_tail = type { i32, i16, i16, i32, i32, [92 x i8], %struct.affs_date, [32 x i8], i32, i32, i32, [5 x i32], i32, i32, i32, i32 }
%struct.affs_date = type { i32, i32, i32 }

@affs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @affs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @affs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@affs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @affs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @affs_create, ptr @affs_link, ptr @affs_unlink, ptr @affs_symlink, ptr @affs_mkdir, ptr @affs_rmdir, ptr null, ptr @affs_rename2, ptr @affs_notify_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@affs_readdir.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"affs_readdir\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/affs/dir.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(ino=%lu,f_pos=%llx)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"affs: %s(ino=%lu,f_pos=%llx)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"readdir\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"More than 65535 entries in chain\00", [63 x i8] zeroinitializer }, align 32
@affs_readdir.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"readdir() left off=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"affs: readdir() left off=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot read block %d\00", [43 x i8] zeroinitializer }, align 32
@affs_readdir.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"readdir(): dir_emit(\22%.*s\22, ino=%u), hash=%d, f_pos=%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"affs: readdir(): dir_emit(\22%.*s\22, ino=%u), hash=%d, f_pos=%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.15, ptr @.str.19, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"affs_dir_operations\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 22, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 59, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 85, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 93, i32 29 }
@___asan_gen_.58 = private constant [17 x i8] c"../fs/affs/dir.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 122, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 3566, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 3571, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 237, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 282, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @affs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_readdir.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_readdir.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %5, i64 noundef %7) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pos4 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %9)
  %cmp = icmp slt i64 %9, 2
  br i1 %cmp, label %if.then5, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then5:                                         ; preds = %do.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private_data, align 4
  %11 = ptrtoint ptr %pos4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos4, align 8
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i64 %12, label %if.then5.if.end9_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.then5.if.then6.i_crit_edge
  ]

if.then5.if.then6.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6.i

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then.i:                                        ; preds = %if.then5
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %20 to i64
  %call.i.i = tail call i32 %14(ptr noundef %ctx, ptr noundef nonnull @.str.12, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %pos4 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %pos4, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.then5.if.then6.i_crit_edge
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #3
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #3
  %conv.i20.i = zext i32 %31 to i64
  %call1.i.i = tail call i32 %23(ptr noundef %ctx, ptr noundef nonnull @.str.13, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %pos4 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 2, ptr %pos4, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end9.i, %if.then5.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %i_ext_lock.i = getelementptr i8, ptr %1, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #3
  %33 = ptrtoint ptr %pos4 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos4, align 8
  %sub = add i64 %34, -2
  %35 = trunc i64 %sub to i32
  %conv = and i32 %35, 65535
  %36 = lshr i64 %sub, 16
  %conv13 = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv)
  %cmp14 = icmp eq i32 %conv, 65535
  br i1 %cmp14, label %if.then16, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %inc = add i32 %conv13, 1
  %shl = shl i32 %inc, 16
  %add = or i32 %shl, 2
  %conv17 = sext i32 %add to i64
  %37 = ptrtoint ptr %pos4 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv17, ptr %pos4, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end9.if.end19_crit_edge
  %hash_pos.0 = phi i32 [ %inc, %if.then16 ], [ %conv13, %if.end9.if.end19_crit_edge ]
  %chain_pos.0 = phi i32 [ 0, %if.then16 ], [ %conv, %if.end9.if.end19_crit_edge ]
  %i_ino20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %i_ino20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino20, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then.i226)) #3
          to label %do.end.i [label %if.then.i226], !srcloc !49

if.then.i226:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %39) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i226, %if.end19
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp.not.i.i = icmp sgt i32 %43, %39
  br i1 %cmp.not.i.i, label %do.end.i.out_unlock_dir_crit_edge, label %affs_validblock.exit.i

do.end.i.out_unlock_dir_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unlock_dir

affs_validblock.exit.i:                           ; preds = %do.end.i
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %39)
  %cmp2.i.i = icmp sgt i32 %45, %39
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.out_unlock_dir_crit_edge

affs_validblock.exit.i.out_unlock_dir_crit_edge:  ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unlock_dir

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %39 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %46 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i227 = tail call ptr @__bread_gfp(ptr noundef %47, i64 noundef %conv.i, i32 noundef %49, i32 noundef 8) #3
  %tobool22.not = icmp eq ptr %call.i.i227, null
  br i1 %tobool22.not, label %affs_bread.exit.out_unlock_dir_crit_edge, label %if.end24

affs_bread.exit.out_unlock_dir_crit_edge:         ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unlock_dir

if.end24:                                         ; preds = %affs_bread.exit
  %private_data25 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %50 = ptrtoint ptr %private_data25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private_data25, align 4
  %52 = ptrtoint ptr %51 to i32
  %tobool26.not = icmp eq ptr %51, null
  br i1 %tobool26.not, label %if.end24.if.end46_crit_edge, label %land.lhs.true

if.end24.if.end46_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end24
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %53 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %f_version, align 8
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #3
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #3
  %shr.i.i = lshr i64 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %54)
  %cmp.i = icmp eq i64 %shr.i.i, %54
  br i1 %cmp.i, label %do.body30, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

do.body30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_readdir.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then42)) #3
          to label %inside [label %if.then42], !srcloc !49

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_readdir.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.8, i32 noundef %52) #3
  br label %inside

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end24.if.end46_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i227, i32 0, i32 5
  %55 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr %struct.affs_head, ptr %56, i32 0, i32 6, i32 %hash_pos.0
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool47.not307 = icmp eq i32 %58, 0
  %tobool47.not.not308 = xor i1 %tobool47.not307, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_pos.0)
  %cmp48309 = icmp ne i32 %chain_pos.0, 0
  %or.cond310 = select i1 %tobool47.not.not308, i1 %cmp48309, i1 false
  br i1 %or.cond310, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

for.body:                                         ; preds = %affs_brelse.exit.for.body_crit_edge, %if.end46.for.body_crit_edge
  %ino.0312 = phi i32 [ %74, %affs_brelse.exit.for.body_crit_edge ], [ %58, %if.end46.for.body_crit_edge ]
  %i.0311 = phi i32 [ %inc56, %affs_brelse.exit.for.body_crit_edge ], [ 0, %if.end46.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then.i229)) #3
          to label %do.end.i233 [label %if.then.i229], !srcloc !49

if.then.i229:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %ino.0312) #3
  br label %do.end.i233

do.end.i233:                                      ; preds = %if.then.i229, %for.body
  %59 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i231 = getelementptr inbounds %struct.affs_sb_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %s_reserved.i.i231 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_reserved.i.i231, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %ino.0312)
  %cmp.not.i.i232 = icmp sgt i32 %62, %ino.0312
  br i1 %cmp.not.i.i232, label %do.end.i233.if.then52_crit_edge, label %affs_validblock.exit.i235

do.end.i233.if.then52_crit_edge:                  ; preds = %do.end.i233
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52

affs_validblock.exit.i235:                        ; preds = %do.end.i233
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %ino.0312)
  %cmp2.i.i234 = icmp sgt i32 %64, %ino.0312
  br i1 %cmp2.i.i234, label %affs_bread.exit242, label %affs_validblock.exit.i235.if.then52_crit_edge

affs_validblock.exit.i235.if.then52_crit_edge:    ; preds = %affs_validblock.exit.i235
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52

affs_bread.exit242:                               ; preds = %affs_validblock.exit.i235
  %conv.i236 = sext i32 %ino.0312 to i64
  %65 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev.i.i, align 4
  %67 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i239 = tail call ptr @__bread_gfp(ptr noundef %66, i64 noundef %conv.i236, i32 noundef %68, i32 noundef 8) #3
  %tobool51.not = icmp eq ptr %call.i.i239, null
  br i1 %tobool51.not, label %affs_bread.exit242.if.then52_crit_edge, label %do.body.i

affs_bread.exit242.if.then52_crit_edge:           ; preds = %affs_bread.exit242
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52

if.then52:                                        ; preds = %affs_bread.exit242.if.then52_crit_edge, %affs_validblock.exit.i235.if.then52_crit_edge, %do.end.i233.if.then52_crit_edge
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %i.0311) #3
  br label %do.body.i278

do.body.i:                                        ; preds = %affs_bread.exit242
  %b_data54 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i239, i32 0, i32 5
  %69 = ptrtoint ptr %b_data54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data54, align 4
  %71 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %70, i32 -200
  %add.ptr55 = getelementptr i8, ptr %add.ptr, i32 %72
  %hash_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr55, i32 0, i32 12
  %73 = ptrtoint ptr %hash_chain to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hash_chain, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then4.i243)) #3
          to label %affs_brelse.exit [label %if.then4.i243], !srcloc !49

if.then4.i243:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i239, i32 0, i32 3
  %75 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i64 noundef %76) #3
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i243, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i239) #3
  %inc56 = add nuw nsw i32 %i.0311, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool47.not = icmp eq i32 %74, 0
  %tobool47.not.not = xor i1 %tobool47.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56, i32 %chain_pos.0)
  %cmp48 = icmp ult i32 %inc56, %chain_pos.0
  %or.cond = select i1 %tobool47.not.not, i1 %cmp48, i1 false
  br i1 %or.cond, label %affs_brelse.exit.for.body_crit_edge, label %affs_brelse.exit.for.end_crit_edge

affs_brelse.exit.for.end_crit_edge:               ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

affs_brelse.exit.for.body_crit_edge:              ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %affs_brelse.exit.for.end_crit_edge, %if.end46.for.end_crit_edge
  %ino.0.lcssa = phi i32 [ %58, %if.end46.for.end_crit_edge ], [ %74, %affs_brelse.exit.for.end_crit_edge ]
  %tobool47.not.lcssa = phi i1 [ %tobool47.not307, %if.end46.for.end_crit_edge ], [ %tobool47.not, %affs_brelse.exit.for.end_crit_edge ]
  br i1 %tobool47.not.lcssa, label %for.end.for.cond61.preheader_crit_edge, label %for.end.inside_crit_edge

for.end.inside_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %inside

for.end.for.cond61.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %affs_brelse.exit265.for.cond61.preheader_crit_edge, %if.then79, %for.end.for.cond61.preheader_crit_edge
  %hash_pos.1.in.ph = phi i32 [ %hash_pos.2, %if.then79 ], [ %hash_pos.0, %for.end.for.cond61.preheader_crit_edge ], [ %hash_pos.2, %affs_brelse.exit265.for.cond61.preheader_crit_edge ]
  %ino.1.ph = phi i32 [ %ino.3, %if.then79 ], [ 0, %for.end.for.cond61.preheader_crit_edge ], [ 0, %affs_brelse.exit265.for.cond61.preheader_crit_edge ]
  %77 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_hashsize, align 4
  %b_data66 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i227, i32 0, i32 5
  br label %for.cond61

for.cond61:                                       ; preds = %for.body65.for.cond61_crit_edge, %for.cond61.preheader
  %hash_pos.1.in = phi i32 [ %hash_pos.1, %for.body65.for.cond61_crit_edge ], [ %hash_pos.1.in.ph, %for.cond61.preheader ]
  %ino.1 = phi i32 [ 0, %for.body65.for.cond61_crit_edge ], [ %ino.1.ph, %for.cond61.preheader ]
  %hash_pos.1 = add i32 %hash_pos.1.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %hash_pos.1, i32 %80)
  %cmp63 = icmp slt i32 %hash_pos.1, %80
  br i1 %cmp63, label %for.body65, label %for.cond61.done_crit_edge

for.cond61.done_crit_edge:                        ; preds = %for.cond61
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

for.body65:                                       ; preds = %for.cond61
  %81 = ptrtoint ptr %b_data66 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data66, align 4
  %arrayidx68 = getelementptr %struct.affs_head, ptr %82, i32 0, i32 6, i32 %hash_pos.1
  %83 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq i32 %84, 0
  br i1 %tobool69.not, label %for.body65.for.cond61_crit_edge, label %if.end71

for.body65.for.cond61_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond61

if.end71:                                         ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #5
  %shl72 = shl i32 %hash_pos.1, 16
  %add73 = or i32 %shl72, 2
  %conv74 = sext i32 %add73 to i64
  %85 = ptrtoint ptr %pos4 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv74, ptr %pos4, align 8
  br label %inside

inside:                                           ; preds = %if.end71, %for.end.inside_crit_edge, %if.then42, %do.body30
  %hash_pos.2 = phi i32 [ %hash_pos.1, %if.end71 ], [ %hash_pos.0, %for.end.inside_crit_edge ], [ %hash_pos.0, %if.then42 ], [ %hash_pos.0, %do.body30 ]
  %ino.2 = phi i32 [ %84, %if.end71 ], [ %ino.0.lcssa, %for.end.inside_crit_edge ], [ %52, %if.then42 ], [ %52, %do.body30 ]
  br label %do.body76

do.body76:                                        ; preds = %affs_brelse.exit265.do.body76_crit_edge, %inside
  %ino.3 = phi i32 [ %ino.2, %inside ], [ %116, %affs_brelse.exit265.do.body76_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then.i244)) #3
          to label %do.end.i248 [label %if.then.i244], !srcloc !49

if.then.i244:                                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %ino.3) #3
  br label %do.end.i248

do.end.i248:                                      ; preds = %if.then.i244, %do.body76
  %86 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i246 = getelementptr inbounds %struct.affs_sb_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %s_reserved.i.i246 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_reserved.i.i246, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %ino.3)
  %cmp.not.i.i247 = icmp sgt i32 %89, %ino.3
  br i1 %cmp.not.i.i247, label %do.end.i248.if.then79_crit_edge, label %affs_validblock.exit.i250

do.end.i248.if.then79_crit_edge:                  ; preds = %do.end.i248
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then79

affs_validblock.exit.i250:                        ; preds = %do.end.i248
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %ino.3)
  %cmp2.i.i249 = icmp sgt i32 %91, %ino.3
  br i1 %cmp2.i.i249, label %affs_bread.exit257, label %affs_validblock.exit.i250.if.then79_crit_edge

affs_validblock.exit.i250.if.then79_crit_edge:    ; preds = %affs_validblock.exit.i250
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then79

affs_bread.exit257:                               ; preds = %affs_validblock.exit.i250
  %conv.i251 = sext i32 %ino.3 to i64
  %92 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_bdev.i.i, align 4
  %94 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i254 = tail call ptr @__bread_gfp(ptr noundef %93, i64 noundef %conv.i251, i32 noundef %95, i32 noundef 8) #3
  %tobool78.not = icmp eq ptr %call.i.i254, null
  br i1 %tobool78.not, label %affs_bread.exit257.if.then79_crit_edge, label %if.end80

affs_bread.exit257.if.then79_crit_edge:           ; preds = %affs_bread.exit257
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then79

if.then79:                                        ; preds = %affs_bread.exit257.if.then79_crit_edge, %affs_validblock.exit.i250.if.then79_crit_edge, %do.end.i248.if.then79_crit_edge
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %ino.3) #3
  br label %for.cond61.preheader

if.end80:                                         ; preds = %affs_bread.exit257
  %b_data81 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i254, i32 0, i32 5
  %96 = ptrtoint ptr %b_data81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %b_data81, align 4
  %98 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr83 = getelementptr i8, ptr %97, i32 -200
  %add.ptr84 = getelementptr i8, ptr %add.ptr83, i32 %99
  %name85 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr84, i32 0, i32 7
  %100 = ptrtoint ptr %name85 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %name85, align 4
  %102 = tail call i8 @llvm.umin.i8(i8 %101, i8 30)
  %cond = zext i8 %102 to i32
  %add.ptr99 = getelementptr i8, ptr %name85, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_readdir.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then112)) #3
          to label %do.end116 [label %if.then112], !srcloc !49

if.then112:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  %103 = ptrtoint ptr %pos4 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %pos4, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_readdir.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.11, i32 noundef %cond, ptr noundef %add.ptr99, i32 noundef %ino.3, i32 noundef %hash_pos.2, i64 noundef %104) #3
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %if.end80
  %conv117 = zext i32 %ino.3 to i64
  %105 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctx, align 8
  %107 = ptrtoint ptr %pos4 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %pos4, align 8
  %call.i = tail call i32 %106(ptr noundef %ctx, ptr noundef %add.ptr99, i32 noundef %cond, i64 noundef %108, i64 noundef %conv117, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i259 = icmp eq i32 %call.i, 0
  br i1 %cmp.i259, label %do.body.i261, label %do.end116.done_crit_edge

do.end116.done_crit_edge:                         ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

do.body.i261:                                     ; preds = %do.end116
  %109 = ptrtoint ptr %pos4 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %pos4, align 8
  %inc122 = add i64 %110, 1
  store i64 %inc122, ptr %pos4, align 8
  %111 = ptrtoint ptr %b_data81 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b_data81, align 4
  %113 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr125 = getelementptr i8, ptr %112, i32 -200
  %add.ptr126 = getelementptr i8, ptr %add.ptr125, i32 %114
  %hash_chain127 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr126, i32 0, i32 12
  %115 = ptrtoint ptr %hash_chain127 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hash_chain127, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then4.i263)) #3
          to label %affs_brelse.exit265 [label %if.then4.i263], !srcloc !49

if.then4.i263:                                    ; preds = %do.body.i261
  call void @__sanitizer_cov_trace_pc() #5
  %b_blocknr.i262 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i254, i32 0, i32 3
  %117 = ptrtoint ptr %b_blocknr.i262 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %b_blocknr.i262, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i64 noundef %118) #3
  br label %affs_brelse.exit265

affs_brelse.exit265:                              ; preds = %if.then4.i263, %do.body.i261
  tail call void @__brelse(ptr noundef nonnull %call.i.i254) #3
  %tobool129.not = icmp eq i32 %116, 0
  br i1 %tobool129.not, label %affs_brelse.exit265.for.cond61.preheader_crit_edge, label %affs_brelse.exit265.do.body76_crit_edge

affs_brelse.exit265.do.body76_crit_edge:          ; preds = %affs_brelse.exit265
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body76

affs_brelse.exit265.for.cond61.preheader_crit_edge: ; preds = %affs_brelse.exit265
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond61.preheader

done:                                             ; preds = %do.end116.done_crit_edge, %for.cond61.done_crit_edge
  %ino.6 = phi i32 [ %ino.3, %do.end116.done_crit_edge ], [ %ino.1, %for.cond61.done_crit_edge ]
  %fh_bh.4 = phi ptr [ %call.i.i254, %do.end116.done_crit_edge ], [ null, %for.cond61.done_crit_edge ]
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i266 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #3
  %call.i.i15.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #3
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %done
  %cur.0.i = phi i64 [ %call.i.i15.i, %done ], [ %call.i.i269, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i267 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i267, label %if.end.i, label %do.end.i268

do.end.i268:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !50
  br label %inode_query_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #3
  %call.i.i269 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #3
  %cmp.i270 = icmp eq i64 %call.i.i269, %cur.0.i
  br i1 %cmp.i270, label %if.end.i.inode_query_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !51

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

if.end.i.inode_query_iversion.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %if.end.i.inode_query_iversion.exit_crit_edge, %do.end.i268
  %shr.i = lshr i64 %cur.0.i, 1
  %f_version135 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %119 = ptrtoint ptr %f_version135 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %shr.i, ptr %f_version135, align 8
  %120 = inttoptr i32 %ino.6 to ptr
  %121 = ptrtoint ptr %private_data25 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %private_data25, align 4
  %tobool.not.i271 = icmp eq ptr %fh_bh.4, null
  br i1 %tobool.not.i271, label %inode_query_iversion.exit.do.body.i278_crit_edge, label %do.body.i272

inode_query_iversion.exit.do.body.i278_crit_edge: ; preds = %inode_query_iversion.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i278

do.body.i272:                                     ; preds = %inode_query_iversion.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then4.i274)) #3
          to label %if.then.i.i275 [label %if.then4.i274], !srcloc !49

if.then4.i274:                                    ; preds = %do.body.i272
  call void @__sanitizer_cov_trace_pc() #5
  %b_blocknr.i273 = getelementptr inbounds %struct.buffer_head, ptr %fh_bh.4, i32 0, i32 3
  %122 = ptrtoint ptr %b_blocknr.i273 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %b_blocknr.i273, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i64 noundef %123) #3
  br label %if.then.i.i275

if.then.i.i275:                                   ; preds = %if.then4.i274, %do.body.i272
  tail call void @__brelse(ptr noundef nonnull %fh_bh.4) #3
  br label %do.body.i278

do.body.i278:                                     ; preds = %if.then.i.i275, %inode_query_iversion.exit.do.body.i278_crit_edge, %if.then52
  %error.0 = phi i32 [ -5, %if.then52 ], [ 0, %inode_query_iversion.exit.do.body.i278_crit_edge ], [ 0, %if.then.i.i275 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_readdir, %if.then4.i280)) #3
          to label %affs_brelse.exit282 [label %if.then4.i280], !srcloc !49

if.then4.i280:                                    ; preds = %do.body.i278
  call void @__sanitizer_cov_trace_pc() #5
  %b_blocknr.i279 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i227, i32 0, i32 3
  %124 = ptrtoint ptr %b_blocknr.i279 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %b_blocknr.i279, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i64 noundef %125) #3
  br label %affs_brelse.exit282

affs_brelse.exit282:                              ; preds = %if.then4.i280, %do.body.i278
  tail call void @__brelse(ptr noundef nonnull %call.i.i227) #3
  br label %out_unlock_dir

out_unlock_dir:                                   ; preds = %affs_brelse.exit282, %affs_bread.exit.out_unlock_dir_crit_edge, %affs_validblock.exit.i.out_unlock_dir_crit_edge, %do.end.i.out_unlock_dir_crit_edge
  %error.1 = phi i32 [ %error.0, %affs_brelse.exit282 ], [ 0, %affs_bread.exit.out_unlock_dir_crit_edge ], [ 0, %affs_validblock.exit.i.out_unlock_dir_crit_edge ], [ 0, %do.end.i.out_unlock_dir_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #3
  br label %cleanup

cleanup:                                          ; preds = %out_unlock_dir, %if.then6.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_unlock_dir ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @affs_lookup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_link(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_unlink(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_rmdir(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_rename2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_notify_change(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !17, !18, !19, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @affs_dir_operations, !1, !"affs_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/affs/dir.c", i32 22, i32 30}
!2 = !{ptr @affs_dir_inode_operations, !3, !"affs_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/affs/dir.c", i32 32, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/affs/dir.c", i32 59, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @affs_readdir.__UNIQUE_ID_ddebug239, !5, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/affs/dir.c", i32 71, i32 20}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/affs/dir.c", i32 71, i32 31}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/affs/dir.c", i32 85, i32 3}
!17 = !{ptr @affs_readdir.__UNIQUE_ID_ddebug240, !16, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/affs/dir.c", i32 93, i32 29}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/affs/dir.c", i32 122, i32 4}
!23 = !{ptr @affs_readdir.__UNIQUE_ID_ddebug243, !22, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @affs_bread.__UNIQUE_ID_ddebug234, !30, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!34 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug238, !36, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!39 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148491045, i64 2148491050, i64 2148491063, i64 2148491107, i64 2148491141, i64 2148491162}
!50 = !{i64 2152554968}
!51 = !{!"branch_weights", i32 2000, i32 1}
