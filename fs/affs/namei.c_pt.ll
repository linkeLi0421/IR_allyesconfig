; ModuleID = '/llk/IR_all_yes/fs/affs/namei.c_pt.bc'
source_filename = "../fs/affs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.affs_tail = type { i32, i16, i16, i32, i32, [92 x i8], %struct.affs_date, [32 x i8], i32, i32, i32, [5 x i32], i32, i32, i32, i32 }
%struct.affs_date = type { i32, i32, i32 }
%struct.affs_head = type { i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.anon.3 = type { i32, i32 }

@affs_lookup.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_lookup\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/affs/namei.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s(\22%pd\22)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs: %s(\22%pd\22)\0A\00", [47 x i8] zeroinitializer }, align 32
@affs_unlink.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_unlink\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(dir=%lu, %lu \22%pd\22)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"affs: %s(dir=%lu, %lu \22%pd\22)\0A\00", [34 x i8] zeroinitializer }, align 32
@affs_create.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_create\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(%lu,\22%pd\22,0%ho)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"affs: %s(%lu,\22%pd\22,0%ho)\0A\00", [38 x i8] zeroinitializer }, align 32
@affs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@affs_file_operations = external dso_local constant %struct.file_operations, align 4
@affs_aops_ofs = external dso_local constant %struct.address_space_operations, align 4
@affs_aops = external dso_local constant %struct.address_space_operations, align 4
@affs_mkdir.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.9, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_mkdir\00", [21 x i8] zeroinitializer }, align 32
@affs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@affs_dir_operations = external dso_local constant %struct.file_operations, align 4
@affs_rmdir.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.6, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_rmdir\00", [21 x i8] zeroinitializer }, align 32
@affs_symlink.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"affs_symlink\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(%lu,\22%pd\22 -> \22%s\22)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"affs: %s(%lu,\22%pd\22 -> \22%s\22)\0A\00", [35 x i8] zeroinitializer }, align 32
@affs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@affs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@affs_link.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"affs_link\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%lu, %lu, \22%pd\22)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"affs: %s(%lu, %lu, \22%pd\22)\0A\00", [37 x i8] zeroinitializer }, align 32
@affs_rename2.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"affs_rename2\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(old=%lu,\22%pd\22 to new=%lu,\22%pd\22)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"affs: %s(old=%lu,\22%pd\22 to new=%lu,\22%pd\22)\0A\00", [54 x i8] zeroinitializer }, align 32
@affs_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @affs_fh_to_dentry, ptr @affs_fh_to_parent, ptr null, ptr @affs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@affs_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr @affs_hash_dentry, ptr @affs_compare_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@affs_intl_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr @affs_intl_hash_dentry, ptr @affs_intl_compare_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@affs_find_entry.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_find_entry\00", [16 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.24, ptr @.str.28, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 206, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 238, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 252, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 283, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 309, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 326, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 398, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 514, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"affs_export_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 570, i32 32 }
@___asan_gen_.100 = private constant [19 x i8] c"../fs/affs/namei.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 177, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 282, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 237, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @affs_export_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_hash_name(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %name, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @affs_toupper, ptr @affs_intl_toupper
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not10 = icmp eq i32 %4, 0
  br i1 %cmp1.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %name.addr.013 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %name, %entry.for.body_crit_edge ]
  %hash.012 = phi i32 [ %and, %for.body.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %len.addr.011 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %hash.012, 13
  %incdec.ptr = getelementptr i8, ptr %name.addr.013, i32 1
  %5 = ptrtoint ptr %name.addr.013 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name.addr.013, align 1
  %conv = zext i8 %6 to i32
  %call2 = tail call i32 %cond.i(i32 noundef %conv) #4, !callees !67
  %add = add i32 %call2, %mul
  %and = and i32 %add, 2047
  %dec = add nsw i32 %len.addr.011, -1
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %and, %for.body.for.end_crit_edge ]
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_hashsize, align 4
  %rem = urem i32 %hash.0.lcssa, %10
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @affs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_lookup.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_lookup, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_lookup.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_ext_lock.i = getelementptr i8, ptr %dir, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #4
  %call3 = tail call fastcc ptr @affs_find_entry(ptr noundef %dir, ptr noundef %dentry)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %call3, null
  br i1 %tobool8.not, label %if.end7.if.end16_crit_edge, label %if.then9

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv to ptr
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %5 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %d_fsdata, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 -200
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr10, i32 0, i32 15
  %10 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %11)
  %cond = icmp eq i32 %11, -4
  br i1 %cond, label %sw.bb, label %if.then9.do.body.i_crit_edge

if.then9.do.body.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %original = getelementptr inbounds %struct.affs_tail, ptr %add.ptr10, i32 0, i32 9
  %12 = ptrtoint ptr %original to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %original, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb, %if.then9.do.body.i_crit_edge
  %ino.0 = phi i32 [ %13, %sw.bb ], [ %conv, %if.then9.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_lookup, %if.then4.i)) #4
          to label %affs_brelse.exit [label %if.then4.i], !srcloc !68

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i64 noundef %15) #4
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call3) #4
  %call15 = tail call ptr @affs_iget(ptr noundef %1, i32 noundef %ino.0) #4
  br label %if.end16

if.end16:                                         ; preds = %affs_brelse.exit, %if.end7.if.end16_crit_edge
  %inode.0 = phi ptr [ %call15, %affs_brelse.exit ], [ null, %if.end7.if.end16_crit_edge ]
  %call17 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #4
  %tobool.not.i46 = icmp eq ptr %call17, null
  %cmp.i47 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i46, %cmp.i47
  br i1 %spec.select.i, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %d_fsdata20 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %16 = ptrtoint ptr %d_fsdata20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_fsdata20, align 4
  %d_fsdata21 = getelementptr inbounds %struct.dentry, ptr %call17, i32 0, i32 11
  %18 = ptrtoint ptr %d_fsdata21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %d_fsdata21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %do.end.cleanup_crit_edge ], [ %call17, %if.then19 ], [ %call17, %if.end16.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @affs_find_entry(ptr nocapture noundef readonly %dir, ptr noundef %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @affs_toupper, ptr @affs_intl_toupper
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_find_entry.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_find_entry, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_find_entry.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_find_entry, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %7) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i.i = icmp sgt i32 %11, %7
  br i1 %cmp.not.i.i, label %do.end.i.cleanup_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_validblock.exit.i:                           ; preds = %do.end.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp2.i.i = icmp sgt i32 %13, %7
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup_crit_edge

affs_validblock.exit.i.cleanup_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %7 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv.i, i32 noundef %17, i32 noundef 8) #4
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %affs_bread.exit.cleanup_crit_edge, label %if.end8

affs_bread.exit.cleanup_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %affs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %d_name, align 8
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @affs_toupper, ptr @affs_intl_toupper
  %26 = tail call i32 @llvm.umin.i32(i32 %21, i32 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.not10.i = icmp eq i32 %26, 0
  br i1 %cmp1.not10.i, label %if.end8.affs_hash_name.exit_crit_edge, label %for.body.i.preheader

if.end8.affs_hash_name.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %affs_hash_name.exit

for.body.i.preheader:                             ; preds = %if.end8
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %name.addr.013.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %28, %for.body.i.preheader ]
  %hash.012.i = phi i32 [ %and.i51, %for.body.i.for.body.i_crit_edge ], [ %26, %for.body.i.preheader ]
  %len.addr.011.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %26, %for.body.i.preheader ]
  %mul.i = mul nuw nsw i32 %hash.012.i, 13
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.013.i, i32 1
  %29 = ptrtoint ptr %name.addr.013.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name.addr.013.i, align 1
  %conv.i50 = zext i8 %30 to i32
  %call2.i = tail call i32 %cond.i.i(i32 noundef %conv.i50) #4, !callees !67
  %add.i = add i32 %call2.i, %mul.i
  %and.i51 = and i32 %add.i, 2047
  %dec.i = add nsw i32 %len.addr.011.i, -1
  %cmp1.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp1.not.i, label %for.body.i.affs_hash_name.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.affs_hash_name.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %affs_hash_name.exit

affs_hash_name.exit:                              ; preds = %for.body.i.affs_hash_name.exit_crit_edge, %if.end8.affs_hash_name.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ 0, %if.end8.affs_hash_name.exit_crit_edge ], [ %and.i51, %for.body.i.affs_hash_name.exit_crit_edge ]
  %31 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_hashsize.i = getelementptr inbounds %struct.affs_sb_info, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %s_hashsize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_hashsize.i, align 4
  %rem.i = urem i32 %hash.0.lcssa.i, %34
  %arrayidx = getelementptr %struct.affs_head, ptr %19, i32 0, i32 6, i32 %rem.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end24, %affs_hash_name.exit
  %bh.0 = phi ptr [ %call.i.i, %affs_hash_name.exit ], [ %call.i.i64, %if.end24 ]
  %key.0.in = phi ptr [ %arrayidx, %affs_hash_name.exit ], [ %hash_chain, %if.end24 ]
  %35 = ptrtoint ptr %key.0.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %key.0 = load i32, ptr %key.0.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_find_entry, %if.then4.i53)) #4
          to label %affs_brelse.exit [label %if.then4.i53], !srcloc !68

if.then4.i53:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %36 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i64 noundef %37) #4
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i53, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %bh.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key.0)
  %cmp = icmp eq i32 %key.0, 0
  br i1 %cmp, label %affs_brelse.exit.cleanup_crit_edge, label %if.end12

affs_brelse.exit.cleanup_crit_edge:               ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %affs_brelse.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_find_entry, %if.then.i54)) #4
          to label %do.end.i58 [label %if.then.i54], !srcloc !68

if.then.i54:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %key.0) #4
  br label %do.end.i58

do.end.i58:                                       ; preds = %if.then.i54, %if.end12
  %38 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_reserved.i.i56 = getelementptr inbounds %struct.affs_sb_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %s_reserved.i.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_reserved.i.i56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %key.0)
  %cmp.not.i.i57 = icmp sgt i32 %41, %key.0
  br i1 %cmp.not.i.i57, label %do.end.i58.cleanup_crit_edge, label %affs_validblock.exit.i60

do.end.i58.cleanup_crit_edge:                     ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_validblock.exit.i60:                         ; preds = %do.end.i58
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %key.0)
  %cmp2.i.i59 = icmp sgt i32 %43, %key.0
  br i1 %cmp2.i.i59, label %affs_bread.exit67, label %affs_validblock.exit.i60.cleanup_crit_edge

affs_validblock.exit.i60.cleanup_crit_edge:       ; preds = %affs_validblock.exit.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_bread.exit67:                                ; preds = %affs_validblock.exit.i60
  %conv.i61 = sext i32 %key.0 to i64
  %44 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i.i, align 4
  %46 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i64 = tail call ptr @__bread_gfp(ptr noundef %45, i64 noundef %conv.i61, i32 noundef %47, i32 noundef 8) #4
  %tobool14.not = icmp eq ptr %call.i.i64, null
  br i1 %tobool14.not, label %affs_bread.exit67.cleanup_crit_edge, label %if.end17

affs_bread.exit67.cleanup_crit_edge:              ; preds = %affs_bread.exit67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %affs_bread.exit67
  %b_data18 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i64, i32 0, i32 5
  %48 = ptrtoint ptr %b_data18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data18, align 4
  %50 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %49, i32 -200
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %51
  %name20 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr19, i32 0, i32 7
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 8
  %54 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %55)
  %cmp.i = icmp ugt i32 %55, 29
  %56 = ptrtoint ptr %name20 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %name20, align 1
  br i1 %cmp.i, label %if.then.i68, label %if.else.i

if.then.i68:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %57)
  %cmp4.i = icmp ult i8 %57, 30
  br i1 %cmp4.i, label %if.then.i68.if.end24_crit_edge, label %if.then.i68.for.body.i69.preheader_crit_edge

if.then.i68.for.body.i69.preheader_crit_edge:     ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i69.preheader

if.then.i68.if.end24_crit_edge:                   ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.else.i:                                        ; preds = %if.end17
  %conv7.i = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %55, %conv7.i
  br i1 %cmp8.not.i, label %if.end12.i, label %if.else.i.if.end24_crit_edge

if.else.i.if.end24_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1334.not.i = icmp eq i32 %55, 0
  br i1 %cmp1334.not.i, label %if.end12.i.cleanup_crit_edge, label %if.end12.i.for.body.i69.preheader_crit_edge

if.end12.i.for.body.i69.preheader_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i69.preheader

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i69.preheader:                           ; preds = %if.end12.i.for.body.i69.preheader_crit_edge, %if.then.i68.for.body.i69.preheader_crit_edge
  %len.136.i.ph = phi i32 [ 30, %if.then.i68.for.body.i69.preheader_crit_edge ], [ %55, %if.end12.i.for.body.i69.preheader_crit_edge ]
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.inc.i.for.body.i69_crit_edge, %for.body.i69.preheader
  %name2.addr.037.pn.i = phi ptr [ %name2.addr.037.i, %for.inc.i.for.body.i69_crit_edge ], [ %name20, %for.body.i69.preheader ]
  %len.136.i = phi i32 [ %dec.i70, %for.inc.i.for.body.i69_crit_edge ], [ %len.136.i.ph, %for.body.i69.preheader ]
  %name.035.i = phi ptr [ %incdec.ptr15.i, %for.inc.i.for.body.i69_crit_edge ], [ %53, %for.body.i69.preheader ]
  %name2.addr.037.i = getelementptr i8, ptr %name2.addr.037.pn.i, i32 1
  %58 = ptrtoint ptr %name.035.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %name.035.i, align 1
  %conv16.i = zext i8 %59 to i32
  %call.i = tail call i32 %cond.i(i32 noundef %conv16.i) #4, !callees !67
  %60 = ptrtoint ptr %name2.addr.037.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %name2.addr.037.i, align 1
  %conv18.i = zext i8 %61 to i32
  %call19.i = tail call i32 %cond.i(i32 noundef %conv18.i) #4, !callees !67
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call.i, %call19.i
  br i1 %cmp20.not.i, label %for.inc.i, label %for.body.i69.if.end24_crit_edge

for.body.i69.if.end24_crit_edge:                  ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

for.inc.i:                                        ; preds = %for.body.i69
  %incdec.ptr15.i = getelementptr i8, ptr %name.035.i, i32 1
  %dec.i70 = add nsw i32 %len.136.i, -1
  %cmp13.i = icmp sgt i32 %len.136.i, 1
  br i1 %cmp13.i, label %for.inc.i.for.body.i69_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.i.for.body.i69_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i69

if.end24:                                         ; preds = %for.body.i69.if.end24_crit_edge, %if.else.i.if.end24_crit_edge, %if.then.i68.if.end24_crit_edge
  %62 = ptrtoint ptr %b_data18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data18, align 4
  %64 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr27 = getelementptr i8, ptr %63, i32 -200
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %65
  %hash_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr28, i32 0, i32 12
  br label %do.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %affs_bread.exit67.cleanup_crit_edge, %affs_validblock.exit.i60.cleanup_crit_edge, %do.end.i58.cleanup_crit_edge, %affs_brelse.exit.cleanup_crit_edge, %affs_bread.exit.cleanup_crit_edge, %affs_validblock.exit.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %affs_bread.exit.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_validblock.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end.i.cleanup_crit_edge ], [ %call.i.i64, %for.inc.i.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end.i58.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_validblock.exit.i60.cleanup_crit_edge ], [ %call.i.i64, %if.end12.i.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_bread.exit67.cleanup_crit_edge ], [ null, %affs_brelse.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @affs_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_unlink(ptr nocapture noundef readonly %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_unlink.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_unlink, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino4, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_unlink.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %5, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @affs_remove_header(ptr noundef %dentry) #4
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_remove_header(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_create.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_create, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %conv = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_create.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %3, ptr noundef %dentry, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @affs_new_inode(ptr noundef %dir) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %mode, ptr %call4, align 8
  tail call void @affs_mode_to_prot(ptr noundef nonnull %call4) #4
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call4, i32 noundef 7) #4
  %i_op = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @affs_file_inode_operations, ptr %i_op, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 44
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @affs_file_operations, ptr %6, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool9.not, ptr @affs_aops, ptr @affs_aops_ofs
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond, ptr %a_ops, align 4
  %call10 = tail call i32 @affs_add_entry(ptr noundef %dir, ptr noundef nonnull %call4, ptr noundef %dentry, i32 noundef -3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.then12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clear_nlink(ptr noundef nonnull %call4) #4
  tail call void @iput(ptr noundef nonnull %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ -28, %do.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @affs_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_mode_to_prot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_add_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_mkdir.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_mkdir, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %conv = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_mkdir.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef %dentry, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @affs_new_inode(ptr noundef %dir) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %2 = or i16 %mode, 16384
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %call3, align 8
  tail call void @affs_mode_to_prot(ptr noundef nonnull %call3) #4
  %i_op = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @affs_dir_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @affs_dir_operations, ptr %5, align 8
  %call9 = tail call i32 @affs_add_entry(ptr noundef %dir, ptr noundef nonnull %call3, ptr noundef %dentry, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clear_nlink(ptr noundef nonnull %call3) #4
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call3, i32 noundef 7) #4
  tail call void @iput(ptr noundef nonnull %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ -28, %do.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_rmdir(ptr nocapture noundef readonly %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_rmdir.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_rmdir, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino4, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_rmdir.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %5, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @affs_remove_header(ptr noundef %dentry) #4
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_symlink.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_symlink, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_symlink.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef %dentry, ptr noundef %symname) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_hashsize, align 4
  %mul = shl i32 %7, 2
  %sub = add i32 %mul, -1
  %call4 = tail call ptr @affs_new_inode(ptr noundef %dir) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %i_op = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %8 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @affs_symlink_inode_operations, ptr %i_op, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call4) #4
  %a_ops = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 46, i32 9
  %9 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @affs_symlink_aops, ptr %a_ops, align 8
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -24065, ptr %call4, align 8
  tail call void @affs_mode_to_prot(ptr noundef nonnull %call4) #4
  %i_ino8 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino8, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_symlink, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %12) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end7
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp.not.i.i = icmp sgt i32 %16, %12
  br i1 %cmp.not.i.i, label %do.end.i.err_crit_edge, label %affs_validblock.exit.i

do.end.i.err_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

affs_validblock.exit.i:                           ; preds = %do.end.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp2.i.i = icmp sgt i32 %18, %12
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.err_crit_edge

affs_validblock.exit.i.err_crit_edge:             ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %12 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %20, i64 noundef %conv.i, i32 noundef %22, i32 noundef 8) #4
  %tobool10.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not, label %affs_bread.exit.err_crit_edge, label %if.end12

affs_bread.exit.err_crit_edge:                    ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end12:                                         ; preds = %affs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %table = getelementptr inbounds %struct.affs_head, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %symname to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %symname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %26)
  %cmp = icmp eq i8 %26, 47
  br i1 %cmp, label %if.then14, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then14:                                        ; preds = %if.end12
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then14
  %symname.addr.0156 = phi ptr [ %symname, %if.then14 ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %symname.addr.0156, i32 1
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %incdec.ptr, align 1
  %cmp17 = icmp eq i8 %.pr, 47
  br i1 %cmp17, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  %symlink_lock = getelementptr inbounds %struct.affs_sb_info, ptr %28, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %symlink_lock) #4
  %arrayidx157 = getelementptr %struct.affs_sb_info, ptr %28, i32 0, i32 17, i32 0
  %30 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not158 = icmp eq i8 %31, 0
  br i1 %tobool20.not158, label %while.end.while.end25_crit_edge, label %while.end.while.body21_crit_edge

while.end.while.body21_crit_edge:                 ; preds = %while.end
  br label %while.body21

while.end.while.end25_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end25

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.end.while.body21_crit_edge
  %32 = phi i8 [ %35, %while.body21.while.body21_crit_edge ], [ %31, %while.end.while.body21_crit_edge ]
  %i.0160 = phi i32 [ %inc, %while.body21.while.body21_crit_edge ], [ 0, %while.end.while.body21_crit_edge ]
  %p.0159 = phi ptr [ %incdec.ptr24, %while.body21.while.body21_crit_edge ], [ %table, %while.end.while.body21_crit_edge ]
  %inc = add i32 %i.0160, 1
  %incdec.ptr24 = getelementptr i8, ptr %p.0159, i32 1
  %33 = ptrtoint ptr %p.0159 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %p.0159, align 1
  %arrayidx = getelementptr %struct.affs_sb_info, ptr %28, i32 0, i32 17, i32 %inc
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %tobool20.not = icmp eq i8 %35, 0
  br i1 %tobool20.not, label %while.body21.while.end25_crit_edge, label %while.body21.while.body21_crit_edge

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body21

while.body21.while.end25_crit_edge:               ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end25

while.end25:                                      ; preds = %while.body21.while.end25_crit_edge, %while.end.while.end25_crit_edge
  %p.0.lcssa = phi ptr [ %table, %while.end.while.end25_crit_edge ], [ %incdec.ptr24, %while.body21.while.end25_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %while.end.while.end25_crit_edge ], [ %inc, %while.body21.while.end25_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %symlink_lock) #4
  br label %if.end27

if.end27:                                         ; preds = %while.end25, %if.end12.if.end27_crit_edge
  %p.1 = phi ptr [ %p.0.lcssa, %while.end25 ], [ %table, %if.end12.if.end27_crit_edge ]
  %i.1 = phi i32 [ %i.0.lcssa, %while.end25 ], [ 0, %if.end12.if.end27_crit_edge ]
  %symname.addr.1 = phi ptr [ %incdec.ptr, %while.end25 ], [ %symname, %if.end12.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %sub)
  %cmp29162 = icmp slt i32 %i.1, %sub
  br i1 %cmp29162, label %if.end27.land.rhs_crit_edge, label %if.end27.do.body.i_crit_edge

if.end27.do.body.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end27.land.rhs_crit_edge:                      ; preds = %if.end27
  br label %land.rhs

land.rhs:                                         ; preds = %if.end82.land.rhs_crit_edge, %if.end27.land.rhs_crit_edge
  %symname.addr.2168 = phi ptr [ %symname.addr.5, %if.end82.land.rhs_crit_edge ], [ %symname.addr.1, %if.end27.land.rhs_crit_edge ]
  %lc.0167 = phi i8 [ %lc.1183, %if.end82.land.rhs_crit_edge ], [ 47, %if.end27.land.rhs_crit_edge ]
  %i.2164 = phi i32 [ %i.3181, %if.end82.land.rhs_crit_edge ], [ %i.1, %if.end27.land.rhs_crit_edge ]
  %p.2163 = phi ptr [ %p.3179, %if.end82.land.rhs_crit_edge ], [ %p.1, %if.end27.land.rhs_crit_edge ]
  %incdec.ptr31 = getelementptr i8, ptr %symname.addr.2168, i32 1
  %36 = ptrtoint ptr %symname.addr.2168 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %symname.addr.2168, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool33.not = icmp eq i8 %37, 0
  br i1 %tobool33.not, label %land.rhs.do.body.i_crit_edge, label %while.body34

land.rhs.do.body.i_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

while.body34:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %37)
  %cmp36 = icmp eq i8 %37, 46
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %lc.0167)
  %cmp39 = icmp eq i8 %lc.0167, 47
  %or.cond = select i1 %cmp36, i1 %cmp39, i1 false
  br i1 %or.cond, label %land.lhs.true41, label %if.end70

land.lhs.true41:                                  ; preds = %while.body34
  %38 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %39)
  %cmp43 = icmp eq i8 %39, 46
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true41.land.lhs.true60_crit_edge

land.lhs.true41.land.lhs.true60_crit_edge:        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true60

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %arrayidx46 = getelementptr i8, ptr %symname.addr.2168, i32 2
  %40 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %41)
  %cmp48 = icmp eq i8 %41, 47
  br i1 %cmp48, label %if.then50, label %land.lhs.true60thread-pre-split

if.then50:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr51 = getelementptr i8, ptr %p.2163, i32 1
  %42 = ptrtoint ptr %p.2163 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 47, ptr %p.2163, align 1
  %inc52 = add nsw i32 %i.2164, 1
  %add.ptr = getelementptr i8, ptr %symname.addr.2168, i32 3
  br label %while.cond75.preheader

land.lhs.true60thread-pre-split:                  ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr155 = load i8, ptr %incdec.ptr31, align 1
  br label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true60thread-pre-split, %land.lhs.true41.land.lhs.true60_crit_edge
  %44 = phi i8 [ %.pr155, %land.lhs.true60thread-pre-split ], [ %39, %land.lhs.true41.land.lhs.true60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %44)
  %cmp62 = icmp eq i8 %44, 47
  br i1 %cmp62, label %if.then64, label %if.end70.thread186

if.end70.thread186:                               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr67187 = getelementptr i8, ptr %p.2163, i32 1
  %45 = ptrtoint ptr %p.2163 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %37, ptr %p.2163, align 1
  %inc68188 = add nsw i32 %i.2164, 1
  br label %if.end82

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr65 = getelementptr i8, ptr %symname.addr.2168, i32 2
  br label %while.cond75.preheader

if.end70:                                         ; preds = %while.body34
  %incdec.ptr67 = getelementptr i8, ptr %p.2163, i32 1
  %46 = ptrtoint ptr %p.2163 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %37, ptr %p.2163, align 1
  %inc68 = add nsw i32 %i.2164, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %37)
  %cmp72 = icmp eq i8 %37, 47
  br i1 %cmp72, label %if.end70.while.cond75.preheader_crit_edge, label %if.end70.if.end82_crit_edge

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.end70.while.cond75.preheader_crit_edge:        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond75.preheader

while.cond75.preheader:                           ; preds = %if.end70.while.cond75.preheader_crit_edge, %if.then64, %if.then50
  %symname.addr.3185 = phi ptr [ %incdec.ptr31, %if.end70.while.cond75.preheader_crit_edge ], [ %incdec.ptr65, %if.then64 ], [ %add.ptr, %if.then50 ]
  %i.3182 = phi i32 [ %inc68, %if.end70.while.cond75.preheader_crit_edge ], [ %i.2164, %if.then64 ], [ %inc52, %if.then50 ]
  %p.3180 = phi ptr [ %incdec.ptr67, %if.end70.while.cond75.preheader_crit_edge ], [ %p.2163, %if.then64 ], [ %incdec.ptr51, %if.then50 ]
  br label %while.cond75

while.cond75:                                     ; preds = %while.cond75.while.cond75_crit_edge, %while.cond75.preheader
  %symname.addr.4 = phi ptr [ %incdec.ptr80, %while.cond75.while.cond75_crit_edge ], [ %symname.addr.3185, %while.cond75.preheader ]
  %47 = ptrtoint ptr %symname.addr.4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %symname.addr.4, align 1
  %cmp77 = icmp eq i8 %48, 47
  %incdec.ptr80 = getelementptr i8, ptr %symname.addr.4, i32 1
  br i1 %cmp77, label %while.cond75.while.cond75_crit_edge, label %while.cond75.if.end82_crit_edge

while.cond75.if.end82_crit_edge:                  ; preds = %while.cond75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

while.cond75.while.cond75_crit_edge:              ; preds = %while.cond75
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond75

if.end82:                                         ; preds = %while.cond75.if.end82_crit_edge, %if.end70.if.end82_crit_edge, %if.end70.thread186
  %lc.1183 = phi i8 [ %37, %if.end70.if.end82_crit_edge ], [ 46, %if.end70.thread186 ], [ 47, %while.cond75.if.end82_crit_edge ]
  %i.3181 = phi i32 [ %inc68, %if.end70.if.end82_crit_edge ], [ %inc68188, %if.end70.thread186 ], [ %i.3182, %while.cond75.if.end82_crit_edge ]
  %p.3179 = phi ptr [ %incdec.ptr67, %if.end70.if.end82_crit_edge ], [ %incdec.ptr67187, %if.end70.thread186 ], [ %p.3180, %while.cond75.if.end82_crit_edge ]
  %symname.addr.5 = phi ptr [ %incdec.ptr31, %if.end70.if.end82_crit_edge ], [ %incdec.ptr31, %if.end70.thread186 ], [ %symname.addr.4, %while.cond75.if.end82_crit_edge ]
  %cmp29 = icmp slt i32 %i.3181, %sub
  br i1 %cmp29, label %if.end82.land.rhs_crit_edge, label %if.end82.do.body.i_crit_edge

if.end82.do.body.i_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end82.land.rhs_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

do.body.i:                                        ; preds = %if.end82.do.body.i_crit_edge, %land.rhs.do.body.i_crit_edge, %if.end27.do.body.i_crit_edge
  %p.2.lcssa = phi ptr [ %p.1, %if.end27.do.body.i_crit_edge ], [ %p.2163, %land.rhs.do.body.i_crit_edge ], [ %p.3179, %if.end82.do.body.i_crit_edge ]
  %i.2.lcssa = phi i32 [ %i.1, %if.end27.do.body.i_crit_edge ], [ %i.2164, %land.rhs.do.body.i_crit_edge ], [ %i.3181, %if.end82.do.body.i_crit_edge ]
  %49 = ptrtoint ptr %p.2.lcssa to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %p.2.lcssa, align 1
  %add = add i32 %i.2.lcssa, 1
  %conv84 = sext i32 %add to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 14
  %50 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv84, ptr %i_size, align 8
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call4) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_symlink, %if.then4.i150)) #4
          to label %affs_brelse.exit [label %if.then4.i150], !srcloc !68

if.then4.i150:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i64 noundef %52) #4
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i150, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call4, i32 noundef 7) #4
  %call85 = tail call i32 @affs_add_entry(ptr noundef %dir, ptr noundef nonnull %call4, ptr noundef %dentry, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %affs_brelse.exit.cleanup_crit_edge, label %affs_brelse.exit.err_crit_edge

affs_brelse.exit.err_crit_edge:                   ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

affs_brelse.exit.cleanup_crit_edge:               ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err:                                              ; preds = %affs_brelse.exit.err_crit_edge, %affs_bread.exit.err_crit_edge, %affs_validblock.exit.i.err_crit_edge, %do.end.i.err_crit_edge
  %error.0 = phi i32 [ %call85, %affs_brelse.exit.err_crit_edge ], [ -5, %affs_bread.exit.err_crit_edge ], [ -5, %affs_validblock.exit.i.err_crit_edge ], [ -5, %do.end.i.err_crit_edge ]
  tail call void @clear_nlink(ptr noundef nonnull %call4) #4
  tail call void @__mark_inode_dirty(ptr noundef nonnull %call4, i32 noundef 7) #4
  tail call void @iput(ptr noundef nonnull %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %affs_brelse.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -28, %do.end.cleanup_crit_edge ], [ 0, %affs_brelse.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_link.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_link, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino4, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_link.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @affs_add_entry(ptr noundef %dir, ptr noundef %1, ptr noundef %dentry, i32 noundef -4) #4
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_rename2(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 4
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_rename2.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_rename2, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !68

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %i_ino5 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino5, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_rename2.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %1, ptr noundef %old_dentry, i32 noundef %3, ptr noundef %new_dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %and7 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call fastcc i32 @affs_xrename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry)
  br label %return

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call fastcc i32 @affs_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry)
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call12, %if.end11 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_xrename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_xrename, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %5) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not.i.i = icmp sgt i32 %9, %5
  br i1 %cmp.not.i.i, label %do.end.i.cleanup_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_validblock.exit.i:                           ; preds = %do.end.i
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp2.i.i = icmp sgt i32 %11, %5
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup_crit_edge

affs_validblock.exit.i.cleanup_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %5 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %conv.i, i32 noundef %15, i32 noundef 8) #4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %affs_bread.exit.cleanup_crit_edge, label %if.end

affs_bread.exit.cleanup_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %affs_bread.exit
  %d_inode.i66 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i66, align 8
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_xrename, %if.then.i67)) #4
          to label %do.end.i71 [label %if.then.i67], !srcloc !68

if.then.i67:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %19) #4
  br label %do.end.i71

do.end.i71:                                       ; preds = %if.then.i67, %if.end
  %20 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i69 = getelementptr inbounds %struct.affs_sb_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %s_reserved.i.i69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_reserved.i.i69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp.not.i.i70 = icmp sgt i32 %23, %19
  br i1 %cmp.not.i.i70, label %do.end.i71.do.body.i_crit_edge, label %affs_validblock.exit.i73

do.end.i71.do.body.i_crit_edge:                   ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

affs_validblock.exit.i73:                         ; preds = %do.end.i71
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp2.i.i72 = icmp sgt i32 %25, %19
  br i1 %cmp2.i.i72, label %affs_bread.exit80, label %affs_validblock.exit.i73.do.body.i_crit_edge

affs_validblock.exit.i73.do.body.i_crit_edge:     ; preds = %affs_validblock.exit.i73
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

affs_bread.exit80:                                ; preds = %affs_validblock.exit.i73
  %conv.i74 = sext i32 %19 to i64
  %26 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdev.i.i, align 4
  %28 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i77 = tail call ptr @__bread_gfp(ptr noundef %27, i64 noundef %conv.i74, i32 noundef %29, i32 noundef 8) #4
  %tobool6.not = icmp eq ptr %call.i.i77, null
  br i1 %tobool6.not, label %affs_bread.exit80.do.body.i_crit_edge, label %if.end8

affs_bread.exit80.do.body.i_crit_edge:            ; preds = %affs_bread.exit80
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i:                                        ; preds = %affs_bread.exit80.do.body.i_crit_edge, %affs_validblock.exit.i73.do.body.i_crit_edge, %do.end.i71.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_xrename, %cleanup.sink.split.sink.split)) #4
          to label %cleanup.sink.split [label %cleanup.sink.split.sink.split], !srcloc !68

if.end8:                                          ; preds = %affs_bread.exit80
  %i_ext_lock.i = getelementptr i8, ptr %old_dir, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #4
  %call9 = tail call i32 @affs_remove_hash(ptr noundef %old_dir, ptr noundef nonnull %call.i.i) #4
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.body.i90_crit_edge

if.end8.do.body.i90_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i90

if.end12:                                         ; preds = %if.end8
  %i_ext_lock.i83 = getelementptr i8, ptr %new_dir, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i83, i32 noundef 1) #4
  %call13 = tail call i32 @affs_remove_hash(ptr noundef %new_dir, ptr noundef nonnull %call.i.i77) #4
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.body.i90_crit_edge

if.end12.do.body.i90_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i90

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data, align 4
  %32 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %31, i32 %33
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 -200
  %name = getelementptr inbounds %struct.affs_tail, ptr %add.ptr17, i32 0, i32 7
  %call18 = tail call i32 @affs_copy_name(ptr noundef %name, ptr noundef %new_dentry) #4
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef nonnull %call.i.i) #4
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i83, i32 noundef 1) #4
  %call19 = tail call i32 @affs_insert_hash(ptr noundef %new_dir, ptr noundef nonnull %call.i.i) #4
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i83) #4
  %b_data20 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i77, i32 0, i32 5
  %34 = ptrtoint ptr %b_data20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data20, align 4
  %36 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr22 = getelementptr i8, ptr %35, i32 %37
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i32 -200
  %name24 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr23, i32 0, i32 7
  %call26 = tail call i32 @affs_copy_name(ptr noundef %name24, ptr noundef %old_dentry) #4
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef nonnull %call.i.i77) #4
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #4
  %call27 = tail call i32 @affs_insert_hash(ptr noundef %old_dir, ptr noundef nonnull %call.i.i77) #4
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #4
  br label %do.body.i90

do.body.i90:                                      ; preds = %if.end16, %if.end12.do.body.i90_crit_edge, %if.end8.do.body.i90_crit_edge
  %retval1.0 = phi i32 [ %call9, %if.end8.do.body.i90_crit_edge ], [ %call13, %if.end12.do.body.i90_crit_edge ], [ %call27, %if.end16 ]
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i, ptr noundef %new_dir) #4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i77, ptr noundef %old_dir) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_xrename, %if.then4.i92)) #4
          to label %do.body.i96 [label %if.then4.i92], !srcloc !68

if.then4.i92:                                     ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #6
  %b_blocknr.i91 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %b_blocknr.i91 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_blocknr.i91, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i64 noundef %39) #4
  br label %do.body.i96

do.body.i96:                                      ; preds = %if.then4.i92, %do.body.i90
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_xrename, %cleanup.sink.split.sink.split)) #4
          to label %cleanup.sink.split [label %cleanup.sink.split.sink.split], !srcloc !68

cleanup.sink.split.sink.split:                    ; preds = %do.body.i96, %do.body.i
  %call.i.i77.sink108 = phi ptr [ %call.i.i, %do.body.i ], [ %call.i.i77, %do.body.i96 ]
  %retval.0.ph.ph = phi i32 [ -5, %do.body.i ], [ %retval1.0, %do.body.i96 ]
  call void @__sanitizer_cov_trace_pc() #6
  %b_blocknr.i97 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i77.sink108, i32 0, i32 3
  %40 = ptrtoint ptr %b_blocknr.i97 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %b_blocknr.i97, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i64 noundef %41) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body.i96, %do.body.i
  %call.i.i77.sink = phi ptr [ %call.i.i, %do.body.i ], [ %call.i.i77, %do.body.i96 ], [ %call.i.i77.sink108, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -5, %do.body.i ], [ %retval1.0, %do.body.i96 ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i77.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %affs_bread.exit.cleanup_crit_edge, %affs_validblock.exit.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %affs_bread.exit.cleanup_crit_edge ], [ -5, %affs_validblock.exit.i.cleanup_crit_edge ], [ -5, %do.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  %call = tail call zeroext i1 @affs_nofilenametruncate(ptr noundef %old_dentry) #4
  %call3 = tail call i32 @affs_check_name(ptr noundef %3, i32 noundef %5, i1 noundef zeroext %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @affs_remove_header(ptr noundef %new_dentry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %d_inode.i53 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i53, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_rename, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %11) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end10
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp.not.i.i = icmp sgt i32 %15, %11
  br i1 %cmp.not.i.i, label %do.end.i.cleanup_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_validblock.exit.i:                           ; preds = %do.end.i
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %11)
  %cmp2.i.i = icmp sgt i32 %17, %11
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup_crit_edge

affs_validblock.exit.i.cleanup_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %11 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %19, i64 noundef %conv.i, i32 noundef %21, i32 noundef 8) #4
  %tobool13.not = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not, label %affs_bread.exit.cleanup_crit_edge, label %if.end15

affs_bread.exit.cleanup_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %affs_bread.exit
  %i_ext_lock.i = getelementptr i8, ptr %old_dir, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #4
  %call16 = tail call i32 @affs_remove_hash(ptr noundef %old_dir, ptr noundef nonnull %call.i.i) #4
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.do.body.i_crit_edge

if.end15.do.body.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %24 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 -200
  %name21 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr20, i32 0, i32 7
  %call22 = tail call i32 @affs_copy_name(ptr noundef %name21, ptr noundef %new_dentry) #4
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef nonnull %call.i.i) #4
  %i_ext_lock.i55 = getelementptr i8, ptr %new_dir, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i55, i32 noundef 1) #4
  %call23 = tail call i32 @affs_insert_hash(ptr noundef %new_dir, ptr noundef nonnull %call.i.i) #4
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i55) #4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19, %if.end15.do.body.i_crit_edge
  %retval1.0 = phi i32 [ %call16, %if.end15.do.body.i_crit_edge ], [ %call23, %if.end19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool24.not = icmp eq i32 %retval1.0, 0
  %new_dir.old_dir = select i1 %tobool24.not, ptr %new_dir, ptr %old_dir
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i, ptr noundef %new_dir.old_dir) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_rename, %if.then4.i57)) #4
          to label %affs_brelse.exit [label %if.then4.i57], !srcloc !68

if.then4.i57:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i64 noundef %27) #4
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i57, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %affs_brelse.exit, %affs_bread.exit.cleanup_crit_edge, %affs_validblock.exit.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %affs_brelse.exit ], [ %call3, %entry.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ -5, %affs_bread.exit.cleanup_crit_edge ], [ -5, %affs_validblock.exit.i.cleanup_crit_edge ], [ -5, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @affs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @affs_nfs_get_inode) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @affs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @affs_nfs_get_inode) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @affs_get_parent(ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_get_parent, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %5) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not.i.i = icmp sgt i32 %9, %5
  br i1 %cmp.not.i.i, label %do.end.i.cleanup_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_validblock.exit.i:                           ; preds = %do.end.i
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp2.i.i = icmp sgt i32 %11, %5
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup_crit_edge

affs_validblock.exit.i.cleanup_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %5 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %conv.i, i32 noundef %15, i32 noundef 8) #4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %affs_bread.exit.cleanup_crit_edge, label %brelse.exit

affs_bread.exit.cleanup_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

brelse.exit:                                      ; preds = %affs_bread.exit
  %16 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_sb, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 -200
  %parent6 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr5, i32 0, i32 13
  %22 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent6, align 4
  %call7 = tail call ptr @affs_iget(ptr noundef %17, i32 noundef %23) #4
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %brelse.exit.cleanup_crit_edge, label %if.end11

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call ptr @d_obtain_alias(ptr noundef %call7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %brelse.exit.cleanup_crit_edge, %affs_bread.exit.cleanup_crit_edge, %affs_validblock.exit.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call12, %if.end11 ], [ inttoptr (i32 -5 to ptr), %affs_bread.exit.cleanup_crit_edge ], [ %call7, %brelse.exit.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %affs_validblock.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_hash_dentry(ptr noundef %dentry, ptr nocapture noundef %qstr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @affs_nofilenametruncate(ptr noundef %dentry) #4
  %name1.i = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %0 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1.i, align 8
  %2 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstr, align 8
  %call.i = tail call i32 @affs_check_name(ptr noundef %1, i32 noundef %3, i1 noundef zeroext %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %entry.__affs_hash_dentry.exit_crit_edge

entry.__affs_hash_dentry.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_hash_dentry.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %dentry to i32
  %5 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qstr, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not25.i = icmp eq i32 %7, 0
  br i1 %cmp7.not25.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %len.028.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %7, %if.end.i.for.body.i_crit_edge ]
  %hash.027.i = phi i32 [ %mul.i.i, %for.body.i.for.body.i_crit_edge ], [ %4, %if.end.i.for.body.i_crit_edge ]
  %name.026.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %1, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %name.026.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name.026.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = add nsw i32 %conv.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %10)
  %11 = icmp ult i32 %10, 26
  %sub.i = add nsw i32 %conv.i, -32
  %cond.i = select i1 %11, i32 %sub.i, i32 %conv.i
  %shl.i.i = shl nsw i32 %cond.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.027.i
  %shr.i.i = lshr i32 %cond.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %incdec.ptr.i = getelementptr i8, ptr %name.026.i, i32 1
  %dec.i = add nsw i32 %len.028.i, -1
  %cmp7.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %hash.0.lcssa.i = phi i32 [ %4, %if.end.i.for.end.i_crit_edge ], [ %mul.i.i, %for.body.i.for.end.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %hash11.i = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %12 = ptrtoint ptr %hash11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i.i.i.i, ptr %hash11.i, align 4
  br label %__affs_hash_dentry.exit

__affs_hash_dentry.exit:                          ; preds = %for.end.i, %entry.__affs_hash_dentry.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i ], [ %call.i, %entry.__affs_hash_dentry.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_compare_dentry(ptr noundef %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @affs_nofilenametruncate(ptr noundef %dentry) #4
  %name1.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %0 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1.i, align 8
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name, align 8
  %call.i = tail call i32 @affs_check_name(ptr noundef %1, i32 noundef %3, i1 noundef zeroext %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i, label %entry.__affs_compare_dentry.exit_crit_edge

entry.__affs_compare_dentry.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %len)
  %cmp.i = icmp ugt i32 %len, 29
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 8
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %5)
  %cmp7.i = icmp ult i32 %5, 30
  br i1 %cmp7.i, label %if.then5.i.__affs_compare_dentry.exit_crit_edge, label %if.then5.i.for.body.i.preheader_crit_edge

if.then5.i.for.body.i.preheader_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.preheader

if.then5.i.__affs_compare_dentry.exit_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %len)
  %cmp11.not.i = icmp eq i32 %5, %len
  br i1 %cmp11.not.i, label %if.end14.i, label %if.else.i.__affs_compare_dentry.exit_crit_edge

if.else.i.__affs_compare_dentry.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

if.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp15.not33.i = icmp eq i32 %len, 0
  br i1 %cmp15.not33.i, label %if.end14.i.__affs_compare_dentry.exit_crit_edge, label %if.end14.i.for.body.i.preheader_crit_edge

if.end14.i.for.body.i.preheader_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.preheader

if.end14.i.__affs_compare_dentry.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

for.body.i.preheader:                             ; preds = %if.end14.i.for.body.i.preheader_crit_edge, %if.then5.i.for.body.i.preheader_crit_edge
  %len.addr.134.i.ph = phi i32 [ 30, %if.then5.i.for.body.i.preheader_crit_edge ], [ %len, %if.end14.i.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %bname.036.i = phi ptr [ %incdec.ptr17.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.body.i.preheader ]
  %aname.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %str, %for.body.i.preheader ]
  %len.addr.134.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %len.addr.134.i.ph, %for.body.i.preheader ]
  %6 = ptrtoint ptr %aname.035.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aname.035.i, align 1
  %conv.i = zext i8 %7 to i32
  %8 = add nsw i32 %conv.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %8)
  %9 = icmp ult i32 %8, 26
  %sub.i2 = add nsw i32 %conv.i, -32
  %cond.i3 = select i1 %9, i32 %sub.i2, i32 %conv.i
  %10 = ptrtoint ptr %bname.036.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bname.036.i, align 1
  %conv18.i = zext i8 %11 to i32
  %12 = add nsw i32 %conv18.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %12)
  %13 = icmp ult i32 %12, 26
  %sub.i = add nsw i32 %conv18.i, -32
  %cond.i = select i1 %13, i32 %sub.i, i32 %conv18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i3, i32 %cond.i)
  %cmp20.not.i = icmp eq i32 %cond.i3, %cond.i
  br i1 %cmp20.not.i, label %for.inc.i, label %for.body.i.__affs_compare_dentry.exit_crit_edge

for.body.i.__affs_compare_dentry.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr17.i = getelementptr i8, ptr %bname.036.i, i32 1
  %incdec.ptr.i = getelementptr i8, ptr %aname.035.i, i32 1
  %dec.i = add i32 %len.addr.134.i, -1
  %cmp15.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp15.not.i, label %for.inc.i.__affs_compare_dentry.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.__affs_compare_dentry.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

__affs_compare_dentry.exit:                       ; preds = %for.inc.i.__affs_compare_dentry.exit_crit_edge, %for.body.i.__affs_compare_dentry.exit_crit_edge, %if.end14.i.__affs_compare_dentry.exit_crit_edge, %if.else.i.__affs_compare_dentry.exit_crit_edge, %if.then5.i.__affs_compare_dentry.exit_crit_edge, %entry.__affs_compare_dentry.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.__affs_compare_dentry.exit_crit_edge ], [ 1, %if.then5.i.__affs_compare_dentry.exit_crit_edge ], [ 1, %if.else.i.__affs_compare_dentry.exit_crit_edge ], [ 0, %if.end14.i.__affs_compare_dentry.exit_crit_edge ], [ 0, %for.inc.i.__affs_compare_dentry.exit_crit_edge ], [ 1, %for.body.i.__affs_compare_dentry.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_intl_hash_dentry(ptr noundef %dentry, ptr nocapture noundef %qstr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @affs_nofilenametruncate(ptr noundef %dentry) #4
  %name1.i = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %0 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1.i, align 8
  %2 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstr, align 8
  %call.i = tail call i32 @affs_check_name(ptr noundef %1, i32 noundef %3, i1 noundef zeroext %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %entry.__affs_hash_dentry.exit_crit_edge

entry.__affs_hash_dentry.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_hash_dentry.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %dentry to i32
  %5 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qstr, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not25.i = icmp eq i32 %7, 0
  br i1 %cmp7.not25.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %affs_intl_toupper.exit.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %len.028.i = phi i32 [ %dec.i, %affs_intl_toupper.exit.for.body.i_crit_edge ], [ %7, %if.end.i.for.body.i_crit_edge ]
  %hash.027.i = phi i32 [ %mul.i.i, %affs_intl_toupper.exit.for.body.i_crit_edge ], [ %4, %if.end.i.for.body.i_crit_edge ]
  %name.026.i = phi ptr [ %incdec.ptr.i, %affs_intl_toupper.exit.for.body.i_crit_edge ], [ %1, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %name.026.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name.026.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = add nsw i32 %conv.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %10)
  %11 = icmp ult i32 %10, 26
  br i1 %11, label %for.body.i.cond.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.cond.true.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %12 = add nsw i32 %conv.i, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %12)
  %13 = icmp ult i32 %12, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %9)
  %cmp6.not.i = icmp eq i8 %9, -9
  %or.cond14.i = or i1 %cmp6.not.i, %13
  br i1 %or.cond14.i, label %lor.lhs.false.i.affs_intl_toupper.exit_crit_edge, label %lor.lhs.false.i.cond.true.i_crit_edge

lor.lhs.false.i.cond.true.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i

lor.lhs.false.i.affs_intl_toupper.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %affs_intl_toupper.exit

cond.true.i:                                      ; preds = %lor.lhs.false.i.cond.true.i_crit_edge, %for.body.i.cond.true.i_crit_edge
  %sub.i = add nsw i32 %conv.i, -32
  br label %affs_intl_toupper.exit

affs_intl_toupper.exit:                           ; preds = %cond.true.i, %lor.lhs.false.i.affs_intl_toupper.exit_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %conv.i, %lor.lhs.false.i.affs_intl_toupper.exit_crit_edge ]
  %shl.i.i = shl nuw nsw i32 %cond.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.027.i
  %shr.i.i = lshr i32 %cond.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %incdec.ptr.i = getelementptr i8, ptr %name.026.i, i32 1
  %dec.i = add nsw i32 %len.028.i, -1
  %cmp7.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.not.i, label %affs_intl_toupper.exit.for.end.i_crit_edge, label %affs_intl_toupper.exit.for.body.i_crit_edge

affs_intl_toupper.exit.for.body.i_crit_edge:      ; preds = %affs_intl_toupper.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

affs_intl_toupper.exit.for.end.i_crit_edge:       ; preds = %affs_intl_toupper.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %affs_intl_toupper.exit.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %hash.0.lcssa.i = phi i32 [ %4, %if.end.i.for.end.i_crit_edge ], [ %mul.i.i, %affs_intl_toupper.exit.for.end.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %hash11.i = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %14 = ptrtoint ptr %hash11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i.i.i.i, ptr %hash11.i, align 4
  br label %__affs_hash_dentry.exit

__affs_hash_dentry.exit:                          ; preds = %for.end.i, %entry.__affs_hash_dentry.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i ], [ %call.i, %entry.__affs_hash_dentry.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_intl_compare_dentry(ptr noundef %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @affs_nofilenametruncate(ptr noundef %dentry) #4
  %name1.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %0 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1.i, align 8
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name, align 8
  %call.i = tail call i32 @affs_check_name(ptr noundef %1, i32 noundef %3, i1 noundef zeroext %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i, label %entry.__affs_compare_dentry.exit_crit_edge

entry.__affs_compare_dentry.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %len)
  %cmp.i = icmp ugt i32 %len, 29
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 8
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %5)
  %cmp7.i = icmp ult i32 %5, 30
  br i1 %cmp7.i, label %if.then5.i.__affs_compare_dentry.exit_crit_edge, label %if.then5.i.for.body.i.preheader_crit_edge

if.then5.i.for.body.i.preheader_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.preheader

if.then5.i.__affs_compare_dentry.exit_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %len)
  %cmp11.not.i = icmp eq i32 %5, %len
  br i1 %cmp11.not.i, label %if.end14.i, label %if.else.i.__affs_compare_dentry.exit_crit_edge

if.else.i.__affs_compare_dentry.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

if.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp15.not33.i = icmp eq i32 %len, 0
  br i1 %cmp15.not33.i, label %if.end14.i.__affs_compare_dentry.exit_crit_edge, label %if.end14.i.for.body.i.preheader_crit_edge

if.end14.i.for.body.i.preheader_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.preheader

if.end14.i.__affs_compare_dentry.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

for.body.i.preheader:                             ; preds = %if.end14.i.for.body.i.preheader_crit_edge, %if.then5.i.for.body.i.preheader_crit_edge
  %len.addr.134.i.ph = phi i32 [ 30, %if.then5.i.for.body.i.preheader_crit_edge ], [ %len, %if.end14.i.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %bname.036.i = phi ptr [ %incdec.ptr17.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %for.body.i.preheader ]
  %aname.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %str, %for.body.i.preheader ]
  %len.addr.134.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %len.addr.134.i.ph, %for.body.i.preheader ]
  %6 = ptrtoint ptr %aname.035.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aname.035.i, align 1
  %conv.i = zext i8 %7 to i32
  %8 = add nsw i32 %conv.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %8)
  %9 = icmp ult i32 %8, 26
  br i1 %9, label %for.body.i.cond.true.i6_crit_edge, label %lor.lhs.false.i4

for.body.i.cond.true.i6_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i6

lor.lhs.false.i4:                                 ; preds = %for.body.i
  %10 = add nsw i32 %conv.i, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %10)
  %11 = icmp ult i32 %10, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %7)
  %cmp6.not.i2 = icmp eq i8 %7, -9
  %or.cond14.i3 = or i1 %cmp6.not.i2, %11
  br i1 %or.cond14.i3, label %lor.lhs.false.i4.affs_intl_toupper.exit8_crit_edge, label %lor.lhs.false.i4.cond.true.i6_crit_edge

lor.lhs.false.i4.cond.true.i6_crit_edge:          ; preds = %lor.lhs.false.i4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i6

lor.lhs.false.i4.affs_intl_toupper.exit8_crit_edge: ; preds = %lor.lhs.false.i4
  call void @__sanitizer_cov_trace_pc() #6
  br label %affs_intl_toupper.exit8

cond.true.i6:                                     ; preds = %lor.lhs.false.i4.cond.true.i6_crit_edge, %for.body.i.cond.true.i6_crit_edge
  %sub.i5 = add nsw i32 %conv.i, -32
  br label %affs_intl_toupper.exit8

affs_intl_toupper.exit8:                          ; preds = %cond.true.i6, %lor.lhs.false.i4.affs_intl_toupper.exit8_crit_edge
  %cond.i7 = phi i32 [ %sub.i5, %cond.true.i6 ], [ %conv.i, %lor.lhs.false.i4.affs_intl_toupper.exit8_crit_edge ]
  %12 = ptrtoint ptr %bname.036.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bname.036.i, align 1
  %conv18.i = zext i8 %13 to i32
  %14 = add nsw i32 %conv18.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %14)
  %15 = icmp ult i32 %14, 26
  br i1 %15, label %affs_intl_toupper.exit8.cond.true.i_crit_edge, label %lor.lhs.false.i

affs_intl_toupper.exit8.cond.true.i_crit_edge:    ; preds = %affs_intl_toupper.exit8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i

lor.lhs.false.i:                                  ; preds = %affs_intl_toupper.exit8
  %16 = add nsw i32 %conv18.i, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %16)
  %17 = icmp ult i32 %16, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %13)
  %cmp6.not.i = icmp eq i8 %13, -9
  %or.cond14.i = or i1 %cmp6.not.i, %17
  br i1 %or.cond14.i, label %lor.lhs.false.i.affs_intl_toupper.exit_crit_edge, label %lor.lhs.false.i.cond.true.i_crit_edge

lor.lhs.false.i.cond.true.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i

lor.lhs.false.i.affs_intl_toupper.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %affs_intl_toupper.exit

cond.true.i:                                      ; preds = %lor.lhs.false.i.cond.true.i_crit_edge, %affs_intl_toupper.exit8.cond.true.i_crit_edge
  %sub.i = add nsw i32 %conv18.i, -32
  br label %affs_intl_toupper.exit

affs_intl_toupper.exit:                           ; preds = %cond.true.i, %lor.lhs.false.i.affs_intl_toupper.exit_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %conv18.i, %lor.lhs.false.i.affs_intl_toupper.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i7, i32 %cond.i)
  %cmp20.not.i = icmp eq i32 %cond.i7, %cond.i
  br i1 %cmp20.not.i, label %for.inc.i, label %affs_intl_toupper.exit.__affs_compare_dentry.exit_crit_edge

affs_intl_toupper.exit.__affs_compare_dentry.exit_crit_edge: ; preds = %affs_intl_toupper.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

for.inc.i:                                        ; preds = %affs_intl_toupper.exit
  %incdec.ptr17.i = getelementptr i8, ptr %bname.036.i, i32 1
  %incdec.ptr.i = getelementptr i8, ptr %aname.035.i, i32 1
  %dec.i = add i32 %len.addr.134.i, -1
  %cmp15.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp15.not.i, label %for.inc.i.__affs_compare_dentry.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.__affs_compare_dentry.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__affs_compare_dentry.exit

__affs_compare_dentry.exit:                       ; preds = %for.inc.i.__affs_compare_dentry.exit_crit_edge, %affs_intl_toupper.exit.__affs_compare_dentry.exit_crit_edge, %if.end14.i.__affs_compare_dentry.exit_crit_edge, %if.else.i.__affs_compare_dentry.exit_crit_edge, %if.then5.i.__affs_compare_dentry.exit_crit_edge, %entry.__affs_compare_dentry.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.__affs_compare_dentry.exit_crit_edge ], [ 1, %if.then5.i.__affs_compare_dentry.exit_crit_edge ], [ 1, %if.else.i.__affs_compare_dentry.exit_crit_edge ], [ 0, %if.end14.i.__affs_compare_dentry.exit_crit_edge ], [ 0, %for.inc.i.__affs_compare_dentry.exit_crit_edge ], [ 1, %affs_intl_toupper.exit.__affs_compare_dentry.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @affs_intl_toupper(i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %ch, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %0)
  %1 = icmp ult i32 %0, 26
  br i1 %1, label %entry.cond.true_crit_edge, label %lor.lhs.false

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %2 = add i32 %ch, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %2)
  %3 = icmp ult i32 %2, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 247, i32 %ch)
  %cmp6.not = icmp eq i32 %ch, 247
  %or.cond14 = or i1 %cmp6.not, %3
  br i1 %or.cond14, label %lor.lhs.false.cond.end_crit_edge, label %lor.lhs.false.cond.true_crit_edge

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %lor.lhs.false.cond.true_crit_edge, %entry.cond.true_crit_edge
  %sub = add nsw i32 %ch, -32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %lor.lhs.false.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ %ch, %lor.lhs.false.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @affs_toupper(i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %ch, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %0)
  %1 = icmp ult i32 %0, 26
  %sub = add i32 %ch, -32
  %cond = select i1 %1, i32 %sub, i32 %ch
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_remove_hash(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_copy_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_fix_checksum(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_insert_hash(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_check_name(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @affs_nofilenametruncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @affs_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ino to i32
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_reserved.i = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_reserved.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_reserved.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not.i = icmp sgt i32 %3, %conv
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %affs_validblock.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

affs_validblock.exit:                             ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.i = icmp sgt i32 %5, %conv
  br i1 %cmp2.i, label %if.end, label %affs_validblock.exit.cleanup_crit_edge

affs_validblock.exit.cleanup_crit_edge:           ; preds = %affs_validblock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %affs_validblock.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call ptr @affs_iget(ptr noundef %sb, i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %affs_validblock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %affs_validblock.exit.cleanup_crit_edge ], [ %call3, %if.end ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/affs/namei.c", i32 206, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @affs_lookup.__UNIQUE_ID_ddebug244, !1, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/affs/namei.c", i32 238, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @affs_unlink.__UNIQUE_ID_ddebug245, !8, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/affs/namei.c", i32 252, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @affs_create.__UNIQUE_ID_ddebug246, !13, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/affs/namei.c", i32 283, i32 2}
!19 = !{ptr @affs_mkdir.__UNIQUE_ID_ddebug247, !18, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/affs/namei.c", i32 309, i32 2}
!22 = !{ptr @affs_rmdir.__UNIQUE_ID_ddebug248, !21, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/affs/namei.c", i32 326, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @affs_symlink.__UNIQUE_ID_ddebug249, !24, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!27 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/affs/namei.c", i32 398, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @affs_link.__UNIQUE_ID_ddebug250, !29, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/affs/namei.c", i32 514, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @affs_rename2.__UNIQUE_ID_ddebug251, !34, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!37 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @affs_export_ops, !39, !"affs_export_ops", i1 false, i1 false}
!39 = !{!"../fs/affs/namei.c", i32 570, i32 32}
!40 = !{ptr @affs_dentry_operations, !41, !"affs_dentry_operations", i1 false, i1 false}
!41 = !{!"../fs/affs/namei.c", i32 576, i32 32}
!42 = !{ptr @affs_intl_dentry_operations, !43, !"affs_intl_dentry_operations", i1 false, i1 false}
!43 = !{!"../fs/affs/namei.c", i32 581, i32 32}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/affs/namei.c", i32 177, i32 2}
!46 = !{ptr @affs_find_entry.__UNIQUE_ID_ddebug243, !45, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug238, !48, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!52 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @affs_bread.__UNIQUE_ID_ddebug234, !54, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!57 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{ptr @affs_intl_toupper, ptr @affs_toupper}
!68 = !{i64 2148499878, i64 2148499883, i64 2148499896, i64 2148499940, i64 2148499974, i64 2148499995}
