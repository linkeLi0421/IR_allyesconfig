; ModuleID = '/llk/IR_all_yes/fs/affs/bitmap.c_pt.bc'
source_filename = "../fs/affs/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.affs_bm_info = type { i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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

@affs_count_free_blocks.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"affs_count_free_blocks\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/affs/bitmap.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@affs_free_block.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_free_block\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%u)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s(%u)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trying to free block %u which is already free\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot read bitmap block %u\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Block %u outside partition\00", [37 x i8] zeroinitializer }, align 32
@affs_alloc_block.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_alloc_block\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"balloc(inode=%lu,goal=%u): \00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"affs: balloc(inode=%lu,goal=%u): \00", [62 x i8] zeroinitializer }, align 32
@affs_alloc_block.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"affs: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_balloc\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid goal %d\00", [16 x i8] zeroinitializer }, align 32
@affs_alloc_block.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_read_block\00", [16 x i8] zeroinitializer }, align 32
@affs_alloc_block.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.19, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: failed\0A\00", [18 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015affs: Bitmap invalid - mounting %s read only\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_init_bitmap\00", [47 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry_ptr = internal global ptr @affs_init_bitmap._entry, section ".printk_index", align 4
@affs_init_bitmap._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013affs: Bitmap allocation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry_ptr.25 = internal global ptr @affs_init_bitmap._entry.23, section ".printk_index", align 4
@affs_init_bitmap._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013affs: Cannot read bitmap\0A\00", [36 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry_ptr.28 = internal global ptr @affs_init_bitmap._entry.26, section ".printk_index", align 4
@affs_init_bitmap._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014affs: Bitmap %u invalid - mounting %s read only.\0A\00", [44 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry_ptr.31 = internal global ptr @affs_init_bitmap._entry.29, section ".printk_index", align 4
@affs_init_bitmap.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.32, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read bitmap block %d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"affs: read bitmap block %d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013affs: Cannot read bitmap extension\0A\00", [58 x i8] zeroinitializer }, align 32
@affs_init_bitmap._entry_ptr.36 = internal global ptr @affs_init_bitmap._entry.34, section ".printk_index", align 4
@affs_init_bitmap.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.37, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"last word: %d %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"affs: last word: %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.40, ptr @.str.41, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.40, ptr @.str.44, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 21, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 47, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 90, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 95, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 102, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 128, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 131, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 138, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 138, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 235, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 240, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 257, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 270, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 284, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 289, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 294, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 306, i32 4 }
@___asan_gen_.152 = private constant [20 x i8] c"../fs/affs/bitmap.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 317, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 282, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 237, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @affs_init_bitmap._entry, ptr @affs_init_bitmap._entry.23, ptr @affs_init_bitmap._entry.26, ptr @affs_init_bitmap._entry.29, ptr @affs_init_bitmap._entry.34, ptr @affs_init_bitmap._entry_ptr, ptr @affs_init_bitmap._entry_ptr.25, ptr @affs_init_bitmap._entry_ptr.28, ptr @affs_init_bitmap._entry_ptr.31, ptr @affs_init_bitmap._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_init_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_init_bitmap._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_init_bitmap._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_init_bitmap._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_init_bitmap._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_count_free_blocks(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_count_free_blocks.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_count_free_blocks, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_count_free_blocks.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bmlock = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %s_bmlock, i32 noundef 0) #5
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_bmap_count = getelementptr inbounds %struct.affs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %s_bmap_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_bmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24 = icmp sgt i32 %7, 0
  br i1 %cmp24, label %for.body.preheader, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end5
  %s_bitmap = getelementptr inbounds %struct.affs_sb_info, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bitmap, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %bm.027 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %9, %for.body.preheader ]
  %i.026 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %free.025 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bm_free = getelementptr inbounds %struct.affs_bm_info, ptr %bm.027, i32 0, i32 1
  %10 = ptrtoint ptr %bm_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bm_free, align 4
  %add = add i32 %11, %free.025
  %incdec.ptr = getelementptr %struct.affs_bm_info, ptr %bm.027, i32 1
  %dec = add nsw i32 %i.026, -1
  %cmp = icmp ugt i32 %i.026, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %free.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %s_bmlock10 = getelementptr inbounds %struct.affs_sb_info, ptr %5, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %s_bmlock10) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %free.0.lcssa, %for.end ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_free_block(ptr noundef %sb, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_free_block.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_free_block, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_free_block.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %block) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block)
  %cmp = icmp ult i32 %3, %block
  br i1 %cmp, label %err_range, label %if.end6

if.end6:                                          ; preds = %do.end
  %s_reserved = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_reserved, align 4
  %sub = sub i32 %block, %5
  %s_bmap_bits = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %s_bmap_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_bmap_bits, align 4
  %sub.frozen = freeze i32 %sub
  %.frozen = freeze i32 %7
  %div = udiv i32 %sub.frozen, %.frozen
  %8 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %sub.frozen, %8
  %s_bitmap = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bitmap, align 4
  %arrayidx = getelementptr %struct.affs_bm_info, ptr %10, i32 %div
  %s_bmlock = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %s_bmlock, i32 noundef 0) #5
  %s_bmap_bh = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bmap_bh, align 4
  %s_last_bmap = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_last_bmap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div)
  %cmp8.not = icmp eq i32 %14, %div
  br i1 %cmp8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then9.affs_brelse.exit_crit_edge, label %do.body.i

if.then9.affs_brelse.exit_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_free_block, %if.then4.i)) #5
          to label %if.then.i.i [label %if.then4.i], !srcloc !88

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %16) #5
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %12) #5
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %if.then9.affs_brelse.exit_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_free_block, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %18) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %affs_brelse.exit
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %18)
  %cmp.not.i.i = icmp sgt i32 %22, %18
  br i1 %cmp.not.i.i, label %do.end.i.err_bh_read_crit_edge, label %affs_validblock.exit.i

do.end.i.err_bh_read_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bh_read

affs_validblock.exit.i:                           ; preds = %do.end.i
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %18)
  %cmp2.i.i = icmp sgt i32 %24, %18
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.err_bh_read_crit_edge

affs_validblock.exit.i.err_bh_read_crit_edge:     ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bh_read

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %18 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %25 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %26, i64 noundef %conv.i, i32 noundef %28, i32 noundef 8) #5
  %tobool11.not = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not, label %affs_bread.exit.err_bh_read_crit_edge, label %if.end13

affs_bread.exit.err_bh_read_crit_edge:            ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bh_read

if.end13:                                         ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %s_bmap_bh, align 4
  %30 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div, ptr %s_last_bmap, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.end6.if.end16_crit_edge
  %bh.0 = phi ptr [ %call.i.i, %if.end13 ], [ %12, %if.end6.if.end16_crit_edge ]
  %and = and i32 %rem.decomposed, 31
  %shl = shl nuw i32 1, %and
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %div1780 = lshr i32 %rem.decomposed, 5
  %add.ptr = getelementptr i32, ptr %32, i32 %div1780
  %add.ptr18 = getelementptr i32, ptr %add.ptr, i32 1
  %33 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end22, label %err_free

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %34, %shl
  %35 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or, ptr %add.ptr18, align 4
  %36 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %sub24 = sub i32 %39, %shl
  store i32 %sub24, ptr %37, align 4
  tail call void @mark_buffer_dirty(ptr noundef %bh.0) #5
  tail call void @affs_mark_sb_dirty(ptr noundef %sb) #5
  %bm_free = getelementptr %struct.affs_bm_info, ptr %10, i32 %div, i32 1
  %40 = ptrtoint ptr %bm_free to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bm_free, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %bm_free, align 4
  tail call void @mutex_unlock(ptr noundef %s_bmlock) #5
  br label %cleanup

err_free:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef %block) #5
  tail call void @mutex_unlock(ptr noundef %s_bmlock) #5
  br label %cleanup

err_bh_read:                                      ; preds = %affs_bread.exit.err_bh_read_crit_edge, %affs_validblock.exit.i.err_bh_read_crit_edge, %do.end.i.err_bh_read_crit_edge
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %43) #5
  %44 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %s_bmap_bh, align 4
  %45 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %s_last_bmap, align 4
  tail call void @mutex_unlock(ptr noundef %s_bmlock) #5
  br label %cleanup

err_range:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %block) #5
  br label %cleanup

cleanup:                                          ; preds = %err_range, %err_bh_read, %err_free, %if.end22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_mark_sb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_alloc_block(ptr nocapture noundef %inode, i32 noundef %goal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_alloc_block.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_alloc_block, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_alloc_block.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.13, i32 noundef %5, i32 noundef %goal) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_pa_cnt = getelementptr i8, ptr %inode, i32 -8
  %6 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_pa_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end29, label %do.body8

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_alloc_block.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_alloc_block, %if.then20)) #5
          to label %do.end24 [label %if.then20], !srcloc !88

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %i_lastalloc = getelementptr i8, ptr %inode, i32 -12
  %8 = ptrtoint ptr %i_lastalloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_lastalloc, align 4
  %add = add i32 %9, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_alloc_block.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.15, i32 noundef %add) #5
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body8
  %10 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_pa_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %i_pa_cnt, align 8
  %i_lastalloc28 = getelementptr i8, ptr %inode, i32 -12
  %12 = ptrtoint ptr %i_lastalloc28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_lastalloc28, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i_lastalloc28, align 4
  br label %cleanup

if.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %goal)
  %tobool30.not = icmp eq i32 %goal, 0
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %lor.lhs.false

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

lor.lhs.false:                                    ; preds = %if.end29
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %goal)
  %cmp = icmp ult i32 %15, %goal
  br i1 %cmp, label %if.then33.critedge, label %lor.lhs.false.if.end35_crit_edge

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then33.critedge:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %goal) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33.critedge, %if.end29.if.end34_crit_edge
  %s_reserved = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_reserved, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %lor.lhs.false.if.end35_crit_edge
  %goal.addr.0 = phi i32 [ %17, %if.end34 ], [ %goal, %lor.lhs.false.if.end35_crit_edge ]
  %s_reserved36 = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %s_reserved36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_reserved36, align 4
  %sub = sub i32 %goal.addr.0, %19
  %s_bmap_bits = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %s_bmap_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_bmap_bits, align 4
  %div = udiv i32 %sub, %21
  %s_bitmap = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bitmap, align 4
  %arrayidx = getelementptr %struct.affs_bm_info, ptr %23, i32 %div
  %s_bmlock = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %s_bmlock, i32 noundef 0) #5
  %bm_free = getelementptr %struct.affs_bm_info, ptr %23, i32 %div, i32 1
  %24 = ptrtoint ptr %bm_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bm_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not = icmp eq i32 %25, 0
  br i1 %tobool37.not, label %if.end35.find_bmap_crit_edge, label %if.end35.find_bmap_bit_crit_edge

if.end35.find_bmap_bit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_bmap_bit

if.end35.find_bmap_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_bmap

find_bmap:                                        ; preds = %do.body77.find_bmap_crit_edge, %if.end35.find_bmap_crit_edge
  %bmap.0 = phi i32 [ %div, %if.end35.find_bmap_crit_edge ], [ %bmap.3, %do.body77.find_bmap_crit_edge ]
  %bm.0 = phi ptr [ %arrayidx, %if.end35.find_bmap_crit_edge ], [ %bm.3, %do.body77.find_bmap_crit_edge ]
  %s_bmap_count = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %s_bmap_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_bmap_count, align 4
  br label %do.body40

do.body40:                                        ; preds = %do.cond51.do.body40_crit_edge, %find_bmap
  %bmap.1 = phi i32 [ %bmap.0, %find_bmap ], [ %bmap.2, %do.cond51.do.body40_crit_edge ]
  %i.0 = phi i32 [ %27, %find_bmap ], [ %dec41, %do.cond51.do.body40_crit_edge ]
  %bm.1 = phi ptr [ %bm.0, %find_bmap ], [ %bm.2, %do.cond51.do.body40_crit_edge ]
  %dec41 = add i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec41)
  %cmp42 = icmp slt i32 %dec41, 0
  br i1 %cmp42, label %do.body40.err_full_crit_edge, label %if.end44

do.body40.err_full_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_full

if.end44:                                         ; preds = %do.body40
  %inc45 = add i32 %bmap.1, 1
  %incdec.ptr = getelementptr %struct.affs_bm_info, ptr %bm.1, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc45, i32 %27)
  %cmp47 = icmp ult i32 %inc45, %27
  br i1 %cmp47, label %if.end44.do.cond51_crit_edge, label %if.end49

if.end44.do.cond51_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond51

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bitmap, align 4
  br label %do.cond51

do.cond51:                                        ; preds = %if.end49, %if.end44.do.cond51_crit_edge
  %bmap.2 = phi i32 [ %inc45, %if.end44.do.cond51_crit_edge ], [ 0, %if.end49 ]
  %bm.2 = phi ptr [ %incdec.ptr, %if.end44.do.cond51_crit_edge ], [ %29, %if.end49 ]
  %bm_free52 = getelementptr inbounds %struct.affs_bm_info, ptr %bm.2, i32 0, i32 1
  %30 = ptrtoint ptr %bm_free52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bm_free52, align 4
  %tobool53.not = icmp eq i32 %31, 0
  br i1 %tobool53.not, label %do.cond51.do.body40_crit_edge, label %do.end56

do.cond51.do.body40_crit_edge:                    ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

do.end56:                                         ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %s_bmap_bits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_bmap_bits, align 4
  %mul = mul i32 %33, %bmap.2
  br label %find_bmap_bit

find_bmap_bit:                                    ; preds = %do.end56, %if.end35.find_bmap_bit_crit_edge
  %blk.0 = phi i32 [ %sub, %if.end35.find_bmap_bit_crit_edge ], [ %mul, %do.end56 ]
  %bmap.3 = phi i32 [ %div, %if.end35.find_bmap_bit_crit_edge ], [ %bmap.2, %do.end56 ]
  %bm.3 = phi ptr [ %arrayidx, %if.end35.find_bmap_bit_crit_edge ], [ %bm.2, %do.end56 ]
  %s_bmap_bh = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 15
  %34 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bmap_bh, align 4
  %s_last_bmap = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 14
  %36 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_last_bmap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %bmap.3)
  %cmp58.not = icmp eq i32 %37, %bmap.3
  br i1 %cmp58.not, label %find_bmap_bit.if.end66_crit_edge, label %if.then59

find_bmap_bit.if.end66_crit_edge:                 ; preds = %find_bmap_bit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then59:                                        ; preds = %find_bmap_bit
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then59.affs_brelse.exit_crit_edge, label %do.body.i

if.then59.affs_brelse.exit_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.then59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_alloc_block, %if.then4.i)) #5
          to label %if.then.i.i [label %if.then4.i], !srcloc !88

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %39) #5
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %35) #5
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %if.then59.affs_brelse.exit_crit_edge
  %40 = ptrtoint ptr %bm.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bm.3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_alloc_block, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %41) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %affs_brelse.exit
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %41)
  %cmp.not.i.i = icmp sgt i32 %45, %41
  br i1 %cmp.not.i.i, label %do.end.i.err_bh_read_crit_edge, label %affs_validblock.exit.i

do.end.i.err_bh_read_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bh_read

affs_validblock.exit.i:                           ; preds = %do.end.i
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %41)
  %cmp2.i.i = icmp sgt i32 %47, %41
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.err_bh_read_crit_edge

affs_validblock.exit.i.err_bh_read_crit_edge:     ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bh_read

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %41 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %48 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %49, i64 noundef %conv.i, i32 noundef %51, i32 noundef 8) #5
  %tobool61.not = icmp eq ptr %call.i.i, null
  br i1 %tobool61.not, label %affs_bread.exit.err_bh_read_crit_edge, label %if.end63

affs_bread.exit.err_bh_read_crit_edge:            ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_bh_read

if.end63:                                         ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i, ptr %s_bmap_bh, align 4
  %53 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %bmap.3, ptr %s_last_bmap, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %find_bmap_bit.if.end66_crit_edge
  %bh.0 = phi ptr [ %call.i.i, %if.end63 ], [ %35, %find_bmap_bit.if.end66_crit_edge ]
  %54 = ptrtoint ptr %s_bmap_bits to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_bmap_bits, align 4
  %rem = urem i32 %blk.0, %55
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %56 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data, align 4
  %div68242 = lshr i32 %rem, 5
  %add.ptr = getelementptr i32, ptr %57, i32 %div68242
  %add.ptr69 = getelementptr i32, ptr %add.ptr, i32 1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_blocksize, align 16
  %add.ptr71 = getelementptr i8, ptr %57, i32 %59
  %and = and i32 %rem, 31
  %shl = shl nsw i32 -1, %and
  %and72 = and i32 %blk.0, -32
  %60 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr69, align 4
  %and73 = and i32 %61, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end66.do.body77_crit_edge, label %if.end66.find_bit_crit_edge

if.end66.find_bit_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_bit

if.end66.do.body77_crit_edge:                     ; preds = %if.end66
  br label %do.body77

do.body77:                                        ; preds = %do.cond83.do.body77_crit_edge, %if.end66.do.body77_crit_edge
  %blk.1 = phi i32 [ %add78, %do.cond83.do.body77_crit_edge ], [ %and72, %if.end66.do.body77_crit_edge ]
  %data.0 = phi ptr [ %incdec.ptr79, %do.cond83.do.body77_crit_edge ], [ %add.ptr69, %if.end66.do.body77_crit_edge ]
  %incdec.ptr79 = getelementptr i32, ptr %data.0, i32 1
  %cmp80.not = icmp ult ptr %incdec.ptr79, %add.ptr71
  br i1 %cmp80.not, label %do.cond83, label %do.body77.find_bmap_crit_edge

do.body77.find_bmap_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_bmap

do.cond83:                                        ; preds = %do.body77
  %add78 = add i32 %blk.1, 32
  %62 = ptrtoint ptr %incdec.ptr79 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %incdec.ptr79, align 4
  %tobool84.not = icmp eq i32 %63, 0
  br i1 %tobool84.not, label %do.cond83.do.body77_crit_edge, label %do.cond83.find_bit_crit_edge

do.cond83.find_bit_crit_edge:                     ; preds = %do.cond83
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_bit

do.cond83.do.body77_crit_edge:                    ; preds = %do.cond83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

find_bit:                                         ; preds = %do.cond83.find_bit_crit_edge, %if.end66.find_bit_crit_edge
  %blk.2 = phi i32 [ %and72, %if.end66.find_bit_crit_edge ], [ %add78, %do.cond83.find_bit_crit_edge ]
  %mask.0 = phi i32 [ %shl, %if.end66.find_bit_crit_edge ], [ -1, %do.cond83.find_bit_crit_edge ]
  %tmp.0 = phi i32 [ %61, %if.end66.find_bit_crit_edge ], [ %63, %do.cond83.find_bit_crit_edge ]
  %data.1 = phi ptr [ %add.ptr69, %if.end66.find_bit_crit_edge ], [ %incdec.ptr79, %do.cond83.find_bit_crit_edge ]
  %and88 = and i32 %tmp.0, %mask.0
  %64 = tail call i32 @llvm.cttz.i32(i32 %and88, i1 true), !range !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %iszero = icmp eq i32 %and88, 0
  %sub89 = select i1 %iszero, i32 -1, i32 %64
  %65 = ptrtoint ptr %s_reserved36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_reserved36, align 4
  %add91 = add i32 %66, %blk.2
  %add92 = add i32 %add91, %sub89
  %and93 = and i32 %sub89, 31
  %shl94 = shl nuw i32 1, %and93
  %i_lastalloc96 = getelementptr i8, ptr %inode, i32 -12
  %67 = ptrtoint ptr %i_lastalloc96 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add92, ptr %i_lastalloc96, align 4
  %shl97267 = shl i32 %shl94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl97267)
  %tobool98.not268 = icmp eq i32 %shl97267, 0
  %and99269 = and i32 %shl97267, %tmp.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99269)
  %tobool100.not270 = icmp eq i32 %and99269, 0
  %or.cond271 = select i1 %tobool98.not268, i1 true, i1 %tobool100.not270
  br i1 %or.cond271, label %find_bit.while.end_crit_edge, label %if.end102.lr.ph

find_bit.while.end_crit_edge:                     ; preds = %find_bit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end102.lr.ph:                                  ; preds = %find_bit
  %68 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %i_pa_cnt.promoted = load i32, ptr %i_pa_cnt, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end102.if.end102_crit_edge, %if.end102.lr.ph
  %inc105274 = phi i32 [ %i_pa_cnt.promoted, %if.end102.lr.ph ], [ %inc105, %if.end102.if.end102_crit_edge ]
  %shl97273 = phi i32 [ %shl97267, %if.end102.lr.ph ], [ %shl97, %if.end102.if.end102_crit_edge ]
  %mask.1272 = phi i32 [ %shl94, %if.end102.lr.ph ], [ %or, %if.end102.if.end102_crit_edge ]
  %inc105 = add i32 %inc105274, 1
  %or = or i32 %shl97273, %mask.1272
  %shl97 = shl i32 %shl97273, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl97)
  %tobool98.not = icmp eq i32 %shl97, 0
  %and99 = and i32 %shl97, %tmp.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %or.cond = select i1 %tobool98.not, i1 true, i1 %tobool100.not
  br i1 %or.cond, label %while.cond.while.end_crit_edge, label %if.end102.if.end102_crit_edge

if.end102.if.end102_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

while.cond.while.end_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %inc105, ptr %i_pa_cnt, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %find_bit.while.end_crit_edge
  %mask.1.lcssa = phi i32 [ %or, %while.cond.while.end_crit_edge ], [ %shl94, %find_bit.while.end_crit_edge ]
  %70 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_pa_cnt, align 8
  %add108.neg = xor i32 %71, -1
  %bm_free109 = getelementptr inbounds %struct.affs_bm_info, ptr %bm.3, i32 0, i32 1
  %72 = ptrtoint ptr %bm_free109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bm_free109, align 4
  %sub110 = add i32 %73, %add108.neg
  store i32 %sub110, ptr %bm_free109, align 4
  %neg = xor i32 %mask.1.lcssa, -1
  %and111 = and i32 %tmp.0, %neg
  %74 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and111, ptr %data.1, align 4
  %75 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add113 = add i32 %78, %mask.1.lcssa
  store i32 %add113, ptr %76, align 4
  tail call void @mark_buffer_dirty(ptr noundef %bh.0) #5
  tail call void @affs_mark_sb_dirty(ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %s_bmlock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_alloc_block.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_alloc_block, %if.then128)) #5
          to label %cleanup [label %if.then128], !srcloc !88

if.then128:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_alloc_block.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.15, i32 noundef %add92) #5
  br label %cleanup

err_bh_read:                                      ; preds = %affs_bread.exit.err_bh_read_crit_edge, %affs_validblock.exit.i.err_bh_read_crit_edge, %do.end.i.err_bh_read_crit_edge
  %79 = ptrtoint ptr %bm.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bm.3, align 4
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, i32 noundef %80) #5
  %81 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %s_bmap_bh, align 4
  %82 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %s_last_bmap, align 4
  br label %err_full

err_full:                                         ; preds = %err_bh_read, %do.body40.err_full_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_bmlock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_alloc_block.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_alloc_block, %if.then148)) #5
          to label %cleanup [label %if.then148], !srcloc !88

if.then148:                                       ; preds = %err_full
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_alloc_block.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then148, %err_full, %if.then128, %while.end, %do.end24
  %retval.0 = phi i32 [ %inc, %do.end24 ], [ %add92, %if.then128 ], [ 0, %if.then148 ], [ %add92, %while.end ], [ 0, %err_full ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_init_bitmap(ptr noundef %sb, ptr nocapture noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root_bh = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %s_root_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -200
  %10 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %s_id) #8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_last_bmap = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %s_last_bmap, align 4
  %s_bmap_bh = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %s_bmap_bh, align 4
  %16 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %17, 3
  %sub = add i32 %mul, -32
  %s_bmap_bits = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %s_bmap_bits to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %s_bmap_bits, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %s_reserved = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_reserved, align 4
  %sub7 = add i32 %20, -1
  %add = add i32 %sub7, %sub
  %sub9 = sub i32 %add, %22
  %div = udiv i32 %sub9, %sub
  %s_bmap_count = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %s_bmap_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %s_bmap_count, align 4
  %mul12 = shl i32 %div, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul12, i32 noundef 3520) #9
  %s_bitmap = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %s_bitmap, align 4
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end5
  %25 = ptrtoint ptr %s_bmap_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_bmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp302 = icmp sgt i32 %26, 0
  br i1 %cmp302, label %for.body.lr.ph, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %27 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize, align 16
  %div26223 = lshr i32 %28, 2
  %add28 = add nsw i32 %div26223, -24
  %sub27 = add nsw i32 %div26223, -49
  %29 = ptrtoint ptr %s_root_bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_root_bh, align 4
  %b_data24 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %b_data24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data24, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bm.0309 = phi ptr [ %call9.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %bmap_bh.0308 = phi ptr [ null, %for.body.lr.ph ], [ %bmap_bh.1, %for.inc.for.body_crit_edge ]
  %bh.0307 = phi ptr [ null, %for.body.lr.ph ], [ %call.i.i, %for.inc.for.body_crit_edge ]
  %bmap_blk.0306 = phi ptr [ %32, %for.body.lr.ph ], [ %bmap_blk.1, %for.inc.for.body_crit_edge ]
  %blk.0305 = phi i32 [ %sub27, %for.body.lr.ph ], [ %blk.1, %for.inc.for.body_crit_edge ]
  %end.0304 = phi i32 [ %add28, %for.body.lr.ph ], [ %end.1, %for.inc.for.body_crit_edge ]
  %i.0303 = phi i32 [ %26, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %bh.0307, null
  br i1 %tobool.not.i, label %for.body.affs_brelse.exit_crit_edge, label %do.body.i

for.body.affs_brelse.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then4.i)) #5
          to label %if.then.i.i231 [label %if.then4.i], !srcloc !88

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0307, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %34) #5
  br label %if.then.i.i231

if.then.i.i231:                                   ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %bh.0307) #5
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i231, %for.body.affs_brelse.exit_crit_edge
  %arrayidx = getelementptr i32, ptr %bmap_blk.0306, i32 %blk.0305
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %bm.0309 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bm.0309, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %36) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %affs_brelse.exit
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %36)
  %cmp.not.i.i = icmp sgt i32 %41, %36
  br i1 %cmp.not.i.i, label %do.end.i.out.thread287_crit_edge, label %affs_validblock.exit.i

do.end.i.out.thread287_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread287

affs_validblock.exit.i:                           ; preds = %do.end.i
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %36)
  %cmp2.i.i = icmp sgt i32 %43, %36
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.out.thread287_crit_edge

affs_validblock.exit.i.out.thread287_crit_edge:   ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread287

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %36 to i64
  %44 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i.i, align 4
  %46 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %45, i64 noundef %conv.i, i32 noundef %47, i32 noundef 8) #5
  %tobool32.not = icmp eq ptr %call.i.i, null
  br i1 %tobool32.not, label %affs_bread.exit.out.thread287_crit_edge, label %if.end39

affs_bread.exit.out.thread287_crit_edge:          ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread287

out.thread287:                                    ; preds = %affs_bread.exit.out.thread287_crit_edge, %affs_validblock.exit.i.out.thread287_crit_edge, %do.end.i.out.thread287_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #8
  br label %affs_brelse.exit259

if.end39:                                         ; preds = %affs_bread.exit
  %call40 = tail call i32 @affs_checksum_block(ptr noundef %sb, ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body53, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %bm.0309 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bm.0309, align 4
  %s_id48 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %49, ptr noundef %s_id48) #8
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %or51 = or i32 %51, 1
  store i32 %or51, ptr %flags, align 4
  br label %do.body.i255

do.body53:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_init_bitmap.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then59)) #5
          to label %do.end63 [label %if.then59], !srcloc !88

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %bm.0309 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bm.0309, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_init_bitmap.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.33, i32 noundef %blk.0305, i32 noundef %53) #5
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body53
  %b_data64 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %b_data64 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data64, align 4
  %add.ptr65 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocksize, align 16
  %sub67 = add i32 %57, -4
  %call68 = tail call i32 @memweight(ptr noundef %add.ptr65, i32 noundef %sub67) #5
  %bm_free = getelementptr inbounds %struct.affs_bm_info, ptr %bm.0309, i32 0, i32 1
  %58 = ptrtoint ptr %bm_free to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call68, ptr %bm_free, align 4
  %inc = add i32 %blk.0305, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %end.0304)
  %cmp69 = icmp ult i32 %inc, %end.0304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0303)
  %cmp70 = icmp eq i32 %i.0303, 1
  %or.cond = select i1 %cmp69, i1 true, i1 %cmp70
  br i1 %or.cond, label %do.end63.for.inc_crit_edge, label %if.end72

do.end63.for.inc_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end72:                                         ; preds = %do.end63
  %tobool73.not = icmp eq ptr %bmap_bh.0308, null
  br i1 %tobool73.not, label %if.end72.if.end75_crit_edge, label %do.body.i235

if.end72.if.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.body.i235:                                     ; preds = %if.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then4.i237)) #5
          to label %affs_brelse.exit239 [label %if.then4.i237], !srcloc !88

if.then4.i237:                                    ; preds = %do.body.i235
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i236 = getelementptr inbounds %struct.buffer_head, ptr %bmap_bh.0308, i32 0, i32 3
  %59 = ptrtoint ptr %b_blocknr.i236 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %b_blocknr.i236, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %60) #5
  br label %affs_brelse.exit239

affs_brelse.exit239:                              ; preds = %if.then4.i237, %do.body.i235
  tail call void @__brelse(ptr noundef nonnull %bmap_bh.0308) #5
  br label %if.end75

if.end75:                                         ; preds = %affs_brelse.exit239, %if.end72.if.end75_crit_edge
  %arrayidx76 = getelementptr i32, ptr %bmap_blk.0306, i32 %inc
  %61 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx76, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then.i240)) #5
          to label %do.end.i244 [label %if.then.i240], !srcloc !88

if.then.i240:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %62) #5
  br label %do.end.i244

do.end.i244:                                      ; preds = %if.then.i240, %if.end75
  %63 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i, align 16
  %s_reserved.i.i242 = getelementptr inbounds %struct.affs_sb_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %s_reserved.i.i242 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_reserved.i.i242, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %62)
  %cmp.not.i.i243 = icmp sgt i32 %66, %62
  br i1 %cmp.not.i.i243, label %do.end.i244.do.end82_crit_edge, label %affs_validblock.exit.i246

do.end.i244.do.end82_crit_edge:                   ; preds = %do.end.i244
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

affs_validblock.exit.i246:                        ; preds = %do.end.i244
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %62)
  %cmp2.i.i245 = icmp sgt i32 %68, %62
  br i1 %cmp2.i.i245, label %affs_bread.exit253, label %affs_validblock.exit.i246.do.end82_crit_edge

affs_validblock.exit.i246.do.end82_crit_edge:     ; preds = %affs_validblock.exit.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

affs_bread.exit253:                               ; preds = %affs_validblock.exit.i246
  %conv.i247 = sext i32 %62 to i64
  %69 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_bdev.i.i, align 4
  %71 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_blocksize, align 16
  %call.i.i250 = tail call ptr @__bread_gfp(ptr noundef %70, i64 noundef %conv.i247, i32 noundef %72, i32 noundef 8) #5
  %tobool78.not = icmp eq ptr %call.i.i250, null
  br i1 %tobool78.not, label %affs_bread.exit253.do.end82_crit_edge, label %if.end85

affs_bread.exit253.do.end82_crit_edge:            ; preds = %affs_bread.exit253
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

do.end82:                                         ; preds = %affs_bread.exit253.do.end82_crit_edge, %affs_validblock.exit.i246.do.end82_crit_edge, %do.end.i244.do.end82_crit_edge
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #8
  br label %do.body.i255

if.end85:                                         ; preds = %affs_bread.exit253
  call void @__sanitizer_cov_trace_pc() #7
  %b_data86 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i250, i32 0, i32 5
  %73 = ptrtoint ptr %b_data86 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data86, align 4
  %75 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_blocksize, align 16
  %div88227 = lshr i32 %76, 2
  %sub89 = add nsw i32 %div88227, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end85, %do.end63.for.inc_crit_edge
  %end.1 = phi i32 [ %end.0304, %do.end63.for.inc_crit_edge ], [ %sub89, %if.end85 ]
  %blk.1 = phi i32 [ %inc, %do.end63.for.inc_crit_edge ], [ 0, %if.end85 ]
  %bmap_blk.1 = phi ptr [ %bmap_blk.0306, %do.end63.for.inc_crit_edge ], [ %74, %if.end85 ]
  %bmap_bh.1 = phi ptr [ %bmap_bh.0308, %do.end63.for.inc_crit_edge ], [ %call.i.i250, %if.end85 ]
  %incdec.ptr = getelementptr %struct.affs_bm_info, ptr %bm.0309, i32 1
  %dec = add nsw i32 %i.0303, -1
  %cmp = icmp sgt i32 %i.0303, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %bh.0.lcssa = phi ptr [ null, %if.end22.for.end_crit_edge ], [ %call.i.i, %for.inc.for.end_crit_edge ]
  %bmap_bh.0.lcssa = phi ptr [ null, %if.end22.for.end_crit_edge ], [ %bmap_bh.1, %for.inc.for.end_crit_edge ]
  %bm.0.lcssa = phi ptr [ %call9.i.i, %if.end22.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %1, align 4
  %79 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_reserved, align 4
  %sub92 = sub i32 %78, %80
  %81 = ptrtoint ptr %s_bmap_bits to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_bmap_bits, align 4
  %rem = urem i32 %sub92, %82
  %and94 = and i32 %rem, 31
  %shl = shl nsw i32 -1, %and94
  %neg = xor i32 %shl, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_init_bitmap.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then107)) #5
          to label %do.end112 [label %if.then107], !srcloc !88

if.then107:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %div108226 = lshr i32 %rem, 5
  %add109 = add nuw nsw i32 %div108226, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_init_bitmap.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.38, i32 noundef %rem, i32 noundef %add109, i32 noundef %neg) #5
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %for.end
  %div113224 = lshr i32 %rem, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool115.not = icmp eq i32 %and94, 0
  br i1 %tobool115.not, label %do.end112.if.end122_crit_edge, label %if.then116

do.end112.if.end122_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then116:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  %add114 = add nuw nsw i32 %div113224, 1
  %b_data117 = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 5
  %83 = ptrtoint ptr %b_data117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data117, align 4
  %arrayidx118 = getelementptr i32, ptr %84, i32 %add114
  %85 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx118, align 4
  %and119 = and i32 %86, %neg
  store i32 %and119, ptr %arrayidx118, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.end112.if.end122_crit_edge
  %inc123313 = add nuw nsw i32 %div113224, 2
  %87 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_blocksize, align 16
  %div125225314 = lshr i32 %88, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc123313, i32 %div125225314)
  %cmp126315 = icmp ult i32 %inc123313, %div125225314
  br i1 %cmp126315, label %while.body.lr.ph, label %if.end122.out_crit_edge

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.body.lr.ph:                                 ; preds = %if.end122
  %b_data127 = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %inc123316 = phi i32 [ %inc123313, %while.body.lr.ph ], [ %inc123, %while.body.while.body_crit_edge ]
  %89 = ptrtoint ptr %b_data127 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_data127, align 4
  %arrayidx128 = getelementptr i32, ptr %90, i32 %inc123316
  %91 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx128, align 4
  %inc123 = add nuw nsw i32 %inc123316, 1
  %92 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocksize, align 16
  %div125225 = lshr i32 %93, 2
  %cmp126 = icmp ult i32 %inc123, %div125225
  br i1 %cmp126, label %while.body.while.body_crit_edge, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

out:                                              ; preds = %while.body.out_crit_edge, %if.end122.out_crit_edge
  %b_data129 = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 5
  %94 = ptrtoint ptr %b_data129 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_data129, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %95, align 4
  %call131 = tail call i32 @affs_checksum_block(ptr noundef %sb, ptr noundef %bh.0.lcssa) #5
  %sub132 = sub i32 0, %call131
  %97 = ptrtoint ptr %b_data129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data129, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub132, ptr %98, align 4
  tail call void @mark_buffer_dirty(ptr noundef %bh.0.lcssa) #5
  %100 = ptrtoint ptr %b_data129 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %b_data129, align 4
  %add.ptr137 = getelementptr i8, ptr %101, i32 4
  %102 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_blocksize, align 16
  %sub139 = add i32 %103, -4
  %call140 = tail call i32 @memweight(ptr noundef %add.ptr137, i32 noundef %sub139) #5
  %bm_free141 = getelementptr %struct.affs_bm_info, ptr %bm.0.lcssa, i32 -1, i32 1
  %104 = ptrtoint ptr %bm_free141 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call140, ptr %bm_free141, align 4
  %tobool.not.i254 = icmp eq ptr %bh.0.lcssa, null
  br i1 %tobool.not.i254, label %out.affs_brelse.exit259_crit_edge, label %out.do.body.i255_crit_edge

out.do.body.i255_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i255

out.affs_brelse.exit259_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %affs_brelse.exit259

do.body.i255:                                     ; preds = %out.do.body.i255_crit_edge, %do.end82, %do.end45
  %bmap_bh.2284 = phi ptr [ %bmap_bh.0.lcssa, %out.do.body.i255_crit_edge ], [ null, %do.end82 ], [ %bmap_bh.0308, %do.end45 ]
  %bh.1282 = phi ptr [ %bh.0.lcssa, %out.do.body.i255_crit_edge ], [ %call.i.i, %do.end82 ], [ %call.i.i, %do.end45 ]
  %res.0280 = phi i32 [ 0, %out.do.body.i255_crit_edge ], [ -5, %do.end82 ], [ 0, %do.end45 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then4.i257)) #5
          to label %if.then.i.i258 [label %if.then4.i257], !srcloc !88

if.then4.i257:                                    ; preds = %do.body.i255
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i256 = getelementptr inbounds %struct.buffer_head, ptr %bh.1282, i32 0, i32 3
  %105 = ptrtoint ptr %b_blocknr.i256 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %b_blocknr.i256, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %106) #5
  br label %if.then.i.i258

if.then.i.i258:                                   ; preds = %if.then4.i257, %do.body.i255
  tail call void @__brelse(ptr noundef nonnull %bh.1282) #5
  br label %affs_brelse.exit259

affs_brelse.exit259:                              ; preds = %if.then.i.i258, %out.affs_brelse.exit259_crit_edge, %out.thread287
  %bmap_bh.2285 = phi ptr [ %bmap_bh.0.lcssa, %out.affs_brelse.exit259_crit_edge ], [ %bmap_bh.2284, %if.then.i.i258 ], [ %bmap_bh.0308, %out.thread287 ]
  %res.0281 = phi i32 [ 0, %out.affs_brelse.exit259_crit_edge ], [ %res.0280, %if.then.i.i258 ], [ -5, %out.thread287 ]
  %tobool.not.i260 = icmp eq ptr %bmap_bh.2285, null
  br i1 %tobool.not.i260, label %affs_brelse.exit259.cleanup_crit_edge, label %do.body.i261

affs_brelse.exit259.cleanup_crit_edge:            ; preds = %affs_brelse.exit259
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i261:                                     ; preds = %affs_brelse.exit259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_init_bitmap, %if.then4.i263)) #5
          to label %if.then.i.i264 [label %if.then4.i263], !srcloc !88

if.then4.i263:                                    ; preds = %do.body.i261
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i262 = getelementptr inbounds %struct.buffer_head, ptr %bmap_bh.2285, i32 0, i32 3
  %107 = ptrtoint ptr %b_blocknr.i262 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %b_blocknr.i262, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %108) #5
  br label %if.then.i.i264

if.then.i.i264:                                   ; preds = %if.then4.i263, %do.body.i261
  tail call void @__brelse(ptr noundef nonnull %bmap_bh.2285) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i264, %affs_brelse.exit259.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end19 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %res.0281, %affs_brelse.exit259.cleanup_crit_edge ], [ %res.0281, %if.then.i.i264 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_checksum_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_free_bitmap(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_bitmap = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bitmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_bmap_bh = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bmap_bh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.affs_brelse.exit_crit_edge, label %do.body.i

if.end.affs_brelse.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_free_bitmap, %if.then4.i)) #5
          to label %if.then.i.i [label %if.then4.i], !srcloc !88

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i64 noundef %7) #5
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %5) #5
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %if.end.affs_brelse.exit_crit_edge
  %8 = ptrtoint ptr %s_bmap_bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %s_bmap_bh, align 4
  %s_last_bmap = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %s_last_bmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %s_last_bmap, align 4
  %10 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bitmap, align 4
  tail call void @kfree(ptr noundef %11) #5
  %12 = ptrtoint ptr %s_bitmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %s_bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %affs_brelse.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/affs/bitmap.c", i32 21, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @affs_count_free_blocks.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/affs/bitmap.c", i32 47, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @affs_free_block.__UNIQUE_ID_ddebug240, !8, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/affs/bitmap.c", i32 90, i32 36}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/affs/bitmap.c", i32 95, i32 34}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/affs/bitmap.c", i32 102, i32 35}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/affs/bitmap.c", i32 128, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @affs_alloc_block.__UNIQUE_ID_ddebug241, !19, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/affs/bitmap.c", i32 131, i32 3}
!25 = !{ptr @affs_alloc_block.__UNIQUE_ID_ddebug242, !24, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!26 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/affs/bitmap.c", i32 138, i32 21}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/affs/bitmap.c", i32 138, i32 36}
!31 = !{ptr @affs_alloc_block.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!32 = !{!"../fs/affs/bitmap.c", i32 231, i32 2}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/affs/bitmap.c", i32 235, i32 16}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/affs/bitmap.c", i32 240, i32 2}
!37 = !{ptr @affs_alloc_block.__UNIQUE_ID_ddebug244, !36, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/affs/bitmap.c", i32 257, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @affs_init_bitmap._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @affs_init_bitmap._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/affs/bitmap.c", i32 270, i32 3}
!46 = !{ptr @affs_init_bitmap._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @affs_init_bitmap._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/affs/bitmap.c", i32 284, i32 4}
!50 = !{ptr @affs_init_bitmap._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @affs_init_bitmap._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/affs/bitmap.c", i32 289, i32 4}
!54 = !{ptr @affs_init_bitmap._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @affs_init_bitmap._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/affs/bitmap.c", i32 294, i32 3}
!58 = !{ptr @affs_init_bitmap.__UNIQUE_ID_ddebug245, !57, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!59 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/affs/bitmap.c", i32 306, i32 4}
!62 = !{ptr @affs_init_bitmap._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @affs_init_bitmap._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/affs/bitmap.c", i32 317, i32 2}
!66 = !{ptr @affs_init_bitmap.__UNIQUE_ID_ddebug246, !65, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!67 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug238, !69, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!73 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @affs_bread.__UNIQUE_ID_ddebug234, !75, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!78 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148207756, i64 2148207761, i64 2148207774, i64 2148207818, i64 2148207852, i64 2148207873}
!89 = !{i32 0, i32 33}
